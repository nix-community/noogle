# Pesto

Pesto gives you the extra sauce on top of your lambda noodles.

From a given lambda position extract doc comments and some metadata.

## Plugin for Noogle

Extract 'nixdoc style comments' or doc-comment (RFC145) from a given file position.

Usage:

```sh
pesto --file "attrsets.nix" --line "11" --column "3"
->
{
    "doc": "content",
    "arguments": {},
    "countApplied": 3
}
```

## Contribute

Generating test dataset

`nix build .#pasta -L`

Which can the be passed

`cargo run -- --pos-file result --format json ./out.json`

It is recommended to remove all unneeded entries and operate on minimal list that contains only one entry.
