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

#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct Docs {
    pub docs: DocsMeta,
    pub aliases: Option<Vec<Rc<Vec<String>>>>,
    pub path: Rc<Vec<String>>,
}

pub struct Pasta {
    pub docs: Vec<Docs>,
    pub doc_map: HashMap<Rc<Vec<String>>, Docs>,
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
