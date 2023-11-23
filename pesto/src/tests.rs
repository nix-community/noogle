#[cfg(test)]
mod tests {

    use std::{ffi::OsStr, format, fs, path::PathBuf};

    use crate::position::{DocComment, DocIndex, TextPosition};

    use expect_test::expect_file;

    fn dir_tests<F>(dir: &str, get_actual: F)
    where
        F: Fn(&PathBuf, (usize, usize)) -> String,
    {
        let base_path: PathBuf = [env!("CARGO_MANIFEST_DIR"), "test_data", dir]
            .iter()
            .collect();

        let entries = base_path.read_dir().unwrap();

        for entry in entries {
            let path = entry.unwrap().path();

            if path.extension() != Some(OsStr::new("nix")) {
                continue;
            }

            println!("testing: {}", path.display());

            let mut pos_path = path.clone();
            pos_path.set_extension("pos");
            let raw_pos = fs::read_to_string(&pos_path).unwrap();
            let pos: TextPosition = serde_json::from_str(&raw_pos).unwrap();

            let actual = get_actual(&path, (pos.line, pos.column));

            expect_file![path.with_extension("expect")].assert_eq(&actual);
        }
    }

    #[test]
    fn test_main() {
        dir_tests("atom", |path, (line, column)| {
            let pos = DocIndex::new(path);

            format!("{:?}", pos.get_docs(line,column))
        })
    }
}
