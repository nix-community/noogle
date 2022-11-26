# [Noogle](https://hsjobeki.github.io/noogle/)

Noogle is a Nix API search engine. It allows you to search functions based on their types and other attributes in `nix` projects. In `nixpkgs` especially the `builtins` and `lib` attributes.

- Beginners-friendly search for nix and nix-related functions
- Expert search with directly typing type signatures
- Search functions based on:
  - type 
  - signature
  - name
- tree-search from one type to another
 
## How it works

The idea is to use a fork of `nixdoc`to generate json data from all functions. That have the `Type` field which is currently supported from nixdoc.

View the prototype [here](https://hsjobeki.github.io/noogle/)

## Contrbute

### Build this page

`nix build .#`

### Develop

`nix develop`

This command creates the node_modules folder with all needed dependencies based on dream2nix.
