import { MetaData } from "../nix";
import nixLibs from "./lib.json";
import nixBuiltins from "./builtins.json";

export const data: MetaData = [
  ...(nixLibs as MetaData),
  ...(nixBuiltins as MetaData),
].sort((a, b) => a.name.localeCompare(b.name));
