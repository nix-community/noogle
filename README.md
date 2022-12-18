🚧 under construction 🚧

Any contributions are welcome

# [Noogle](https://noogle.dev)

Noogle is a Nix API search engine. It allows you to search functions based on their types and other attributes in `nix` projects. In `nixpkgs` especially the `builtins` and `lib` attributes.

- Beginners-friendly search for nix and nix-related functions
- Expert search with directly typing type signatures
- Search functions based on:
  - type 
  - signature
  - name
- tree-search from one type to another
 
## How it works

### Indexers:

Data collections need to be up-to-date
Those collections are then combined and dumped somewhere (db / json)

For the indexing i currently use:

- Nixdoc (a fork) to collect nixpkgs.lib informations
- nix __dump-builtins + builtins-types.json for the nix builtins

As some parts of nix already have nixos modules their input/output can be discovered. I still lack some tool to integrate that into noogle.

### Search:

- haskell-like types are parsed and splitted between input and ouput
- text search, looks in all metadata fields for an exact matching word or character sequence. I dont have elastic search yet.

# View the prototype [here](https://noogle.dev)

## We need your help / what is missing

- Parsing `Types:` into a real type signature tree
- Upstream missing type informations (like in /lib/attrsets.nix)
- Write type signatures for the `builtins` in json
- Add path, where each function can be imported from. e.g. `lib.makeOverridable` or `lib.customisation.makeOverridable` (it is available in both sets)
- Website
    - Make sure functions with missing type signatures can be found too
    - Add filter by tags e.g. lib.lists
    - Mobile optimization for reading on the go
- Clean up / enhance my nixdoc fork. 
    - Make the `sloppy` parser more error resistant
    - Some valueable information can be used from the rnix AST ?

## Contribute

Contributions are very welcome just file a PR or issue

### Build this page

`nix build .#`

### Develop

`nix develop`

This command creates the node_modules folder with all needed dependencies based on dream2nix.
