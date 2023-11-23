mod comment;
mod position;
mod tests;

use clap::Parser;

use std::{collections::HashMap, fs, path::PathBuf, println};

use crate::position::{DocComment, DocIndex, FilePosition, LambdaDoc, TextPosition};

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
        let pos = DocIndex::new(&nix_file);
        if let Some(docs) = pos.get_docs(opts.line.unwrap(), opts.column.unwrap()) {
            println!("{:?}", docs);
        }
    }

    if let Some(pos_file) = opts.pos_file {
        let raw_pos = fs::read_to_string(&pos_file).unwrap();
        let positions: Vec<FilePosition> = serde_json::from_str(&raw_pos).unwrap();
        // TODO: group positions by file, to avoid opening the same file again.
        let mut positions_by_file: HashMap<&PathBuf, Vec<&FilePosition>> = HashMap::new();
        for position in positions.iter() {
            match positions_by_file.get_mut(&position.file) {
                Some(list) => list.push(position),
                None => {
                    //
                    positions_by_file.insert(&position.file, vec![position]);
                }
            };
        }
        for (f, p) in positions_by_file.iter() {
            println!("{:?} {:?}", f, p);
        }
        let res: Vec<Vec<Option<LambdaDoc>>> = positions_by_file
            .iter()
            .map(|(file, positions)| {
                let index = DocIndex::new(&file);
                let docs: Vec<Option<LambdaDoc>> = positions
                    .iter()
                    .map(move |pos| index.get_docs(pos.line, pos.column))
                    .collect();
                docs
            })
            .collect();

        println!("{:?}", res);
        // if let Some(docs) = pos.get_docs() {
        //     println!("{:?}", docs);
        // }
    }
}
