"use client";
import {
  Avatar,
  Box,
  Card,
  CardContent,
  CardHeader,
  Chip,
  Container,
  IconButton,
  LinearProgress,
  List,
  ListItem,
  ListItemAvatar,
  ListItemText,
  Skeleton,
  TablePagination,
  Typography,
  useMediaQuery,
  useTheme,
} from "@mui/material";
import React, { useEffect, useMemo, useState } from "react";

import { EmptyRecordsPlaceholder } from "./emptyRecordsPlaceholder";
import { useSearchParams } from "next/navigation";
import { useRouter } from "next/navigation";
import { PagefindResult, RawResult, usePagefindSearch } from "./Pagefind";
import { Clear } from "@mui/icons-material";
import { FilterOptions, useFilter } from "./layout/filterContext";
import { useSessionStorage } from "usehooks-ts";
import { ResultPreview } from "./ResultPreview";
// import d from "./example.json";

export type BasicListItem = {
  item: React.ReactNode;
  key: string;
};

const useMobile = () => useMediaQuery(useTheme().breakpoints.down("md"));

export function PagefindResults() {
  const params = useSearchParams();
  const router = useRouter();

  const [, persistFilterOptions] = useSessionStorage<FilterOptions>(
    "currentFilterOptions",
    {}
  );

  const query = useMemo(() => new URLSearchParams(params), [params]);

  const page = +params.get("page")! || 1;
  const itemsPerPage = +params.get("limit")! || 10;
  const term = params.get("term") || null;
  const from = params.get("from");
  const to = params.get("to");

  const isMobile = useMobile();

  const [searchResults, setSearchResults] = useState<null | RawResult[]>(null);

  const [items, setItems] = useState<null | PagefindResult[]>(null);

  const { search, loading, error } = usePagefindSearch();
  useEffect(() => {
    const init = async () => {
      console.log({ search, term, filters: { from, to } });
      if (search) {
        let raw = await search(term, { filters: { from, to } });
        setSearchResults(raw?.results || []);
      }
    };
    init();
  }, [term, from, to, search]);

  console.log({ search, loading, error });

  const handleChangeRowsPerPage = (
    event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    query.set("limit", event.target.value);
    query.set("page", "1");
    persistFilterOptions((s) => ({
      ...s,
      limit: +event.target.value,
      page: 1,
    }));
    router.push(`?${query.toString()}`);
  };

  const pageItems = useMemo(() => {
    const items = searchResults || [];
    const startIdx = (page - 1) * itemsPerPage;
    const endIdx = page * itemsPerPage;
    return items.slice(startIdx, endIdx);
  }, [page, itemsPerPage, searchResults]);

  useEffect(() => {
    const loadData = async () => {
      let items = await Promise.all(pageItems.map(async (r) => await r.data()));
      setItems(items);
    };
    loadData();
  }, [pageItems]);

  const handlePageChange = (
    event: React.MouseEvent<HTMLButtonElement> | null,
    value: number
  ) => {
    query.set("page", (value + 1).toString());
    persistFilterOptions((s) => ({
      ...s,
      page: value + 1,
    }));
    router.push(`?${query.toString()}`);
  };

  const { setFrom, setTo, setTerm, submit } = useFilter();

  const handleReset = (target: "filter" | "term") => {
    if (target === "filter") {
      setFrom("any");
      setTo("any");
      submit({ filter: { from: "any", to: "any" } });
    }
    if (target === "term") {
      console.log("reset term");
      setTerm("");
      submit({ input: "" });
    }
  };

  if (loading) {
    return (
      <Container maxWidth="lg" sx={{ mt: 2 }}>
        <List aria-label="basic-list" sx={{ pt: 1, width: "100%" }}>
          {[0, 1].map((key) => (
            <ListItem
              sx={{ px: 0, py: 1 }}
              aria-label={`item-skeleton`}
              key={key}
            >
              <ListItemAvatar>
                <Avatar>
                  <Skeleton variant="circular" />
                </Avatar>
              </ListItemAvatar>
              <ListItemText
                primaryTypographyProps={{
                  variant: "h5",
                  component: "h2",
                }}
                secondaryTypographyProps={{
                  variant: "body1",
                }}
                primary={<Skeleton height={80} />}
                secondary={<Skeleton />}
              />
            </ListItem>
          ))}
        </List>
      </Container>
    );
  }
  if (!loading && error) {
    return (
      <Container maxWidth="lg" sx={{ mt: 2 }}>
        <Card>
          <CardHeader title="Search not available" subheader={error} />
          <CardContent>
            <Typography variant="h5">Why this might have happened</Typography>
            <ul>
              <li>
                <Typography sx={{ py: 1 }}>
                  A network error may have occurred. Reload the page
                </Typography>
              </li>
              <li>
                <Typography sx={{ py: 1 }}>
                  Make sure you are using the latest browser. And your browser
                  supports WebAssembly
                </Typography>
              </li>
            </ul>
          </CardContent>
        </Card>
      </Container>
    );
  }

  return (
    <Box
      sx={{
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <Container maxWidth="lg" sx={{ mt: 2 }}>
        {items === null ? (
          <LinearProgress sx={{ my: 2 }} />
        ) : (
          <>
            <Typography
              component="span"
              variant="subtitle1"
              sx={{
                p: 1,
                textTransform: "capitalize",
              }}
            >
              <Chip
                label={`${searchResults?.length || "0"} Results`}
                color="primary"
                sx={{ color: "primary.contrastText" }}
              />
            </Typography>
            {(from || to) && (
              <Typography
                component="span"
                variant="subtitle1"
                sx={{
                  p: 1,
                  textTransform: "capitalize",
                }}
              >
                <Chip
                  label={
                    <>
                      {`${from || "any"} -> ${to || "any"}`}
                      <IconButton
                        size="small"
                        onClick={() => handleReset("filter")}
                        aria-label="clear filter"
                      >
                        <Clear fontSize="inherit" />
                      </IconButton>
                    </>
                  }
                  color="secondary"
                  sx={{ color: "secondary.contrastText" }}
                />
              </Typography>
            )}
            {term && (
              <Typography
                component="span"
                variant="subtitle1"
                sx={{
                  p: 1,
                  textTransform: "none",
                }}
              >
                <Chip
                  label={
                    <>
                      {`${term}`}
                      <IconButton
                        size="small"
                        onClick={() => handleReset("term")}
                        aria-label="clear term"
                      >
                        <Clear fontSize="inherit" />
                      </IconButton>
                    </>
                  }
                  color="secondary"
                  sx={{ color: "secondary.contrastText" }}
                />
              </Typography>
            )}
            <List aria-label="basic-list" sx={{ pt: 1, width: "100%" }}>
              {items.length ? (
                items.map((item, idx) => (
                  <React.Fragment key={`${idx}`}>
                    <ResultPreview result={item} />
                  </React.Fragment>
                ))
              ) : (
                <Box component="li" sx={{ mt: 3 }}>
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
