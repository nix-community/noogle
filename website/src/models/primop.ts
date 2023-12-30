import { PrimopMatter } from "./data";

export const getPrimopDescription = (meta: PrimopMatter) => {
  const args = meta?.args?.map((a) => `__${a}__`) || [];
  return !meta?.arity
    ? ""
    : `Takes __${meta?.arity}__ arguments\n\n ${args.join(", ")} \n\n`;
};
