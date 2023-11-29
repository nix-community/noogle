use std::{collections::HashMap, path::PathBuf, println, rc::Rc, time::Instant, vec};

use crate::{
    pasta::{Docs, Files, LambdaMeta, Pasta},
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

/// Build categories for efficiently finding aliases. (This is very expensive O(n^2). )
/// Aliases can only exist within one subgroup, iterating over other items is a waste of time.
/// With the current value introspection, any value that is an alias of a builtin, also inherits the builtins docs and the isPrimop flag set.
///
/// Group docs into the following subgroups
/// 1. primop_lambdas
/// e.g, lib.add, builtins.add
///
/// 2.non_primop_lambdas
/// e.g, lib.attrByPath
///
/// 3.partially_applied lambdas
/// e.g., concatLines (is concatMapStrings applied with f := Lambda<(s: s + "\n");>)
/// This is a special case, it is very hard, to properly detect aliases at this level. Although the alias must also be found in this subgroup.
///
fn categorize(data: &Vec<Docs>) -> (Vec<&Docs>, Vec<&Docs>, Vec<&Docs>) {
    // For finding aliases.
    // Group docs into these subgroups.
    // Aliases can only exist within one subgroup, iterating over other items is a waste of time.
    let mut primop_lambdas: Vec<&Docs> = vec![];
    let mut non_primop_lambdas: Vec<&Docs> = vec![];
    let mut partially_applieds: Vec<&Docs> = vec![];

    for item in data.iter() {
        if let Some(lambda) = &item.docs.lambda {
            match lambda.countApplied {
                Some(0) | None => {
                    if lambda.isPrimop {
                        primop_lambdas.push(&item);
                    }
                    if !lambda.isPrimop {
                        non_primop_lambdas.push(&item);
                    }
                }
                _ => {
                    // #
                    partially_applieds.push(&item);
                }
            }
        }
    }
    (primop_lambdas, non_primop_lambdas, partially_applieds)
}

fn init_alias_map(
    data: &Vec<Docs>,
    categories: (Vec<&Docs>, Vec<&Docs>, Vec<&Docs>),
) -> HashMap<Rc<Vec<String>>, Vec<Rc<Vec<String>>>> {
    let (primop_lambdas, non_primop_lambdas, partially_applieds) = categories;

    let mut primops: Vec<&Docs> = vec![];
    primops.extend(primop_lambdas.iter());
    primops.extend(partially_applieds.iter());

    let mut non_primops: Vec<&Docs> = vec![];
    non_primops.extend(non_primop_lambdas.iter());
    non_primops.extend(partially_applieds.iter());

    let mut alias_map: HashMap<Rc<Vec<String>>, Vec<Rc<Vec<String>>>> = HashMap::new();
    for item in data.iter() {
        if let Some(lambda) = &item.docs.lambda {
            match lambda.countApplied {
                Some(0) => {
                    if lambda.isPrimop {
                        alias_map.insert(item.path.clone(), find_aliases(&item, &primop_lambdas));
                    }
                    if !lambda.isPrimop {
                        alias_map
                            .insert(item.path.clone(), find_aliases(&item, &non_primop_lambdas));
                    }
                }
                None => {
                    if lambda.isPrimop {
                        alias_map.insert(item.path.clone(), find_aliases(&item, &primops));
                    }
                    if !lambda.isPrimop {
                        alias_map.insert(item.path.clone(), find_aliases(&item, &non_primops));
                    }
                }
                Some(_) => {
                    alias_map.insert(item.path.clone(), find_aliases(&item, &partially_applieds));
                }
            };
        }
    }
    alias_map
}
impl<'a> BulkProcessing for Pasta {
    fn new(path: &PathBuf) -> Self {
        let start_time = Instant::now();
        let data = Pasta::from_file(path);

        let file_map = build_file_map(&data);

        let mut pos_doc_map: HashMap<&FilePosition, Option<NixDocComment>> = HashMap::new();
        for (path, lookups) in file_map.iter() {
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

/// How to find aliases:
/// Match
/// partially applied functions -> special case, don't know how it is "correct". Would need access to the upvalues?
/// Simple lambdas (not partially applied)
///   Match primop: (Doesnt have source position)
///      Eq countApplied,
///      Eq content
///      Other isPrimop,
///      Content not empty
///  Match Non-Primop
///     Eq position
fn find_aliases(item: &Docs, list: &Vec<&Docs>) -> Vec<Rc<Vec<String>>> {
    // println!("find aliases for {:?} \n\n in {:?}", item, list);
    let res: Vec<Rc<Vec<String>>> = list
        .iter()
        .filter_map(|other| {
            if let (Some(s_meta), Some(o_meta)) = (&item.docs.lambda, &other.docs.lambda) {
                // Avoid creating an alias for the same item.
                if item.path == other.path {
                    return None;
                }
                if count_applied(s_meta) != 0
                    // Use less accurate name aliases. This can lead to false positives
                    // TODO: figure out the proper way
                    && count_applied(o_meta) == count_applied(s_meta)
                    && item.path.last().unwrap() == other.path.last().unwrap()
                {
                    return Some(other.path.clone());
                }
                return match s_meta.isPrimop {
                    true => {
                        let is_empty = match &s_meta.content {
                            Some(c) => c.is_empty(),
                            None => true,
                        };

                        if o_meta.isPrimop
                            && o_meta.content == s_meta.content
                            && !is_empty
                            && count_applied(s_meta) == 0
                            && count_applied(o_meta) == 0
                        {
                            return Some(other.path.clone());
                        }
                        None
                    }
                    false => {
                        if s_meta.position == o_meta.position
                            && count_applied(s_meta) == 0
                            && count_applied(o_meta) == 0
                        {
                            return Some(other.path.clone());
                        }
                        None
                    }
                };
            }
            None
        })
        .collect();
    res
}

fn count_applied(meta: &LambdaMeta) -> usize {
    meta.countApplied.unwrap_or(0)
}
