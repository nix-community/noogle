use std::{collections::HashMap, rc::Rc};

use crate::pasta::{AliasList, Docs, ValuePath};

// pub trait Aliases {
//     fn find_aliases(self) -> AliasList;
// }

// impl<'a> Aliases for DocIndex<'a> {
//     fn find_aliases(self) -> AliasList {

//     }
// }

/// Match
/// partially applied functions -> special case, don't know how it is "correct". Would need access to the upvalues?
/// Simple lambdas (not partially applied)
///   Match primop: (Doesnt have source position)
///      Eq countApplied,
///      Eq content
///      Other isPrimop,
///      Content not empty
///   Match Non-Primop
///      Eq position
pub fn find_aliases(item: &Docs, list: &Vec<&Docs>) -> AliasList {
    let res: AliasList = list
        .iter()
        .filter_map(|other| {
            if let (Some(s_meta), Some(o_meta)) = (&item.docs.lambda, &other.docs.lambda) {
                // Avoid creating an alias for the same item.
                if item.path == other.path {
                    return None;
                }

                return match (o_meta.isPrimop, s_meta.isPrimop) {
                    (true, true) => {
                        let is_empty = match &s_meta.content {
                            Some(c) => c.is_empty(),
                            None => true,
                        };
                        if s_meta.countApplied != Some(0)
                            && s_meta.countApplied == o_meta.countApplied
                        {
                            if item.path.last() == other.path.last() {
                                return Some(other.path.clone());
                            } else {
                                return None;
                            }
                        }

                        if o_meta.content == s_meta.content && !is_empty {
                            return Some(other.path.clone());
                        }
                        None
                    }
                    (false, false) => {
                        if s_meta.countApplied != Some(0) {
                            if item.path.last() == other.path.last() {
                                return Some(other.path.clone());
                            }
                        }

                        if s_meta.position == o_meta.position
                            && s_meta.countApplied == Some(0)
                            && s_meta.countApplied == o_meta.countApplied
                        {
                            return Some(other.path.clone());
                        }
                        None
                    }
                    _ => None,
                };
            }
            None
        })
        .collect();
    res
}

pub struct FnCategories<'a> {
    pub primop: Vec<&'a Docs>,
    pub casual: Vec<&'a Docs>,
    pub partial: Vec<&'a Docs>,
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
pub fn categorize(data: &Vec<Docs>) -> FnCategories {
    // For finding aliases.
    // Group docs into these subgroups.
    // Aliases can only exist within one subgroup, iterating over other items is a waste of time.
    let mut primop_lambdas: Vec<&Docs> = vec![];
    let mut non_primop_lambdas: Vec<&Docs> = vec![];
    let mut partially_applieds: Vec<&Docs> = vec![];

    for item in data.iter() {
        if let Some(lambda) = &item.docs.lambda {
            match lambda.countApplied {
                // Some(0) | None => {
                Some(0) => {
                    if lambda.isPrimop {
                        primop_lambdas.push(&item);
                    }
                    if !lambda.isPrimop {
                        non_primop_lambdas.push(&item);
                    }
                }
                _ => {
                    partially_applieds.push(&item);
                }
            }
        }
    }
    FnCategories {
        primop: primop_lambdas,
        casual: non_primop_lambdas,
        partial: partially_applieds,
    }
}

pub type AliasMap = HashMap<Rc<ValuePath>, AliasList>;

pub fn init_alias_map(data: &Vec<Docs>, categories: FnCategories) -> AliasMap {
    let primop_lambdas = categories.primop;
    let non_primop_lambdas = categories.casual;
    let partially_applieds = categories.partial;

    let mut primops: Vec<&Docs> = vec![];
    primops.extend(primop_lambdas.iter().chain(&partially_applieds));

    let mut non_primops: Vec<&Docs> = vec![];
    non_primops.extend(non_primop_lambdas.iter().chain(&partially_applieds));

    let mut alias_map: AliasMap = HashMap::new();
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
