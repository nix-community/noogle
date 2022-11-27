import React, { useState, useMemo } from "react";
import Paper from "@mui/material/Paper";
import InputBase from "@mui/material/InputBase";
import IconButton from "@mui/material/IconButton";
import SearchIcon from "@mui/icons-material/Search";
import ClearIcon from "@mui/icons-material/Clear";
import { debounce } from "@mui/material";

export interface SearchInputProps {
  handleSearch: (term: string) => void;
  clearSearch: () => void;
  placeholder: string;
}

export function SearchInput(props: SearchInputProps) {
  const { handleSearch, clearSearch, placeholder } = props;

  const [term, setTerm] = useState("");

  const handleSubmit = React.useRef((input: string) => {
    handleSearch(input);
  }).current;
  const debouncedSubmit = useMemo(
    () => debounce(handleSubmit, 300),
    [handleSubmit]
  );

  const handleClear = () => {
    setTerm("");
    clearSearch();
  };
  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    setTerm(e.target.value);
    debouncedSubmit(e.target.value);
  };

  return (
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
      <IconButton aria-label="clear-button" onClick={handleClear}>
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
        value={term}
        onChange={(e) => handleChange(e)}
      />
      <IconButton
        type="submit"
        onClick={() => handleSubmit(term)}
        sx={{
          p: 1,
          bgcolor: "primary.dark",
          color: "common.white",
          "&:hover": {
            backgroundColor: "primary.main",
            opacity: [0.9, 0.8, 0.7],
          },
        }}
        aria-label="search-button"
      >
        <SearchIcon />
      </IconButton>
    </Paper>
  );
}
