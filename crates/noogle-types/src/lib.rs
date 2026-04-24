use serde::{Deserialize, Serialize};
use ts_rs::TS;

/// A path like `["lib", "attrsets", "mapAttrs"]`.
pub type ValuePath = Vec<String>;

#[derive(Debug, Serialize, Deserialize, Clone, PartialEq, Eq, Hash, TS)]
#[ts(export)]
pub struct FilePosition {
    pub file: String,
    pub line: usize,
    pub column: usize,
}

#[derive(Debug, Serialize, Deserialize, Clone, TS)]
#[ts(export)]
pub enum PositionType {
    Attribute,
    Lambda,
}

#[derive(Debug, Serialize, Deserialize, Clone, TS)]
#[ts(export)]
pub struct SourceOrigin {
    pub position: Option<FilePosition>,
    pub path: Option<ValuePath>,
    pub pos_type: Option<PositionType>,
}

#[derive(Debug, Serialize, Deserialize, Clone, TS)]
#[ts(export)]
pub struct PrimopMeta {
    pub name: Option<String>,
    pub args: Option<Vec<String>>,
    pub experimental: Option<bool>,
    pub arity: Option<usize>,
}

#[derive(Debug, Serialize, Deserialize, Clone, TS)]
#[ts(export)]
pub struct ContentSource {
    pub content: Option<String>,
    pub source: Option<SourceOrigin>,
}

#[derive(Debug, Serialize, Deserialize, Clone, TS)]
#[ts(export)]
pub struct DocumentMeta {
    pub title: String,
    pub path: ValuePath,
    pub aliases: Option<Vec<ValuePath>>,
    pub signature: Option<String>,
    pub is_primop: Option<bool>,
    pub primop_meta: Option<PrimopMeta>,
    pub is_functor: Option<bool>,
    pub attr_position: Option<FilePosition>,
    pub attr_expr: Option<String>,
    pub lambda_position: Option<FilePosition>,
    pub lambda_expr: Option<String>,
    pub count_applied: Option<usize>,
    pub content_meta: Option<SourceOrigin>,
}

#[derive(Debug, Serialize, Deserialize, Clone, TS)]
#[ts(export)]
pub struct Document {
    pub meta: DocumentMeta,
    pub content: Option<ContentSource>,
}
