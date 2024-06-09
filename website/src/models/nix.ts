import { Doc, builtinTypes } from "./data";

export type NixType =
  | "function"
  | "attrset"
  | "list"
  | "string"
  | "number"
  | "bool"
  | "path"
  | "never"
  | "any";

export const nixTypes: NixType[] = [
  "any",
  "attrset",
  "list",
  "string",
  "path",
  "bool",
  "never",
  "number",
];

const interpretToken = (token: string): NixType | undefined => {
  if (token === "[" || token === "]") {
    return "list";
  } else if (token === "{" || token === "}") {
    return "attrset";
  } else if (nixTypes.includes(token as NixType)) {
    return token as NixType;
  } else if (["int", "float", "double"].includes(token)) {
    return "number";
  } else if (["derivation", "package", "fileset"].includes(token)) {
    return "attrset";
  } else if (["storepath"].includes(token) || token.includes("path")) {
    return "path";
  } else if (["a", "b", "c", "d", "e"].includes(token)) {
    return "any";
  } else {
    return undefined;
  }
};

export function interpretType(
  fnName?: string,
  fnType?: string
): { args: NixType[]; returns: NixType[] } {
  if (fnType) {
    let cleanType = fnType
      .replace(/\s/m, "")
      .replace(/([a-zA-Z'\d].*?::)/m, "");

    const tokens = cleanType
      .split(/(::|->|\[|\]|\{|\}|\(|\))/gm)
      .filter(Boolean)
      .map((s) => s.toLowerCase().trim());

    const lastArrowIdx = tokens.lastIndexOf("->");

    if (lastArrowIdx) {
      // Function has at least on return value

      const returnValueTokens = tokens.slice(lastArrowIdx + 1);
      const argsValueTokens = tokens.slice(0, lastArrowIdx);

      const returns = returnValueTokens
        .map(interpretToken)
        .filter(Boolean)
        .filter((e, i, s) => s.indexOf(e) === i) as NixType[];

      const args = argsValueTokens
        .map(interpretToken)
        .filter(Boolean)
        .filter((e, i, s) => s.indexOf(e) === i) as NixType[];

      return { args: [...args, "any"], returns: [...returns, "any"] };
    }
  }
  return { args: ["any"], returns: ["any"] };
}

/**
 * Find the type of a function that is a builtin or by looking at its builtins aliases
 */
export function findType(item: Doc): string | undefined {
  if (item.meta.is_primop && !item.meta.signature && item.meta.aliases) {
    for (const alias of item.meta.aliases) {
      const type = findTypeByPath(alias);
      if (type) {
        return type;
      }
    }
  }

  return findTypeByPath(item.meta.path);
}

/**
 * Find the type of a builtins.* function by looking at its path.
 * Noogle has a hand-crafted list of builtin types that cannot be retrieved otherwise.
 */
export function findTypeByPath(path: string[]): string | undefined {
  if (path.length === 2 && path[0] === "builtins") {
    const fallbackType = builtinTypes[path[1]];
    return fallbackType?.fn_type;
  }
  return undefined;
}
