import { NixType } from "@/models/nix";
import ClearIcon from "@mui/icons-material/Clear";
import SearchIcon from "@mui/icons-material/Search";
import {
  Autocomplete,
  Box,
  Grid,
  Input,
  Typography,
  debounce,
} from "@mui/material";
import IconButton from "@mui/material/IconButton";
import Paper from "@mui/material/Paper";
import { SearchOptions, Suggestion } from "minisearch";
import React, { useMemo, useState } from "react";
import { usePageContext } from "../pageContext";

export type Filter = { from: NixType; to: NixType };

export interface SearchInputProps {
  handleSearch: (term: string) => void;
  handleClear: () => void;
  handleFilter: (filter: Filter | ((curr: Filter) => Filter)) => void;
  placeholder: string;
  suggestions: Suggestion[];
  autoSuggest: (query: string, options?: SearchOptions) => void;
  clearSuggestions: () => void;
}

export function SearchInput(props: SearchInputProps) {
  const {
    handleSearch,
    placeholder,
    handleFilter,
    handleClear,
    suggestions,
    autoSuggest,
    clearSuggestions,
  } = props;
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
    clearSuggestions();
  };
  const handleType = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    _setTerm(e.target.value);
    autoSuggest(e.target.value, {
      fuzzy: 0.25,
      fields: ["meta.title", "content.content"],
    });
    debouncedSubmit(e.target.value);
  };

  const autoCompleteOptions = useMemo(() => {
    const options = suggestions
      .slice(0, 5)
      .map((s) => s.terms)
      .flat();
    const sorted = options.sort((a, b) => -b.localeCompare(a));
    return [...new Set(sorted)];
  }, [suggestions]);

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

        <Autocomplete
          // disablePortal
          // id="combo-box-demo"
          options={autoCompleteOptions}
          sx={{ width: "100%" }}
          onChange={(e, value) => {
            handleType({
              target: { value: value || "" },
            } as React.ChangeEvent<HTMLInputElement>);
          }}
          value={_term}
          renderInput={(params) => {
            return (
              // <InputBase {...params} {...params.InputProps} />
              <Input
                disableUnderline
                autoFocus
                sx={{
                  "& .MuiInputBase-root": {
                    ml: 1,
                    flex: 1,
                    backgroundColor: "paper.main",
                    p: 1,
                  },
                }}
                placeholder={placeholder}
                // inputProps={{ "aria-label": "search-input" }}
                value={_term}
                onChange={(e) => handleType(e)}
                {...params}
                {...params.InputProps}
                endAdornment={undefined}
              />
            );
          }}
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
            <Typography variant="subtitle2" color="text.secondary">
              Type search is temporarily unavailable. Due to ongoing RFC-145
              integration
            </Typography>
          </Grid>
          {/* <Grid item xs={12} md={5}>
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
          </Grid> */}
        </Grid>
      </Box>
    </>
  );
}
