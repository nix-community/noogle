import all from "./data.json" assert { type: "json" };
import types from "./builtins.types.json" assert { type: "json" };
import links from "./manual-link.map.json" assert { type: "json" };
import meta from "./meta.json" assert { type: "json" };

export type ManualLink = {
  id: string;
  file: string;
};

export const manualLinks = links as ManualLink[];

export type FilePosition = {
  file: string;
  line: number;
  column: number;
};

export type PositionType = "Lambda" | "Attribute";
export type SourceOrigin = {
  position?: FilePosition;
  path?: ValuePath;
  pos_type?: PositionType;
};

export type PrimopMatter = {
  name?: string;
  args?: string[];
  experimental?: boolean;
  arity?: number;
};
export type ValuePath = string[];

export type DocMeta = {
  title: string;
  path: ValuePath;
  aliases?: ValuePath[];
  is_primop?: boolean;
  is_functor?: boolean;
  primop_meta?: PrimopMatter;
  attr_position?: FilePosition;
  attr_expr?: string;
  lambda_position?: FilePosition;
  lambda_expr?: string;
  count_applied?: number;
  content_meta?: SourceOrigin;
  signature?: string;
};
export type ContentSource = {
  content?: string;
  source?: SourceOrigin;
};

export type Doc = {
  meta: DocMeta;
  content?: ContentSource;
};

export const data: Doc[] = all as unknown as Doc[];

export type BuiltinType = { fn_type: string };
export type BuiltinTypes = {
  [fn_name: string]: BuiltinType;
};

export const builtinTypes = types as BuiltinTypes;

export type UpstreamInfo = {
  rev: string;
  lastModified: number;
}

export const upstreamInfo = meta as UpstreamInfo;
