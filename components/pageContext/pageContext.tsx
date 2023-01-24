import React, { useState } from "react";
import { useRouter } from "next/router";
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

export const PageContext = React.createContext<PageContextType>({
  pageState: { ...initialPageState, FOTD: true },
  setPageState: () => {},
  resetQueries: () => {},
  setPageStateVariable: function a<T>() {
    return () => {};
  },
});

interface PageContextProviderProps {
  children: React.ReactNode;
  serverSideProps: PageState;
}

export type SetPageStateVariable = <T>(
  field: keyof InitialPageState
) => (value: React.SetStateAction<T> | T) => void;

export const PageContextProvider = (props: PageContextProviderProps) => {
  const router = useRouter();
  const { children, serverSideProps } = props;
  const [pageState, setPageState] = useState<PageState>(serverSideProps);
  function setPageStateVariable<T>(field: keyof InitialPageState) {
    return function (value: React.SetStateAction<T> | T) {
      {
        if (typeof value !== "function") {
          setPageState((curr) => {
            const query = router.query;
            query[field] = JSON.stringify(value);
            router.push({ query });
            return { ...curr, [field]: value };
          });
        } else {
          const setter = value as Function;
          setPageState((curr) => {
            const query = router.query;
            const newValue = setter(curr[field]);
            query[field] = JSON.stringify(newValue);
            router.push({ query });

            return { ...curr, [field]: newValue };
          });
        }
      }
    };
  }
  function resetQueries() {
    router.push({ query: undefined });
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
