import React, { useEffect, useState } from "react";

import { NextRouter, useRouter } from "next/router";
import { LinearProgress } from "@mui/material";
import {
  InitialPageState,
  initialPageState,
  PageState,
} from "../../models/internals";
import { PageContextProvider } from "../pageContext";

const getInitialProps = async (context: NextRouter) => {
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

  return {
    props: {
      ...initialProps,
      FOTD,
    },
  };
};

interface AppStateProps {
  children: React.ReactNode;
}
export function AppState(props: AppStateProps) {
  const { children } = props;
  const router = useRouter();
  const [initialProps, setInitialProps] = useState<PageState | null>(null);
  useEffect(() => {
    if (router.isReady && initialProps === null) {
      getInitialProps(router).then((r) => {
        const { props } = r;
        console.info("Url Query changed\n\nUpdating pageState with delta:", {
          props,
        });
        setInitialProps((curr) => ({ ...curr, ...props }));
      });
    }
  }, [router, initialProps]);
  return (
    <>
      {!initialProps ? (
        <LinearProgress />
      ) : (
        <PageContextProvider pageProps={initialProps}>
          {children}
        </PageContextProvider>
      )}
    </>
  );
}
