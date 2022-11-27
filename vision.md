# noogle

A type based search engine for nixpkgs

Inspired by [hoogle](http://google.de)

- Easy to use for both beginners and advanced users.
- scales well for advanced professionals.
  - Easy to get started, but becomes even more usefull if the user has deeper nix understandings.
  
## Abstract

The nix language empowers the nix ecosystem. Its descriptive and functional approach enables the highly reproducible build system.
As contributers develop their frameworks on top of that, they need to handle metadata of all different kinds. Transforming lists and sets with into one another is the bread and butter of every nix developer. An simple yet effective search engine can assist the develpers choosing from a large set of functions. Enabling more people to get started with nix easier and improving productivity of professionals is the main goal of this project.

## Ideas & Concepts

Noogle provides an intuitive and scalable interface, to find functions in nixpkgs

based on:
- types
- signatures
- input-output
- names
  
filter options:
- tree-length
- usage count in nixpgks
- include / exclude specific subsets, e.g. "only show builtins"

In a preview area the following metainformation about an entry is displayed:

stage 1
- function name
- description
- signature
- examples
- link to source code
- reference to nix docs

stage 2
- applied function calls that include the users arguments

stage 3
- nix-repl in the browser to explore the function

## Technical realization

- Simple, userfriendly UI
- API for the database that handles the search algorithms and delivers some result to the UI
- type parser based on rnix or nil that parses and computes the metadata from nixpgks
  - incrementally computes types for every function based on usage and known types of the nix builtins
  - writes parsed information into the database
  - runs on a regular basis (e.g every 1 day)
- database that stores all scraped / parsed information about all nix functions
