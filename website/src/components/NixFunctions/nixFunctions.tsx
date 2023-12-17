"use client";
import { Doc } from "@/models/data";
import { PageState } from "@/models/internals";
import { Box } from "@mui/system";
import { useEffect } from "react";
import { useMiniSearch } from "react-minisearch";
import { BasicList, BasicListItem } from "../basicList";
import FunctionItem from "../functionItem/functionItem";
import { SetPageStateVariable } from "../pageContext";
interface FunctionsProps {
  pageState: PageState;
  setPageStateVariable: SetPageStateVariable;
}

// export const commonSearchOptions = {
//   // allow 22% levenshtein distance (e.g. 2.2 of 10 characters don't match)
//   fuzzy: 0.22,
//   // prefer to show builtins first
//   boostDocument: (id: string, term: string) => {
//     let boost = 1;
//     boost *= id.includes("builtins") ? 10 : 1;
//     boost *= id.includes(term) ? 100 : 1;
//     return boost;
//   },
//   boost: {
//     id: 1000,
//     name: 100,
//     category: 10,
//     example: 0.5,
//     fn_type: 10,
//     description: 1,
//   },
// };

export function NixFunctions(props: FunctionsProps) {
  const { pageState, setPageStateVariable } = props;
  const { data, selected, term, filter } = pageState;

  const setSelected = setPageStateVariable<string | null>("selected");

  const minisearch = useMiniSearch<Doc>(data, {
    idField: "meta.title",
    fields: ["meta.title", "content.content"],
    // @ts-ignore
    extractField: (document, fieldName) => {
      // Access nested fields
      return fieldName
        .split(".")
        .reduce(
          (doc, key) => doc && doc[key],
          document
        ) as Document[keyof Document];
    },
  });

  const { search, searchResults, rawResults } = minisearch;
  //initial site-load is safe to call
  useEffect(() => {
    search(term);

    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const filteredData = term ? searchResults || [] : data;

  const preRenderedItems: BasicListItem[] = filteredData.map((docItem: Doc) => {
    const key = docItem.meta.title;
    const matches =
      rawResults?.find((r) => r.id === docItem.meta.title)?.terms || [];
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
            markWords={matches}
            name={docItem.meta.title}
            docItem={docItem}
            selected={selected === key}
            handleClose={() => setSelected(null)}
          />
        </Box>
      ),
      key,
    };
  });

  return (
    <Box sx={{ ml: { xs: 0, md: 2 } }}>
      <BasicList items={preRenderedItems} minisearch={minisearch} />
    </Box>
  );
}
