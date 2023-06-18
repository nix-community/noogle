# [Noogle](https://noogle.dev)

![Website](https://img.shields.io/website?down_message=noogle.dev&up_message=noogle.dev&url=https%3A%2F%2Fnoogle.dev)
![GitHub top language](https://img.shields.io/github/languages/top/hsjobeki/noogle)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/hsjobeki/noogle/main.yml)
![built-with-dream2nix](https://img.shields.io/badge/built%20with-dream2nix-blue)

Connect with us on matrix: [#noogle:matrix.org](https://matrix.to/#/#noogle:matrix.org)

### Noogle is a Nix API search engine. It lets you search nix functions. 

## Current Features

- [x] Beginners-friendly search for nix and nix-related functions
  - Render documentation comments optimized for readability
  - We are working on a [standard]() for in-code-documentation
- [x] fuzzy-search.
  - show why/what terms matched.
  - Share results with a direct URL.
- [x] Noogle also knows stuff that is not officially documented.
  - Types of builtins. (including builtins.derivation)
  - Can be extended via markdown contributions to noogle.
  - Always shows the latest docs based on the main branch of nixpkgs.
- [x] Search by **type** signatures.
  - Function types are parsed and interpreted.
  - We are working on a standard way to write type-documentation: [typednix.dev](https://typednix.dev)

## Available data

There are the following subsets of nix functions available:

- nix/**builtins**
- nixpkgs/**lib**
- nixpkgs/build-support/**trivial-builders**

## Contribute

Contributions are very welcome to file a PR or issue.

### Build this page

`nix build .#`

### Develop

`nix develop`

This command creates the node_modules folder
with all needed dependencies based on dream2nix.
