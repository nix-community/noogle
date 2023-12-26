"use client";
// import { PagefindSearch } from "@/components/Pagefind";
import { PagefindResults } from "@/components/PagefindResults";
// import { SearchResults } from "@/components/SearchResults";
import { LinearProgress } from "@mui/material";
import { Suspense } from "react";

export default function Q() {
  return (
    <Suspense fallback={<LinearProgress />}>
      <PagefindResults />
      {/* <SearchResults /> */}
    </Suspense>
  );
}
