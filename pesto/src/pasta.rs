use std::{
    collections::HashMap,
    fs::{self, File},
    io::Write,
    path::PathBuf,
    println,
    process::exit,
    rc::Rc,
};

use serde::{Deserialize, Serialize};

use crate::position::FilePosition;

#[serde_with::skip_serializing_none]
#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct LambdaMeta {
    #[allow(non_snake_case)]
    pub isPrimop: bool,
    pub name: Option<String>,
    pub position: Option<FilePosition>,
    pub args: Option<Vec<String>>,
    pub experimental: Option<bool>,
    pub arity: Option<usize>,

    // I want to potentially overwrite those two
    pub content: Option<String>,
    #[allow(non_snake_case)]
    pub countApplied: Option<usize>,
}
#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct AttrMeta {
    pub position: Option<FilePosition>,
    /// I want to add this
    pub content: Option<String>,
}
#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct DocsMeta {
    pub lambda: Option<LambdaMeta>,
    pub attr: AttrMeta,
}

pub type ValuePath = Vec<String>;
pub type AliasList = Vec<Rc<ValuePath>>;

#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct Docs {
    pub docs: DocsMeta,
    pub aliases: Option<AliasList>,
    pub path: Rc<ValuePath>,
}

#[derive(Serialize, Debug, Clone)]
pub struct ContentSource<'a> {
    pub content: Option<&'a String>,
    pub source: Option<SourceOrigin<'a>>,
}

#[derive(Serialize, Debug, Clone)]
pub struct SourceOrigin<'a> {
    pub position: Option<&'a FilePosition>,
    pub path: Option<&'a Rc<ValuePath>>,
    pub pos_type: Option<PositionType>,
}

#[derive(Serialize, Debug, Clone)]
pub enum PositionType {
    Attribute,
    Lambda,
}

pub trait Lookups<'a> {
    /// Returns the Lambda ContentSource.
    ///
    /// If there is a correct [ContentSource] return it.
    ///
    /// Partially applied functions still cary the underlying documentation which is wrong.
    /// This inherited (but wrong) documentation is discarded
    fn lambda_content(self: &'a Self) -> Option<ContentSource<'a>>;

    /// Return the docs of the first alias with docs.
    ///
    /// Only look at the aliases with content in the following order.
    /// Return content from an alias with (1) attribute content, or (2) lambda content.
    fn fst_alias_content(
        self: &'a Self,
        data: &'a HashMap<Rc<ValuePath>, Docs>,
    ) -> Option<ContentSource<'a>>;
}

impl<'a> Lookups<'a> for Docs {
    fn lambda_content(self: &'a Self) -> Option<ContentSource<'a>> {
        self.docs
            .lambda
            .as_ref()
            .map(|i| {
                if i.countApplied == Some(0) || (i.countApplied == None && i.isPrimop) {
                    Some(ContentSource {
                        content: i.content.as_ref(),
                        source: Some(SourceOrigin {
                            position: i.position.as_ref(),
                            path: Some(&self.path),
                            pos_type: Some(PositionType::Lambda),
                        }),
                    })
                } else {
                    None
                }
            })
            .flatten()
    }

    fn fst_alias_content(
        self: &'a Self,
        data: &'a HashMap<Rc<ValuePath>, Docs>,
    ) -> Option<ContentSource<'a>> {
        match &self.aliases {
            Some(aliases) => {
                let x = aliases
                    .iter()
                    .find_map(|alias_path| {
                        data.get(alias_path).map(|i| {
                            if i.docs.attr.content.is_some() {
                                Some(ContentSource {
                                    content: i.docs.attr.content.as_ref(),
                                    source: Some(SourceOrigin {
                                        position: i.docs.attr.position.as_ref(),
                                        path: Some(&i.path),
                                        pos_type: Some(PositionType::Attribute),
                                    }),
                                })
                            } else {
                                // i.lambda_content()
                                None
                            }
                        })
                    })
                    .flatten();
                x
            }
            _ => None,
        }
    }
}

pub struct Pasta {
    pub docs: Vec<Docs>,
    pub doc_map: HashMap<Rc<ValuePath>, Docs>,
}

pub trait Files {
    fn from_file(path: &PathBuf) -> Vec<Docs>;
    fn to_file(self, file_name: &str) -> Result<(), std::io::Error>;
}

impl<'a> Files for Pasta {
    fn from_file(path: &PathBuf) -> Vec<Docs> {
        let raw = fs::read_to_string(&path);
        match raw {
            Ok(content) => match serde_json::from_str(&content) {
                Ok(data) => data,
                Err(e) => {
                    println!("Error could not parse data. {}", e.to_string());
                    exit(1);
                }
            },
            Err(e) => {
                println!("Could not read input file: {}", e.to_string());
                exit(1);
            }
        }
    }

    fn to_file(self, file_name: &str) -> Result<(), std::io::Error> {
        let mut file = File::create(file_name).unwrap();

        file.write_all(serde_json::to_string_pretty(&self.docs).unwrap().as_bytes())
    }
}
