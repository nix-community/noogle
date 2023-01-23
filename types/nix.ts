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
    fn_type?: null | string;
    description?: null | string | string[];
    example?: null | string | string[];
};

export type MetaData = DocItem[];