use core::panic;
use rnix::ast::{self};
use rnix::{match_ast, SyntaxNode};
use rowan::TextSize;
use rowan::{ast::AstNode, WalkEvent};
use serde::{Deserialize, Serialize};

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
    src: Option<String>,
}

pub trait DocComment<'a> {
    fn new(file: &'a PathBuf) -> Self;
    fn get_pos_idx(&self, line: usize, column: usize) -> Option<TextSize>;
    fn node_at_pos(&self, line: usize, column: usize) -> Option<SyntaxNode>;
    fn get_docs(&self, line: usize, column: usize) -> Option<LambdaDoc>;
}

fn get_src(path: &PathBuf) -> Option<String> {
    println!("reading {:?}", path);
    if let Ok(src) = fs::read_to_string(&path) {
        return Some(src);
    }
    panic!("could not read file");
}

impl<'a> DocComment<'a> for DocIndex<'a> {
    fn new(file: &'a PathBuf) -> Self {
        Self {
            file: file,
            src: get_src(file),
        }
    }

    fn get_pos_idx(&self, l: usize, c: usize) -> Option<TextSize> {
        if let Some(src) = &self.src {
            let mut result: usize = 0;
            let mut pos = None;
            for (line, content) in src.lines().enumerate() {
                if line + 1 == l {
                    for (col, _) in content.chars().enumerate() {
                        if col + 1 == c {
                            pos = Some(result + col);
                            break;
                        }
                    }
                }
                if pos.is_some() {
                    break;
                }
                result += content.len() + 1;
            }

            return pos.map(|pos| TextSize::from(u32::try_from(pos).unwrap()));
        }
        // Could not read source
        None
    }

    fn node_at_pos(&self, line: usize, column: usize) -> Option<SyntaxNode> {
        let src = &self.src;
        let pos_idx = &self.get_pos_idx(line, column).unwrap();
        if let Some(src) = src {
            let ast = rnix::Root::parse(&src).ok().expect("failed to parse input");

            let mut expr = None;
            for ev in ast.syntax().preorder() {
                match ev {
                    WalkEvent::Enter(node) => {
                        if node.text_range().start() == *pos_idx {
                            expr = Some(node);
                            break;
                        }
                    }
                    _ => {}
                }
            }
            return expr;
        }
        None
    }

    fn get_docs(&self, line: usize, column: usize) -> Option<LambdaDoc> {
        let expr = self.node_at_pos(line, column);
        println!("L{}:C{}, {:?}", line, column, expr);
        expr.map(|e| {
            let (outer_lambda, count_applied) = get_parent_lambda(&e);
            LambdaDoc {
                pos: FilePosition {
                    file: self.file.clone(),
                    line,
                    column,
                },
                content: get_expr_docs(&outer_lambda),
                count_applied,
            }
        })
    }
}

#[derive(Debug)]
pub struct LambdaDoc {
    pos: FilePosition,
    content: Option<String>,
    count_applied: i32,
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
