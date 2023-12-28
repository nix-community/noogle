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

export const FilterContext = createContext<UseFilter>({} as UseFilter);

export type UseFilter = {
  showFilter: boolean;
  setShowFilter: Dispatch<SetStateAction<boolean>>;
  setTo: Dispatch<SetStateAction<string>>;
  setFrom: Dispatch<SetStateAction<string>>;
  setTerm: Dispatch<SetStateAction<string>>;
  term: string;
  to: string;
  from: string;
  submit: (input?: string) => void;
};

export const FilterProvider = ({ children }: { children: ReactNode }) => {
  const router = useRouter();
  const params = useSearchParams();

  const [showFilter, setShowFilter] = useState(false);

  const query = useMemo(() => new URLSearchParams(params), [params]);

  const [from, setFrom] = useState(params.get("from") || "any");
  const [to, setTo] = useState(params.get("to") || "any");
  const [term, setTerm] = useState(params.get("term") || "");

  const submit = (input?: string) => {
    const _term = input || term;
    if (_term && _term.trim() !== "") {
      query.set("term", _term);
    } else {
      query.delete("term");
    }

    if (from !== "any") {
      query.set("from", from);
    } else {
      query.delete("from");
    }
    if (to !== "any") {
      query.set("to", to);
    } else {
      query.delete("to");
    }

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

export const useFilter = () => useContext(FilterContext);
