import type { PrimopMeta } from "@/types/bindings/PrimopMeta";

export const getPrimopDescription = (meta: PrimopMeta) => {
  const args = meta?.args?.map((a) => `__${a}__`) || [];
  return !meta?.arity
    ? ""
    : `Takes __${meta?.arity}__ arguments\n\n ${args.join(", ")} \n\n`;
};
