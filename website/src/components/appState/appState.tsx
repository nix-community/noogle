"use client";
import { InitialPageState, initialPageState } from "@/models/internals";
import { ReadonlyURLSearchParams, useSearchParams } from "next/navigation";
import React, { useEffect, useState } from "react";

import { PageState } from "@/models/internals";
import { PageContextProvider } from "../pageContext";

const getInitialProps = async (query: ReadonlyURLSearchParams) => {
  const initialProps = { ...initialPageState };
  query.forEach((value, key) => {
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
  const params = useSearchParams();
  const [initialProps, setInitialProps] = useState<PageState | null>(null);
  useEffect(() => {
    if (initialProps === null) {
      getInitialProps(params).then((r) => {
        const { props } = r;
        console.info("Url Query changed\n\nUpdating pageState with delta:", {
          props,
        });
        setInitialProps((curr) => ({ ...curr, ...props }));
      });
    }
  }, [initialProps, params]);
  return (
    <>
      {initialProps && (
        <PageContextProvider pageProps={initialProps}>
          {children}
        </PageContextProvider>
      )}
    </>
  );
}
