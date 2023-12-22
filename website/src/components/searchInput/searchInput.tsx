"use client";
import { NixType } from "@/models/nix";
import ClearIcon from "@mui/icons-material/Clear";
import SearchIcon from "@mui/icons-material/Search";
import { Autocomplete, Divider, Input } from "@mui/material";
import IconButton from "@mui/material/IconButton";
import Paper from "@mui/material/Paper";
import React, { useState } from "react";
import { data } from "@/models/data";
import { useRouter } from "next/navigation";

export type Filter = { from: NixType; to: NixType };

export interface SearchInputProps {
  placeholder: string;
}

export function SearchInput(props: SearchInputProps) {
  const { placeholder } = props;
  const router = useRouter();

  const [term, setTerm] = useState<string>("");

  const handleSubmit = (input: string) => {
    router.push(`/q?term=${input}`);
  };

  const _handleClear = () => {
    setTerm("");
    // clearSuggestions();
  };
  const handleType = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    setTerm(e.target.value);
    // autoSuggest(e.target.value, {
    //   fuzzy: 0.25,
    //   fields: ["meta.title", "content.content"],
    // });
  };

  // @ts-ignore
  // const autoCompleteOptions = useMemo(() => {
  //   const options = suggestions
  //     .slice(0, 5)
  //     .map((s) => s.terms)
  //     .flat();
  //   const sorted = options.sort((a, b) => -b.localeCompare(a));
  //   return [...new Set(sorted)];
  // }, [suggestions]);

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
