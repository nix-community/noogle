import React, { useEffect, useState } from "react";
import {
  initialPageState,
  PageState,
  InitialPageState,
} from "../models/internals";
import { PageContext, PageContextProvider } from "../components/pageContext";
import NixFunctions from "../components/NixFunctions";

import { NextRouter, useRouter } from "next/router";
import { LinearProgress } from "@mui/material";
import { GetStaticPropsContext } from "next";

// import fs from "fs";
// import matter from "gray-matter";
import { MetaData } from "../models/nix";
import { getMarkdownData } from "../initialData/getMarkdownData";
import { mergeInitialData } from "../initialData/mergeInitialData";
type InitialPageProps = {
  markdownData: MetaData;
};
export async function getStaticProps(context: GetStaticPropsContext) {
  const markdownData = getMarkdownData();
  const props: InitialPageProps = { markdownData };
  return { props };
}

const getInitialProps = async (context: NextRouter, markdownData: MetaData) => {
  const { query } = context;
  const initialProps = { ...initialPageState };

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
  const data = mergeInitialData(initialProps.data, markdownData);
  return {
    props: {
      ...initialProps,
      data,
      FOTD,
    },
  };
};

export default function FunctionsPage(props: InitialPageProps) {
  const router = useRouter();
  const { markdownData } = props;
  const [initialProps, setInitialProps] = useState<PageState | null>(null);
  useEffect(() => {
    if (router.isReady && initialProps === null) {
      getInitialProps(router, markdownData).then((r) => {
        const { props } = r;
        console.info("Url Query changed\n\nUpdating pageState with delta:", {
          props,
        });
        setInitialProps((curr) => ({ ...curr, ...props }));
      });
    }
  }, [router, initialProps, markdownData]);
  return (
    <>
      {!initialProps ? (
        <LinearProgress />
      ) : (
        <PageContextProvider pageProps={initialProps}>
          <PageContext.Consumer>
            {(context) => (
              <NixFunctions
                pageState={context.pageState}
                setPageStateVariable={context.setPageStateVariable}
              />
            )}
          </PageContext.Consumer>
        </PageContextProvider>
      )}
    </>
  );
}
