"use client";

import { usePagefindSearch } from "./Pagefind";
import { useEffect, useState } from "react";
import {
  Box,
  Button,
  Chip,
  Collapse,
  Container,
  Divider,
  FormControl,
  Input,
  InputAdornment,
  InputLabel,
  MenuItem,
  Select,
  Typography,
} from "@mui/material";
import InputIcon from "@mui/icons-material/Input";
import OutputIcon from "@mui/icons-material/Output";
import KeyboardArrowUpIcon from "@mui/icons-material/KeyboardArrowUp";
import { useFilter } from "./layout/filterContext";

const defaultFilters = {
  from: {
    any: 1806,
    attrset: 114,
    bool: 60,
    list: 177,
    number: 46,
    string: 196,
  },
  to: {
    any: 1734,
    attrset: 87,
    bool: 54,
    list: 100,
    never: 1,
    number: 24,
    string: 105,
  },
};

type PagefindFilter = {
  from?: {
    [tag: string]: number;
  };
  to?: {
    [tag: string]: number;
  };
};

interface FilterProps {
  disableChevron?: boolean;
  disableSubmit?: boolean;
  showDivider?: boolean;
}
export const Filter = (props: FilterProps) => {
  const { disableChevron, disableSubmit, showDivider } = props;

  const { pagefind } = usePagefindSearch();
  const {
    showFilter,
    setShowFilter,
    from,
    to,
    setTo,
    setFrom,
    submit: submitFilters,
  } = useFilter();

  const [filters, setFilters] = useState<PagefindFilter>(defaultFilters);

  useEffect(() => {
    const init = async () => {
      try {
        const f = await pagefind.filters();
        setFilters(f);
      } catch (e) {
        console.log(e);
      }
    };
    init();
  }, [pagefind]);

  const handleSubmit = () => {
    submitFilters();
    setShowFilter(false);
  };

  return (
    <Collapse in={showFilter}>
      {showDivider && <Divider sx={{ mt: 1, mb: 2 }} />}
      <Container disableGutters>
        <Box
          sx={{
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
          }}
          component={"form"}
          onSubmit={(e: React.FormEvent) => {
            e.preventDefault();
            handleSubmit();
          }}
        >
          {!disableChevron && (
            <Button
              sx={{ width: "100%" }}
              onClick={() => setShowFilter((s) => !s)}
            >
              <Typography>
                <KeyboardArrowUpIcon />
              </Typography>
            </Button>
          )}
          <FormControl fullWidth sx={{ my: 1 }}>
            <InputLabel id="input-type-label">Input Type</InputLabel>
            <Select
              labelId="input-type-label"
              id="input-type"
              label="Input Type"
              value={from}
              onChange={(e) => {
                setFrom(e.target.value);
              }}
              input={
                <Input
                  disableUnderline
                  startAdornment={
                    <InputAdornment position="start">
                      <InputIcon />
                    </InputAdornment>
                  }
                />
              }
              renderValue={(value) => (
                <Chip
                  key={value}
                  label={<Typography variant="subtitle1">{value}</Typography>}
                  sx={{ px: 2, textTransform: "capitalize" }}
                  color="primary"
                />
              )}
            >
              {Object.keys(filters?.from || {}).map((name) => (
                <MenuItem
                  key={name}
                  value={name}
                  sx={{ textTransform: "capitalize" }}
                >
                  {name}
                </MenuItem>
              ))}
            </Select>
          </FormControl>
          <FormControl fullWidth sx={{ my: 1 }}>
            <InputLabel id="return-type-label">Return Type</InputLabel>
            <Select
              // IconComponent={InputIcon}
              labelId="return-type-label"
              id="return-type"
              label="Return Type"
              value={to}
              onChange={(e) => {
                setTo(e.target.value);
              }}
              input={
                <Input
                  disableUnderline
                  startAdornment={
                    <InputAdornment position="start">
                      <OutputIcon />
                    </InputAdornment>
                  }
                />
              }
              renderValue={(value) => (
                <Chip
                  key={value}
                  label={<Typography variant="subtitle1">{value}</Typography>}
                  sx={{ px: 2, textTransform: "capitalize" }}
                  color="primary"
                />
              )}
            >
              {Object.keys(filters?.to || {}).map((name) => (
                <MenuItem
                  key={name}
                  value={name}
                  sx={{ textTransform: "capitalize" }}
                >
                  {name}
                </MenuItem>
              ))}
            </Select>
          </FormControl>
          {!disableSubmit && (
            <>
              <Button variant="outlined" sx={{ width: "100%" }}>
                Reset
              </Button>
              <Button variant="outlined" type="submit" sx={{ width: "100%" }}>
                Apply
              </Button>
            </>
          )}
        </Box>
      </Container>
    </Collapse>
  );
};
