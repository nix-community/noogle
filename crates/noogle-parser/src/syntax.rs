//! Syntax kinds and the `rowan::Language` impl used by the parser.
//!
//! Heavily inspired by the layout of `rnix-parser`: a single `SyntaxKind` enum
//! covering both **tokens** and **nodes**
//! a marker `Language` type, and concrete `SyntaxNode` / `SyntaxToken`
//! aliases.

use rowan::Language;

/// Every kind of token or node the parser can produce.
///
/// `TOKEN_*` variants are leaf tokens emitted by the lexer; `NODE_*` are
/// interior nodes produced by the parser. The two namespaces share one
/// enum so they can be stored as a single `u16` discriminant inside
/// [`rowan`].
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
#[repr(u16)]
#[allow(non_camel_case_types)]
pub enum SyntaxKind {
    // ---- Tokens (leaves) ------------------------------------------------
    /// Run of ASCII whitespace, including newlines.
    TOKEN_WHITESPACE,
    /// Newlines needs to be tokenized seperately
    /// Because we want to tolerate missing ;
    /// In case of a missing ; we require one of the following
    /// , (COMMA) \n (NEWLINE)
    /// Both will print a warning later, when we add 'check' capbility
    TOKEN_NEWLINE,
    /// Inline comments starting with # until newline
    TOKEN_COMMENT,
    /// Identifier or keyword-shaped token (`String`, `a`, `derivation`, ...).
    TOKEN_IDENT,
    /// `::`
    TOKEN_DOUBLE_COLON,
    /// `->`
    TOKEN_ARROW,
    /// `[`
    TOKEN_L_BRACK,
    /// `]`
    TOKEN_R_BRACK,
    /// `{`
    TOKEN_L_BRACE,
    /// `}`
    TOKEN_R_BRACE,
    /// `(`
    TOKEN_L_PAREN,
    /// `)`
    TOKEN_R_PAREN,
    /// `;`
    TOKEN_SEMI,
    /// `,`
    TOKEN_COMMA,
    /// `.`
    TOKEN_DOT,
    /// `?`
    TOKEN_QUESTION,
    /// `=`
    TOKEN_ASSIGN,
    /// `|`
    TOKEN_PIPE,
    /// `${`
    TOKEN_DOLLAR_L_BRACE,
    /// `"..."` (whole literal, including quotes; no interpolation handling
    /// at the lexer level).
    TOKEN_STRING,
    /// Any byte the lexer doesn't recognise. Always preserved so the tree
    /// stays a faithful representation of the input.
    TOKEN_ERROR,

    // ---- Nodes (interior) ----------------------------------------------
    /// Tree root.
    NODE_ROOT,
    /// `let binding* in body` block. Optional outer wrapper around the top-level signature.
    NODE_LET_IN,
    /// One binding inside a `let`: `signature ;`.
    NODE_BINDING,
    /// `path :: type` binding. Used both at the top level and inside attrsets/lists.
    NODE_SIGNATURE,
    /// Dotted binder name, e.g. `builtins.derivation`. Always appears on the LHS of `::`.
    NODE_PATH,
    /// A function arrow: `lhs -> rhs`. Right-associative — `a -> b -> c` parses as
    /// `Arrow(a, Arrow(b, c))`.
    NODE_ARROW,
    /// `( inner )`.
    NODE_GROUP,
    /// `[ inner ]`.
    NODE_LIST,
    /// `name :: type` appearing as a list element (e.g. `[ output :: String ]`) or as
    /// the body of a field. Distinguished from a top-level signature by context.
    NODE_NAMED_TYPE,
    /// `{ field; field; ... }`.
    NODE_ATTRSET,
    /// One field inside an attrset: `field_name :: type ('?' default)? ';'?`.
    NODE_FIELD,
    /// Wrapper around the name portion of a field (a bare ident or a `${...}` interpolation).
    NODE_FIELD_NAME,
    /// `${ ident }` interpolation — grammar-level legal only as a field name.
    NODE_INTERPOLATION,
    /// Bare identifier reference in type position (e.g. `String`, `a`, `WeirdType`).
    NODE_IDENT,
    /// String literal in type position (e.g. `"derivation"`).
    NODE_STRING,
    /// Default-value expression following `?` in a field. Opaque token sequence;
    /// preserved for round-trip but not interpreted as a type.
    NODE_DEFAULT,

    /// Sentinel — keep last. Only used for `kind_from_raw` bounds checks.
    #[doc(hidden)]
    SYNTAX_KIND_LAST,
}

impl SyntaxKind {
    /// Tokens that carry no semantic content (whitespace, comments).
    pub fn is_trivia(self) -> bool {
        matches!(
            self,
            SyntaxKind::TOKEN_WHITESPACE | SyntaxKind::TOKEN_COMMENT
        )
    }
}

impl From<SyntaxKind> for rowan::SyntaxKind {
    fn from(kind: SyntaxKind) -> Self {
        rowan::SyntaxKind(kind as u16)
    }
}

/// Marker type tying [`SyntaxKind`] to the [`rowan`] machinery.
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum NixSigLanguage {}

impl Language for NixSigLanguage {
    type Kind = SyntaxKind;

    fn kind_from_raw(raw: rowan::SyntaxKind) -> Self::Kind {
        assert!(raw.0 < SyntaxKind::SYNTAX_KIND_LAST as u16);
        // SAFETY: `raw.0` is in-range for `SyntaxKind`, which is
        // `#[repr(u16)]` with consecutive discriminants starting at 0.
        unsafe { std::mem::transmute::<u16, SyntaxKind>(raw.0) }
    }

    fn kind_to_raw(kind: Self::Kind) -> rowan::SyntaxKind {
        kind.into()
    }
}

pub type SyntaxNode = rowan::SyntaxNode<NixSigLanguage>;
pub type SyntaxToken = rowan::SyntaxToken<NixSigLanguage>;
pub type SyntaxElement = rowan::NodeOrToken<SyntaxNode, SyntaxToken>;
