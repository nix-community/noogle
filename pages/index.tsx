import { BasicList, BasicListItem } from "../components/basicList";
import { useState, useMemo } from "react";
import { Box } from "@mui/material";
import FunctionItem from "../components/functionItem/functionItem";
import { NixType, nixTypes, MetaData, DocItem } from "../types/nix";
import { data } from "../models/data";
import { byQuery, byType, pipe } from "../queries";

export default function FunctionsPage() {
  const [selected, setSelected] = useState<string | null>(null);
  const [term, setTerm] = useState<string>("");
  const [filter, setFilter] = useState<{ to: NixType; from: NixType }>({
    to: "any",
    from: "any",
  });

  const handleSelect = (key: string) => {
    console.log({ key });
    setSelected((curr: string | null) => {
      if (curr === key) {
        return null;
      } else {
        return key;
      }
    });
  };

  const filteredData = useMemo(
    () => pipe(byType(filter), byQuery(term))(data),
    [filter, term]
  );

  const handleSearch = (term: string) => {
    setTerm(term);
  };

  type Filter = { from: NixType; to: NixType };
  const handleFilter = (newFilter: Filter | ((curr: Filter) => Filter)) => {
    setFilter(newFilter);
  };
  const getKey = (item: DocItem) => `${item.category}/${item.name}`;

  const preRenderedItems: BasicListItem[] = filteredData.map(
    (docItem: DocItem) => {
      const key = getKey(docItem);
      return {
        item: (
          <Box
            sx={{
              width: "100%",
              height: "100%",
            }}
            onClick={!(selected === key) ? () => handleSelect(key) : undefined}
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
    <Box sx={{ ml: { xs: 0, md: 2 }, mb: 5 }}>
      <BasicList
        term={term}
        filter={filter}
        selected={selected}
        itemsPerPage={8}
        items={preRenderedItems}
        handleSearch={handleSearch}
        handleFilter={handleFilter}
      />
    </Box>
  );
}
