import React, { useMemo } from "react";
import { Box, List, ListItem, Stack, TablePagination } from "@mui/material";
import { BasicDataViewProps } from "../../types/basicDataView";
import { SearchInput } from "../searchInput";

import { Filter } from "../searchInput/searchInput";
import { usePageContext } from "../pageContext";
import { useMobile } from "../layout/layout";

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};
export type BasicListProps = BasicDataViewProps & {
  selected?: string | null;
};

export function BasicList(props: BasicListProps) {
  const { items } = props;
  const { pageState, setPageStateVariable } = usePageContext();
  const isMobile = useMobile();
  const { page, itemsPerPage } = pageState;

  const setPage = setPageStateVariable<number>("page");
  const setTerm = setPageStateVariable<string>("term");
  const setFilter = setPageStateVariable<Filter>("filter");
  const setItemsPerPage = setPageStateVariable<number>("itemsPerPage");

  const handleChangeRowsPerPage = (
    event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    setItemsPerPage(parseInt(event.target.value, 10));
    setPage(1);
  };
  const pageItems = useMemo(() => {
    const startIdx = (page - 1) * itemsPerPage;
    const endIdx = page * itemsPerPage;
    return items.slice(startIdx, endIdx);
  }, [page, items, itemsPerPage]);

  const handlePageChange = (
    event: React.MouseEvent<HTMLButtonElement> | null,
    value: number
  ) => {
    console.log(value);
    setPage(value + 1);
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

      <TablePagination
        component={"div"}
        sx={{ display: "flex", justifyContent: "center", mt: 1, mb: 10 }}
        count={items.length}
        color="primary"
        page={page - 1}
        onPageChange={handlePageChange}
        rowsPerPage={itemsPerPage}
        labelRowsPerPage={"per Page"}
        rowsPerPageOptions={[10, 20, 50, 100]}
        onRowsPerPageChange={handleChangeRowsPerPage}
        showFirstButton={!isMobile}
        showLastButton={!isMobile}
      />
    </Stack>
  );
}
