use core::panic;
use rnix::ast::{self};
use rnix::{match_ast, SyntaxNode};
use rowan::TextSize;
use rowan::{ast::AstNode, WalkEvent};
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::rc::Rc;
use std::time::Instant;

use std::{format, fs, path::PathBuf, println};

use crate::comment::get_expr_docs;

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

#[derive(Debug)]
pub struct DocIndex<'a> {
    file: &'a PathBuf,
    pos_idx: HashMap<(usize, usize), TextSize>,
    node_idx: HashMap<TextSize, Option<SyntaxNode>>,
}

pub trait DocComment<'a> {
    fn new(file: &'a PathBuf, positions: HashMap<usize, Vec<usize>>) -> Self;
    fn get_docs(&self, line: usize, column: usize) -> Option<NixDocComment>;
}

fn get_src(path: &PathBuf) -> String {
    if let Ok(src) = fs::read_to_string(path) {
        return src;
    }
    panic!("could not read file");
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
        let mut start_time = Instant::now();
        let ast = rnix::Root::parse(Rc::clone(&rc).as_str()).syntax();
        let mut end_time = Instant::now();
        // println!("{:?} - Parsed ast", end_time - start_time);

        start_time = Instant::now();
        let (pos_idx, inverse_pos_idx) = init_pos_idx(&file, positions);
        end_time = Instant::now();
        // println!(
        //     "{:?} - Translated col,line into abs positions",
        //     end_time - start_time
        // );

        // Call your function here
        start_time = Instant::now();
        let node_idx = init_node_idx(&ast, &inverse_pos_idx);
        end_time = Instant::now();

        // println!(
        //     "{:?} - Find all ast nodes for positions",
        //     end_time - start_time
        // );

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
            panic!("{:?} @ {}", self.file, msg);
        }
        if let Some(idx) = idx {
            let expr = self.node_idx.get(idx);
            // println!("L{}:C{}, expr: {:?}", line, column, expr);
            if let Some(Some(expr)) = expr {
                let doc = match expr.kind() {
                    rnix::SyntaxKind::NODE_LAMBDA => {
                        let (outer_lambda, count_applied) = get_parent_lambda(&expr);
                        NixDocComment {
                            content: get_expr_docs(&outer_lambda),
                            count_applied: Some(count_applied),
                        }
                    }
                    _ => NixDocComment {
                        content: get_expr_docs(&expr),
                        count_applied: None,
                    },
                };
                return Some(doc);
            }
        }
        return None;
    }
}

#[derive(Debug)]
pub struct NixDocComment {
    pub content: Option<String>,
    pub count_applied: Option<usize>,
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
