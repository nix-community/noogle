"use client";
import { useColorScheme } from "@mui/material";
import { useEffect } from "react";

export const HighlightBaseline = () => {
  const { mode } = useColorScheme();
  useEffect(() => {
    console.log({ mode });
    // @ts-ignore - don't check type of css module
    import("highlight.js/styles/github-dark.css");
    if (mode === "dark") {
    } else {
      // @ts-ignore - don't check type of css module
      // import("highlight.js/styles/github.css");
    }
  }, [mode]);
  return <></>;
};
