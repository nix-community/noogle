mod comment;
mod pasta;
mod position;
mod tests;

use clap::Parser;
use std::{fs::File, io::Write, path::PathBuf, println};

use crate::{
    pasta::read_pasta,
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

// fn populate_map<'a>(
//     mut positions_by_file: HashMap<&'a PathBuf, Vec<&'a Docs>>,
//     position: &'a FilePosition,
//     docs: &'a Docs,
// ) -> HashMap<&'a PathBuf, Vec<&'a Docs>> {
//     match positions_by_file.get_mut(&position.file) {
//         Some(list) => {
//             list.push(docs);
//         }
//         None => {
//             positions_by_file.insert(&position.file, vec![docs]);
//         }
//     };
//     positions_by_file
// }

pub fn main() {
    // let mut output = io::stdout();
    let opts = Options::parse();

    if let Some(nix_file) = opts.file {
        let pos = DocIndex::new(&nix_file, vec![(opts.line.unwrap(), opts.column.unwrap())]);
        if let Some(docs) = pos.get_docs(opts.line.unwrap(), opts.column.unwrap()) {
            println!("{:?}", docs);
        }
    }

    if let Some(pos_file) = opts.pos_file {
        let mut data = read_pasta(&pos_file);
        println!("data length: {}", data.len());

        // Iter mutable, to change the doc "content" field
        for (idx, item) in data.iter_mut().enumerate() {
            println!("{}", idx);
            if let Some(position) = &item.docs.attr.position {
                let index = DocIndex::new(&position.file, vec![(position.line, position.column)]);
                let doc_comment = index.get_docs(position.line, position.column);
                if let Some(meta) = doc_comment {
                    item.docs.attr.content = meta.content;
                }
            }
            if let Some(lambda) = &mut item.docs.lambda {
                if let Some(position) = &lambda.position {
                    let index =
                        DocIndex::new(&position.file, vec![(position.line, position.column)]);
                    let doc_comment = index.get_docs(position.line, position.column);
                    if let Some(meta) = doc_comment {
                        lambda.content = meta.content;
                        lambda.countApplied = Some(usize::try_from(meta.count_applied).unwrap());
                    }
                }
            }
        }

        println!("{:?}", data.get(0));
        let mut out_file = File::create("out.json").unwrap();
        out_file.write(serde_json::to_string(&data).unwrap().as_bytes());
        // Group positions by file, to avoid opening the same file again.

        // let mut positions_by_file: HashMap<&PathBuf, Vec<&Docs>> = HashMap::new();
        // for item in &data {
        //     if let Some(ref position) = item.docs.attr.position {
        //         positions_by_file = populate_map(positions_by_file, &position, item);
        //     }
        //     if let Some(ref position) = item.docs.lambda.position {
        //         positions_by_file = populate_map(positions_by_file, &position, item);
        //     }
        // }

        // if let Some((f, _p)) = positions_by_file.get_key_value(&PathBuf::from(
        //     "/nix/store/9g6kcr0ny3k369ydl36c8mz2gf69432x-source/lib/strings-with-deps.nix",
        // )) {
        //     println!("{:?} {:?}", f, _p);
        // }

        // positions_by_file.iter().for_each(|(file, positions)| {
        //     let index = DocIndex::new(&file);
        //     positions.iter().for_each(|reason: &LookupReason| {
        //         let docs = index.get_docs(reason.position.line, reason.position.column);
        //         println!("{:?}", docs);
        //         data.iter()
        //             .map(|item| if item.path == reason.id { item } else { item });
        //     })
        // });
        // println!("{:?}", res);
        // if let Some(docs) = pos.get_docs() {
        //     println!("{:?}", docs);
        // }
    }
}
