import { data } from "./data";
import { MetaData, NixType } from "./nix";

export type ViewMode = "explore" | "browse";

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
  viewMode: ViewMode;
} & ComputedState;

export type InitialPageState = Omit<PageState, keyof ComputedState>;

export const initialPageState: InitialPageState = {
  data,
  selected: null,
  term: "",
  filter: { from: "any", to: "any" },
  page: 1,
  itemsPerPage: 10,
  viewMode: "explore"
};

export type Filter = { to: NixType; from: NixType };