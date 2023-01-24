import { Box } from "@mui/material";
import { useEffect } from "react";
import Highlight, { HighlightProps } from "react-highlight";
import styles from "./codeHighlight.module.css";

interface CodeHighlightProps {
  theme: "light" | "dark";
  code: HighlightProps["children"];
}

export const CodeHighlight = (props: CodeHighlightProps) => {
  const { theme, code } = props;
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
        "&.MuiBox-root>pre": {
          width: "100%",
          marginTop: 0,
        },
      }}
    >
      <Highlight className={`nix ${styles.hljs}`}>{code}</Highlight>
    </Box>
  );
};
