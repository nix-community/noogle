"use client";
import ClearIcon from "@mui/icons-material/Clear";
import SearchIcon from "@mui/icons-material/Search";
import { Autocomplete, Badge, Divider, Input } from "@mui/material";
import IconButton from "@mui/material/IconButton";
import Paper from "@mui/material/Paper";
import React from "react";
import { data } from "@/models/data";
import TuneIcon from "@mui/icons-material/Tune";
import { useFilter } from "../layout/filterContext";

export interface SearchInputProps {
  placeholder: string;
}

export function SearchInput(props: SearchInputProps) {
  const { placeholder } = props;
  const {
    setShowFilter,
    to,
    from,
    submit: submitFilters,
    term,
    setTerm,
    setFrom,
    setTo,
  } = useFilter();

  const handleSubmit = (input: string | null) => {
    submitFilters(input!);
    setShowFilter(false);
  };

  const handleToggleFilter = () => {
    setShowFilter((s) => !s);
  };

  const _handleClear = () => {
    setTerm("");
    setFrom("any");
    setTo("any");
  };
  const handleType = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    setTerm(e.target.value);
  };

  return (
    <Paper
      component="form"
      action="q"
      elevation={0}
      sx={{
        width: "100%",
        height: "100%",
        display: "flex",
        alignItems: "center",
        bgcolor: "inherit",
      }}
      onSubmit={(e: React.FormEvent) => {
        e.preventDefault();
        handleSubmit(term);
      }}
    >
      <Autocomplete
        freeSolo
        includeInputInList
        aria-label={"search-input"}
        onInputChange={(e, value, reason) => {
          if (reason === "reset") {
            handleSubmit(value);
          }
        }}
        options={data.map((e) => e.meta.title)}
        sx={{ width: "100%" }}
        onChange={(e, value) => {
          handleType({
            target: { value: value || "" },
          } as React.ChangeEvent<HTMLInputElement>);
        }}
        value={term}
        renderInput={(params) => {
          return (
            <Input
              disableUnderline
              sx={{
                "& .MuiInputBase-root": {
                  ml: 1,
                  flex: 1,
                  backgroundColor: "paper.main",
                  px: 1,
                  py: 0,
                },
              }}
              value={term}
              onChange={(e) => handleType(e)}
              placeholder={placeholder}
              {...params}
              {...params.InputProps}
              endAdornment={undefined}
            />
          );
        }}
      />
      <IconButton aria-haspopup="true" onClick={handleToggleFilter}>
        {to !== "any" || from !== "any" ? (
          <Badge variant="dot" color="warning">
            <TuneIcon />
          </Badge>
        ) : (
          <TuneIcon />
        )}
      </IconButton>

      <IconButton aria-label="clear-button" onClick={_handleClear} size="small">
        <ClearIcon />
      </IconButton>
      <Divider flexItem orientation="vertical" sx={{ mx: 1 }} />
      <IconButton
        type="submit"
        size="small"
        sx={{
          p: 1,
        }}
        aria-label="search-button"
      >
        <SearchIcon fontSize="inherit" />
      </IconButton>
    </Paper>
  );
}
