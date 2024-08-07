"use client";
import ClearIcon from "@mui/icons-material/Clear";
import SearchIcon from "@mui/icons-material/Search";
import { Autocomplete, Divider, TextField } from "@mui/material";
import IconButton from "@mui/material/IconButton";
import Paper from "@mui/material/Paper";
import React from "react";
// import { data } from "@/models/data";
// import TuneIcon from "@mui/icons-material/Tune";
import { useFilter } from "../layout/filterContext";
// import { useRouter } from "next/navigation";

export interface SearchInputProps {
  placeholder: string;
  autoFocus?: boolean;
}

export function PkgsSearch(props: SearchInputProps) {
  const { placeholder, autoFocus = false } = props;
  const {
    // setShowFilter,

    submit: submitFilters,
    term,
    setTerm,
    setFrom,
    setTo,
  } = useFilter();
  // const _router = useRouter();

  const handleSubmit = (input: string) => {
    submitFilters({ input });
    // setShowFilter(false);
  };

  console.log({ term });
  // const handleToggleFilter = () => {
  //   // setShowFilter((s) => !s);
  // };

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
      action="pkgs"
      elevation={0}
      sx={{
        width: "100%",
        height: "100%",
        maxWidth: "90vw",
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
        aria-label={"search"}
        // onInputChange={(e, value, reason) => {
        //   if (reason === "reset" && e) {
        //     console.log({ e, value, reason });
        //     if (value) {
        //       const target = data.find((d) => d.meta.title === value);
        //       if (target) {
        //         router.push(`/f/${target.meta.path.join("/")}`);
        //       } else {
        //         handleSubmit(value);
        //       }
        //     } else {
        //       handleSubmit(value);
        //     }
        //   }
        // }}
        options={[]}
        // options={data.map((e) => e.meta.title)}
        sx={{ width: "100%" }}
        onChange={(e, value) => {
          handleType({
            target: { value: value || "" },
          } as React.ChangeEvent<HTMLInputElement>);
        }}
        value={term}
        renderInput={(params) => (
          <TextField
            {...params}
            autoFocus={autoFocus}
            InputProps={{
              ...params.InputProps,
              type: "search",
              disableUnderline: true,
              endAdornment: undefined,
              placeholder: placeholder,
            }}
            value={term}
            onChange={(e) => handleType(e)}
            variant="standard"
            sx={{
              "& .MuiInputBase-root": {
                backgroundColor: "paper.main",
                px: 1,
                py: 0,
              },
            }}
          />
        )}
      />
      {/* <IconButton
        aria-haspopup="true"
        id="filter"
        aria-label="filter"
        onClick={handleToggleFilter}
      >
        {to !== "any" || from !== "any" ? (
          <Badge variant="dot" color="warning">
            <TuneIcon />
          </Badge>
        ) : (
          <TuneIcon />
        )}
      </IconButton> */}

      <IconButton aria-label="clear" onClick={_handleClear} size="small">
        <ClearIcon />
      </IconButton>
      <Divider flexItem orientation="vertical" sx={{ mx: 1 }} />
      <IconButton
        type="submit"
        size="small"
        sx={{
          p: 1,
        }}
        aria-label="search"
      >
        <SearchIcon fontSize="inherit" />
      </IconButton>
    </Paper>
  );
}
