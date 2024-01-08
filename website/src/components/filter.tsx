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
  IconButton,
  Input,
  InputAdornment,
  InputLabel,
  MenuItem,
  Select,
  ToggleButton,
  ToggleButtonGroup,
  Typography,
} from "@mui/material";
import InputIcon from "@mui/icons-material/Input";
import OutputIcon from "@mui/icons-material/Output";
import KeyboardArrowUpIcon from "@mui/icons-material/KeyboardArrowUp";
import { useFilter } from "./layout/filterContext";
import { Clear } from "@mui/icons-material";

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
    submitFilters({});
    setShowFilter(false);
  };

  return (
    <Collapse in={showFilter}>
      {showDivider && <Divider sx={{ mt: 1, mb: 2 }} />}
      <Container
        disableGutters
        sx={{
          py: 1,
        }}
      >
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
          <FormControl
            fullWidth
            sx={{
              my: 1,
              display: "flex",
              flexDirection: "row",
              flexWrap: {
                xs: "wrap",
                md: "unset",
              },
              overflowX: {
                xs: "scroll",
                md: "hidden",
              },
            }}
          >
            <Box sx={{ display: "flex", alignItems: "center", pr: 1 }}>
              <Typography variant="subtitle2" sx={{ color: "text.secondary" }}>
                From
              </Typography>
            </Box>
            <ToggleButtonGroup
              aria-labelledby="input-type-label"
              exclusive
              fullWidth
              value={from}
              onChange={(e, values) => setFrom(values)}
              color={"primary"}
            >
              {Object.keys(filters?.from || {}).map((name) => (
                <ToggleButton
                  key={name}
                  value={name}
                  aria-label={name}
                  sx={{
                    textTransform: "capitalize",
                    borderRadius: 10,
                  }}
                >
                  {name}
                </ToggleButton>
              ))}
            </ToggleButtonGroup>

            <Box sx={{ ml: 1, px: 1, display: { xs: "none", md: "block" } }}>
              <IconButton onClick={() => setFrom("any")}>
                <Clear />
              </IconButton>
            </Box>
          </FormControl>

          <FormControl
            fullWidth
            sx={{
              my: 1,
              display: "flex",
              flexDirection: "row",
              flexWrap: {
                xs: "wrap",
                md: "unset",
              },
              overflowX: {
                xs: "scroll",
                md: "hidden",
              },
            }}
          >
            <Box sx={{ display: "flex", alignItems: "center", pr: 1 }}>
              <Typography variant="subtitle2" sx={{ color: "text.secondary" }}>
                To
              </Typography>
            </Box>
            <ToggleButtonGroup
              aria-labelledby="return-type-label"
              exclusive
              fullWidth
              value={to}
              color={"primary"}
              onChange={(e, values) => setTo(values)}
            >
              {Object.keys(filters?.to || {}).map((name) => (
                <ToggleButton
                  key={name}
                  value={name}
                  aria-label={name}
                  sx={{ textTransform: "capitalize", borderRadius: 10 }}
                >
                  {name}
                </ToggleButton>
              ))}
              <Box sx={{ ml: 1, px: 1, display: { xs: "none", md: "block" } }}>
                <IconButton onClick={() => setTo("any")}>
                  <Clear />
                </IconButton>
              </Box>
            </ToggleButtonGroup>
          </FormControl>

          {!disableSubmit && (
            <>
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
