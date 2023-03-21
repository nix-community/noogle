import { MetaData } from "../nix";
import nixLibs from "./lib.json";
import nixBuiltins from "./builtins.json";
import nixTrivialBuilders from "./trivial-builders.json";

const data: MetaData = [
  ...(nixLibs as MetaData),
  ...(nixBuiltins as MetaData),
  ...(nixTrivialBuilders as MetaData),
].sort((a, b) => a.name.localeCompare(b.name));



export { data };
