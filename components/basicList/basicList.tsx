import React, { useState, useMemo, useEffect } from "react";
import {
  Box,
  IconButton,
  List,
  ListItem,
  Pagination,
  Stack,
  Typography,
  Grid,
  Slide,
  Collapse,
  Grow,
} from "@mui/material";
import { BasicDataItem, BasicDataViewProps } from "../../types/basicDataView";
import { SearchInput } from "../searchInput";
import Radio from "@mui/material/Radio";
import RadioGroup from "@mui/material/RadioGroup";
import FormControlLabel from "@mui/material/FormControlLabel";
import FormControl from "@mui/material/FormControl";
import FormLabel from "@mui/material/FormLabel";
import ClearIcon from "@mui/icons-material/Clear";

import { NixType, nixTypes } from "../../types/nix";
import { Filter } from "../searchInput/searchInput";
import { useRouter } from "next/router";
import { FunctionOfTheDay } from "../functionOfTheDay";
import { EmptyRecordsPlaceholder } from "../emptyRecordsPlaceholder";

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};
export type BasicListProps = BasicDataViewProps & {
  handleFilter: (filter: Filter | ((curr: Filter) => Filter)) => void;
  filter: Filter;
  term: string;
  selected?: string | null;
  itemsPerPage: number;
};

type ViewMode = "explore" | "browse";
export function BasicList(props: BasicListProps) {
  const {
    items,
    pageCount = 1,
    itemsPerPage,
    handleSearch,
    handleFilter,
    selected = "",
    filter,
    term,
  } = props;

  const [page, setPage] = useState<number>(1);
  const [mode, setMode] = useState<ViewMode>("explore");

  const router = useRouter();
  useEffect(() => {
    const { query } = router;
    if (query?.page) {
      if (typeof query.page === "string") {
        const page = Number(query.page);
        setPage(page);
      }
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [router]);

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

  const _handleFilter = (filter: Filter | ((curr: Filter) => Filter)) => {
    setMode("browse");
    handleFilter(filter);
    setPage(1);
  };

  const _handleSearch = (term: string) => {
    setMode("browse");
    handleSearch && handleSearch(term);

    setPage(1);
  };

  const showFunctionExplore =
    mode === "explore" &&
    filter.to === "any" &&
    filter.from === "any" &&
    term === "";
  return (
    <Stack>
      <SearchInput
        handleFilter={_handleFilter}
        placeholder="search nix functions"
        handleSearch={_handleSearch}
        page={page}
        clearSearch={() => _handleSearch("")}
      />
      {showFunctionExplore ? (
        <FunctionOfTheDay handleClose={() => setMode("browse")} />
      ) : (
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

      {Math.ceil(items.length / itemsPerPage) > 0 && !showFunctionExplore && (
        <Pagination
          hideNextButton
          hidePrevButton
          sx={{ display: "flex", justifyContent: "center", mt: 1, mb: 10 }}
          count={Math.ceil(items.length / itemsPerPage) || 1}
          color="primary"
          page={page}
          onChange={handlePageChange}
        />
      )}
    </Stack>
  );
}
