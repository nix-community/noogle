import { MetaData } from "../types/nix";
import nixLibs from "../models/lib.json";
import nixBuiltins from "../models/builtins.json";
import nixTrivialBuilders from "../models/trivial-builders.json";

export const data: MetaData = [
  ...(nixLibs as MetaData),
  ...(nixBuiltins as MetaData),
  ...(nixTrivialBuilders as MetaData),
].sort((a, b) => a.name.localeCompare(b.name));
