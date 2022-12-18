import React, { useState, useMemo, useEffect } from "react";
import Paper from "@mui/material/Paper";
import InputBase from "@mui/material/InputBase";
import IconButton from "@mui/material/IconButton";
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
  Tooltip,
  Typography,
} from "@mui/material";
import ChevronRightIcon from "@mui/icons-material/ChevronRight";
import { NixType, nixTypes } from "../../types/nix";
import { useRouter } from "next/router";
import ShareIcon from "@mui/icons-material/Share";
import { useSnackbar } from "notistack";

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

type Filter = { from: NixType; to: NixType };

export interface SearchInputProps {
  handleSearch: (term: string) => void;
  handleFilter: (filter: Filter | ((curr: Filter) => Filter)) => void;
  clearSearch: () => void;
  placeholder: string;
}

export function SearchInput(props: SearchInputProps) {
  const { handleSearch, clearSearch, placeholder, handleFilter } = props;
  const { enqueueSnackbar } = useSnackbar();
  const [term, setTerm] = useState("");
  const [to, setTo] = useState<NixType>("any");
  const [from, setFrom] = useState<NixType>("any");

  const router = useRouter();
  useEffect(() => {
    const { query } = router;
    if (query?.search) {
      if (typeof query.search === "string") {
        const search = query.search;
        setTerm(search);
        handleSearch(search);
      }
    }
    if (query?.to) {
      if (typeof query.to === "string") {
        const to = query.to as NixType;
        setTo(to);
        handleFilter((curr) => ({ ...curr, to }));
      }
    }
    if (query?.from) {
      if (typeof query.from === "string") {
        const from = query.from as NixType;
        setFrom(from);
        handleFilter((curr) => ({ ...curr, from }));
      }
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [router]);

  const handleShare = () => {
    const queries = [];
    if (term) {
      queries.push(`search=${term}`);
    }
    queries.push(`to=${to}&from=${from}`);
    const handle = `https://noogle.dev?${queries.join("&")}`;
    navigator.clipboard.writeText(handle);
    enqueueSnackbar("link copied to clipboard", { variant: "default" });
  };
  const handleSubmit = React.useRef((input: string) => {
    handleSearch(input);
    router.query[term] = term;
  }).current;
  const debouncedSubmit = useMemo(
    () => debounce(handleSubmit, 300),
    [handleSubmit]
  );

  const _handleFilter = (t: NixType, mode: "from" | "to") => {
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
        <Tooltip title="share search result">
          <IconButton
            sx={{
              p: 1,
              color: "common.black",
            }}
            onClick={handleShare}
          >
            <ShareIcon fontSize="inherit" />
          </IconButton>
        </Tooltip>
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
