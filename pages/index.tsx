import { BasicList, BasicListItem } from "../components/basicList";
import { useState, useMemo } from "react";
import { Box } from "@mui/material";
import FunctionItem from "../components/functionItem/functionItem";
import { NixType, nixTypes, FuncData } from "../types/nix";
import { nixFuns } from "../models/nix";
import { Preview } from "../components/preview/preview";

const mockData: FuncData[] = Object.entries(nixFuns).map(([key, value]) => ({
  name: key,
  info: value,
}));

const pipe =
  (...fns: ((arr: FuncData[]) => FuncData[])[]) =>
  (x: FuncData[]) =>
    fns.reduce((v, f) => f(v), x);

const search =
  (term: string) =>
  (data: FuncData[]): FuncData[] => {
    return data.filter((item) => {
      return Object.values(item).some((value) => {
        const valueAsString = value.toString();
        return valueAsString.toLowerCase().includes(term.toLocaleLowerCase());
      });
    });
  };
const filter =
  (to: NixType[], from: NixType[]) =>
  (data: FuncData[]): FuncData[] => {
    return data.filter(
      ({ info }) => from.includes(info.from) && to.includes(info.to)
    );
  };

const initialTypes = nixTypes;
export default function FunctionsPage() {
  const [selected, setSelected] = useState<string | null>(null);
  const [term, setTerm] = useState<string>("");
  const [to, setTo] = useState<NixType[]>(initialTypes);
  const [from, setFrom] = useState<NixType[]>(initialTypes);

  const handleSelect = (key: string) => {
    setSelected((curr: string | null) => {
      if (curr === key) {
        return null;
      } else {
        return key;
      }
    });
  };

  const filteredData = useMemo(
    () => pipe(filter(to, from), search(term))(mockData),
    [to, from, term]
  );

  const handleSearch = (term: string) => {
    setTerm(term);
  };

  const handleFilter = (t: NixType, mode: "to" | "from") => {
    let filterBy;
    if (t === "any") {
      filterBy = nixTypes;
    } else {
      filterBy = [t];
    }
    if (mode === "from") {
      setFrom(filterBy);
    }
    if (mode === "to") {
      setTo(filterBy);
    }
  };

  const preRenderedItems: BasicListItem[] = filteredData.map(
    ({ name, info }) => ({
      item: (
        <Box
          sx={{
            width: "100%",
            height: "100%",
          }}
          onClick={() => handleSelect(name)}
        >
          <FunctionItem name={name} info={info} selected={selected === name} />
        </Box>
      ),
      key: name,
    })
  );
  const preview = (
    <Preview func={mockData.find((f) => f.name === selected) || mockData[0]} />
  );

  return (
    <Box sx={{ ml: 2 }}>
      <BasicList
        items={preRenderedItems}
        handleSearch={handleSearch}
        handleFilter={handleFilter}
        preview={selected ? preview : null}
      />
    </Box>
  );
}
