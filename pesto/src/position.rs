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

use std::{fs, path::PathBuf, println};

use crate::comment::get_expr_docs;

#[derive(Debug, Serialize, Deserialize)]
pub struct TextPosition {
    pub line: usize,
    pub column: usize,
}

#[derive(Debug, Serialize, Deserialize)]
pub struct FilePosition {
    pub file: PathBuf,
    pub line: usize,
    pub column: usize,
}

#[derive(Debug)]
pub struct DocIndex<'a> {
    file: &'a PathBuf,
    src: Rc<String>,
    ast: SyntaxNode,
    pos_idx: HashMap<(usize, usize), TextSize>,
    node_idx: HashMap<TextSize, Option<SyntaxNode>>,
}

pub trait DocComment<'a> {
    fn new(file: &'a PathBuf, positions: Vec<(usize, usize)>) -> Self;
    // Single item methods
    fn get_pos_idx(&self, line: usize, column: usize) -> Option<TextSize>;
    fn node_at_pos(&self, line: usize, column: usize) -> Option<SyntaxNode>;
    fn get_docs(&self, line: usize, column: usize) -> Option<LambdaDoc>;

    // fn nodes_at_pos(&self, pos: &Vec<TextSize>) -> HashMap<TextSize, Option<SyntaxNode>>;
    // fn init_pos_idx(&self, positions: Vec<(usize, usize)>) -> HashMap<(usize, usize), TextSize>;
    fn get_docs_list(&self, idx: Vec<TextSize>) -> HashMap<TextSize, Option<LambdaDoc>>;
}

fn get_src(path: &PathBuf) -> Option<String> {
    if let Ok(src) = fs::read_to_string(path) {
        return Some(src);
    }
    panic!("could not read file");
}

/// Initializes a HashMap for lookup operation between L:C and absolute position.
fn init_pos_idx(
    path: &PathBuf,
    positions: Vec<(usize, usize)>,
) -> HashMap<(usize, usize), TextSize> {
    let file = File::open(path).unwrap();
    let reader = BufReader::new(file);

    let mut res = HashMap::new();

    let mut curr_line = 0;
    let mut curr_position = 0;
    for line in reader.lines() {
        positions.iter().for_each(|(line, col)| {
            if *line == curr_line + 1 {
                res.insert(
                    (*line, *col),
                    TextSize::from(u32::try_from(curr_position + col - 1).unwrap()),
                );
            }
        });

        curr_line += 1;
        curr_position += line.unwrap().chars().count() + 1;
    }
    res
}

// Take a list of lookup operations
// Since iterating over the AST can be expensive
fn init_node_idx(ast: &SyntaxNode, pos: &Vec<TextSize>) -> HashMap<TextSize, Option<SyntaxNode>> {
    let mut res = HashMap::new();
    for ev in ast.preorder() {
        match ev {
            WalkEvent::Enter(node) => {
                if let Some(pos_key) = pos
                    .iter()
                    .find(|position| node.text_range().start() == **position)
                {
                    if res.get(pos_key).is_none() {
                        res.insert(*pos_key, Some(node));
                    }
                }
            }
            WalkEvent::Leave(node) => {
                if let Some(pos_key) = pos
                    .iter()
                    .find(|position| node.text_range().end() == **position)
                {
                    if res.get(pos_key).is_none() {
                        res.insert(*pos_key, Some(node));
                    }
                }
            }
        }
    }
    res
}

impl<'a> DocComment<'a> for DocIndex<'a> {
    fn new(file: &'a PathBuf, positions: Vec<(usize, usize)>) -> Self {
        if let Some(src) = get_src(file) {
            let rc: Rc<String> = Rc::new(src);
            let ast = rnix::Root::parse(Rc::clone(&rc).as_str()).syntax();
            let pos_idx = init_pos_idx(&file, positions);
            let ast_positions: Vec<TextSize> = pos_idx.values().map(|t| *t).collect();
            let node_idx = init_node_idx(&ast, &ast_positions);

            return Self {
                file,
                ast,
                src: rc,
                pos_idx,
                node_idx,
            };
        } else {
            panic!("cannot open file");
        }
    }

    fn get_pos_idx(&self, l: usize, c: usize) -> Option<TextSize> {
        let src = &self.src;
        let mut result: usize = 0;
        let mut pos: Option<usize> = None;
        for (line, content) in src.lines().enumerate() {
            if line + 1 == l {
                pos = Some(result + c - 1);
                break;
            }
            result += content.len() + 1;
        }
        return pos.map(|pos| TextSize::from(u32::try_from(pos).unwrap()));
    }

    fn node_at_pos(&self, line: usize, column: usize) -> Option<SyntaxNode> {
        let pos_idx = &self.get_pos_idx(line, column).unwrap();
        let mut expr = None;
        for ev in self.ast.preorder() {
            match ev {
                WalkEvent::Enter(node) => {
                    if node.text_range().start() == *pos_idx {
                        expr = Some(node);
                        break;
                    }
                }
                WalkEvent::Leave(node) => {
                    if node.text_range().end() == *pos_idx {
                        expr = Some(node);
                        break;
                    }
                }
            }
        }
        return expr;
    }

    fn get_docs_list(&self, positions: Vec<TextSize>) -> HashMap<TextSize, Option<LambdaDoc>> {
        let mut res = HashMap::new();
        let ast_map = init_node_idx(&self.ast, &positions);
        positions.iter().for_each(|position| {
            if let Some(Some(expr)) = ast_map.get(position) {
                let (outer_lambda, count_applied) = get_parent_lambda(&expr);
                let doc = LambdaDoc {
                    content: get_expr_docs(&outer_lambda),
                    count_applied,
                };
                res.insert(*position, Some(doc));
            }
        });

        res
    }

    fn get_docs(&self, line: usize, column: usize) -> Option<LambdaDoc> {
        let idx = self.pos_idx.get(&(line, column)).unwrap();
        let expr = self.node_idx.get(idx);
        println!("L{}:C{}, expr: {:?}", line, column, expr);
        if let Some(Some(e)) = expr {
            let (outer_lambda, count_applied) = get_parent_lambda(&e);
            return Some(LambdaDoc {
                content: get_expr_docs(&outer_lambda),
                count_applied,
            });
        }
        return None;
    }
}

#[derive(Debug)]
pub struct LambdaDoc {
    pub content: Option<String>,
    pub count_applied: i32,
}

fn get_parent_lambda(expr: &SyntaxNode) -> (SyntaxNode, i32) {
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
