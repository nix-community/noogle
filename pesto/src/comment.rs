use rnix::ast::{self, AstToken};
use rnix::{match_ast, SyntaxNode};
use rowan::ast::AstNode;

/// Implements functions for doc-comments according to rfc145.
pub trait DocComment {
    fn doc_text(&self) -> Option<&str>;
}

impl DocComment for ast::Comment {
    /// Function returns the contents of the doc-comment, if the [ast::Comment] is a
    /// doc-comment, or None otherwise.
    ///
    /// Note: [ast::Comment] holds both the single-line and multiline comment.
    ///
    /// /**{content}*/
    /// -> {content}
    ///
    /// It is named `doc_text` to complement [ast::Comment::text].
    fn doc_text(&self) -> Option<&str> {
        let text = self.syntax().text();
        // Check whether this is a doc-comment
        if text.starts_with(r#"/**"#) && self.text().starts_with('*') {
            match text.strip_prefix(r#"/**"#) {
                Some(t) => t.strip_suffix(r#"*/"#),
                _ => None,
            }
        } else {
            None
        }
    }
}

/// Function retrieves a doc-comment from the [ast::Expr]
///
/// Returns an [Option<String>] of the first suitable doc-comment.
/// Returns [None] in case no suitable comment was found.
///
/// Doc-comments can appear in two places for any expression
///
/// ```nix
/// # (1) directly before the expression (anonymous)
/// /** Doc */
/// bar: bar;
///
/// # (2) when assigning a name.
/// {
///   /** Doc */
///   foo = bar: bar;
/// }
/// ```
///
/// If the doc-comment is not found in place (1) the search continues at place (2)
/// More precisely before the NODE_ATTRPATH_VALUE (ast)
/// If no doc-comment was found in place (1) or (2) this function returns None.
pub fn get_expr_docs(expr: &SyntaxNode) -> Option<(String, SyntaxNode)> {
    if let Some(doc) = get_doc_comment(expr) {
        // Found in place (1)
        doc.doc_text().map(|v| (v.to_owned(), expr.clone()))
    } else if let Some(ref parent) = expr.parent() {
        match_ast! {
            match parent {
                ast::AttrpathValue(_) => {
                    if let Some(doc_comment) = get_doc_comment(parent) {
                        doc_comment.doc_text().map(|v| (v.to_owned(), parent.clone()))
                    }else if let Some(comment) = get_comment(parent) {
                        Some((comment.text().to_owned(),parent.clone()))
                    } else {
                        None
                    }
                },
                _ => {
                    // Yet unhandled ast-nodes
                    None
                }

            }
        }
        // None
    } else {
        // There is no parent;
        // No further places where a doc-comment could be.
        None
    }
}

/// Looks backwards from the given expression
/// Only whitespace or non-doc-comments are allowed in between an expression and the doc-comment.
/// Any other Node or Token stops the peek.
fn get_doc_comment(expr: &SyntaxNode) -> Option<ast::Comment> {
    let mut prev = expr.prev_sibling_or_token();
    loop {
        match prev {
            Some(rnix::NodeOrToken::Token(ref token)) => {
                match_ast! { match token {
                    ast::Whitespace(_) => {
                        prev = token.prev_sibling_or_token();
                    },
                    ast::Comment(it) => {
                        if it.doc_text().is_some() {
                            break Some(it);
                        }else{
                            //Ignore non-doc comments.
                            prev = token.prev_sibling_or_token();
                        }
                    },
                    _ => {
                        break None;
                    }
                }}
            }
            _ => break None,
        };
    }
}

/// Function retrieves a comment from the [ast::Expr]
fn get_comment(expr: &SyntaxNode) -> Option<ast::Comment> {
    let mut prev = expr.prev_sibling_or_token();
    loop {
        match prev {
            Some(rnix::NodeOrToken::Token(ref token)) => {
                match_ast! { match token {
                    ast::Whitespace(_) => {
                        prev = token.prev_sibling_or_token();
                    },
                    ast::Comment(it) => {
                        if !it.text().is_empty() {
                            break Some(it);
                        }else{
                            //Ignore non-doc comments.
                            prev = token.prev_sibling_or_token();
                        }
                    },
                    _ => {
                        break None;
                    }
                }}
            }
            _ => break None,
        };
    }
}
