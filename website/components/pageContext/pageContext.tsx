import React, { useState } from "react";
import { NextRouter, useRouter } from "next/router";
import {
  InitialPageState,
  initialPageState,
  PageState,
} from "../../models/internals";

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

const updateRouter = (router: NextRouter, state: PageState) => {
  const query = Object.entries(state)
    .filter(([k]) => isQueryParam(k as keyof PageState))
    .filter(([k, v]) => !isInitial(k as keyof PageState, v))
    .reduce((acc, [k, v]) => {
      return { ...acc, [k]: JSON.stringify(v) };
    }, {});
  router.push({ query });
};

export const PageContextProvider = (props: PageContextProviderProps) => {
  const router = useRouter();
  const { children, pageProps } = props;
  const [pageState, setPageState] = useState<PageState>(pageProps);
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
    if (Object.entries(router.query).length !== 0) {
      router.push({ query: undefined });
    }
    setPageState((curr) => ({ ...curr, ...initialPageState }));
  }
  return (
    <PageContext.Provider
      value={{ pageState, setPageState, setPageStateVariable, resetQueries }}
    >
      {children}
    </PageContext.Provider>
  );
};

export const usePageContext = () => React.useContext(PageContext);
