#[cfg(test)]
mod tests {
    use std::{fs, path::PathBuf};

    use crate::replace_all;
    use expect_test::expect_file;
    use rowan::ast::AstNode;

    #[test]
    fn test_snapshot_mixed() {
        let path: PathBuf = [env!("CARGO_MANIFEST_DIR"), "test_data", "mixed.nix"]
            .iter()
            .collect();
        let src = fs::read_to_string(&path).unwrap();
        let nix = rnix::Root::parse(&src).ok().expect("failed to parse input");

        let (res, _count) = replace_all(nix.syntax().to_owned());

        let actual = res.unwrap().to_string();

        expect_file![path.with_extension("expect")].assert_eq(&actual);
    }
}
