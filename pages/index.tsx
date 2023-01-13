import React from "react";
import { BasicList, BasicListItem } from "../components/basicList";
import { useState, useMemo } from "react";
import { Box } from "@mui/material";
import FunctionItem from "../components/functionItem/functionItem";
import { NixType, DocItem } from "../types/nix";
import { data } from "../models/data";
import { byQuery, byType, pipe } from "../queries";
import { GetServerSideProps } from "next";
import { useRouter } from "next/router";

const initialPageState: PageState = {
  selected: null,
  term: "",
  filter: { from: "any", to: "any" },
  page: 1,
};

type PageContextType = {
  pageState: PageState;
  setPageState: React.Dispatch<React.SetStateAction<PageState>>;
  setPageStateVariable: SetPageStateVariable;
};
const PageContext = React.createContext<PageContextType>({
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

type SetPageStateVariable = <T>(
  field: keyof PageState
) => (value: React.SetStateAction<T> | T) => void;

const PageContextProvider = (props: PageContextProviderProps) => {
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

type Filter = { to: NixType; from: NixType };

interface PageState {
  selected: string | null;
  term: string;
  filter: Filter;
  page: number;
}

export const getServerSideProps: GetServerSideProps<PageState> = async (
  context
) => {
  const { query } = context;
  const initialProps = { ...initialPageState };
  Object.entries(query).forEach(([key, value]) => {
    if (value && !Array.isArray(value)) {
      try {
        const parsedValue = JSON.parse(value) as never;
        const initialValue = initialPageState[key as keyof PageState];

        if (!initialValue || typeof parsedValue === typeof initialValue) {
          initialProps[key as keyof PageState] = JSON.parse(value) as never;
        } else {
          throw "Type of query param does not match the initial values type";
        }
      } catch (error) {
        console.error("Invalid query:", { key, value, error });
      }
    }
  });

  return {
    props: {
      ...initialProps,
    },
  };
};

export default function FunctionsPage(serverSideProps: PageState) {
  return (
    <PageContextProvider serverSideProps={serverSideProps}>
      <Functions />
    </PageContextProvider>
  );
}

function Functions() {
  const { pageState, setPageStateVariable } = usePageContext();
  const { selected, term, filter } = pageState;

  const setSelected = setPageStateVariable<string | null>("selected");

  const filteredData = useMemo(
    () => pipe(byType(filter), byQuery(term))(data),
    [filter, term]
  );

  const preRenderedItems: BasicListItem[] = filteredData.map(
    (docItem: DocItem) => {
      const key = docItem.id;
      return {
        item: (
          <Box
            sx={{
              width: "100%",
              height: "100%",
            }}
            onClick={!(selected === key) ? () => setSelected(key) : undefined}
          >
            <FunctionItem
              name={docItem.name}
              docItem={docItem}
              selected={selected === key}
              handleClose={() => setSelected(null)}
            />
          </Box>
        ),
        key,
      };
    }
  );

  return (
    <Box sx={{ ml: { xs: 0, md: 2 } }}>
      <BasicList itemsPerPage={8} items={preRenderedItems} />
    </Box>
  );
}
