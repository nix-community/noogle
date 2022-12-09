import React, { useState, useMemo } from "react";
import {
  Box,
  IconButton,
  List,
  ListItem,
  Pagination,
  Stack,
  Typography,
  Grid,
  Slide,
  Collapse,
  Grow,
} from "@mui/material";
import { BasicDataItem, BasicDataViewProps } from "../../types/basicDataView";
import { SearchInput } from "../searchInput";
import Radio from "@mui/material/Radio";
import RadioGroup from "@mui/material/RadioGroup";
import FormControlLabel from "@mui/material/FormControlLabel";
import FormControl from "@mui/material/FormControl";
import FormLabel from "@mui/material/FormLabel";
import ClearIcon from "@mui/icons-material/Clear";
import ChevronRightIcon from "@mui/icons-material/ChevronRight";
import { NixType, nixTypes } from "../../types/nix";

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};
export type BasicListProps = BasicDataViewProps & {
  handleFilter: (t: NixType, mode: "from" | "to") => void;
  preview: React.ReactNode;
  selected?: string | null;
  itemsPerPage: number;
};

interface SelectOptionProps {
  label: string;
  handleChange: (value: string) => void;

  options: {
    value: string;
    label: string;
  }[];
}

const SelectOption = (props: SelectOptionProps) => {
  const { label, handleChange, options } = props;
  const [value, setValue] = React.useState<NixType>("any");

  const _handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const newVal = (event.target as HTMLInputElement).value as NixType;
    setValue(newVal);
    handleChange(newVal);
  };
  const handleClear = () => {
    setValue("any");
    handleChange("any");
  };

  return (
    <FormControl
      sx={{
        // pl: 1.5,
        flexDirection: "row",
      }}
    >
      <FormLabel sx={{ width: "11rem", wordWrap: "unset" }}>
        <Typography>
          <IconButton aria-label="clear-button" onClick={handleClear}>
            <ClearIcon />
          </IconButton>
          {label}
        </Typography>
      </FormLabel>

      <RadioGroup
        sx={{
          // pl: 1.5,
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

export function BasicList(props: BasicListProps) {
  const {
    items,
    pageCount = 1,
    itemsPerPage,
    handleSearch,
    handleFilter,
    preview,
    selected = "",
  } = props;
  // const [from, setFrom] = useState<NixType>("any");
  // const [to, setTo] = useState<NixType>("any");

  const [page, setPage] = useState(1);

  const pageItems = useMemo(() => {
    const startIdx = (page - 1) * itemsPerPage;
    const endIdx = page * itemsPerPage;
    return items.slice(startIdx, endIdx);
  }, [page, items, itemsPerPage]);

  const [searchTerm, setSearchTerm] = useState("");

  const handlePageChange = (
    _event: React.ChangeEvent<unknown>,
    value: number
  ) => {
    setPage(value);
  };

  const _handleFilter = (t: NixType, mode: "from" | "to") => {
    handleFilter(t, mode);
    setPage(1);
  };

  const _handleSearch = (term: string) => {
    handleSearch && handleSearch(term);
    setSearchTerm(term);
    setPage(1);
  };

  return (
    <Stack>
      <SearchInput
        placeholder="search nix functions"
        handleSearch={_handleSearch}
        clearSearch={() => _handleSearch("")}
      />
      <Box>
        {/* <Stack direction="row"> */}
        <Grid container>
          <Grid item xs={12} md={5}>
            <SelectOption
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
            <Typography
            // sx={{
            //   width: "100%",
            //   display: "flex",
            //   justifyContent: "center",
            //   alignItems: "center",
            //   // flexDirection: "column",
            // }}
            >
              <ChevronRightIcon />
            </Typography>
          </Grid>
          <Grid item xs={12} md={5}>
            <SelectOption
              label="to type"
              handleChange={(value) => {
                _handleFilter(value as NixType, "to");
              }}
              options={nixTypes.map((v) => ({ value: v, label: v }))}
            />
          </Grid>
        </Grid>
        {/* </Stack> */}
      </Box>
      <List aria-label="basic-list" sx={{ pt: 0 }}>
        {pageItems.map(({ item, key }, idx) => (
          <Box key={`${key}-${idx}`}>
            <Slide
              direction="up"
              in={key === selected}
              mountOnEnter
              unmountOnExit
            >
              <ListItem
                key={`${key}-preview`}
                aria-label={`item-${key}`}
                sx={{ px: 0 }}
              >
                {preview}
              </ListItem>
              {/* )} */}
            </Slide>
            <ListItem sx={{ px: 0 }} key={key} aria-label={`item-${key}`}>
              {item}
            </ListItem>
          </Box>
        ))}
      </List>

      <Pagination
        sx={{ display: "flex", justifyContent: "center", mt: 1, mb: 10 }}
        count={Math.ceil(items.length / itemsPerPage) || 1}
        color="primary"
        page={page}
        onChange={handlePageChange}
      />
    </Stack>
  );
}
