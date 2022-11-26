import { BasicList, BasicListItem } from "../components/basicList";
import { useState, useMemo } from "react";
import { Box } from "@mui/material";
import FunctionItem from "../components/functionItem/functionItem";
import { NixType } from "../types/basicDataView";
import { Preview } from "../components/preview/preview";

const libfuns = {
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
  toString: {
    "attr-path": "builtins.toString'",
    "doc-url":
      "https://nixos.org/manual/nix/stable/language/builtins.html#builtins-toString",
    source: "builtin",
    from: "any",
    to: "string",
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
    to: "true",
  },
  all: {
    "attr-path": "lib.all",
    "doc-url":
      "https://nixos.org/manual/nixpkgs/stable/#sec-functions-library-lists",
    source: "nixpkgs",
    from: "list",
    to: "true",
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

export type FuncData = {
  name: string;
  info: {
    "attr-path": string;
    "doc-url": string;
    source: string;
    from: string;
    to: string;
  };
};

const mockData: FuncData[] = Object.entries(libfuns).map(([key, value]) => ({
  name: key,
  info: value,
}));

const pipe =
  (...fns: ((arr: FuncData[]) => FuncData[])[]) =>
  (x: FuncData[]) =>
    fns.reduce((v, f) => f(v), x);

const search =
  (term: string) =>
  (data: FuncData[]): FuncData[] => {
    return data.filter((item) => {
      return Object.values(item).some((value) => {
        const valueAsString = value.toString();
        return valueAsString.toLowerCase().includes(term.toLocaleLowerCase());
      });
    });
  };
const filter =
  (to: NixType, from: NixType) =>
  (data: FuncData[]): FuncData[] => {
    return data.filter(({ info }) => info.from === from && info.to === to);
  };

export default function FunctionsPage() {
  // const [visibleFuncs, setVisibleFuncs] = useState(mockData);
  const [selected, setSelected] = useState<string | null>(null);
  const [term, setTerm] = useState<string>("");
  const [to, setTo] = useState<NixType>("any");
  const [from, setFrom] = useState<NixType>("any");

  const handleSelect = (key: string) => {
    setSelected((curr) => {
      if (curr === key) {
        return null;
      } else {
        return key;
      }
    });
  };

  const filteredData = useMemo(
    () => pipe(filter(to, from), search(term))(mockData),
    [to, from, term]
  );

  const handleSearch = (term: string) => {
    setTerm(term);
  };

  const handleFilter = (t: NixType, mode: "to" | "from") => {
    if (mode === "from") {
      setFrom(t);
    }
    if (mode === "to") {
      setTo(t);
    }
  };

  const preRenderedItems: BasicListItem[] = filteredData.map(
    ({ name, info }) => ({
      item: (
        <Box
          sx={{
            width: "100%",
            height: "100%",
          }}
          onClick={() => handleSelect(name)}
        >
          <FunctionItem name={name} info={info} selected={selected === name} />
        </Box>
      ),
      key: name,
    })
  );
  const preview = (
    <Preview func={mockData.find((f) => f.name === selected) || mockData[0]} />
  );

  return (
    <Box sx={{ ml: 2 }}>
      <BasicList
        items={preRenderedItems}
        handleSearch={handleSearch}
        handleFilter={handleFilter}
        preview={selected ? preview : null}
      />
    </Box>
  );
}
