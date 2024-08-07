"use client";

import { useEffect, useState } from "react";

export type Filters = {
  [name: string]: string | null;
};

export type RawResult = {
  data: () => Promise<PagefindResult>;
  id: string;
  score: number;
};
export type PagefindResult = {
  url: string;
  content: string;
  word_count: number;
  filters: Filters;
  meta: {
    title: string;
  };
  anchors: string[];
  raw_content: string;
  raw_url: string;
  excerpt: string;
  sub_results: any[];
};

type PagefindHooks = {
  search: (
    term: string | null,
    options?: {
      filters?: Filters;
      sort?: {
        [name: string]: "asc" | "desc";
      };
    }
  ) =>
    | Promise<{
        results: RawResult[];
      }>
    | undefined;
  pagefind: any | undefined;
  loading: boolean;
  error: undefined | string;
};

export const usePagefindSearch = (): PagefindHooks => {
  const [pagefind, setPagefind] = useState();
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<undefined | string>();

  useEffect(() => {
    const init = async () => {
      // @ts-ignore
      if (!window?.pagefind) {
        try {
          const pagefind = await import(
            // @ts-ignore
            /* webpackIgnore: true */ "/pagefind/pagefind.js"
          );
          await pagefind.options({
            ranking: {
              // controls how quickly a term “saturates” on a page.
              // Once a term has appeared on a page many times,
              // further appearances have a reduced impact on the page rank.
              // We choose to reduce this to suppress pages that are ranking well due to a high number of search terms existing in their content.
              termSaturation: 0.5, // default value 1.4
              // Changes the way ranking compares page lengths with the average page lengths on your site.
              pageLength: 0.6, // default value 0.75
              // Increasing the termSimilarity parameter is a good way to suppress pages that are ranking well for long extensions of search terms.
              termSimilarity: 1.5, // default value 1.0
            },
          });
          // @ts-ignore
          window.pagefind = pagefind;

          setError(undefined);
        } catch (e) {
          console.log({ e });
          setError("Could not load search wasm module");
        }
      }
      // @ts-ignore
      setPagefind(window.pagefind);
      setLoading(false);
    };

    init();
  }, []);

  // @ts-ignore
  return {
    // @ts-ignore
    search: pagefind?.search,
    // @ts-ignore
    pagefind,

    loading,
    error,
  };
};

// {
//     "url": "/f/builtins/dirOf.html",
//     "content": "builtins.dirOf Primop. Takes 1 arguments. s. Return the directory part of the string s, that is, everything before the final slash in the string. This is similar to the GNU dirname command.",
//     "word_count": 32,
//     "filters": {
//       "type-to": [
//         "Any"
//       ],
//       "type-from": [
//         "Any"
//       ]
//     },
//     "meta": {
//       "title": "builtins.dirOf Primop."
//     },
//     "anchors": [],
//     "weighted_locations": [],
//     "locations": [],
//     "raw_content": "builtins.dirOf Primop. Takes 1 arguments. s. Return the directory part of the string s, that is, everything before the final slash in the string. This is similar to the GNU dirname command.",
//     "raw_url": "/f/builtins/dirOf.html",
//     "excerpt": "builtins.dirOf Primop. Takes 1 arguments. s. Return the directory part of the string s, that is, everything before the final slash in the string. This is similar to the GNU",
//     "sub_results": []
//   }
