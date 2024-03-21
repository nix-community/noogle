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
///
/// Simple lambdas (not partially applied)
///   Match primop: (Doesnt have source position)
///      Eq countApplied,
///      Eq content
///      Other isPrimop,
///      Content not empty
///   Match Non-Primop
///      Eq position
pub fn find_aliases(item: &Docs, list: &Vec<&Docs>) -> AliasList {
    // dbg!("finding alias for", &item.path);
    let res: AliasList = list
        .iter()
        .filter_map(|other| {
            if let (Some(s_meta), Some(o_meta)) = (&item.docs.lambda, &other.docs.lambda) {
                // Avoid creating an alias for the same item.
                if item.path == other.path {
                    return None;
                }
                // Both functions MUST have the same source position.
                // Otherwise they CANNOT be a real alias.
                if s_meta.position != o_meta.position {
                    return None;
                }
                return match (o_meta.isPrimop, s_meta.isPrimop) {
                    // Both PrimOp
                    (true, true) => {
                        match s_meta.countApplied {
                            Some(0) => {
                                if s_meta.name.is_some() && s_meta.name == o_meta.name {
                                    return Some(other.path.clone());
                                }
                            }
                            _ => {
                                if s_meta.countApplied == o_meta.countApplied
                                    && item.path.last() == other.path.last()
                                {
                                    return Some(other.path.clone());
                                }
                            }
                        }

                        None
                    }
                    // Both None PrimOp
                    (false, false) => {
                        // Both functions may be an alias only if at least one of them is not partially applied
                        if s_meta.countApplied == Some(0) || o_meta.countApplied == Some(0) {
                            return Some(other.path.clone());
                        }
                        // Last resort try to find all functions with:
                        // - same source position
                        // - same isPrimop
                        // - same name
                        // It is very likely a real alias
                        if s_meta.countApplied != Some(0) {
                            if item.path.last() == other.path.last() {
                                // dbg!("ADDING Fallback ALIAS", &item.path);
                                return Some(other.path.clone());
                            }
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
/// TODO: Migrate to use a HashMap<SourcePosition, Vec<&Docs>>
/// Alias can only ever exist if they share the same lambda source position.
/// False positives can be filtered by using "findAlias" function
///
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
            if lambda.isFunctor == Some(true) {
                continue;
            }
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
            // Skip functors
            if lambda.isFunctor == Some(true) {
                continue;
            }
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
