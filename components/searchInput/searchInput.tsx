import React, { useState, useMemo } from "react";
import Paper from "@mui/material/Paper";
import InputBase from "@mui/material/InputBase";
import IconButton from "@mui/material/IconButton";
import SearchIcon from "@mui/icons-material/Search";
import ClearIcon from "@mui/icons-material/Clear";
import {
  Box,
  debounce,
  FormControl,
  FormControlLabel,
  FormLabel,
  Grid,
  Radio,
  RadioGroup,
  Typography,
} from "@mui/material";
import ChevronRightIcon from "@mui/icons-material/ChevronRight";
import { NixType, nixTypes } from "../../types/nix";

interface SelectOptionProps {
  label: string;
  handleChange: (value: string) => void;
  value: string;

  options: {
    value: string;
    label: string;
  }[];
}

const SelectOption = (props: SelectOptionProps) => {
  const { label, handleChange, options, value } = props;

  const _handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const newVal = (event.target as HTMLInputElement).value as NixType;
    handleChange(newVal);
  };

  return (
    <FormControl
      sx={{
        flexDirection: "row",
      }}
    >
      <FormLabel
        sx={{
          width: "7rem",
          wordWrap: "unset",
          margin: "auto",
          padding: 1,
        }}
      >
        <Typography sx={{ minWidth: "max-content" }}>{label}</Typography>
      </FormLabel>

      <RadioGroup
        sx={{
          width: "100%",
          "&.MuiFormGroup-root": {
            flexDirection: "row",
          },
        }}
        value={value}
        onChange={_handleChange}
      >
        {options.map(({ value, label }) => (
          <FormControlLabel
            key={value}
            value={value}
            control={<Radio />}
            label={label}
          />
        ))}
      </RadioGroup>
    </FormControl>
  );
};

export interface SearchInputProps {
  handleSearch: (term: string) => void;
  handleFilter: (filter: { to: NixType; from: NixType }) => void;
  clearSearch: () => void;
  placeholder: string;
}

export function SearchInput(props: SearchInputProps) {
  const { handleSearch, clearSearch, placeholder, handleFilter } = props;

  const [term, setTerm] = useState("");
  const [to, setTo] = useState<NixType>("any");
  const [from, setFrom] = useState<NixType>("any");

  const handleSubmit = React.useRef((input: string) => {
    handleSearch(input);
  }).current;
  const debouncedSubmit = useMemo(
    () => debounce(handleSubmit, 300),
    [handleSubmit]
  );

  const _handleFilter = (t: NixType, mode: "from" | "to") => {
    console.log({ t, mode });
    if (mode === "to") {
      setTo(t);
      handleFilter({ to: t, from });
    } else {
      setFrom(t);
      handleFilter({ to, from: t });
    }
  };

  const handleClear = () => {
    setTerm("");
    setFrom("any");
    setTo("any");
    clearSearch();
  };
  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    setTerm(e.target.value);
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
      <Box>
        <Grid container>
          <Grid item xs={12} md={5}>
            <SelectOption
              value={from}
              label="from type"
              handleChange={(value) => {
                _handleFilter(value as NixType, "from");
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
              value={to}
              label="to type"
              handleChange={(value) => {
                _handleFilter(value as NixType, "to");
              }}
              options={nixTypes.map((v) => ({ value: v, label: v }))}
            />
          </Grid>
        </Grid>
      </Box>
    </>
  );
}
