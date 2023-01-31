import { Box } from "@mui/material";
import { ThemeOptions } from "@mui/system";
import { useEffect } from "react";
import Highlight, { HighlightProps } from "react-highlight";
import styles from "./codeHighlight.module.css";

interface CodeHighlightProps {
  theme: "light" | "dark";
  code: HighlightProps["children"];
  lang?: string;
  background?: ThemeOptions["palette"] | string;
}

export const CodeHighlight = (props: CodeHighlightProps) => {
  const { theme, code, lang, background } = props;
  useEffect(() => {
    if (theme === "dark") {
      // @ts-ignore - dont check type of css module
      import("highlight.js/styles/github-dark.css");
    } else {
      // @ts-ignore - dont check type of css module
      import("highlight.js/styles/github.css");
    }
  }, [theme]);

  return (
    <Box
      sx={{
        "&.MuiBox-root": {
          width: "100%",
          margin: 0,
        },
        "&.MuiBox-root>pre": {
          margin: 0,
        },
        "&.MuiBox-root>pre code.hljs": {
          bgcolor: background || undefined,
        },
      }}
    >
      <Highlight className={`${lang || "nix"} ${styles.hljs}`}>
        {code}
      </Highlight>
    </Box>
  );
};
