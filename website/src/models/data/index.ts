// import nixTrivialBuilders from "./build_support.json" assert { type: "json" };
// import nixBuiltins from "./builtins.json" assert { type: "json" };
// import nixLibs from "./lib.json" assert { type: "json" };
import all from "./data.json" assert { type: "json" };
import builtinTypes from "./builtins.types.json" assert { type: "json" };

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
  primop_meta?: PrimopMatter;
  attr_position?: FilePosition;
  lambda_position?: FilePosition;
  count_applied?: number;
  content_meta?: SourceOrigin;
};
export type ContentSource = {
  content?: string;
  source?: SourceOrigin;
};

export type Doc = {
  meta: DocMeta;
  content?: ContentSource;
};

// export const data = all.sort((a, b) =>
//   a.meta.title.localeCompare(b.meta.title)
// ) as Doc[];

export const data: Doc[] = all as unknown as Doc[];
export { builtinTypes };

