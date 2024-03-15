use regex::Regex;
use rnix::ast::{AstToken, AttrpathValue, Comment, Expr, Lambda, Param};
use rnix::{SyntaxKind, SyntaxNode, SyntaxToken};
use rowan::{ast::AstNode, GreenToken, NodeOrToken, WalkEvent};
use std::fs::File;
use std::io::Write;
use std::path::PathBuf;
use std::println;
use std::{env, fs};
use textwrap::dedent;
use walkdir::WalkDir;

const EXAMPLE_LANG: &str = "nix";
const TYPE_LANG: &str = "";

/// Represent a single function argument name and its (optional)
/// doc-string.
#[derive(Clone, Debug)]
pub struct SingleArg {
    pub name: String,
    pub doc: Option<String>,
}

/// Represent a function argument, which is either a flat identifier
/// or a pattern set.
#[derive(Clone, Debug)]
pub enum Argument {
    /// Flat function argument (e.g. `n: n * 2`).
    Flat(SingleArg),

    /// Pattern function argument (e.g. `{ name, age }: ...`)
    Pattern(Vec<SingleArg>),
}

///
fn handle_indentation(raw: &str) -> Option<String> {
    let result: String = match raw.split_once('\n') {
        Some((first, rest)) => {
            format!("{}\n{}", first.trim_start(), dedent(rest))
        }
        None => raw.into(),
    };

    Some(result.trim().to_owned()).filter(|s| !s.is_empty())
}

/// Retrieve documentation comments.
fn retrieve_doc_comment(node: &SyntaxNode, allow_line_comments: bool) -> Option<String> {
    // if the current node has a doc comment it'll be immediately preceded by that comment,
    // or there will be a whitespace token and *then* the comment tokens before it. We merge
    // multiple line comments into one large comment if they are on adjacent lines for
    // documentation simplicity.
    let mut token = node.first_token()?.prev_token()?;
    if token.kind() == SyntaxKind::TOKEN_WHITESPACE {
        token = token.prev_token()?;
    }
    if token.kind() != SyntaxKind::TOKEN_COMMENT {
        return None;
    }

    // if we want to ignore line comments (eg because they may contain deprecation
    // comments on attributes) we'll backtrack to the first preceding multiline comment.
    while !allow_line_comments && token.text().starts_with('#') {
        token = token.prev_token()?;
        if token.kind() == SyntaxKind::TOKEN_WHITESPACE {
            token = token.prev_token()?;
        }
        if token.kind() != SyntaxKind::TOKEN_COMMENT {
            return None;
        }
    }

    if token.text().starts_with("/*") {
        return Some(Comment::cast(token)?.text().to_string());
    }

    // backtrack to the start of the doc comment, allowing only adjacent line comments.
    // we don't care much about optimization here, doc comments aren't long enough for that.
    if token.text().starts_with('#') {
        let mut result: String = String::new();
        while let Some(comment) = Comment::cast(token) {
            if !comment.syntax().text().starts_with('#') {
                break;
            }
            result.insert_str(0, comment.text().trim());
            let ws = match comment.syntax().prev_token() {
                Some(t) if t.kind() == SyntaxKind::TOKEN_WHITESPACE => t,
                _ => break,
            };
            // only adjacent lines continue a doc comment, empty lines do not.
            match ws.text().strip_prefix('\n') {
                Some(trail) if !trail.contains('\n') => result.insert(0, ' '),
                _ => break,
            }
            token = match ws.prev_token() {
                Some(c) => c,
                _ => break,
            };
        }
        return Some(result);
    }

    None
}

/// Copied from nixdoc.
/// Traverse a Nix lambda and collect the identifiers of arguments
/// until an unexpected AST node is encountered.
fn collect_lambda_args(mut lambda: Lambda) -> Vec<Argument> {
    let mut args = vec![];

    loop {
        match lambda.param().unwrap() {
            // a variable, e.g. `id = x: x`
            Param::IdentParam(id) => {
                args.push(Argument::Flat(SingleArg {
                    name: id.to_string(),
                    // doc:
                    doc: handle_indentation(
                        &retrieve_doc_comment(id.syntax(), true).unwrap_or_default(),
                    ),
                }));
            }
            // an attribute set, e.g. `foo = { a }: a`
            Param::Pattern(pat) => {
                // collect doc-comments for each attribute in the set
                let pattern_vec: Vec<_> = pat
                    .pat_entries()
                    .map(|entry| SingleArg {
                        name: entry.ident().unwrap().to_string(),
                        doc: None, // handle_indentation(
                                   //     &retrieve_doc_comment(entry.syntax(), true).unwrap_or_default(),
                                   // ),
                    })
                    .collect();

                args.push(Argument::Pattern(pattern_vec));
            }
        }

        // Curried or not?
        match lambda.body() {
            Some(Expr::Lambda(inner)) => lambda = inner,
            _ => break,
        }
    }

    args
}

fn parse_doc_comment(
    raw: &str,
    indent: usize,
    argument_block: Option<String>,
    name: Option<String>,
) -> String {
    enum ParseState {
        Doc,
        Type,
        Example,
    }
    let left = " ".repeat(indent);

    let mut doc = String::new();
    let mut doc_type = String::new();
    let mut example = String::new();
    let mut state = ParseState::Doc;

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
        if trimmed.starts_with("Examples:") {
            state = ParseState::Example;
            line = &trimmed[9..]; // trim 'Examples:'
        }

        match state {
            // important: trim only trailing whitespaces; as leading ones might be markdown formatting or code examples.
            ParseState::Type => {
                doc_type.push_str(&format!("{line}\n"));
            }
            ParseState::Doc => {
                doc.push_str(&format!("{line}\n"));
            }
            ParseState::Example => {
                example.push_str(&format!("{line}\n"));
            }
        }
    }

    let f = |s: String| {
        if s.is_empty() {
            None
        } else {
            return Some(s.trim().to_owned());
        }
    };
    let mut markdown = handle_indentation(&doc)
        .map(|t| format_code(t, indent))
        .unwrap_or_default();

    // example and type can contain indented code
    let formatted_example = format_code(example, indent);
    let formatted_type = format_code(doc_type, indent);

    if let Some(argument_block) = argument_block {
        markdown.push_str(&argument_block);
    }

    if let Some(doc_type) = f(formatted_type) {
        markdown.push_str(&format!("\n{left}# Type"));
        markdown.push_str(&format!(
            "\n\n{left}```{TYPE_LANG}\n{left}{doc_type}\n{left}```"
        ));
    }

    let args: Vec<String> = env::args().collect();
    let prefix = args.get(2);

    if let Some(example) = f(formatted_example) {
        markdown.push_str(&format!("\n\n{left}# Examples"));
        markdown.push_str(&format!("\n{left}:::{{.example}}"));
        if let Some(name) = name {
            if let Some(prefix) = prefix {
                markdown.push_str(&format!("\n{left}## `{prefix}.{name}` usage example"));
            } else {
                markdown.push_str(&format!("\n{left}## `{name}` usage example"));
            }
        }
        markdown.push_str(&format!(
            "\n\n{left}```{EXAMPLE_LANG}\n{left}{example}\n{left}```"
        ));
        markdown.push_str(&format!("\n\n{left}:::"));
    }

    format!("{}\n", markdown.trim_end())
}

fn get_binding_name(token: &SyntaxToken) -> Option<String> {
    let mut step = token.next_sibling_or_token();

    // Find the Expr that is a lambda.
    let name = loop {
        if step.is_none() {
            // If there is no next token or node
            break None;
        } else if let Some(NodeOrToken::Node(ref node)) = step {
            match node.kind() {
                // SyntaxKind::NODE_LAMBDA => break Some(node.clone()),
                SyntaxKind::NODE_ATTRPATH_VALUE => {
                    if let Some(value) = AttrpathValue::cast(node.clone()) {
                        break value.attrpath().map(|p| p.to_string());
                    } else {
                        break None;
                    }
                }
                _ => {}
            };
        } else {
        }
        step = step.unwrap().next_sibling_or_token();
    };
    name
}

fn get_argument_docs(token: &SyntaxToken, ident: &str) -> Option<String> {
    let mut step = token.next_sibling_or_token();

    // Find the Expr that is a lambda.
    let doc_expr = loop {
        if step.is_none() {
            // If there is no next token or node
            break None;
        } else if let Some(NodeOrToken::Node(ref node)) = step {
            match node.kind() {
                // SyntaxKind::NODE_LAMBDA => break Some(node.clone()),
                SyntaxKind::NODE_ATTRPATH_VALUE => {
                    if let Some(value) = AttrpathValue::cast(node.clone()) {
                        break value.value();
                    } else {
                        break None;
                    }
                }
                _ => {}
            };
        } else {
        }
        step = step.unwrap().next_sibling_or_token();
    };

    let mut argument_docs: Option<String> = None;
    if let Some(Expr::Lambda(l)) = doc_expr {
        let args = collect_lambda_args(l);
        let mut docs = String::new();
        for (pos, arg) in args.iter().enumerate() {
            match arg {
                Argument::Flat(single_arg) => {
                    docs.push_str(&format!(
                        "`{}`\n\n: {}\n\n",
                        single_arg.name,
                        handle_indentation(
                            &single_arg
                                .clone()
                                .doc
                                .unwrap_or(format!("{}\\. Function argument", pos + 1))
                        )
                        .unwrap_or(format!("{}\\. Function argument", pos + 1)),
                    ));
                }
                Argument::Pattern(_pattern) => (),
            }
        }
        argument_docs = Some(docs);
    }
    return argument_docs;
}

fn format_comment(text: &str, token: &SyntaxToken) -> String {
    let content = text.strip_prefix("/*").unwrap().strip_suffix("*/").unwrap();
    let mut whitespace = "";
    let prev = &token.prev_token();

    if let Some(prev) = prev {
        whitespace = prev.text();
    }
    let stripped = Regex::new(r#" +"#).unwrap().replace_all(whitespace, "");
    let indentation = (whitespace.len() - stripped.len()) / 2 * 2;

    let indent_1 = " ".repeat(indentation);
    let indent_2 = " ".repeat(indentation + 2);

    let lines: Vec<String> = content
        .lines()
        .map(|content| format!("{}{}", indent_2, content))
        .collect();

    let argument_block = if let Some(argument_docs) = get_argument_docs(token, &indent_2) {
        let mut res = String::new();
        if !argument_docs.trim().is_empty() {
            res.push_str(&format!("\n\n{indent_2}# Inputs\n"));
            for line in argument_docs.lines() {
                if !line.trim().is_empty() {
                    res.push_str(&format!("\n{indent_2}{line}"));
                } else {
                    res.push_str(&format!("\n"));
                }
            }
        }
        Some(res)
    } else {
        None
    };

    let name = get_binding_name(token);

    let markdown = parse_doc_comment(&lines.join("\n"), indentation + 2, argument_block, name);

    return format!("/**\n{}{}*/", markdown, indent_1);
}

fn format_code(text: String, ident: usize) -> String {
    let mut content = text
        .trim_end_matches("\n")
        .trim_start_matches("\n")
        .to_owned();

    while let Some(stripped) = strip_column(&content) {
        content = stripped;
    }

    let mut result = String::new();
    let left: String = " ".repeat(ident);
    for line in content.lines() {
        if line.is_empty() {
            result.push_str(&format!("\n"));
        } else {
            result.push_str(&format!("{left}{line}\n"));
        }
    }

    result
}

fn strip_column(text: &str) -> Option<String> {
    let mut result: Vec<&str> = vec![];

    let mut any_non_whitespace = false;

    for line in text.lines() {
        if line.is_empty() {
            continue;
        }
        if let Some(_) = line.strip_prefix(" ") {
        } else {
            any_non_whitespace = true;
        }
    }

    if !any_non_whitespace && !text.is_empty() {
        for line in text.lines() {
            if let Some(stripped) = line.strip_prefix(" ") {
                result.push(stripped);
            } else {
                result.push("");
            }
        }
        return Some(result.join("\n"));
    }
    return None;
}

fn replace_first_comment(syntax: &SyntaxNode) -> Option<SyntaxNode> {
    let mut result = None;
    for ev in syntax.preorder_with_tokens() {
        match ev {
            WalkEvent::Enter(node_or_token) => match node_or_token {
                NodeOrToken::Token(token) => match token.kind() {
                    SyntaxKind::TOKEN_COMMENT => {
                        if token.text().starts_with("/**") || token.text().starts_with("#") {
                            // Already a doc-comment or not supposed to be migrated
                            continue;
                        }
                        let replacement: GreenToken = GreenToken::new(
                            rowan::SyntaxKind(token.kind() as u16),
                            &format_comment(token.text(), &token),
                        );
                        let green = token.replace_with(replacement);
                        let updated = syntax.replace_with(green);

                        result = Some(rnix::SyntaxNode::new_root(updated));
                        break;
                    }
                    _ => continue,
                },
                _ => continue,
            },
            _ => continue,
        };
    }
    result
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if let Some(path) = &args.get(1) {
        println!("trying to read path: {path}");
        for entry in WalkDir::new(path)
            .follow_links(true)
            .into_iter()
            .filter_map(|e| e.ok())
        {
            let f_name = entry.file_name().to_string_lossy();

            if f_name.ends_with(".nix") {
                modify_file(entry.path().to_path_buf());
            }
        }
    } else {
        println!("Usage: codemod <dirPath>");
    }
}

fn modify_file(file_path: PathBuf) {
    let contents = fs::read_to_string(&file_path);
    if let Err(_) = contents {
        println!("Could not read the file {:?}", file_path);
        return;
    }
    let root = rnix::Root::parse(&contents.unwrap()).ok();

    if let Err(err) = &root {
        println!(
            "{}",
            format!(
                "failed to parse input of file: {:?} \n\ngot error: {}",
                file_path,
                err.to_string()
            )
        );
        return;
    }

    // println!("Syntax \n {:?}", root.clone().unwrap().syntax().clone());
    let syntax = root.unwrap().syntax().clone_for_update();
    let mut maybe_replaced = replace_first_comment(&syntax);
    let mut count = 0;
    let r: Option<SyntaxNode> = loop {
        if let Some(replaced) = maybe_replaced {
            // Maybe we can replace more
            count += 1;
            let result = replace_first_comment(&replaced);

            // If we cannot replace more comments
            if result.is_none() {
                break Some(replaced);
            }
            maybe_replaced = result;
        } else {
            break None;
        }
    };

    let display_name = file_path.to_str().unwrap();
    if let Some(updates) = r {
        let mut file = File::create(&file_path).unwrap();
        file.write_all(updates.text().to_string().as_bytes()).ok();
        println!("{display_name} - Changed {count} comments");
    }
}
