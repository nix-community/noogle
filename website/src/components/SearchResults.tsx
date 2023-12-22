"use client";
import {
  Box,
  Container,
  Divider,
  LinearProgress,
  Link,
  List,
  ListItem,
  ListItemText,
  TablePagination,
  Typography,
  useMediaQuery,
  useTheme,
} from "@mui/material";
import React, { useEffect, useMemo, useState } from "react";

import { useMiniSearch } from "react-minisearch";

import { Doc, data } from "@/models/data";
import { EmptyRecordsPlaceholder } from "./emptyRecordsPlaceholder";
import { useSearchParams } from "next/navigation";
import { Excerpt } from "./Excerpt";
import { useRouter } from "next/navigation";

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};

const useMobile = () => useMediaQuery(useTheme().breakpoints.down("md"));

export function SearchResults() {
  const params = useSearchParams();
  const router = useRouter();

  const query = useMemo(() => new URLSearchParams(params), [params]);

  const page = +params.get("page")! || 1;
  const itemsPerPage = +params.get("limit")! || 10;
  const term = params.get("term") || "";

  const isMobile = useMobile();

  const [isLoading, setLoading] = useState<boolean>(true);
  const { search, searchResults } = useMiniSearch<Doc>(data, {
    idField: "meta.title",
    fields: ["meta.title", "content.content", "bla.bu"],
    // @ts-ignore
    extractField: (document, fieldName) => {
      // Access nested fields
      // @ts-ignore
      return fieldName.split(".").reduce(
        // @ts-ignore
        (doc, key) => doc && doc[key],
        document
      ) as Document[keyof Document];
    },
  });
  useEffect(() => {
    search(term);
  }, [term, search]);

  const handleChangeRowsPerPage = (
    event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    query.set("limit", event.target.value);
    query.set("page", "1");
    router.push(`?${query.toString()}`);
  };
  // useEffect(() => {
  //   if (searchResults !== null) {
  //     setLoading(false);
  //   }
  //   console.log({ searchResults });
  // }, [searchResults]);
  // console.log({ isLoading });

  const pageItems = useMemo(() => {
    const items = searchResults || [];
    const startIdx = (page - 1) * itemsPerPage;
    const endIdx = page * itemsPerPage;
    return items.slice(startIdx, endIdx);
  }, [page, itemsPerPage, searchResults]);

  const handlePageChange = (
    event: React.MouseEvent<HTMLButtonElement> | null,
    value: number
  ) => {
    query.set("page", (value + 1).toString());
    router.push(`?${query.toString()}`);
  };

  return (
    <Box
      sx={{
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <Container maxWidth="lg">
        {searchResults === null ? (
          <LinearProgress sx={{ my: 2 }} />
        ) : (
          <>
            <Typography
              variant="subtitle1"
              sx={{ color: "text.secondary", p: 1 }}
            >
              {searchResults?.length} Results
            </Typography>
            <List aria-label="basic-list" sx={{ pt: 0, width: "100%" }}>
              {pageItems.length ? (
                pageItems.map(({ meta, content }, idx) => (
                  <Box key={`${idx}`}>
                    <ListItem sx={{ px: 0 }} aria-label={`item-${idx}`}>
                      <ListItemText
                        primaryTypographyProps={{
                          variant: "h5",
                          component: "h2",
                        }}
                        secondaryTypographyProps={{
                          variant: "body1",
                        }}
                        primary={
                          <Link href={`f/${meta.path.join("/")}`}>
                            {meta.title}
                          </Link>
                        }
                        secondary={<Excerpt meta={meta} content={content} />}
                      />
                    </ListItem>
                    <Divider
                      flexItem
                      orientation="horizontal"
                      sx={{ p: 1, mx: 1 }}
                    />
                  </Box>
                ))
              ) : (
                <Box sx={{ mt: 3 }}>
                  <EmptyRecordsPlaceholder
                    CardProps={{
                      sx: { backgroundColor: "inherit" },
                    }}
                    title={"No search results found"}
                    subtitle={
                      "Maybe the function does not exist or is not documented."
                    }
                  />
                </Box>
              )}
            </List>
            <TablePagination
              component={"div"}
              sx={{ display: "flex", justifyContent: "center", mt: 1, mb: 10 }}
              count={searchResults?.length || -1}
              color="primary"
              page={page - 1}
              onPageChange={handlePageChange}
              rowsPerPage={itemsPerPage}
              labelRowsPerPage={"per Page"}
              rowsPerPageOptions={[10, 20, 50, 100]}
              onRowsPerPageChange={handleChangeRowsPerPage}
              showFirstButton={!isMobile}
              showLastButton={!isMobile}
            />
          </>
        )}
      </Container>
    </Box>
  );
}
