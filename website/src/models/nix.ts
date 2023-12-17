export type NixType =
  | "function"
  | "attrset"
  | "list"
  | "string"
  | "int"
  | "bool"
  | "any";

export const nixTypes: NixType[] = [
  "any",
  "attrset",
  "list",
  "string",
  "bool",
  "int",
];
