import { NixFunctionSet, NixType } from "../types/nix";

export const nixFuns: NixFunctionSet = {
    mapAttrs: {
      "attr-path": "builtins.mapAttrs",
      "doc-url":
        "https://nixos.org/manual/nix/stable/language/builtins.html#builtins-mapAttrs",
      source: "builtin",
      from: "attrset",
      to: "attrset",
    },
    "mapAttrs'": {
      "attr-path": "lib.mapAttrs'",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-attrset",
      source: "nixpkgs",
      from: "attrset",
      to: "attrset",
    },
    genAttrs: {
      "attr-path": "lib.genAttrs",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-attrset",
      source: "nixpkgs",
      from: "list",
      to: "attrset",
    },
    forEach: {
      "attr-path": "lib.forEach",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    foldr: {
      "attr-path": "lib.foldr",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "any",
    },
    foldl: {
      "attr-path": "lib.foldl",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "any",
    },
    "foldl'": {
      "attr-path": "lib.foldl'",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "any",
    },
    imap0: {
      "attr-path": "lib.imap0",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    imap1: {
      "attr-path": "lib.imap1",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    concatMap: {
      "attr-path": "lib.concatMap",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    flatten: {
      "attr-path": "lib.flatten",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    remove: {
      "attr-path": "lib.remove",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    findSingle: {
      "attr-path": "lib.findSingle",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "any",
    },
    findFirst: {
      "attr-path": "lib.findFirst",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "any",
    },
    any: {
      "attr-path": "lib.any",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "bool",
    },
    all: {
      "attr-path": "lib.all",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "bool",
    },
    count: {
      "attr-path": "lib.count",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "int",
    },
    optional: {
      "attr-path": "lib.optional",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "bool",
      to: "list",
    },
    optionals: {
      "attr-path": "lib.optionals",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "bool",
      to: "list",
    },
    toList: {
      "attr-path": "lib.toList",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "any",
      to: "list",
    },
    toString: {
      "attr-path": "builtins.toString'",
      "doc-url":
        "https://nixos.org/manual/nix/stable/language/builtins.html#builtins-toString",
      source: "builtin",
      from: "any" as NixType,
      to: "string" as NixType,
    },
    range: {
      "attr-path": "lib.range",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "int",
      to: "list",
    },
    partition: {
      "attr-path": "lib.partition",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    "groupBy'": {
      "attr-path": "lib.groupBy'",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    groupBy: {
      "attr-path": "lib.groupBy",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    zipListsWith: {
      "attr-path": "lib.zipListsWith",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    zipLists: {
      "attr-path": "lib.zipLists",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    reverseList: {
      "attr-path": "lib.reverseList",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    listDfs: {
      "attr-path": "lib.listDfs",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "attrset",
    },
    toposort: {
      "attr-path": "lib.toposort",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    sort: {
      "attr-path": "lib.sort",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    compareLists: {
      "attr-path": "lib.compareLists",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "int",
    },
    naturalSort: {
      "attr-path": "lib.naturalSort",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    take: {
      "attr-path": "lib.take",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    sublist: {
      "attr-path": "lib.sublist",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    last: {
      "attr-path": "lib.last",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "any",
    },
    init: {
      "attr-path": "lib.init",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    crossLists: {
      "attr-path": "lib.crossLists",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    unique: {
      "attr-path": "lib.unique",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    intersectLists: {
      "attr-path": "lib.intersectLists",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    subtractLists: {
      "attr-path": "lib.subtractLists",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "list",
    },
    mutuallyExclusive: {
      "attr-path": "lib.mutuallyExclusive",
      "doc-url":
        "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
      source: "nixpkgs",
      from: "list",
      to: "bool",
    },
  };
  