import ReactMarkdown from "react-markdown";
import rehypeHighlight from "rehype-highlight";
import nix from "highlight.js/lib/languages/nix";
import markdown from "highlight.js/lib/languages/markdown";
import { Box, darken, lighten, Link, useTheme } from "@mui/material";
import FormatQuoteIcon from "@mui/icons-material/FormatQuote";

interface MarkdownPreviewProps {
  description: string;
}
export const MarkdownPreview = (props: MarkdownPreviewProps) => {
  const { description } = props;
  const theme = useTheme();
  return (
    <ReactMarkdown
      components={{
        h1: "h3",
        h2: "h4",
        h3: "h5",
        a: ({ node, ...props }) => <Link {...props} target="_blank" />,
        blockquote: ({ node, ...props }) => (
          <Box
            {...props}
            component="blockquote"
            sx={{
              backgroundColor:
                theme.palette.mode === "light"
                  ? lighten(theme.palette.info.dark, 0.92)
                  : darken(theme.palette.info.dark, 0.9),
              m: 0,
              px: 3,
              py: 1,
            }}
          >
            <FormatQuoteIcon fontSize="inherit" /> {props.children}
          </Box>
        ),
      }}
      rehypePlugins={[[rehypeHighlight, { languages: { nix, markdown } }]]}
    >
      {description}
    </ReactMarkdown>
  );
};
