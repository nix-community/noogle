export type NixType = "function" | "attrset" | "list" | "string" | "int" | "bool" | "any";
export const nixTypes: NixType[] = [
    "any",
    "attrset",
    "list",
    "string",
    "bool",
    "int",
];
  
export type DocItem = {
    id: string;
    category: string;
    name: string;
    fn_type?: string;
    description?: string | string[];
    example?: string | string[];
};

export type MetaData = DocItem[];


// export type FuncData = {
//     name: string;
//     info: NixFunctionMeta;
// };

// export type NixFunctionMeta = {
//     "attr-path": string;
//     "doc-url": string;
//     source: string;
//     from: NixType;
//     to: NixType;
// }

// export type NixFunctionSet = {[name:string]: NixFunctionMeta}