//! Parser for Nix function type signatures (the strings stored in
//! `Document.meta.signature`, e.g. `"map :: (a -> b) -> [a] -> [b]"`).
//!
//! With gracefull recovery suppting multiple ast shapes
//! Planned to add a linting functions, to foster a converging type ast.
//!
//! 1. [`lexer`]: bytes → tokens, lossless, no normalization.
//! 2. [`parser`]: tokens → typed CST + structural errors.
//!    Right-associative arrows; explicit nodes for arrows, lists,
//!    attrsets, fields, groups, interpolations, and let-in blocks.
//! 3. [`aliases`]: data table mapping identifier text →
//!    [`NixType`]: Single source of truth for case-folding and
//!    synonyms.
//! 4. [`resolve`] — CST → [`Signature`] (a structural [`TypeExpr`]
//!    plus the list of identifiers we couldn't classify).

mod lexer;
mod syntax;

pub use crate::lexer::{tokenize, Token};
pub use crate::syntax::{NixSigLanguage, SyntaxElement, SyntaxKind, SyntaxNode, SyntaxToken};

// TODO:
/// Convenience entry point: parse a signature string into a [`Parse`].
///
/// Errors (if any) are accessible via [`Parse::errors`]; the syntax tree is
/// always produced, even on malformed input.
// pub fn parse_signature(input: &str) -> Parse {
//     parse(input)
// }

#[cfg(test)]
mod tests;
