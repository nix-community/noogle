import {
  InitialPageState,
  PageState,
  initialPageState,
} from "@/models/internals";
import { AppRouterInstance } from "next/dist/shared/lib/app-router-context.shared-runtime";
import { useRouter, useSearchParams } from "next/navigation";
import React, { useEffect, useState } from "react";

type PageContextType = {
  pageState: PageState;
  setPageState: React.Dispatch<React.SetStateAction<PageState>>;
  setPageStateVariable: SetPageStateVariable;
  resetQueries: () => void;
};

const initialState = { ...initialPageState, FOTD: true };
export const PageContext = React.createContext<PageContextType>({
  pageState: initialState,
  setPageState: () => {},
  resetQueries: () => {},
  setPageStateVariable: function a<T>() {
    return () => {};
  },
});

interface PageContextProviderProps {
  children: React.ReactNode;
  pageProps: PageState;
}

export type SetPageStateVariable = <T>(
  field: keyof InitialPageState
) => (value: React.SetStateAction<T> | T) => void;

const paramList: Omit<keyof PageState, "data">[] = [
  "filter",
  "selected",
  "term",
  "page",
  "itemsPerPage",
];
const isQueryParam = (key: keyof PageState) => paramList.includes(key);
const isInitial = (key: keyof PageState, value: PageState[keyof PageState]) =>
  JSON.stringify(initialState[key]) === JSON.stringify(value);

const updateRouter = (router: AppRouterInstance, state: PageState) => {
  const searchParams = new URLSearchParams(Array.from([]));

  const query = Object.entries(state)
    .filter(([k]) => isQueryParam(k as keyof PageState))
    .filter(([k, v]) => !isInitial(k as keyof PageState, v))
    .reduce((acc, [k, v]) => {
      return { ...acc, [k]: JSON.stringify(v) };
    }, {});
  Object.entries(query).forEach(([key, value]) => {
    searchParams.set(key, value as string);
  });
  const queryString = searchParams.toString();

  console.log({ query, queryString });
  router.push(`?${queryString}`);
};

export const PageContextProvider = (props: PageContextProviderProps) => {
  const router = useRouter();
  const queryParams = useSearchParams();
  const { children, pageProps } = props;
  const [pageState, setPageState] = useState<PageState>(pageProps);
  const { term, filter, viewMode } = pageState;

  function setPageStateVariable<T>(field: keyof InitialPageState) {
    return function (value: React.SetStateAction<T> | T) {
      if (typeof value !== "function") {
        setPageState((curr) => {
          const newState = { ...curr, [field]: value };
          updateRouter(router, newState);
          return newState;
        });
      } else {
        const setter = value as Function;
        setPageState((curr) => {
          const newValue = setter(curr[field]);
          const newState = { ...curr, [field]: newValue };
          updateRouter(router, newState);
          return { ...curr, [field]: newValue };
        });
      }
    };
  }

  function resetQueries() {
    console.log({ queryParams });
    if (queryParams.size !== 0) {
      router.push("?");
    }
    setPageState((curr) => ({ ...curr, ...initialPageState }));
  }

  useEffect(() => {
    setPageState((c) => ({
      ...c,
      FOTD:
        viewMode === "explore" &&
        filter.to === "any" &&
        filter.from === "any" &&
        term === "",
    }));
  }, [viewMode, filter, term]);

  return (
    <PageContext.Provider
      value={{
        pageState,
        setPageState,
        setPageStateVariable,
        resetQueries,
      }}
    >
      {children}
    </PageContext.Provider>
  );
};

export const usePageContext = () => React.useContext(PageContext);
