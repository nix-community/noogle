import { Box } from "@mui/system";
import { useEffect, useMemo } from "react";
import { PageState } from "../../models/internals";
import { byQuery, byType, pipe } from "../../queries";
import { DocItem } from "../../models/nix";
import { BasicList, BasicListItem } from "../basicList";
import FunctionItem from "../functionItem/functionItem";
import { SetPageStateVariable } from "../pageContext";
import { data as allData } from "../../models/data";
interface FunctionsProps {
  pageState: PageState;
  setPageState: React.Dispatch<React.SetStateAction<PageState>>;
  setPageStateVariable: SetPageStateVariable;
}

export function NixFunctions(props: FunctionsProps) {
  const { pageState, setPageStateVariable, setPageState } = props;
  const { data, selected, term, filter } = pageState;

  useEffect(() => {
    setPageState((curr) => ({ ...curr, data: allData }));
  }, [setPageState]);

  const setSelected = setPageStateVariable<string | null>("selected");

  const filteredData = useMemo(
    () => pipe(byType(filter), byQuery(term))(data),
    [filter, term, data]
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
      <BasicList items={preRenderedItems} loading={!Boolean(data.length)} />
    </Box>
  );
}