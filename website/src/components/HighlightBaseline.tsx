"use client";
import { useTheme } from "@mui/material";
import { useEffect } from "react";

export const HighlightBaseline = () => {
  const theme = useTheme();
  useEffect(() => {
    if (theme.palette.mode === "dark") {
      // @ts-ignore - don't check type of css module
      import("highlight.js/styles/github-dark.css");
    } else {
      // @ts-ignore - don't check type of css module
      import("highlight.js/styles/github.css");
    }
  }, [theme]);
  return <></>;
};
