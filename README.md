# [Noogle](https://noogle.dev)

![Website](https://img.shields.io/website?down_message=noogle.dev&up_message=noogle.dev&url=https%3A%2F%2Fnoogle.dev)
![GitHub top language](https://img.shields.io/github/languages/top/hsjobeki/noogle)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/hsjobeki/noogle/main.yml)

### Noogle is a simple Nix API search engine. It lets you search Nix functions.

## Current Features

- [x] Beginners-friendly search for Nix and Nix-related functions.
  - Render documentation comments optimized for readability.
  - Search optimized for English language and Nix function-names.
- [x] Filter by **type** signatures.
  - Function types are parsed and interpreted.
- [x] Noogle also knows stuff that is not (yet) officially documented.
  - Types of `builtins` (including `builtins.derivation`).
  - Can be extended via markdown contributions to Noogle.
  - Always shows the latest docs based on the main branch of Nixpkgs.
- [x] Outputs pre-rendered static HTML that is indexable by other search
      engines.
- [x] Wasm based performant search.

## Available data

There are the following subsets of Nix and Nixpkgs functions available.

Recursively indexed:

- `lib`
- `pkgs.rustPackages`

> Recursively means all deeply nested sub-attributes.

Normally indexed:

- `builtins`
- `pkgs.stdenv`
- `pkgs.dockerTools`
- `pkgs.writers`
- `pkgs.pythonPackages`
- `pkgs.haskell.lib`
- `pkgs.haskell.lib`

# Off the tree functions

Some function are not part of the evaluation value of `default.nix` in Nixpkgs.
They must be imported individually.

- `make-disk-image`

---

All Indexing is done via the [pasta](./pasta/) module. PRs welcome!

## Contribute

Contributions are very welcome just file a PR or issue. Indexed data can be
added very easily in `./pasta/src/eval.nix`.

> Note: Indexed data must evaluate!

### Build this page

`nix build .#ui`

This page generates static HTML pages. One page per API function.

It automatically includes meta tags for other search engines like Google or
Bing.

Searching within the page is done via [pagefind](https://pagefind.app/) which is
only available in the production build.

### Develop

`nix develop`

This command creates the `node_modules` directory with all needed dependencies
based on `dream2nix`.
