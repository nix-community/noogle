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
