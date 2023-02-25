extern crate rnix;
extern crate serde;
extern crate serde_json;
extern crate structopt;
use rnix::parser::{ASTKind, ASTNode, Arena, Data};
use rnix::tokenizer::Trivia;
use rnix::tokenizer::{Meta, Span};
use serde::{Deserialize, Serialize};
use std::fs::{self, File};
use std::path::PathBuf;
use structopt::StructOpt;

/// Command line arguments for the indexer
#[derive(Debug, StructOpt)]
#[structopt(name = "indexer", about = "Generate Metadata from Nix files")]
struct Options {
    /// directory to process.
    #[structopt(short = "D", long = "dir", parse(from_os_str))]
    dir: PathBuf,
}

#[derive(Serialize, Deserialize, Debug)]
pub struct ManualEntry {
    pub id: String,
    pub line: Option<usize>,
    pub category: String,
    pub name: String,
    pub fn_type: Option<String>,
    pub description: String,
    pub example: Option<String>,
}
#[derive(Debug)]
struct DocComment {
    /// Primary documentation string.
    doc: String,

    /// Optional type annotation for the thing being documented.
    doc_type: Option<String>,

    /// Usage example(s) (interpreted as a single code block)
    example: Option<String>,
}

#[derive(Debug)]
struct DocItem {
    name: String,
    span: Span,
    comment: DocComment,
}

/// Retrieve documentation comments. For now only multiline comments are considered
fn retrieve_doc_comment(allow_single_line: bool, meta: &Meta) -> Option<String> {
    for item in meta.leading.iter() {
        if let Trivia::Comment {
            multiline, content, ..
        } = item
        {
            if *multiline || allow_single_line {
                return Some(content.to_string());
            }
        }
    }
    return None;
}

/// Transforms an AST node into a `DocItem` if it has a leading
/// documentation comment.
fn retrieve_doc_item(node: &ASTNode) -> Option<DocItem> {
    // We are only interested in identifiers.

    if let Data::Ident(meta, name) = &node.data {
        let comment = retrieve_doc_comment(false, meta)?;
        return Some(DocItem {
            span: node.span,
            name: name.to_string(),
            comment: parse_doc_comment(&comment),
        });
    }
    return None;
}

fn get_indentation(line: &str) -> usize {
    return line
        .char_indices()
        .find(|(_, ch)| !(ch.is_whitespace() && *ch != '\n'))
        .map(|(i, _)| i)
        .unwrap_or_else(|| line.len());
}

/// *Really* dumb, mutable, hacky doc comment "parser".
fn parse_doc_comment(raw: &str) -> DocComment {
    enum ParseState {
        Doc,
        Type,
        Example,
    }

    let mut doc = String::new();
    let mut doc_type = String::new();
    let mut example = String::new();
    let mut state = ParseState::Doc;

    let mut type_ident = 0;
    let mut doc_ident = 0;
    let mut example_ident = 0;

    for line in raw.clone().lines() {
        let mut line = line.clone().trim_end();
        let trimmed = line.clone().trim();
        if trimmed.starts_with("Type:") {
            state = ParseState::Type;
            line = &trimmed[5..]; // trim 'Type:'
        }

        if trimmed.starts_with("Example:") {
            state = ParseState::Example;
            line = &trimmed[8..]; // trim 'Example:'
        }
        match state {
            ParseState::Type => {
                let curr_indent = get_indentation(line);
                if curr_indent > 0 && type_ident == 0 {
                    type_ident = curr_indent;
                }
            }
            ParseState::Doc => {
                let curr_indent = get_indentation(line);
                if curr_indent > 0 && doc_ident == 0 {
                    doc_ident = curr_indent;
                }
            }
            ParseState::Example => {
                let curr_indent = get_indentation(line);
                if curr_indent > 0 && example_ident == 0 {
                    example_ident = curr_indent;
                }
            }
        }
    }
    state = ParseState::Doc;

    for line in raw.lines() {
        let mut line = line.trim_end();
        let trimmed = line.clone().trim();
        if trimmed.starts_with("Type:") {
            state = ParseState::Type;
            line = &trimmed[5..]; // trim 'Type:'
        }

        if trimmed.starts_with("Example:") {
            state = ParseState::Example;
            line = &trimmed[8..]; // trim 'Example:'
        }
        match state {
            // important: trim only trailing whitespaces; as leading ones might be markdown formatting or code examples.
            ParseState::Type => {
                let stripped = line.trim_end();
                let formatted = stripped.replacen(&" ".repeat(type_ident), "", 1);
                doc_type.push_str(&formatted);
                doc_type.push('\n');
            }
            ParseState::Doc => {
                let stripped = line.trim_end();
                let formatted = stripped.replacen(&" ".repeat(doc_ident), "", 1);
                doc.push_str(&formatted);
                doc.push('\n');
            }
            ParseState::Example => {
                let stripped = line.trim_end();
                let formatted = stripped.replacen(&" ".repeat(example_ident), "", 1);
                example.push_str(&formatted);
                example.push('\n');
            }
        }
    }
    let f = |mut s: String| {
        if s.is_empty() {
            None
        } else {
            let len = s.trim_end_matches(&['\r', '\n'][..]).len();
            s.truncate(len);
            return Some(s.trim_start().into());
        }
    };
    // let doc_f = f(doc);
    DocComment {
        doc: f(doc).unwrap_or("".to_owned()),
        doc_type: f(doc_type),
        example: f(example),
    }
}

fn get_line(span: Span, src: &String) -> Option<usize> {
    let mut line_nr: usize = 1;
    for (count, char) in src.chars().enumerate() {
        if char == '\n' {
            line_nr = line_nr + 1;
        }
        if count == span.start as usize {
            return Some(line_nr);
        }
    }
    None
}

/// Traverse a pattern argument, collecting its argument names.
/// Traverse a Nix lambda and collect the identifiers of arguments
/// until an unexpected AST node is encountered.
///
/// This will collect the argument names for curried functions in the
/// `a: b: c: ...`-style, but does not currently work with pattern
/// functions (`{ a, b, c }: ...`).
///
/// In the AST representation used by rnix, any lambda node has an
/// immediate child that is the identifier of its argument. The "body"
/// of the lambda is two steps to the right from that identifier, if
/// it is a lambda the function is curried and we can recurse.
/// Traverse the arena from a top-level SetEntry and collect, where
/// possible:
///
/// 1. The identifier of the set entry itself.
/// 2. The attached doc comment on the entry.
/// 3. The argument names of any curried functions (pattern functions
///    not yet supported).
fn collect_entry_information<'a>(arena: &Arena<'a>, entry_node: &ASTNode) -> Option<DocItem> {
    // The "root" of any attribute set entry is this `SetEntry` node.
    // It has an `Attribute` child, which in turn has the identifier
    // (on which the documentation comment is stored) as its child.
    let attr_node = &arena[entry_node.node.child?];
    let ident_node = &arena[attr_node.node.child?];
    // At this point we can retrieve the `DocItem` from the identifier
    // node - this already contains most of the information we are
    // interested in.
    let doc_item = retrieve_doc_item(ident_node)?;

    // From our entry we can walk two nodes to the right and check
    // whether we are dealing with a lambda. If so, we can start
    // collecting the function arguments - otherwise we're done.
    // let assign_node = &arena[attr_node.node.sibling?];
    // let content_node = &arena[assign_node.node.sibling?];
    Some(doc_item)
}

fn main() {
    let opts = Options::from_args();
    let paths = fs::read_dir(&opts.dir).unwrap();
    let mut data: Vec<ManualEntry> = vec![];
    for path in paths {
        let file_path = path.unwrap();
        let file_type = file_path.file_type().unwrap();
        let file = file_path.path();
        if file_type.is_file() && file.extension().unwrap() == "nix" {
            // sources.push(file);
            let src = fs::read_to_string(&file).unwrap();
            let nix = rnix::parse(&src).unwrap();
            let filename = file.file_stem().unwrap().to_str().unwrap();
            let parent = file
                .parent()
                .unwrap()
                .file_name()
                .unwrap()
                .to_str()
                .unwrap();

            let entries: Vec<ManualEntry> = nix
                .arena
                .into_iter()
                .filter(|node| node.kind == ASTKind::SetEntry)
                .filter_map(|node| collect_entry_information(&nix.arena, node))
                .map(|d| ManualEntry {
                    id: format!("{}.{}.{}", parent, filename, d.name),
                    line: Some(get_line(d.span, &src)).unwrap_or(None),
                    category: file.display().to_string(),
                    name: d.name,
                    description: d.comment.doc,
                    fn_type: d.comment.doc_type,
                    example: d.comment.example,
                })
                .collect();
            data.extend(entries);
        }
    }
    let json_file =
        File::create(opts.dir.file_name().unwrap().to_str().unwrap().to_owned() + ".json").unwrap();
    ::serde_json::to_writer(&json_file, &data).unwrap();
}
