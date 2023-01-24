import React from "react";
import { GetServerSideProps } from "next";
import {
  initialPageState,
  ComputedState,
  PageState,
  InitialPageState,
} from "../models/internals";
import { PageContext, PageContextProvider } from "../components/pageContext";
import { NixFunctions } from "../components/NixFunctions";

export const getServerSideProps: GetServerSideProps<PageState> = async (
  context
) => {
  const { query } = context;
  const initialProps = { ...initialPageState };
  console.log({ query });

  Object.entries(query).forEach(([key, value]) => {
    if (value && !Array.isArray(value)) {
      try {
        const parsedValue = JSON.parse(value) as never;
        const initialValue = initialPageState[key as keyof InitialPageState];

        if (!initialValue || typeof parsedValue === typeof initialValue) {
          initialProps[key as keyof InitialPageState] = JSON.parse(
            value
          ) as never;
        } else {
          throw "Type of query param does not match the initial values type";
        }
      } catch (error) {
        console.error("Invalid query:", { key, value, error });
      }
    }
  });
  const FOTD = Object.entries(query).length === 0;

  return {
    props: {
      ...initialProps,
      FOTD,
    },
  };
};

export default function FunctionsPage(serverSideProps: PageState) {
  return (
    <PageContextProvider serverSideProps={serverSideProps}>
      <PageContext.Consumer>
        {(context) => (
          <NixFunctions
            pageState={context.pageState}
            setPageStateVariable={context.setPageStateVariable}
          />
        )}
      </PageContext.Consumer>
    </PageContextProvider>
  );
}
