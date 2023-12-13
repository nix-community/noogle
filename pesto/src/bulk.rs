use std::{collections::HashMap, path::PathBuf, println, rc::Rc, time::Instant, vec};

use crate::{
    alias::{categorize, init_alias_map},
    pasta::{Docs, Files, Pasta},
    position::{DocComment, DocIndex, FilePosition, NixDocComment},
};

#[derive(Debug)]
struct LookupReason<'a> {
    // docs: &'a Docs,
    position: &'a FilePosition,
    // field: FieldType,
}

pub trait BulkProcessing {
    fn new(path: &PathBuf) -> Self;
}

fn insert_position<'a>(
    mut file_map: HashMap<&'a PathBuf, Vec<LookupReason<'a>>>,
    position: &'a FilePosition,
    item: LookupReason<'a>,
) -> HashMap<&'a PathBuf, Vec<LookupReason<'a>>> {
    match file_map.get_mut(&position.file) {
        Some(list) => {
            list.push(item);
        }
        None => {
            file_map.insert(&position.file, vec![item]);
        }
    };
    file_map
}

fn build_file_map(data: &Vec<Docs>) -> HashMap<&PathBuf, Vec<LookupReason>> {
    let mut file_map: HashMap<&PathBuf, Vec<LookupReason>> = HashMap::new();
    for doc_item in data.iter() {
        if let Some(position) = &doc_item.docs.attr.position {
            file_map = insert_position(
                file_map,
                position,
                LookupReason {
                    // docs: doc_item,
                    position: position,
                    // field: FieldType::Attr,
                },
            );
        }
        if let Some(lambda) = &doc_item.docs.lambda {
            if let Some(position) = &lambda.position {
                file_map = insert_position(
                    file_map,
                    position,
                    LookupReason {
                        // docs: doc_item,
                        position: position,
                        // field: FieldType::Lambda,
                    },
                );
            }
        }
    }
    file_map
}

/// Collect all positions that need to be looked up in advance
/// This saves time afterwards, since we can iterate over the whole file only once and save all interesting ast positions
fn collect_file_positions(lookups: &Vec<LookupReason>) -> HashMap<usize, Vec<usize>> {
    let mut positions: HashMap<usize, Vec<usize>> = HashMap::new();
    for lookup in lookups {
        match positions.get_mut(&lookup.position.line) {
            Some(cols) => {
                cols.push(lookup.position.column);
            }
            None => {
                positions.insert(lookup.position.line, vec![lookup.position.column]);
            }
        }
    }
    positions
}

fn fill_docs(
    data: &Vec<Docs>,
    pos_doc_map: &HashMap<&FilePosition, Option<NixDocComment>>,
) -> Vec<Docs> {
    let mut filled_docs = data.clone();
    for item in filled_docs.iter_mut() {
        if let Some(position) = &item.docs.attr.position {
            if let Some(Some(doc_comment)) = pos_doc_map.get(&position) {
                item.docs.attr.content = doc_comment.content.clone();
            }
        }
        if let Some(lambda) = item.docs.lambda.as_mut() {
            if let Some(position) = &lambda.position {
                if let Some(Some(doc_comment)) = pos_doc_map.get(&position) {
                    lambda.content = doc_comment.content.clone();
                    lambda.countApplied = doc_comment.count_applied;
                }
            }
        }
    }
    filled_docs
}

impl<'a> BulkProcessing for Pasta {
    fn new(path: &PathBuf) -> Self {
        let start_time = Instant::now();
        let data = Pasta::from_file(path);

        let file_map = build_file_map(&data);

        let mut pos_doc_map: HashMap<&FilePosition, Option<NixDocComment>> = HashMap::new();
        for (path, lookups) in file_map.iter() {
            if !path.exists() {
                println!("file does not exist: {:?} Skipping.", path);
                continue;
            }

            let positions = collect_file_positions(lookups);

            println!(
                "{:?}: Lookups {:?}",
                path.file_name().unwrap(),
                positions.len()
            );

            let doc_index = DocIndex::new(path, positions);

            for lookup in lookups {
                pos_doc_map.insert(
                    lookup.position,
                    doc_index.get_docs(lookup.position.line, lookup.position.column),
                );
            }
        }
        let mut filled_docs = fill_docs(&data, &pos_doc_map);

        let categories = categorize(&filled_docs);
        let alias_map = init_alias_map(&data, categories);

        let mut doc_map: HashMap<Rc<Vec<String>>, Docs> = HashMap::new();
        for item in filled_docs.iter_mut() {
            item.aliases = alias_map.get(&item.path).map(|i| i.to_owned());
            doc_map.insert(Rc::clone(&item.path), item.clone());
        }

        let end_time = Instant::now();
        println!(
            "parsed: {} doc comments / AST Positions, from {} files in {:?}",
            pos_doc_map.len(),
            file_map.len(),
            end_time - start_time
        );

        Self {
            docs: filled_docs,
            doc_map,
        }
    }
}
