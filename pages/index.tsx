import { BasicList, BasicListItem } from "../components/basicList";
import { useState, useMemo } from "react";
import { Box } from "@mui/material";
import FunctionItem from "../components/functionItem/functionItem";
import { NixType, nixTypes, MetaData, DocItem } from "../types/nix";
import { Preview } from "../components/preview/preview";
import nixLibs from "../models/lib.json";
import nixBuiltins from "../models/builtins.json";

const data: MetaData = [
  ...(nixLibs as MetaData),
  ...(nixBuiltins as MetaData),
].sort((a, b) => a.name.localeCompare(b.name));

function pipe<T>(...fns: ((arr: T) => T)[]) {
  return (x: T) => fns.reduce((v, f) => f(v), x);
}

const search =
  (term: string) =>
  (data: MetaData): MetaData => {
    return data.filter((item) => {
      return Object.values(item).some((value) => {
        if (value) {
          if (typeof value === "object" && value.length > 0) {
            return value
              .join("\n")
              .toLocaleLowerCase()
              .includes(term.toLowerCase());
          }
          const valueAsString = value.toString();
          return valueAsString.toLowerCase().includes(term.toLocaleLowerCase());
        }
        return false;
      });
    });
  };

const preProcess = (a: string | undefined) => {
  if (a) {
    let b = a;
    if (a.includes("::")) {
      b = a.split("::")[1];
    }
    const cleaned = b?.replace("(", "").replace(")", "").trim();
    let typ = cleaned;
    if (cleaned.match(/\[(.*)\]/)) {
      typ = "list";
    }
    if (
      cleaned.toLowerCase().includes("attrset") ||
      cleaned.trim().startsWith("{")
    ) {
      typ = "attrset";
    }
    if (cleaned.length === 1 && ["a", "b", "c", "d", "e"].includes(cleaned)) {
      typ = "any";
    }
    return typ;
  }
  return a;
};
const filterByType =
  (to: NixType[], from: NixType[]) =>
  (data: MetaData): MetaData => {
    //if user wants any data show all
    if (to.includes("any") && from.includes("any")) {
      return data;
    }
    return data.filter(
      // TODO: Implement proper type matching
      ({ name, fn_type }) => {
        if (fn_type) {
          const cleanType = fn_type.replace(/ /g, "").replace(`${name}::`, "");
          const args = cleanType.split("->");
          const front = args.slice(0, -1);

          const parsedInpTypes = front.map(preProcess);

          const fn_to = args.at(-1);
          const parsedOutType = preProcess(fn_to);
          return (
            from.some((f) => parsedInpTypes.join(" ").includes(f)) &&
            to.some((t) => parsedOutType?.includes(t))
          );
        }
        //function type could not be detected only show those without filters
        if (fn_type === null) {
          return to.includes("any") && from.includes("any");
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
    () => pipe(filterByType(to, from), search(term))(data),
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
  const getKey = (item: DocItem) => `${item.category}/${item.name}`;

  const preRenderedItems: BasicListItem[] = filteredData.map(
    (docItem: DocItem) => ({
      item: (
        <Box
          sx={{
            width: "100%",
            height: "100%",
          }}
          onClick={() => handleSelect(getKey(docItem))}
        >
          <FunctionItem
            name={docItem.name}
            docItem={docItem}
            selected={selected === getKey(docItem)}
          />
        </Box>
      ),
      key: getKey(docItem),
    })
  );
  const preview = (
    <Preview
      docItem={data.find((f) => getKey(f) === selected) || data[0]}
      handleClose={() => setSelected(null)}
    />
  );

  return (
    <Box sx={{ ml: { xs: 0, md: 2 } }}>
      <BasicList
        selected={selected}
        itemsPerPage={8}
        items={preRenderedItems}
        handleSearch={handleSearch}
        handleFilter={handleFilter}
        preview={selected ? preview : null}
      />
    </Box>
  );
}
