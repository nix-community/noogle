import { NixType, nixTypes } from "../types/nix";

export function pipe<T>(...fns: ((arr: T) => T)[]) {
  return (x: T) => fns.reduce((v, f) => f(v), x);
}

export  function getTypes(
    fnName: string,
    fnType: string | undefined
  ): { args: NixType[]; types: NixType[] } {
    if (fnType) {
      let cleanType = fnType.replace(/ /g, "").replace(`${fnName}::`, "");
      const tokens = cleanType
        .split(/(::|->|\[|\]|\{|\}|\(|\))/gm)
        .filter(Boolean);
      const lastArrowIdx = tokens.lastIndexOf("->");
      if (lastArrowIdx) {
        // Function has at least on return value
        const interpretToken = (token: string) => {
          if (token === "(" || token === ")") {
            return "function" as NixType;
          } else if (token === "[" || token === "]") {
            return "list" as NixType;
          } else if (token === "{" || token === "}") {
            return "attrset" as NixType;
          } else if (nixTypes.includes(token.toLowerCase() as NixType)) {
            return token.toLowerCase() as NixType;
          } else if (
            token.length === 1 &&
            ["a", "b", "c", "d", "e"].includes(token)
          ) {
            return "any" as NixType;
          } else {
            return undefined;
          }
        };
        const returnValueTokens = tokens.slice(lastArrowIdx + 1);
        const types = returnValueTokens
          .map(interpretToken)
          .filter(Boolean)
          .filter((e, i, s) => s.indexOf(e) === i);
        const args = tokens
          .slice(0, lastArrowIdx)
          .map(interpretToken)
          .filter(Boolean)
          .filter((e, i, s) => s.indexOf(e) === i);
        return { args, types } as { args: NixType[]; types: NixType[] };
      }
    }
    return { args: ["any"], types: ["any"] };
  }
  