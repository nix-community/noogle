"use client";
import { SearchResults } from "@/components/SearchResults";
import { LinearProgress } from "@mui/material";
import { Suspense } from "react";

export default function Q() {
  return (
    <Suspense fallback={<LinearProgress />}>
      <SearchResults />
    </Suspense>
  );
}
