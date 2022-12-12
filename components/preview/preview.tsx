import React, { useEffect } from "react";
import {
  Box,
  Container,
  IconButton,
  List,
  ListItem,
  ListItemIcon,
  ListItemText,
  Tooltip,
  Typography,
  useTheme,
  Link as MuiLink,
} from "@mui/material";
import Highlight from "react-highlight";
import LocalLibraryIcon from "@mui/icons-material/LocalLibrary";
import InputIcon from "@mui/icons-material/Input";
import { DocItem } from "../../types/nix";
import CodeIcon from "@mui/icons-material/Code";
import ReactMarkdown from "react-markdown";
import ExpandLessIcon from "@mui/icons-material/ExpandLess";
import styles from "./preview.module.css";
import rehypeHighlight from "rehype-highlight";
import nix from "highlight.js/lib/languages/nix";
import Link from "next/link";

// import "highlight.js/styles/github-dark.css";
// import "highlight.js/styles/github.css";

interface PreviewProps {
  docItem: DocItem;
  handleClose: () => void;
}

export const Preview = (props: PreviewProps) => {
  const { docItem, handleClose } = props;
  const { name, description, category, example, fn_type } = docItem;
  const theme = useTheme();

  useEffect(() => {
    if (theme.palette.mode === "dark") {
      // @ts-ignore - dont check type of css module
      import("highlight.js/styles/github-dark.css");
    } else {
      // @ts-ignore - dont check type of css module
      import("highlight.js/styles/github.css");
    }
  }, [theme]);

  const prefix = category.split(/([\/.])/gm).at(4) || "builtins";
  const libName = category
    .match(/(?:[a-zA-Z]*)\.nix/gm)?.[0]
    ?.replace(".nix", "");
  const libDocsRef = `https://nixos.org/manual/nixpkgs/stable/#function-library-lib.${libName}.${name}`;
  const builtinsDocsRef = `https://nixos.org/manual/nix/stable/language/builtins.html#builtins-${name}`;
  return (
    <Box
      sx={{
        p: { xs: 0.5, md: 1 },
        width: "100%",
        overflow: "none",
      }}
    >
      <Box
        sx={{
          display: { md: "flex", xs: "flex" },
          flexDirection: { md: "row", xs: "column-reverse" },
          width: "100%",
        }}
      >
        <Typography
          variant="h4"
          sx={{ wordWrap: "normal", lineBreak: "" }}
        >{`${prefix}.${name}`}</Typography>
        <Tooltip title="close details">
          <IconButton
            sx={{
              mx: { xs: "auto", md: 1 },
              left: { lg: "calc(50% - 2rem)", xs: "unset" },
              position: { lg: "absolute", xs: "relative" },
            }}
            size="small"
            onClick={() => handleClose()}
          >
            <ExpandLessIcon fontSize="large" />
          </IconButton>
        </Tooltip>
      </Box>
      <List sx={{ width: "100%" }} disablePadding>
        <ListItem sx={{ flexDirection: { xs: "column", sm: "row" }, px: 0 }}>
          <ListItemIcon>
            <Tooltip title={"read docs"}>
              <MuiLink sx={{ m: "auto", color: "primary.light" }}>
                <Link
                  href={prefix != "builtins" ? libDocsRef : builtinsDocsRef}
                >
                  <LocalLibraryIcon sx={{ m: "auto" }} />
                </Link>
              </MuiLink>
            </Tooltip>
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
              alignSelf: "flex-start",
              width: "100%",
              px: 0,
            }}
            primaryTypographyProps={{
              color: "text.secondary",
              fontSize: 14,
            }}
            secondaryTypographyProps={{
              color: "text.primary",
              fontSize: "1rem",
              component: "div",
            }}
            primary={
              prefix !== "builtins" ? (
                <Tooltip title={"browse source code"}>
                  <MuiLink>
                    <Link
                      href={`https://github.com/NixOS/nixpkgs/blob/master/${category.replace(
                        "./",
                        ""
                      )}`}
                    >
                      {"github:NixOS/nixpkgs/" + category.replace("./", "")}
                    </Link>
                  </MuiLink>
                </Tooltip>
              ) : (
                "github:NixOS/nix/" + category.replace("./", "")
              )
            }
            secondary={
              <Container
                component={"div"}
                sx={{
                  ml: "0 !important",
                  pl: "0 !important",
                  overflow: "visible",
                }}
                maxWidth="md"
              >
                {typeof description === "object"
                  ? description.map((d, idx) => (
                      <ReactMarkdown
                        key={idx}
                        components={{
                          h1: "h3",
                          h2: "h4",
                          h3: "h5",
                        }}
                        rehypePlugins={[
                          [rehypeHighlight, { languages: { nix } }],
                        ]}
                      >
                        {d}
                      </ReactMarkdown>
                    ))
                  : description && (
                      <ReactMarkdown
                        components={{
                          h1: "h3",
                          h2: "h4",
                          h3: "h5",
                        }}
                        rehypePlugins={[
                          [rehypeHighlight, { languages: { nix } }],
                        ]}
                      >
                        {description}
                      </ReactMarkdown>
                    )}
              </Container>
            }
          />
        </ListItem>
        <ListItem sx={{ flexDirection: { xs: "column", sm: "row" }, px: 0 }}>
          <ListItemIcon>
            <Tooltip title={"browse source code"}>
              <MuiLink sx={{ m: "auto", color: "primary.light" }}>
                <Link
                  href={`https://github.com/NixOS/nixpkgs/blob/master/${category.replace(
                    "./",
                    ""
                  )}`}
                >
                  <InputIcon sx={{ m: "auto" }} />
                </Link>
              </MuiLink>
            </Tooltip>
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              width: "100%",
              textOverflow: "ellipsis",
              alignSelf: "flex-start",
            }}
            primaryTypographyProps={{
              color: "text.secondary",
              fontSize: 14,
            }}
            secondaryTypographyProps={{
              color: "text.primary",
              fontSize: "1rem",
            }}
            secondary={fn_type || "no type provided yet."}
            primary="function signature "
          />
        </ListItem>
        <ListItem
          sx={{
            backgroundColor: "background.paper",
            flexDirection: { xs: "column", sm: "row" },
            px: 0,
          }}
        >
          {example && (
            <ListItemIcon>
              <CodeIcon sx={{ m: "auto" }} />
            </ListItemIcon>
          )}
          {example && (
            <ListItemText
              sx={{
                overflow: "hidden",
                textOverflow: "ellipsis",
                alignSelf: "flex-start",
                width: "100%",
                px: 0,
              }}
              disableTypography
              primary={
                <Typography sx={{ color: "text.secondary" }}>
                  Example
                </Typography>
              }
              secondary={
                <Box
                  sx={{
                    "&.MuiBox-root>pre": {
                      width: "100%",
                    },
                  }}
                >
                  <Highlight className={`nix ${styles.hljs}`}>
                    {example}
                  </Highlight>
                </Box>
              }
            />
          )}
        </ListItem>
      </List>
    </Box>
  );
};
