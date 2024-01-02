"use client";

import { useRouter, useSearchParams } from "next/navigation";
import {
  useState,
  createContext,
  ReactNode,
  useContext,
  Dispatch,
  SetStateAction,
  useMemo,
} from "react";
import { useSessionStorage } from "usehooks-ts";

export const FilterContext = createContext<UseFilter | null>(null);

export type UseFilter = {
  showFilter: boolean;
  setShowFilter: Dispatch<SetStateAction<boolean>>;
  setTo: Dispatch<SetStateAction<string>>;
  setFrom: Dispatch<SetStateAction<string>>;
  setTerm: Dispatch<SetStateAction<string>>;
  term: string;
  to: string;
  from: string;
  submit: (props: FilterOptions) => void;
};

export type FilterOptions = {
  input?: string;
  filter?: { from: string; to: string };
  page?: number;
  limit?: number;
};

export const FilterProvider = ({ children }: { children: ReactNode }) => {
  const router = useRouter();
  const params = useSearchParams();

  const [showFilter, setShowFilter] = useState(false);

  const query = useMemo(() => new URLSearchParams(params), [params]);
  const [, persistFilterOptions] = useSessionStorage<FilterOptions>(
    "currentFilterOptions",
    {}
  );

  const [from, setFrom] = useState(params.get("from") || "any");
  const [to, setTo] = useState(params.get("to") || "any");
  const [term, setTerm] = useState(params.get("term") || "");

  const submit = ({ input, filter, page, limit }: FilterOptions) => {
    const _term = input !== undefined ? input : term;
    const _from = filter?.from || from;
    const _to = filter?.to || to;

    if (_term && _term.trim() !== "") {
      query.set("term", _term);
    } else {
      query.delete("term");
    }

    if (_from !== "any") {
      query.set("from", _from);
    } else {
      query.delete("from");
    }
    if (_to !== "any") {
      query.set("to", _to);
    } else {
      query.delete("to");
    }
    persistFilterOptions({
      input: _term,
      filter: { from: _from, to: _to },
      page: +params.get("page")! || undefined,
      limit: +params.get("limit")! || undefined,
    });
    if (page) query.set("page", page.toString());
    if (limit) query.set("page", limit.toString());
    router.push(`/q?${query.toString()}`);
  };
  return (
    <FilterContext.Provider
      value={{
        term,
        setTerm,
        showFilter,
        setShowFilter,
        submit,
        from,
        to,
        setFrom,
        setTo,
      }}
    >
      {children}
    </FilterContext.Provider>
  );
};

export const useFilter = () => {
  const filter = useContext(FilterContext);
  if (filter === null) {
    throw "UseFilter used outside of FilterContext!";
  }
  return filter;
};
