export type BasicDataItem = {
    item: React.ReactNode;
    key: string;
};

export type BasicDataViewProps = {
    items: BasicDataItem[];
    pageCount?: number;
    handleSearch?: (term: string) => void;
};

export type NixType = "attrset" | "list" | "string" | "int" | "bool" | "any";