// import { data } from "./data";
import { MetaData, NixType } from "./nix";

export type ComputedState  = {
  FOTD: boolean;
}

export type PageState = {
    data: MetaData;
    selected: string | null;
    term: string;
    filter: Filter;
    page: number;
    itemsPerPage: number;
} & ComputedState;

export type InitialPageState = Omit<PageState, keyof ComputedState>;

export const initialPageState: InitialPageState = {
  data: [] as MetaData,
  selected: null,
  term: "",
  filter: { from: "any", to: "any" },
  page: 1,
  itemsPerPage: 10,
};

export type Filter = { to: NixType; from: NixType };