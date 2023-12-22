"use client";
import { useTheme } from "@mui/material";
import nix from "highlight.js/lib/languages/nix";
import { useEffect } from "react";
import ReactMarkdown from "react-markdown";
import rehypeHighlight from "rehype-highlight";
import { HighlightBaseline } from "../HighlightBaseline";

interface MarkdownPreviewProps {
  description: string;
}
export const MarkdownPreview = (props: MarkdownPreviewProps) => {
  const { description } = props;
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

  return (
    <>
      <HighlightBaseline />
      <ReactMarkdown
        components={{
          h1: "h3",
          h2: "h4",
          h3: "h5",
          h4: "h6",
        }}
        rehypePlugins={[[rehypeHighlight, { languages: { nix } }]]}
      >
        {description}
      </ReactMarkdown>
    </>
  );
};
