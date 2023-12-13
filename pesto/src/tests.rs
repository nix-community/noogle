#[cfg(test)]
mod tests {
    use serde::Serialize;
    use std::{collections::HashMap, ffi::OsStr, format, fs, path::PathBuf, println, rc::Rc};

    use crate::{
        bulk::BulkProcessing,
        pasta::{AliasList, Pasta, ValuePath},
        position::{DocComment, DocIndex, TextPosition},
        Document, FromDocs,
    };

    use expect_test::expect_file;

    fn dir_tests<F>(dir: &str, ext: &str, get_actual: F)
    where
        F: Fn(&PathBuf) -> String,
    {
        println!("{:?}", env!("CARGO_MANIFEST_DIR"));
        let base_path: PathBuf = [env!("CARGO_MANIFEST_DIR"), "test_data", dir]
            .iter()
            .collect();

        let entries = base_path.read_dir().unwrap();

        for entry in entries {
            let path = entry.unwrap().path();

            if path.extension() != Some(OsStr::new(ext)) {
                continue;
            }

            println!("testing: {}", path.display());

            let actual = get_actual(&path);

            expect_file![path.with_extension("expect")].assert_eq(&actual);
        }
    }

    #[test]
    fn test_atoms() {
        dir_tests("atom", "nix", |path| {
            let mut pos_path = path.clone();
            pos_path.set_extension("pos");
            let pos_str = fs::read_to_string(&pos_path).unwrap();

            let test_position: TextPosition = serde_json::from_str(&pos_str).unwrap();
            let line = test_position.line;
            let column = test_position.column;

            let mut positions: HashMap<usize, Vec<usize>> = HashMap::new();
            positions.insert(line, vec![column]);
            let pos = DocIndex::new(path, positions);
            format!("{:?}", pos.get_docs(line, column))
        })
    }
    #[derive(Serialize, Debug)]
    struct TestAlias {
        aliases: Option<AliasList>,
        path: Rc<ValuePath>,
    }
    #[test]
    fn test_aliases() {
        dir_tests("aliases", "json", |path| {
            let data: Pasta = Pasta::new(&PathBuf::from(path));
            let aliases: Vec<TestAlias> = data
                .docs
                .into_iter()
                .map(|i| TestAlias {
                    aliases: i.aliases.clone(),
                    path: i.path.clone(),
                })
                .collect();

            serde_json::to_string_pretty(&aliases).unwrap()
        })
    }

    #[derive(Serialize, Debug)]
    struct TestContent {
        name: String,
        content: Option<String>,
        source: Option<String>,
    }
    #[test]
    fn test_content_inheritance() {
        dir_tests("inheritance", "json", |path| {
            let data: Pasta = Pasta::new(&PathBuf::from(path));
            let contents: Vec<TestContent> = data
                .docs
                .into_iter()
                .map(|ref i| {
                    let document = &Document::new(i, &data.doc_map);
                    return TestContent {
                        name: document.meta.path.join("."),
                        content: document
                            .content
                            .as_ref()
                            .map(|inner| inner.content.map(|i| i.clone()))
                            .flatten(),
                        source: document
                            .content
                            .as_ref()
                            .map(|inner| {
                                inner
                                    .source
                                    .as_ref()
                                    .map(|i| i.path.map(|p| p.join(".")))
                                    .flatten()
                            })
                            .flatten(),
                    };
                })
                .collect();

            serde_json::to_string_pretty(&contents).unwrap()
        })
    }

    #[test]
    fn test_bulk() {
        dir_tests("bulk", "json", |path| {
            let data: Pasta = Pasta::new(&PathBuf::from(path));

            serde_json::to_string_pretty(&data.docs[0..10]).unwrap()
        })
    }
}
