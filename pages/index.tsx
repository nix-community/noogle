import { BasicList, BasicListItem } from "../components/basicList";
import { useState, useMemo, useEffect } from "react";
import { Box } from "@mui/material";
import FunctionItem from "../components/functionItem/functionItem";
import { NixType, nixTypes, MetaData, DocItem } from "../types/nix";
import { data } from "../models/data";
import { useRouter } from "next/router";

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
            return value.join("\n").toLowerCase().includes(term.toLowerCase());
          }
          const valueAsString = value.toString();
          return valueAsString.toLowerCase().includes(term.toLowerCase());
        }
        return false;
      });
    });
  };

function getTypes(
  fnName: string,
  fnType: string | undefined
): { args: NixType[]; types: NixType[] } {
  if (fnType) {
    let cleanType = fnType.replace(/ /g, "").replace(`${fnName}::`, "");
    const tokens = cleanType
      .split(/(::|->|\[|\]|\{|\}|\(|\))/gm)
      .filter(Boolean);
    const lastArrowIdx = tokens.lastIndexOf("->");
    if (lastArrowIdx) {
      // Function has at least on return value
      const interpretToken = (token: string) => {
        if (token === "(" || token === ")") {
          return "function" as NixType;
        } else if (token === "[" || token === "]") {
          return "list" as NixType;
        } else if (token === "{" || token === "}") {
          return "attrset" as NixType;
        } else if (nixTypes.includes(token.toLowerCase() as NixType)) {
          return token.toLowerCase() as NixType;
        } else if (
          token.length === 1 &&
          ["a", "b", "c", "d", "e"].includes(token)
        ) {
          return "any" as NixType;
        } else {
          return undefined;
        }
      };
      const returnValueTokens = tokens.slice(lastArrowIdx + 1);
      const types = returnValueTokens
        .map(interpretToken)
        .filter(Boolean)
        .filter((e, i, s) => s.indexOf(e) === i);
      const args = tokens
        .slice(0, lastArrowIdx)
        .map(interpretToken)
        .filter(Boolean)
        .filter((e, i, s) => s.indexOf(e) === i);
      return { args, types } as { args: NixType[]; types: NixType[] };
    }
  }
  return { args: ["any"], types: ["any"] };
}

const filterByType =
  ({ to, from }: { to: NixType; from: NixType }) =>
  (data: MetaData): MetaData => {
    if (to === "any" && from === "any") {
      return data;
    } else {
      return data.filter(
        // TODO: Implement proper type matching
        ({ name, fn_type }) => {
          if (fn_type) {
            const parsedType = getTypes(name, fn_type);
            return (
              parsedType.args.includes(from) && parsedType.types.includes(to)
            );
          } else {
            return to === "any" && from === "any";
          }
        }
      );
    }
  };

export default function FunctionsPage() {
  const [selected, setSelected] = useState<string | null>(null);
  const [term, setTerm] = useState<string>("");
  const [filter, setFilter] = useState<{ to: NixType; from: NixType }>({
    to: "any",
    from: "any",
  });
  const router = useRouter();

  const handleSelect = (key: string) => {
    console.log({ key });
    setSelected((curr: string | null) => {
      if (curr === key) {
        return null;
      } else {
        return key;
      }
    });
  };

  const filteredData = useMemo(
    () => pipe(filterByType(filter), search(term))(data),
    [filter, term]
  );

  const handleSearch = (term: string) => {
    setTerm(term);
  };

  // useEffect(() => {
  //   const query = [];
  //   if (term) {
  //     query.push(`search=${term}`);
  //   }
  //   if (filter) {
  //     query.push(`to=${filter.to}&from=${filter.from}`);
  //   }
  //   router.push(`?${query.join("&")}`);
  // }, [filter, term]);

  type Filter = { from: NixType; to: NixType };
  const handleFilter = (newFilter: Filter | ((curr: Filter) => Filter)) => {
    setFilter(newFilter);
  };
  const getKey = (item: DocItem) => `${item.category}/${item.name}`;

  const preRenderedItems: BasicListItem[] = filteredData.map(
    (docItem: DocItem) => {
      const key = getKey(docItem);
      return {
        item: (
          <Box
            sx={{
              width: "100%",
              height: "100%",
            }}
            onClick={!(selected === key) ? () => handleSelect(key) : undefined}
          >
            <FunctionItem
              name={docItem.name}
              docItem={docItem}
              selected={selected === key}
              handleClose={() => setSelected(null)}
            />
          </Box>
        ),
        key,
      };
    }
  );

  return (
    <Box sx={{ ml: { xs: 0, md: 2 } }}>
      <BasicList
        selected={selected}
        itemsPerPage={8}
        items={preRenderedItems}
        handleSearch={handleSearch}
        handleFilter={handleFilter}
      />
    </Box>
  );
}
