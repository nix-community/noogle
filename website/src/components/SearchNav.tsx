"use client";
import { ChevronLeft, ChevronRight } from "@mui/icons-material";
import { Box, Button, Link, Typography } from "@mui/material";
import { useSessionStorage } from "usehooks-ts";
import { FilterOptions } from "./layout/filterContext";
// import { useRouter } from "next/navigation";
import { PagefindResult, usePagefindSearch } from "./Pagefind";
import { useEffect, useMemo, useState } from "react";
import { usePathname } from "next/navigation";

export const SearchNav = () => {
  const [filterOptions] = useSessionStorage<FilterOptions | null>(
    "currentFilterOptions",
    null
  );

  return filterOptions && <Navigation filterOptions={filterOptions} />;
};

// const prev = {
//   url: "/f/builtins/genList.html",
//   content:
//     "builtins.genList Primop. Takes 2 arguments. generator, length. Generate list of size length, with each element i equal to the value returned by generator i. For example, builtins.genList (x: x * x) 5 returns the list [ 0 1 4 9 16 ]. Noogle also knows. Aliases. lib.genList. lib.lists.genList. lib.strings.genList.",
//   word_count: 49,
//   filters: {
//     "type-to": ["Any"],
//     "type-from": ["Any"],
//   },
//   meta: {
//     title: "builtins.genList Primop.",
//   },
//   anchors: [],
//   weighted_locations: [],
//   locations: [],
//   raw_content:
//     "builtins.genList Primop. Takes 2 arguments. generator, length. Generate list of size length, with each element i equal to the value returned by generator i. For example, builtins.genList (x: x * x) 5 returns the list [ 0 1 4 9 16 ]. Noogle also knows. Aliases. lib.genList. lib.lists.genList. lib.strings.genList.",
//   raw_url: "/f/builtins/genList.html",
//   excerpt:
//     "builtins.genList Primop. Takes 2 arguments. generator, length. Generate list of size length, with each element i equal to the value returned by generator i. For example, builtins.genList (x: x *",
//   sub_results: [],
// };
// const next = prev;

export const Navigation = ({
  filterOptions,
}: {
  filterOptions: FilterOptions;
}) => {
  const { filter, input } = filterOptions;

  const term = input || null;
  const from = filter?.from || null;
  const to = filter?.to || null;

  const { search } = usePagefindSearch();
  const pathname = usePathname();

  const [items, setItems] = useState<PagefindResult[] | null>(null);

  useEffect(() => {
    const init = async () => {
      if (search) {
        let raw =
          (await search(term, { filters: { from, to } }))?.results || [];
        let items = await Promise.all(raw.map(async (r) => await r.data()));
        setItems(items);
      }
    };
    init();
  }, [term, from, to, search]);

  // TODO: show skeleton
  const { prev, next } = useMemo(() => {
    if (items == null) {
      return {
        loading: true,
        prev: undefined,
        next: undefined,
      };
    }
    const currIdx = items.findIndex((item) => item.url.includes(pathname));
    return {
      prev: currIdx - 1 >= 0 ? items[currIdx - 1] : null,
      next: currIdx <= items.length ? items[currIdx + 1] : null,
      loading: false,
    };
  }, [pathname, items]);

  return (
    <Box sx={{ display: "flex", alignItems: "center" }}>
      {prev && (
        <Link
          href={prev.url}
          sx={{
            my: 2,
            py: 1,
            px: 2,
            display: "block",
            borderStyle: "solid",
            borderColor: "primary.main",
            borderWidth: 1,
            borderRadius: 3,
          }}
        >
          <Button aria-label="Prev result" startIcon={<ChevronLeft />}>
            Previous
          </Button>
          <Typography variant="subtitle1">{prev.meta.title}</Typography>
        </Link>
      )}

      {next && (
        <Link
          href={next.url}
          sx={{
            ml: "auto",
            my: 2,
            py: 1,
            px: 2,
            display: "block",
            borderStyle: "solid",
            borderColor: "primary.main",
            borderWidth: 1,
            borderRadius: 3,
          }}
        >
          <Button
            aria-label="Prev result"
            endIcon={<ChevronRight />}
            sx={{ float: "right" }}
          >
            Next
          </Button>
          <Typography variant="subtitle1">{next.meta.title}</Typography>
        </Link>
      )}
    </Box>
  );
};
