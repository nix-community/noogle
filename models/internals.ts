import { data } from "./data";
import { MetaData, NixType } from "./nix";


export type PageState = {
    data: MetaData;
    selected: string | null;
    term: string;
    filter: Filter;
    page: number;
};

export const initialPageState: PageState = {
  data: data,
  selected: null,
  term: "",
  filter: { from: "any", to: "any" },
  page: 1,
};

export type Filter = { to: NixType; from: NixType };