import { BasicDataViewProps } from "@/types/basicDataView";
import { Box, List, ListItem, Stack, TablePagination } from "@mui/material";
import React, { useMemo } from "react";
import { SearchInput } from "../searchInput";

import { ViewMode } from "@/models/internals";
import { UseMiniSearch } from "react-minisearch";
import { EmptyRecordsPlaceholder } from "../emptyRecordsPlaceholder";
import { FunctionOfTheDay } from "../functionOfTheDay";
import { useMobile } from "../layout/layout";
import { usePageContext } from "../pageContext";
import { Filter } from "../searchInput/searchInput";
import { Doc } from "@/models/data";

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};
export type BasicListProps = BasicDataViewProps & {
  selected?: string | null;
  minisearch: UseMiniSearch<Doc>;
};

export function BasicList(props: BasicListProps) {
  const { items, minisearch } = props;
  const { search, suggestions, autoSuggest, clearSuggestions } = minisearch;
  const { pageState, setPageStateVariable, resetQueries } = usePageContext();
  const isMobile = useMobile();
  const { page, itemsPerPage, FOTD: showFunctionOfTheDay, data } = pageState;

  const setViewMode = setPageStateVariable<ViewMode>("viewMode");
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
    setPage(value + 1);
  };
  const handleClear = () => {
    resetQueries();
  };

  const handleFilter = (filter: Filter | ((curr: Filter) => Filter)) => {
    setFilter(filter);
    setPage(1);
  };

  const handleSearch = (term: string) => {
    setTerm(term);
    search(term);
    setPage(1);
  };

  return (
    <Stack>
      <SearchInput
        handleFilter={handleFilter}
        handleClear={handleClear}
        placeholder="search nix functions"
        handleSearch={handleSearch}
        suggestions={suggestions || []}
        autoSuggest={autoSuggest}
        clearSuggestions={clearSuggestions}
      />
      {showFunctionOfTheDay && (
        <FunctionOfTheDay
          data={data}
          handleClose={() => {
            setViewMode("browse");
          }}
        />
      )}

      {!showFunctionOfTheDay && (
        <List aria-label="basic-list" sx={{ pt: 0 }}>
          {items.length ? (
            pageItems.map(({ item, key }, idx) => (
              <Box key={`${key}-${idx}`}>
                <ListItem sx={{ px: 0 }} key={key} aria-label={`item-${key}`}>
                  {item}
                </ListItem>
              </Box>
            ))
          ) : (
            <Box sx={{ mt: 3 }}>
              <EmptyRecordsPlaceholder
                CardProps={{
                  sx: { backgroundColor: "inherit" },
                }}
                title={"No search results found"}
                subtitle={
                  "Maybe the function does not exist or is not documented."
                }
              />
            </Box>
          )}
        </List>
      )}
      {!showFunctionOfTheDay && (
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
      )}
    </Stack>
  );
}
