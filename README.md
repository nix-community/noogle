# [Noogle](https://noogle.dev)

![Website](https://img.shields.io/website?down_message=noogle.dev&up_message=noogle.dev&url=https%3A%2F%2Fnoogle.dev)
![GitHub top language](https://img.shields.io/github/languages/top/hsjobeki/noogle)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/hsjobeki/noogle/main.yml)
![built-with-dream2nix](https://img.shields.io/badge/built%20with-dream2nix-blue)

Noogle is a Nix API search engine. It allows you to search functions based on
their types and other attributes in `nix` projects. In `nixpkgs` especially
the `builtins` and `lib` attributes.

## Current Features

- [x] Beginners-friendly search for nix and nix-related functions
- [x] Search by **type** signatures
- [x] Sorted by relevance based on:
  - id
  - name
  - category
  - description
  - example
- [ ] tree-search from one type to another
- [ ] functions from external libraries and nix frameworks

## Available data

Currently there are the following subsets of nix functions available.

- nix/**builtins**
- nixpkgs/**lib**
- nixpkgs/build-support/**trivial-builders**

### Search

- types are parsed and interpreted
- text search, looks in all metadata fields for an **exact match** word
or character sequence.
Noogle does not offer elastic search yet. And it remains open if it ever will.

> If you have a function/set that you would like to find here,
> don't hesitate to file an issue.

**View the prototype [here](https://noogle.dev)**

## We need your help / what is missing

### Extend available function

Currently there is only a limited set of data.

Because nixpkgs is very inconsistently documented it is
really hard to extend the scope.

So if you want to help noogle, we must improve nixpkgs itself.

- [ ] Parsing `Types:` into a real type signature tree
- [ ] Fix: line beginnings that include Asterisk (*) : Is interpreted as List-Markdown
- [x] Upstream missing type informations (like in /lib/attrsets.nix)
- [x] Write type signatures for the `builtins` in json
- [ ] Add path, where each function can be imported from.

e.g. `lib.makeOverridable` or `lib.customisation.makeOverridable`
it is available in both sets

### Website

- [x] improve share (deeplinks)
- [ ] social interactions
- [ ] Add filter by tags e.g. lib.lists
- [ ] Prepare for scaling up (we expect more users)
- [x] Mobile optimization for reading on the go

## Nixdoc / Indexer (fork)

- [ ] Parse types directly while also parsing comments
- [ ] Extend the scope, so that is can parse more comments

## Contribute

Contributions are very welcome just file a PR or issue

### Build this page

`nix build .#`

### Develop

`nix develop`

This command creates the node_modules folder
with all needed dependencies based on dream2nix.
