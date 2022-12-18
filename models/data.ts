import { MetaData } from "../types/nix";
import nixLibs from "../models/lib.json";
import nixBuiltins from "../models/builtins.json";

export const data: MetaData = [
  ...(nixLibs as MetaData),
  ...(nixBuiltins as MetaData),
].sort((a, b) => a.name.localeCompare(b.name));
