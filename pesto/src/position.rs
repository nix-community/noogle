use expect_test::Position;
use rnix::ast::{self};
use rnix::{match_ast, SyntaxNode};
use rowan::TextSize;
use rowan::{ast::AstNode, WalkEvent};
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::process::exit;
use std::rc::Rc;

use std::{format, fs, path::PathBuf, println};

use crate::comment::get_expr_docs;
use crate::find_document_content;
use crate::pasta::{Docs, ValuePath};

#[derive(Debug, Serialize, Deserialize)]
pub struct TextPosition {
    pub line: usize,
    pub column: usize,
}

#[derive(Debug, Serialize, Deserialize, PartialEq, Eq, Hash, Clone)]
pub struct FilePosition {
    pub file: PathBuf,
    pub line: usize,
    pub column: usize,
}

#[derive(Debug, Clone)]
pub struct DocIndex<'a> {
    file: &'a PathBuf,
    pos_idx: HashMap<(usize, usize), TextSize>,
    node_idx: HashMap<TextSize, Option<SyntaxNode>>,
}

pub trait DocComment<'a> {
    fn new(file: &'a PathBuf, positions: HashMap<usize, Vec<usize>>) -> Self;
    fn get_docs(&self, line: usize, column: usize) -> Option<NixDocComment>;
    fn get_node_at_position(&self, position: &'a FilePosition) -> &Option<SyntaxNode>;
}

pub fn get_src(path: &PathBuf) -> String {
    if let Ok(src) = fs::read_to_string(path) {
        return src;
    }
    println!("could not read file: {}", path.to_str().unwrap());

    exit(1);
}

/// Returns rnix::SyntaxKind::NODE_PATH
pub fn get_call_package_file(node: Option<&SyntaxNode>) -> Option<SyntaxNode> {
    if let Some(node) = node {
        for ev in node.preorder() {
            let res = match ev {
                WalkEvent::Enter(node) => match node.kind() {
                    rnix::SyntaxKind::NODE_ATTRPATH_VALUE => {
                        get_call_package_file(node.last_child().as_ref())
                    }
                    rnix::SyntaxKind::NODE_APPLY => {
                        let maybe_path = filter_path_from_apply(&node);
                        match maybe_path.as_ref().map(|n| n.kind()) {
                            Some(rnix::SyntaxKind::NODE_PATH) => maybe_path.clone(),
                            _ => {
                                // callPackage ./path/file.nix {}
                                // Maybe the path is a dynamic expression which is non-trivial to resolve?
                                println!("Could not find path in apply {:?}", &node);
                                None
                            }
                        }
                    }
                    _ => None,
                },
                _ => None,
            };
            if let Some(res) = res {
                return Some(res);
            }
        }
    }
    None
}

fn filter_path_from_apply(apply: &SyntaxNode) -> Option<SyntaxNode> {
    for ev in apply.preorder() {
        let res = match ev {
            WalkEvent::Enter(node) => match node.kind() {
                rnix::SyntaxKind::NODE_IDENT => {
                    // If the first child is callPackage.
                    // Assume CallPackage takes a second argument, which is the next node.
                    if node.text().to_string() == "callPackage" {
                        return node.next_sibling();
                    }
                    None
                }
                _ => None,
            },
            _ => None,
        };
        if let Some(res) = res {
            return res;
        }
    }
    None
}
/// Goes up the tree to find the parent node that matches the predicate,
/// checks starting with the current node
/// Stops when the limit is reached
fn check_outwards<F>(node: &SyntaxNode, pred: F, limit: usize, curr: usize) -> bool
where
    F: Fn(&SyntaxNode) -> bool,
{
    if pred(node) {
        return true;
    } else if curr < limit {
        node.parent()
            .map(|parent| check_outwards(&parent, pred, limit, curr + 1))
            .unwrap_or(false)
    } else {
        return false;
    }
}

fn match_attrpath_ident(node: &SyntaxNode, text: &str) -> bool {
    match node.kind() {
        rnix::SyntaxKind::NODE_ATTRPATH_VALUE => {
            let maybe_ident = node
                .first_child()
                .and_then(|attrpath| attrpath.first_child());
            if let Some(ident) = maybe_ident {
                ident.text().to_string() == text
            } else {
                false
            }
        }
        _ => false,
    }
}

pub fn when_overridable_lambda(
    doc: &Docs,
    file_idx_map: &HashMap<&PathBuf, DocIndex>,
) -> Option<PathBuf> {
    let all: HashMap<Rc<ValuePath>, Docs> = HashMap::new();
    match find_document_content(doc, &all) {
        Some(content) => {
            if content.content.is_some() && !content.content.as_ref().unwrap().is_empty() {
                return None;
            }

            if content.source.is_none() {
                // println!("Could not find source position for {:?}", &doc.path);
                return None;
            }
            let position = content.source.unwrap().position;

            if position.is_none() {
                // println!("Could not find source position for {:?}", &doc.path);
                return None;
            }

            let position = position.unwrap();
            let doc_index = file_idx_map.get(&position.file);

            if let Some(doc_index) = doc_index {
                let node = doc_index.get_node_at_position(position).as_ref();
                let is_in_overridable = check_outwards(
                    node.unwrap(),
                    |node| match node.kind() {
                        rnix::SyntaxKind::NODE_ATTRPATH_VALUE => {
                            let check = match_attrpath_ident(node, "makeOverridable");
                            check
                        }
                        _ => false,
                    },
                    5,
                    0,
                );
                if !is_in_overridable {
                    println!("function is not wrapped in makeOverridable {:?}", &doc.path);
                    return None;
                }
                let pos = &doc.docs.attr.position.as_ref();
                if pos.is_none() {
                    println!("Could not find source position for {:?}", &doc.path);
                    return None;
                }
                let pos = pos.unwrap();

                println!("Found function that is wrapped in lib.makeOverridable: {:?}. Trying to infer original lambda. From {:?}", &doc.path, &pos);

                let package_file_idx = file_idx_map.get(&pos.file).unwrap();
                let node = package_file_idx.get_node_at_position(pos);
                let package_file = node
                    .as_ref()
                    .map(|node| {
                        let is_node = match_attrpath_ident(node, doc.path.last().unwrap());
                        if !is_node {
                            println!("Could not find node for {:?}", doc.path.last().unwrap());
                            return None;
                        }
                        let path = get_call_package_file(Some(node));
                        let package_file = path.map(|v| v.text().to_string());
                        package_file
                    })
                    .flatten();

                if package_file.is_none() {
                    println!("Could not find package file for {:?}; While trying to cover lib.makeOverridable case handling", &doc.path);
                    return None;
                }
                let rel_package_file = package_file.unwrap();

                let resolved_path = pos
                    .file
                    .parent()
                    .map(|parent_path| {
                        parent_path
                            .join(rel_package_file)
                            .canonicalize()
                            .ok()
                            .map(|p| {
                                if p.to_str().unwrap().ends_with(".nix") {
                                    p
                                } else {
                                    p.join("default.nix")
                                }
                            })
                    })
                    .flatten();
                return resolved_path;
            } else {
                None
            }
        }
        _ => None,
    }
}

/// Initializes a HashMap for lookup operation between L:C and absolute position.
/// Returns both
/// Position HashMap from l:c -> abs
/// Reverse Position HashMap from abs -> l:c
fn init_pos_idx(
    path: &PathBuf,
    positions: HashMap<usize, Vec<usize>>,
) -> (
    HashMap<(usize, usize), TextSize>,
    HashMap<TextSize, (usize, usize)>,
) {
    let mut res = HashMap::new();
    let mut inverse: HashMap<TextSize, (usize, usize)> = HashMap::new();

    let file = File::open(path).unwrap();
    let reader = BufReader::new(file);

    let mut curr_position = 0;
    for (curr_line, line) in reader.lines().enumerate() {
        match line {
            Ok(line) => {
                if let Some(cols) = positions.get(&(curr_line + 1)) {
                    cols.iter().for_each(|col| {
                        let lc_tuple = (curr_line + 1, *col);
                        let absolute =
                            TextSize::from(u32::try_from(curr_position + col - 1).unwrap());
                        res.insert(lc_tuple, absolute);
                        inverse.insert(absolute, lc_tuple);
                    });
                }
                curr_position += line.len() + 1;
            }
            _ => {}
        }
    }
    (res, inverse)
}

/// Inefficient way to get the node at a position
/// Reads the whole file and iterates over the AST
/// Returns a SyntaxNode if found
pub fn get_overridable_fn(file: &PathBuf) -> Option<SyntaxNode> {
    println!("get_overridable_fn from {:?}", &file);
    let src: String = get_src(file);
    let rc: Rc<String> = Rc::new(src);
    let ast = rnix::Root::parse(Rc::clone(&rc).as_str()).syntax();
    get_call_package_lambda_body(&ast)
        .map(|body| {
            let maybe_wrapped_lambda = get_apply_make_overridable_body(&body);
            maybe_wrapped_lambda.map(|l| unpack_lambda(&l))
        })
        .flatten()
        .flatten()
}

pub fn seek_file_position(path: &PathBuf, text_pos: &TextSize) -> Option<FilePosition> {
    let file = File::open(path).unwrap();
    let reader = BufReader::new(file);

    let mut curr_position = 0;
    for (curr_line, line) in reader.lines().enumerate() {
        let pos_found = match line {
            Ok(line) => {
                let absolute = TextSize::from(u32::try_from(curr_position + line.len()).unwrap());
                let curr = TextSize::from(u32::try_from(curr_position).unwrap());
                if &absolute > text_pos {
                    let col = text_pos - curr;
                    return Some(FilePosition {
                        file: path.clone(),
                        line: curr_line + 1,
                        column: <TextSize as Into<usize>>::into(col) + 1,
                    });
                }
                curr_position += line.len() + 1;
                None
            }
            _ => None,
        };
        if let Some(pos) = pos_found {
            return pos;
        }
    }
    None
}

// Removes potential parenthesis wrapping the lambda
// (( x: ... )) -> x: ...
// Returns the lambda node, if one exists
// Aborts if the node is not a lambda
// Returns rnix::SyntaxKind::NODE_LAMBDA
fn unpack_lambda(node: &SyntaxNode) -> Option<SyntaxNode> {
    for ev in node.preorder() {
        let res = match ev {
            WalkEvent::Enter(node) => {
                match node.kind() {
                    // The top level callpackage lambda
                    rnix::SyntaxKind::NODE_LAMBDA => Some(node),
                    rnix::SyntaxKind::NODE_APPLY => node
                        .first_child()
                        .as_ref()
                        .map(|n| unpack_lambda(n))
                        .flatten(),
                    rnix::SyntaxKind::NODE_PAREN => None,
                    rnix::SyntaxKind::NODE_SELECT => None,
                    rnix::SyntaxKind::NODE_IDENT => None,
                    rnix::SyntaxKind::NODE_ATTRPATH => None,
                    rnix::SyntaxKind::NODE_ATTR_SET => None,
                    rnix::SyntaxKind::NODE_IF_ELSE => None,
                    // Added on 25.11
                    // fetchgit is now wrapped in extendMkDerivation
                    // which obfuscates the original function signature by wrapping the function in a factory
                    rnix::SyntaxKind::NODE_ATTRPATH_VALUE => None,
                    rnix::SyntaxKind::NODE_LIST => None,
                    rnix::SyntaxKind::NODE_STRING => None,
                    _ => {
                        println!(
                            "Unexpected node kind: {:?}. Expected Parenthesis '(x: ...)' or Lambda 'x: ... ' {:#?}",
                            node.kind(),
                            node.text()
                        );
                        exit(1);
                    }
                }
            }
            _ => None,
        };
        if let Some(res) = res {
            return Some(res);
        }
    }
    None
}

fn get_call_package_lambda_body(root: &SyntaxNode) -> Option<SyntaxNode> {
    for ev in root.preorder() {
        let res = match ev {
            WalkEvent::Enter(node) => {
                match node.kind() {
                    // The top level callpackage lambda
                    rnix::SyntaxKind::NODE_LAMBDA => node.last_child(),
                    _ => None,
                }
            }
            _ => None,
        };
        if let Some(res) = res {
            return Some(res);
        }
    }
    None
}

fn contains_make_overridable(apply_lhs: &SyntaxNode) -> bool {
    for ev in apply_lhs.preorder() {
        let res = match ev {
            WalkEvent::Enter(node) => {
                match node.kind() {
                    // Potential apply of makeOverridable ()
                    rnix::SyntaxKind::NODE_IDENT => match node.text().to_string().as_str() {
                        "makeOverridable" => Some(node),
                        _ => None,
                    },
                    _ => None,
                }
            }
            _ => None,
        };
        if let Some(_res) = res {
            return true;
        }
    }
    false
}

fn get_apply_make_overridable_body(body: &SyntaxNode) -> Option<SyntaxNode> {
    for ev in body.preorder() {
        let res = match ev {
            WalkEvent::Enter(node) => {
                match node.kind() {
                    // Potential apply of makeOverridable ()
                    rnix::SyntaxKind::NODE_APPLY => {
                        // TODO: check if the first child is actually contains makeOverridable
                        if contains_make_overridable(&node.first_child().unwrap()) {
                            node.last_child()
                        } else {
                            None
                        }
                    }
                    _ => None,
                }
            }
            _ => None,
        };
        if let Some(res) = res {
            return Some(res);
        }
    }
    None
}

// Take a list of lookup operations
// Since iterating over the AST can be expensive
fn init_node_idx(
    ast: &SyntaxNode,
    pos: &HashMap<TextSize, (usize, usize)>,
) -> HashMap<TextSize, Option<SyntaxNode>> {
    let mut res: HashMap<TextSize, Option<SyntaxNode>> = HashMap::new();

    for ev in ast.preorder() {
        match ev {
            WalkEvent::Enter(node) => {
                let cursor = node.text_range().start();
                if let Some(_) = pos.get(&cursor) {
                    if res.get(&cursor).is_none() {
                        res.insert(cursor, Some(node));
                    }
                }
            }
            WalkEvent::Leave(node) => {
                let cursor = node.text_range().end();
                if let Some(_) = pos.get(&cursor) {
                    if res.get(&cursor).is_none() {
                        res.insert(cursor, Some(node));
                    }
                }
            }
        }
    }
    res
}

impl<'a> DocComment<'a> for DocIndex<'a> {
    fn new(file: &'a PathBuf, positions: HashMap<usize, Vec<usize>>) -> Self {
        let src = get_src(file);
        let rc: Rc<String> = Rc::new(src);

        let ast = rnix::Root::parse(Rc::clone(&rc).as_str()).syntax();

        let (pos_idx, inverse_pos_idx) = init_pos_idx(&file, positions);

        let node_idx = init_node_idx(&ast, &inverse_pos_idx);

        return Self {
            file,
            pos_idx,
            node_idx,
        };
    }

    fn get_docs(&self, line: usize, column: usize) -> Option<NixDocComment> {
        let idx = self.pos_idx.get(&(line, column));
        if idx.is_none() {
            let msg = format!(
                "Position {} {} may not exist in file {:?}",
                line, column, self.file
            );
            println!("{:?} @ {}", self.file, msg);
            exit(1);
        }
        if let Some(idx) = idx {
            let expr = self.node_idx.get(idx);
            if let Some(Some(expr)) = expr {
                let doc = match expr.kind() {
                    rnix::SyntaxKind::NODE_LAMBDA => {
                        let (_outer_lambda, count_applied) = get_parent_lambda(&expr);
                        let res = get_expr_docs(&expr);

                        NixDocComment {
                            content: res.as_ref().map(|v| v.0.to_owned()),
                            count_applied: Some(count_applied),
                            expr: res.as_ref().map(|v| v.1.to_owned()),
                        }
                    }
                    _ => {
                        let res = get_expr_docs(&expr);
                        NixDocComment {
                            content: res.as_ref().map(|v| v.0.to_owned()),
                            count_applied: None,
                            expr: res.as_ref().map(|v| v.1.to_owned()),
                        }
                    }
                };
                return Some(doc);
            }
        }
        return None;
    }

    fn get_node_at_position(&self, position: &'a FilePosition) -> &Option<SyntaxNode> {
        if &position.file != self.file {
            println!(
                "Invalid usage of get_node_at_position: File {:?} does not match index file source {:?}",
                self.file, position.file
            );
            exit(1);
        }
        let res = self
            .pos_idx
            .get(&(position.line, position.column))
            .map(|idx| self.node_idx.get(&idx))
            .flatten();
        return res.unwrap_or(&None);
    }
}

#[derive(Debug)]
pub struct NixDocComment {
    pub content: Option<String>,
    pub count_applied: Option<usize>,
    pub expr: Option<SyntaxNode>,
}

fn get_parent_lambda(expr: &SyntaxNode) -> (SyntaxNode, usize) {
    let mut count_outer_lambda = 0;
    let mut lambda_parent = peek_parent_lambda(expr);
    let mut res = expr.to_owned();
    loop {
        match lambda_parent {
            Some(ref node) => {
                count_outer_lambda += 1;
                res = node.clone();
                lambda_parent = peek_parent_lambda(node);
            }
            None => break,
        }
    }
    return (res, count_outer_lambda);
}

fn peek_parent_lambda(expr: &SyntaxNode) -> Option<SyntaxNode> {
    match expr.parent() {
        Some(parent) => match_ast! {
            match parent {
                ast::Lambda(_) => {
                    Some(parent)
                },
                _ => {
                    None
                }
            }
        },
        None => None,
    }
}
