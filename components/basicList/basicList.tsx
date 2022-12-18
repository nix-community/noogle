import React, { useState, useMemo } from "react";
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

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};
export type BasicListProps = BasicDataViewProps & {
  handleFilter: (filter: Filter | ((curr: Filter) => Filter)) => void;
  selected?: string | null;
  itemsPerPage: number;
};

export function BasicList(props: BasicListProps) {
  const {
    items,
    pageCount = 1,
    itemsPerPage,
    handleSearch,
    handleFilter,
    selected = "",
  } = props;
  // const [from, setFrom] = useState<NixType>("any");
  // const [to, setTo] = useState<NixType>("any");

  const [page, setPage] = useState(1);

  const pageItems = useMemo(() => {
    const startIdx = (page - 1) * itemsPerPage;
    const endIdx = page * itemsPerPage;
    return items.slice(startIdx, endIdx);
  }, [page, items, itemsPerPage]);

  const [searchTerm, setSearchTerm] = useState("");

  const handlePageChange = (
    _event: React.ChangeEvent<unknown>,
    value: number
  ) => {
    setPage(value);
  };

  const _handleFilter = (filter: Filter | ((curr: Filter) => Filter)) => {
    handleFilter(filter);
    setPage(1);
  };

  const _handleSearch = (term: string) => {
    handleSearch && handleSearch(term);
    setSearchTerm(term);
    setPage(1);
  };

  return (
    <Stack>
      <SearchInput
        handleFilter={_handleFilter}
        placeholder="search nix functions"
        handleSearch={_handleSearch}
        clearSearch={() => _handleSearch("")}
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
