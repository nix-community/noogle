import { MetaData } from "../nix";
import nixTrivialBuilders from "./build_support.json" assert { type: "json" };
import nixBuiltins from "./builtins.json" assert { type: "json" };
import nixLibs from "./lib.json" assert { type: "json" };

export const data: MetaData = [
  ...(nixLibs as MetaData),
  ...(nixBuiltins as MetaData),
  ...(nixTrivialBuilders as MetaData),
].sort((a, b) => a.name.localeCompare(b.name));
