import React, { useState } from "react";
import { useRouter } from "next/router";
import { initialPageState, PageState } from "../../models/internals";

type PageContextType = {
  pageState: PageState;
  setPageState: React.Dispatch<React.SetStateAction<PageState>>;
  setPageStateVariable: SetPageStateVariable;
};

export const PageContext = React.createContext<PageContextType>({
  pageState: initialPageState,
  setPageState: () => {},
  setPageStateVariable: function a<T>() {
    return () => {};
  },
});

interface PageContextProviderProps {
  children: React.ReactNode;
  serverSideProps: PageState;
}

export type SetPageStateVariable = <T>(
  field: keyof PageState
) => (value: React.SetStateAction<T> | T) => void;

export const PageContextProvider = (props: PageContextProviderProps) => {
  const router = useRouter();
  const { children, serverSideProps } = props;
  const [pageState, setPageState] = useState<PageState>(serverSideProps);
  function setPageStateVariable<T>(field: keyof PageState) {
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
  return (
    <PageContext.Provider
      value={{ pageState, setPageState, setPageStateVariable }}
    >
      {children}
    </PageContext.Provider>
  );
};

export const usePageContext = () => React.useContext(PageContext);
