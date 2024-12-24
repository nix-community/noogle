mod alias;
mod bulk;
mod comment;
mod markdown;
mod pasta;
mod position;
mod tests;

use clap::{Parser, ValueEnum};
use markdown::find_type;
use pasta::{AliasList, ContentSource, Docs, Lookups, PositionType, SourceOrigin, ValuePath};
use position::FilePosition;
use serde::{Deserialize, Serialize};
use std::{
    collections::HashMap,
    fs::{create_dir_all, File},
    io::Write,
    path::PathBuf,
    println,
    process::exit,
    rc::Rc,
};
use textwrap::dedent;

use crate::{
    bulk::BulkProcessing,
    pasta::Pasta,
    position::{DocComment, DocIndex},
};

#[derive(ValueEnum, Clone, Debug, PartialEq, Eq)]
enum Format {
    JSON,
    DIR,
}

#[derive(Debug, Parser)]
#[command(author, version, about)]
struct Options {
    /// Json file containing a list of file positions.
    /// Format: [{ file: String, line: Number, column: Number }]
    #[arg(long, conflicts_with_all=["line", "column", "file"])]
    pos_file: Option<PathBuf>,

    #[arg(long)]
    format: Format,

    #[arg(long)]
    language: Option<PathBuf>,
    /// Path to a directory for the output file(s).
    out: String,

    /// Path to the *.nix file that should be inspected.
    /// If provided, --line and --column must also be set.
    #[arg(long, requires_all=["line", "column", "file"])]
    file: Option<PathBuf>,
    /// Line of the expression.
    #[arg(short, long, requires_all=["line", "column", "file"])]
    line: Option<usize>,
    /// Column of the expression.
    #[arg(short, long, requires_all=["line", "column", "file"])]
    column: Option<usize>,
}

#[derive(Deserialize, Debug, Clone)]
struct BuiltinItem {
    doc: String,
    // ...
}

#[derive(Deserialize, Debug, Clone)]
struct LanguageData {
    builtins: HashMap<String, BuiltinItem>,
    // constants: HashMap<String, String>,
}

pub fn main() {
    // let mut output = io::stdout();
    let opts = Options::parse();

    if let Some(nix_file) = opts.file {
        if !nix_file.exists() {
            println!("file does not exist: {:?}", nix_file);
            exit(1);
        }
        let mut positions = HashMap::new();
        positions.insert(opts.line.unwrap(), vec![opts.column.unwrap()]);

        let pos = DocIndex::new(&nix_file, positions);

        if let Some(docs) = pos.get_docs(opts.line.unwrap(), opts.column.unwrap()) {
            println!("{:?}", docs);
        }
    }

    // Load the up-to-date language data if provided
    let language_data: Option<LanguageData> = if let Some(laguage) = opts.language {
        let data = std::fs::read_to_string(laguage).unwrap();
        serde_json::from_str(&data).unwrap()
    } else {
        None
    };

    if let Some(pos_file) = opts.pos_file {
        let data = Pasta::new(&pos_file);
        // data.doc_map

        let mut json_list: Vec<Document> = vec![];
        for item in data.docs.iter() {
            let mut document = Document::new(&item, &data.doc_map);
            let matter = &document.meta;

            if let Some(ref language_data) = language_data {
                if document.meta.is_primop.unwrap_or(false) {
                    let new_content = language_data.builtins.iter().find(|p| {
                        Some(p.0) == document.meta.primop_meta.as_ref().map(|m| m.name).flatten()
                            && document.meta.count_applied == Some(0)
                    });

                    if let Some(new_content) = new_content {
                        document.content = Some(ContentSource {
                            content: Some(new_content.1.doc.clone()),
                            source: document.content.clone().map(|c| c.source).flatten(),
                        })
                    }
                }
            }

            match opts.format {
                Format::DIR => {
                    if let Some((_, dir)) = item.path.split_last() {
                        let dir_dest = format!("{}/{}", opts.out, dir.join("/"));
                        let file_dest = format!(
                            "{}/{}.md",
                            opts.out,
                            item.path.join("/").replace("'", "' (Prime)")
                        );
                        create_dir_all(dir_dest).unwrap();
                        let mut file = File::create(file_dest).unwrap();

                        file.write_all("---\n".as_bytes()).unwrap();
                        file.write_all(serde_yaml::to_string(&matter).unwrap().as_bytes())
                            .unwrap();
                        file.write_all("---\n".as_bytes()).unwrap();

                        if let Some(content) = document
                            .content
                            .as_ref()
                            .map(|ref i| i.content.as_ref())
                            .flatten()
                        {
                            // let fmt = dedent(content.strip_prefix("\n").unwrap_or(&content));
                            file.write_all(content.as_bytes()).unwrap();
                        }
                    }
                }
                Format::JSON => json_list.push(document.clone()),
            }
        }
        if opts.format == Format::JSON {
            let mut file = File::create(opts.out).unwrap();
            file.write_all(serde_json::to_string(&json_list).unwrap().as_bytes())
                .unwrap();
        }
    }
}

/// Find the content which should be displayed.
/// The own attribute content is the correct one usually.
/// Sometimes there is no attribute content.
/// Then we search all the aliases for their attribute content.
/// As a fallback we can display the own lambda content.
pub fn find_document_content<'a>(
    item: &'a Docs,
    all: &'a HashMap<Rc<ValuePath>, Docs>,
) -> Option<ContentSource<'a>> {
    let content = match &item.docs.attr.content {
        Some(ref c) if !c.is_empty() => Some(ContentSource {
            content: Some(dedent(c)),
            source: Some(SourceOrigin {
                position: item.docs.attr.position.as_ref(),
                path: Some(&item.path),
                pos_type: Some(PositionType::Attribute),
            }),
        }),
        _ => match item.fst_alias_content(&all) {
            Some(d) => Some(d),
            None => item.lambda_content(),
        },
    };
    return content;
}

#[derive(Serialize, Debug, Clone)]
struct Document<'a> {
    meta: DocumentFrontmatter<'a>,
    content: Option<ContentSource<'a>>,
}

#[derive(Serialize, Debug, Clone)]
struct DocumentFrontmatter<'a> {
    title: String,
    path: &'a Rc<ValuePath>,
    aliases: Option<&'a AliasList>,
    signature: Option<String>,
    /// If an item is primop then it should have the PrimopMeta field.
    is_primop: Option<bool>,
    primop_meta: Option<PrimopMatter<'a>>,
    /// is functor
    is_functor: Option<bool>,
    /// Where the attribute is defined at.
    attr_position: Option<&'a FilePosition>,
    attr_expr: Option<&'a String>,
    /// Where the original lambda is defined at.
    lambda_position: Option<&'a FilePosition>,
    lambda_expr: Option<&'a String>,
    /// How many times the function is applied.
    count_applied: Option<usize>,
    content_meta: Option<SourceOrigin<'a>>,
    // content_position: Option<&'a FilePosition>,
}

pub trait FromDocs<'a> {
    fn new(docs: &'a Docs, data: &'a HashMap<Rc<ValuePath>, Docs>) -> Self;
}

impl<'a> FromDocs<'a> for Document<'a> {
    fn new(item: &'a Docs, data: &'a HashMap<Rc<ValuePath>, Docs>) -> Self {
        let content = find_document_content(item, &data);
        Self {
            meta: DocumentFrontmatter {
                signature: content
                    .as_ref()
                    .map(|c| c.content.as_ref().map(|s| find_type(s)))
                    .flatten()
                    .flatten(),
                content_meta: content.as_ref().map(|inner| inner.source.clone()).flatten(),
                title: item.path.join(".").replace("'", "' (Prime)"),
                path: &item.path,
                aliases: item.aliases.as_ref(),
                attr_position: item.docs.attr.position.as_ref(),
                attr_expr: item.docs.attr.expr.as_ref(),
                lambda_position: item
                    .docs
                    .lambda
                    .as_ref()
                    .map(|i| i.position.as_ref())
                    .flatten(),
                lambda_expr: item.docs.lambda.as_ref().map(|i| i.expr.as_ref()).flatten(),
                is_primop: item.docs.lambda.as_ref().map(|i| i.isPrimop),
                is_functor: item.docs.lambda.as_ref().map(|i| i.isFunctor).flatten(),
                count_applied: item.docs.lambda.as_ref().map(|i| i.countApplied).flatten(),
                primop_meta: match &item.docs.lambda {
                    None => None,
                    Some(lambda) if lambda.isPrimop => Some(PrimopMatter {
                        name: lambda.name.as_ref(),
                        args: lambda.args.as_ref(),
                        experimental: lambda.experimental,
                        arity: lambda.arity,
                    }),
                    _ => None,
                },
            },
            content,
        }
    }
}

#[derive(Serialize, Debug, Clone)]
struct PrimopMatter<'a> {
    pub name: Option<&'a String>,
    pub args: Option<&'a Vec<String>>,
    pub experimental: Option<bool>,
    pub arity: Option<usize>,
}

#[derive(Serialize, Debug, Clone)]
struct CompressedDocument<'a> {
    /// meta
    m: CompressedDocumentFrontmatter<'a>,
    /// content
    c: Option<ContentSource<'a>>,
}

#[derive(Serialize, Debug, Clone)]
struct CompressedDocumentFrontmatter<'a> {
    /// path
    pa: &'a Rc<ValuePath>,
    // aliases
    al: Option<&'a AliasList>,
    /// If an item is primop then it should have the PrimopMeta field.
    ip: Option<bool>,
    /// primop meta
    pm: Option<CompressedPrimopMatter<'a>>,
}

#[derive(Serialize, Debug, Clone)]
struct CompressedContentSource<'a> {
    // content
    c: Option<&'a String>,
    // position
    p: Option<&'a FilePosition>,
}

#[derive(Serialize, Debug, Clone)]
struct CompressedPrimopMatter<'a> {
    // arguments
    pub ar: Option<&'a Vec<String>>,
    // arity
    pub ay: Option<usize>,
}

// Translation matrix
// m: meta
// c: content
// p: position
//
// al: aliases
// ar: arguments
// ay: arity
//
// ip: is primop
//
// pa: path
// pm: primop meta
