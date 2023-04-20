import { Box } from "@mui/system";
import { useEffect, useMemo } from "react";
import { PageState } from "../../models/internals";
import { byQuery, byType, pipe } from "../../queries";
import { DocItem, MetaData } from "../../models/nix";
import { BasicList, BasicListItem } from "../basicList";
import FunctionItem from "../functionItem/functionItem";
import { SetPageStateVariable } from "../pageContext";
import { useMiniSearch } from "react-minisearch";

interface FunctionsProps {
  pageState: PageState;
  setPageStateVariable: SetPageStateVariable;
}

export function NixFunctions(props: FunctionsProps) {
  const { pageState, setPageStateVariable } = props;
  const { data, selected, term, filter } = pageState;

  const setSelected = setPageStateVariable<string | null>("selected");

  const { search, searchResults, rawResults } = useMiniSearch<DocItem>(data, {
    fields: ["id", "name", "category", "description", "example", "fn_type"],
    searchOptions: {
      // allow 25% levenshtein distance (e.g. 2.5 of 10 characters don't match)
      fuzzy: 0.25,
      // prefer to show builtins first
      boostDocument: (id, term) => {
        let boost = 1;
        boost += id.includes("builtins") ? 1 : 0;
        boost += id.includes(term) ? 10 : 0;
        return boost;
      },
    },
    tokenize: (text: string): string[] => {
      const tokens = text.split(/\W|(?=[A-Z])/);
      // console.log({ tokens });
      return tokens;
    },
  });

  //initial site-load is safe to call
  useEffect(() => {
    search(term);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const filteredData = useMemo(() => {
    console.log({ filter, term, rawResults });
    const dataForFilter = term ? searchResults || [] : data;
    return pipe(byType(filter))(dataForFilter);
  }, [filter, term, rawResults, searchResults, data]);

  console.log({ filteredData, searchResults, data, rawResults });
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
      <BasicList items={preRenderedItems} search={search} />
    </Box>
  );
}
