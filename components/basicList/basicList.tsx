import React, { useMemo } from "react";
import { Box, List, ListItem, Pagination, Stack } from "@mui/material";
import { BasicDataViewProps } from "../../types/basicDataView";
import { SearchInput } from "../searchInput";

import { Filter } from "../searchInput/searchInput";

import { usePageContext } from "../../pages";

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};
export type BasicListProps = BasicDataViewProps & {
  selected?: string | null;
  itemsPerPage: number;
};

export function BasicList(props: BasicListProps) {
  const { items, itemsPerPage } = props;
  const { pageState, setPageStateVariable } = usePageContext();
  const { page } = pageState;

  const setPage = setPageStateVariable<number>("page");
  const setTerm = setPageStateVariable<string>("term");
  const setFilter = setPageStateVariable<Filter>("filter");

  const pageItems = useMemo(() => {
    const startIdx = (page - 1) * itemsPerPage;
    const endIdx = page * itemsPerPage;
    return items.slice(startIdx, endIdx);
  }, [page, items, itemsPerPage]);

  const handlePageChange = (
    _event: React.ChangeEvent<unknown>,
    value: number
  ) => {
    setPage(value);
  };

  const handleFilter = (filter: Filter | ((curr: Filter) => Filter)) => {
    setFilter(filter);
    setPage(1);
  };

  const handleSearch = (term: string) => {
    setTerm(term);
    setPage(1);
  };

  return (
    <Stack>
      <SearchInput
        handleFilter={handleFilter}
        placeholder="search nix functions"
        handleSearch={handleSearch}
        page={page}
        clearSearch={() => handleSearch("")}
      />

      <List aria-label="basic-list" sx={{ pt: 0 }}>
        {pageItems.map(({ item, key }, idx) => (
          <Box key={`${key}-${idx}`}>
            <ListItem sx={{ px: 0 }} key={key} aria-label={`item-${key}`}>
              {item}
            </ListItem>
          </Box>
        ))}
      </List>

      <Pagination
        hideNextButton
        hidePrevButton
        sx={{ display: "flex", justifyContent: "center", mt: 1, mb: 10 }}
        count={Math.ceil(items.length / itemsPerPage) || 1}
        color="primary"
        page={page}
        onChange={handlePageChange}
      />
    </Stack>
  );
}
