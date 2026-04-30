//! Snapshot-driven parser tests, modelled on `rnix-parser`'s
//! `src/tests.rs`.
//!
//! Each `.sig` file under `test_data/parser/{success,error}/` is parsed
//! and the resulting `Debug` rendering of the syntax tree is compared
//! against a sibling `.expect` file. To regenerate the snapshots after
//! an intentional change, run:
//!
//! ```sh
//! UPDATE_EXPECT=1 cargo test -p noogle-parser
//! ```

use std::{ffi::OsStr, fmt::Write, fs, path::PathBuf};

use expect_test::expect_file;

use crate::tokenize;

/// Walk every `.sig` file under `test_data/<dir>/{success,error}` and
/// compare `get_actual(input)` against the sibling `.expect` snapshot.
fn dir_tests<F>(dir: &str, get_actual: F)
where
    F: Fn(String) -> String,
{
    let base_path: PathBuf = [env!("CARGO_MANIFEST_DIR"), "test_data", dir]
        .iter()
        .collect();
    let success_path = base_path.join("success");
    let error_path = base_path.join("error");

    let entries = success_path
        .read_dir()
        .expect("success/ dir missing")
        .chain(error_path.read_dir().expect("error/ dir missing"));

    for entry in entries {
        let path = entry.unwrap().path();
        if path.extension() != Some(OsStr::new("sig")) {
            continue;
        }

        println!("testing: {}", path.display());

        let mut code = fs::read_to_string(&path).unwrap();
        // Match rnix-parser: trailing newlines from the editor shouldn't
        // bleed into the parsed tree.
        if code.ends_with('\n') {
            code.truncate(code.len() - 1);
        }

        let actual = get_actual(code);
        expect_file![path.with_extension("expect")].assert_eq(&actual);
    }
}

#[test]
fn tokenizer_dir_tests() {
    dir_tests("tokenizer", |code| {
        let mut out = String::new();
        for token in tokenize(&code) {
            // Render the token text as a debug-quoted string so newlines
            // and escapes stay visible in the snapshot.
            writeln!(out, "{:?} {:?}", token.kind, token.text).unwrap();
        }
        out
    });
}
