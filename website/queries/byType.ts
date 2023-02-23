import { MetaData, NixType } from "../models/nix";
import { getTypes } from "./lib";

export const byType =
({ to, from }: { to: NixType; from: NixType }) =>
(data: MetaData): MetaData => {
  if (to === "any" && from === "any") {
    return data;
  } else {
    return data.filter(
      // TODO: Implement proper type matching
      ({ name, fn_type }) => {
        if (fn_type) {
          const parsedType = getTypes(name, fn_type);
          return (
            parsedType.args.includes(from) && parsedType.types.includes(to)
          );
        } else {
          return to === "any" && from === "any";
        }
      }
    );
  }
};