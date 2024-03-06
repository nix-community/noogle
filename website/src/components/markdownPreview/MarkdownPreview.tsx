"use client";
import { useTheme } from "@mui/material";
import nix from "highlight.js/lib/languages/nix";
import haskell from "highlight.js/lib/languages/haskell";
import bash from "highlight.js/lib/languages/bash";
import { useEffect } from "react";
import ReactMarkdown from "react-markdown";
import rehypeHighlight from "rehype-highlight";
import { HighlightBaseline } from "../HighlightBaseline";
import {
  remarkDefinitionList,
  defListHastHandlers,
} from "remark-definition-list";
import {
  replaceComponents,
  sanitizeDirectives,
  styleDirectives,
} from "@/plugins";
import remarkDirective from "remark-directive";

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
        remarkPlugins={[remarkDefinitionList, remarkDirective, styleDirectives]}
        remarkRehypeOptions={{
          handlers: {
            ...defListHastHandlers,
          },
        }}
        rehypePlugins={[
          [
            rehypeHighlight,
            {
              detect: true,
              languages: { nix, haskell, bash, default: nix },
            },
          ],
          replaceComponents,
        ]}
      >
        {sanitizeDirectives(description)}
      </ReactMarkdown>
    </>
  );
};
