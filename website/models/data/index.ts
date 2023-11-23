import { MetaData } from "../nix";
// import nixLibs from "./lib.json";
// import nixBuiltins from "./builtins.json";
// import nixTrivialBuilders from "./trivial-builders.json";
const mock = {
  id: "mock",
  category: "mock",
  name: "mock",
  fn_type: null,
  description: "No data yet in dev mode",
  example: null,
  line: null,
};

export const data: MetaData = [
  mock,
  // ...(nixLibs as MetaData),
  // ...(nixBuiltins as MetaData),
  // ...(nixTrivialBuilders as MetaData),
].sort((a, b) => a.name.localeCompare(b.name));
