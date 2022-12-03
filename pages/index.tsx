import { BasicList, BasicListItem } from "../components/basicList";
import { useState, useMemo } from "react";
import { Box } from "@mui/material";
import FunctionItem from "../components/functionItem/functionItem";
import { NixType, nixTypes, MetaData, DocItem } from "../types/nix";
import { Preview } from "../components/preview/preview";
import metadata from "../models/data.json";
// const mockData: FuncData[] = Object.entries(nixFuns).map(([key, value]) => ({
//   name: key,
//   info: value,
// }));

const data: MetaData = metadata as MetaData;

function pipe<T>(...fns: ((arr: T) => T)[]) {
  return (x: T) => fns.reduce((v, f) => f(v), x);
}

const search =
  (term: string) =>
  (data: MetaData): MetaData => {
    return data.filter((item) => {
      return Object.values(item).some((value) => {
        if (value) {
          const valueAsString = value.toString();
          return valueAsString.toLowerCase().includes(term.toLocaleLowerCase());
        }
        return false;
      });
    });
  };

const preProcess = (a: string | undefined) => {
  if (a?.match(/\[(.*)\]/)) {
    return "list";
  }
  if (a?.toLowerCase()?.includes("attrset")) {
    return "attrset";
  }
  return a;
};
const filter =
  (to: NixType[], from: NixType[]) =>
  (data: MetaData): MetaData => {
    return data.filter(
      // TODO: Implement proper type matching
      ({ name, fn_type }) => {
        if (fn_type) {
          const args = fn_type.split("->");
          const front = args.slice(0, -1);
          let firstTerm = front.at(0);
          if (firstTerm?.includes("::")) {
            firstTerm = firstTerm.split("::").at(1);
          }
          const inpArgs = [firstTerm, ...front.slice(1, -1)];
          const parsedInpTypes = inpArgs.map(preProcess);
          // const fn_from =
          const fn_to = args.at(-1);
          const parsedOutType = preProcess(fn_to);
          if (name.includes("escapeShellArgs")) {
            console.log({ args, inp_args: inpArgs, fn_to });
          }
          return (
            from.some((f) => parsedInpTypes.join(" ").includes(f)) &&
            to.some((t) => parsedOutType?.includes(t))
          );
        }
        return false;
      }
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
    () => pipe(filter(to, from), search(term))(data),
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
    (docItem: DocItem) => ({
      item: (
        <Box
          sx={{
            width: "100%",
            height: "100%",
          }}
          onClick={() => handleSelect(docItem.name)}
        >
          <FunctionItem
            name={docItem.name}
            docItem={docItem}
            selected={selected === docItem.name}
          />
        </Box>
      ),
      key: docItem.name,
    })
  );
  const preview = (
    <Preview docItem={data.find((f) => f.name === selected) || data[0]} />
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
