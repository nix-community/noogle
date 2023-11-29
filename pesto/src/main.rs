mod bulk;
mod comment;
mod pasta;
mod position;
mod tests;

use clap::Parser;
use std::{collections::HashMap, path::PathBuf, println};

use crate::{
    bulk::BulkProcessing,
    pasta::Pasta,
    position::{DocComment, DocIndex},
};

#[derive(Debug, Parser)]
#[command(author, version, about)]
struct Options {
    /// Json file containing a list of file positions.
    /// Format: [{ file: String, line: Number, column: Number }]
    #[arg(long, conflicts_with_all=["line", "column", "file"])]
    pos_file: Option<PathBuf>,

    /// Path to the *.nix file that should be inspected.
    /// If provided, --line and --column must also be set.
    #[arg(long, requires_all=["line", "column", "file"])]
    file: Option<PathBuf>,
    /// Line of the expression.
    #[arg(short, long, requires_all=["line", "column", "file"])]
    line: Option<usize>,
    /// Column of the expression.
    #[arg(short, long, requires_all=["line", "column", "file"])]
    column: Option<usize>,
}

pub fn main() {
    // let mut output = io::stdout();
    let opts = Options::parse();

    if let Some(nix_file) = opts.file {
        let mut positions = HashMap::new();
        positions.insert(opts.line.unwrap(), vec![opts.column.unwrap()]);

        let pos = DocIndex::new(&nix_file, positions);

        if let Some(docs) = pos.get_docs(opts.line.unwrap(), opts.column.unwrap()) {
            println!("{:?}", docs);
        }
    }

    if let Some(pos_file) = opts.pos_file {
        let data = Pasta::new(&pos_file);
    }
}
