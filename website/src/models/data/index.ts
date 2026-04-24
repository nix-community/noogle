import all from "./data.json" assert { type: "json" };
import types from "./builtins.types.json" assert { type: "json" };
import links from "./manual-link.map.json" assert { type: "json" };
import libMeta from "./lib-meta.json" assert { type: "json" };
import nixMeta from "./nix-meta.json" assert { type: "json" };
import language_json from "./language.json" assert { type: "json" };
import builtinsImpl_json from "./builtins.impl.json" assert { type: "json" };

import type { Document } from "@/types/bindings/Document";

export const language = language_json;

export type BuiltinImpl = {
  file: string;
  line: number;
  code: string;
};
export type BuiltinImpls = {
  [name: string]: BuiltinImpl;
};

export const builtinImpls = builtinsImpl_json as BuiltinImpls;

export type ManualLink = {
  id: string;
  file: string;
};

export const manualLinks = links as ManualLink[];

export const data: Document[] = (all as unknown as Document[])
  // filter out nixPlugin builtin
  .filter((docItem) => !docItem.meta.path.includes("lambdaMeta"));

export type BuiltinType = { fn_type: string };
export type BuiltinTypes = {
  [fn_name: string]: BuiltinType;
};

export const builtinTypes = types as BuiltinTypes;

export type UpstreamInfo = {
  rev: string;
  lastModified: number;
};

export const upstreamInfo = libMeta as UpstreamInfo;
export const nixInfo = nixMeta as UpstreamInfo;
