#[cfg(test)]
mod tests {

    use serde::{Deserialize, Serialize};
    use std::{
        collections::HashMap, ffi::OsStr, format, fs, path::PathBuf, println, process::Command,
        rc::Rc,
    };
    use yaml_front_matter::{Document as MdDocument, YamlFrontMatter};

    use crate::{
        bulk::BulkProcessing,
        markdown::find_type,
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

    fn docs_to_test_content(data: &Pasta) -> Vec<TestContent> {
        let contents: Vec<TestContent> = data
            .docs
            .iter()
            .map(|ref i| {
                let document = &Document::new(i, &data.doc_map);
                return TestContent {
                    name: document.meta.path.join("."),
                    content: document
                        .content
                        .as_ref()
                        .map(|inner| inner.content.as_ref().map(|i| i.clone()))
                        .flatten(),
                };
            })
            .collect();
        return contents;
    }
    fn docs_to_test_source(data: &Pasta) -> Vec<TestSource> {
        let contents: Vec<TestSource> = data
            .docs
            .iter()
            .map(|ref i| {
                let document = &Document::new(i, &data.doc_map);
                return TestSource {
                    name: document.meta.path.join("."),
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
        return contents;
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
    struct TestSource {
        name: String,
        source: Option<String>,
    }

    #[test]
    fn test_content_inheritance() {
        dir_tests("inheritance", "json", |path| {
            let data: Pasta = Pasta::new(&PathBuf::from(path));
            let sources = docs_to_test_source(&data);

            serde_json::to_string_pretty(&sources).unwrap()
        })
    }

    #[derive(Serialize, Debug)]
    struct TestContent {
        name: String,
        content: Option<String>,
    }
    #[test]
    fn test_content_format() {
        dir_tests("content_format", "json", |path| {
            let data: Pasta = Pasta::new(&PathBuf::from(path));
            let contents = docs_to_test_content(&data);
            serde_json::to_string_pretty(&contents).unwrap()
        })
    }

    #[test]
    fn test_type_from_markdown() {
        dir_tests("types", "md", |path| {
            let markdown = fs::read_to_string(&path).unwrap();
            let signature = find_type(&markdown);
            format!("{:#?}", signature)
        })
    }

    #[test]
    fn test_bulk() {
        dir_tests("bulk", "json", |path| {
            let data: Pasta = Pasta::new(&PathBuf::from(path));
            serde_json::to_string_pretty(&data.docs[0..10]).unwrap()
        })
    }

    fn find_repo_root() -> Option<PathBuf> {
        let output = Command::new("git")
            .args(&["rev-parse", "--show-toplevel"])
            .output()
            .ok()?
            .stdout;

        let path_str = String::from_utf8(output).ok()?.trim().to_string();
        Some(PathBuf::from(path_str))
    }
    #[test]
    fn test_frontmatter() {
        dir_tests("frontmatter", "md", |path| {
            #[derive(Deserialize, Serialize, Debug)]
            struct Meta {
                #[serde(flatten)]
                content: HashMap<String, serde_yaml::Value>,
            }
            let markdown = fs::read_to_string(&path).unwrap();

            let document: MdDocument<Meta> = YamlFrontMatter::parse(&markdown).unwrap();

            // Access the metadata
            let metadata = document.metadata.content;

            let final_import: PathBuf = if let Some(field) = metadata.get("import") {
                let imported = field
                    .as_str()
                    .expect("Error: import field must be a string");
                match PathBuf::from(imported).is_relative() {
                    true => PathBuf::from_iter(vec![
                        // Cannot fail because every file has a parent directory
                        path.parent().unwrap().to_path_buf(),
                        PathBuf::from(imported),
                    ]),
                    false => PathBuf::from_iter(vec![
                        find_repo_root().expect("Could not find root directoy of repository. Make sure you have git installed and are in a git repository"),
                        PathBuf::from(format!(".{imported}")),
                    ]),
                }
            } else {
                // This should never panic
                // It is only here for testing purposes
                panic!("No import found");
            };

            let actual = fs::read_to_string(&final_import)
                .expect(format!("Could not read file: {:?}", &final_import).as_str());

            serde_json::to_string_pretty(&actual).unwrap()
        })
    }
}
