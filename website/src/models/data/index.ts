// import nixTrivialBuilders from "./build_support.json" assert { type: "json" };
// import nixBuiltins from "./builtins.json" assert { type: "json" };
// import nixLibs from "./lib.json" assert { type: "json" };
import all from "./json.json" assert { type: "json" };

export type Doc = (typeof all)[number];

export const data = all.sort((a, b) =>
  a.meta.title.localeCompare(b.meta.title)
);
