import React, { useState, useMemo } from "react";
import Paper from "@mui/material/Paper";
import InputBase from "@mui/material/InputBase";
import IconButton from "@mui/material/IconButton";
import ClearIcon from "@mui/icons-material/Clear";
import { Box, debounce, Grid, Tooltip, Typography } from "@mui/material";
import ChevronRightIcon from "@mui/icons-material/ChevronRight";
import { NixType, nixTypes } from "../../models/nix";
import SearchIcon from "@mui/icons-material/Search";
import { usePageContext } from "../pageContext";
import { initialPageState } from "../../models/internals";
import { SelectOption } from "../selectOption";

export type Filter = { from: NixType; to: NixType };

export interface SearchInputProps {
  handleSearch: (term: string) => void;
  handleClear: () => void;
  handleFilter: (filter: Filter | ((curr: Filter) => Filter)) => void;
  placeholder: string;
}

export function SearchInput(props: SearchInputProps) {
  const { handleSearch, placeholder, handleFilter, handleClear } = props;
  const { pageState } = usePageContext();
  const { filter, term } = pageState;
  const [_term, _setTerm] = useState(term);

  const handleSubmit = React.useRef((input: string) => {
    handleSearch(input);
  }).current;

  const debouncedSubmit = useMemo(
    () => debounce(handleSubmit, 500),
    [handleSubmit]
  );

  const _handleClear = () => {
    _setTerm("");
    handleClear();
    // handleFilter(initialPageState.filter);
    // handleSubmit("");
  };
  const handleType = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    _setTerm(e.target.value);
    debouncedSubmit(e.target.value);
  };

  return (
    <>
      <Paper
        component="form"
        elevation={0}
        sx={{
          width: "100%",
          p: 1,
          my: 2,
          display: "flex",
          alignItems: "center",
        }}
        onSubmit={(e: React.FormEvent) => {
          e.preventDefault();
          handleSubmit(term);
        }}
      >
        <IconButton aria-label="clear-button" onClick={_handleClear}>
          <ClearIcon />
        </IconButton>
        <InputBase
          autoFocus
          sx={{
            ml: 1,
            flex: 1,
            backgroundColor: "paper.main",
            p: 1,
          }}
          placeholder={placeholder}
          inputProps={{ "aria-label": "search-input" }}
          value={_term}
          onChange={(e) => handleType(e)}
        />
        <IconButton
          sx={{
            p: 1,
          }}
          aria-label="search-button"
          onClick={() => handleSearch(_term)}
        >
          <SearchIcon fontSize="inherit" />
        </IconButton>
      </Paper>

      <Box>
        <Grid container>
          <Grid item xs={12} md={5}>
            <SelectOption
              value={filter.from}
              label="from type"
              handleChange={(value) => {
                handleFilter((curr) => ({ ...curr, from: value as NixType }));
              }}
              options={nixTypes.map((v) => ({ value: v, label: v }))}
            />
          </Grid>
          <Grid
            item
            md={2}
            sx={{
              display: {
                md: "flex",
                xs: "none",
              },
              justifyContent: "center",
              alignItems: "center",
            }}
          >
            <Typography>
              <ChevronRightIcon />
            </Typography>
          </Grid>
          <Grid item xs={12} md={5}>
            <SelectOption
              value={filter.to}
              label="to type"
              handleChange={(value) => {
                handleFilter((curr) => ({ ...curr, to: value as NixType }));
              }}
              options={nixTypes.map((v) => ({ value: v, label: v }))}
            />
          </Grid>
        </Grid>
      </Box>
    </>
  );
}
