//! Hand-written tokenizer for Nix function type signatures.
//!
//! The lexer is intentionally permissive: any byte it doesn't recognise is
//! emitted as a [`SyntaxKind::TOKEN_ERROR`] of length 1 so the parser can
//! still build a lossless tree.

use crate::syntax::SyntaxKind;

/// One token: a kind plus the exact slice it covers in the original input.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct Token<'src> {
    pub kind: SyntaxKind,
    pub text: &'src str,
}

/// Tokenise `input` into a flat list of tokens that together cover the
/// entire input (concatenating `text` over the result yields `input`).
pub fn tokenize(input: &str) -> Vec<Token<'_>> {
    let mut tokens = Vec::new();
    let bytes = input.as_bytes();
    let mut pos = 0;

    while pos < bytes.len() {
        let start = pos;
        let kind = match bytes[pos] {
            b'\n' => {
                pos += 1;
                SyntaxKind::TOKEN_NEWLINE
            }
            b if b.is_ascii_whitespace() => {
                while pos < bytes.len() && bytes[pos].is_ascii_whitespace() {
                    pos += 1;
                }
                SyntaxKind::TOKEN_WHITESPACE
            }
            b':' if peek(bytes, pos + 1) == Some(b':') => {
                pos += 2;
                SyntaxKind::TOKEN_DOUBLE_COLON
            }
            b'-' if peek(bytes, pos + 1) == Some(b'>') => {
                pos += 2;
                SyntaxKind::TOKEN_ARROW
            }
            b'$' if peek(bytes, pos + 1) == Some(b'{') => {
                pos += 2;
                SyntaxKind::TOKEN_DOLLAR_L_BRACE
            }
            b'[' => {
                pos += 1;
                SyntaxKind::TOKEN_L_BRACK
            }
            b']' => {
                pos += 1;
                SyntaxKind::TOKEN_R_BRACK
            }
            b'{' => {
                pos += 1;
                SyntaxKind::TOKEN_L_BRACE
            }
            b'}' => {
                pos += 1;
                SyntaxKind::TOKEN_R_BRACE
            }
            b'(' => {
                pos += 1;
                SyntaxKind::TOKEN_L_PAREN
            }
            b')' => {
                pos += 1;
                SyntaxKind::TOKEN_R_PAREN
            }
            b';' => {
                pos += 1;
                SyntaxKind::TOKEN_SEMI
            }
            b',' => {
                pos += 1;
                SyntaxKind::TOKEN_COMMA
            }
            b'.' => {
                pos += 1;
                SyntaxKind::TOKEN_DOT
            }
            b'?' => {
                pos += 1;
                SyntaxKind::TOKEN_QUESTION
            }
            b'=' => {
                pos += 1;
                SyntaxKind::TOKEN_ASSIGN
            }
            b'|' => {
                pos += 1;
                SyntaxKind::TOKEN_PIPE
            }
            b'"' => {
                // Walk to the closing quote. Backslash escapes any byte
                // (including `"`); unterminated strings consume to EOF and
                // are still emitted as TOKEN_STRING (the parser may flag).
                pos += 1;
                while pos < bytes.len() {
                    match bytes[pos] {
                        b'\\' if pos + 1 < bytes.len() => pos += 2,
                        b'"' => {
                            pos += 1;
                            break;
                        }
                        _ => pos += 1,
                    }
                }
                SyntaxKind::TOKEN_STRING
            }
            b if is_ident_start(b) => {
                while pos < bytes.len() && is_ident_continue(bytes[pos]) {
                    pos += 1;
                }
                SyntaxKind::TOKEN_IDENT
            }
            b'#' => {
                // Eat until end of line
                while pos < bytes.len() && !is_newline(bytes[pos]) {
                    pos += 1;
                }
                SyntaxKind::TOKEN_COMMENT
            }
            _ => {
                // Unknown byte: emit as TOKEN_ERROR of length 1. We advance
                // by one byte rather than one char — non-ASCII multi-byte
                // sequences will produce one TOKEN_ERROR per byte, which is
                // fine for current corpus (all signatures are ASCII).
                pos += 1;
                SyntaxKind::TOKEN_ERROR
            }
        };

        tokens.push(Token {
            kind,
            text: &input[start..pos],
        });
    }

    tokens
}

fn peek(bytes: &[u8], idx: usize) -> Option<u8> {
    bytes.get(idx).copied()
}

fn is_ident_start(b: u8) -> bool {
    b.is_ascii_alphabetic() || b == b'_' || b == b'\''
}

fn is_ident_continue(b: u8) -> bool {
    b.is_ascii_alphanumeric() || b == b'_' || b == b'\'' || b == b'-'
}

fn is_newline(b: u8) -> bool {
    b == b'\n' || b == b'\r'
}
