import { Doc } from "@/models/data";
import ExpandLessIcon from "@mui/icons-material/ExpandLess";
import InputIcon from "@mui/icons-material/Input";
import LocalLibraryIcon from "@mui/icons-material/LocalLibrary";
import {
  Box,
  Container,
  IconButton,
  List,
  ListItem,
  ListItemIcon,
  ListItemText,
  Link as MuiLink,
  Tooltip,
  Typography,
  useTheme,
} from "@mui/material";
import React from "react";
import { MarkdownPreview } from "../markdownPreview";

interface PreviewProps {
  docItem: Doc;
  closeComponent?: React.ReactNode;
  handleClose?: () => void;
}

export const Preview = (props: PreviewProps) => {
  const { docItem, handleClose, closeComponent = undefined } = props;
  // const { name, description, category, example, fn_type, id, line } = docItem;
  const { content, meta } = docItem;
  const theme = useTheme();

  // const normalId: string = useMemo(() => id, [id]);

  // const prefix = category.split(/([\/.])/gm).at(4) || "builtins";
  // const libName = category
  //   .match(/(?:[a-zA-Z]*)\.nix/gm)?.[0]
  //   ?.replace(".nix", "");
  // const sanitizedName = name.replace("'", "-prime");
  // const libDocsRef = `https://nixos.org/manual/nixpkgs/stable/#function-library-lib.${libName}.${sanitizedName}`;
  // const builtinsDocsRef = `https://nixos.org/manual/nix/stable/language/builtins.html#builtins-${name}`;
  const getPrimopDescription = (meta: Doc["meta"]["primop_meta"]) => {
    const args = meta?.args?.map((a) => `__${a}__`) || [];
    return `takes ${meta?.arity} arguments: ${args.join(", ")} \n`;
  };

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
          color={"text.primary"}
          sx={{ wordWrap: "normal", lineBreak: "anywhere" }}
        >
          {`${meta.title}`}
        </Typography>
        {closeComponent || (
          <Tooltip title="close details">
            <IconButton
              sx={{
                mx: { xs: "auto", md: 1 },
                left: { lg: "calc(50% - 2rem)", xs: "unset" },
                position: { lg: "absolute", xs: "relative" },
              }}
              size="small"
              onClick={() => handleClose?.()}
            >
              <ExpandLessIcon fontSize="large" />
            </IconButton>
          </Tooltip>
        )}
      </Box>
      {/* {prefix !== "builtins" && id.includes("lib.") && (
        <Box sx={{ my: 1 }}>
          <Typography variant="subtitle1">
            {`short form: lib.${name}`}
          </Typography>
        </Box>
      )} */}
      <List sx={{ width: "100%" }} disablePadding>
        <ListItem sx={{ flexDirection: { xs: "column", sm: "row" }, px: 0 }}>
          <ListItemIcon>
            <Tooltip title={"read docs"}>
              <MuiLink
                sx={{ m: "auto", color: "primary.light" }}
                target="_blank"
                href={content?.source?.position?.file || "#"}
              >
                <LocalLibraryIcon sx={{ m: "auto" }} />
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
            // primary={
            //   !id.includes("builtins") ? (
            //     <Tooltip title={"browse source code"}>
            //       <MuiLink
            //         target={"_blank"}
            //         href={`https://github.com/NixOS/nixpkgs/blob/master/${category.replace(
            //           "./",
            //           ""
            //         )}#L${line}`}
            //       >
            //         {"github:NixOS/nixpkgs/" + category.replace("./", "")}
            //       </MuiLink>
            //     </Tooltip>
            //   ) : (
            //     "github:NixOS/nix/" + category.replace("./", "")
            //   )
            // }
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
                {meta?.is_primop && (
                  <MarkdownPreview
                    description={getPrimopDescription(meta.primop_meta)}
                  />
                )}
                {!!content?.content && (
                  <MarkdownPreview description={content.content} />
                )}
              </Container>
            }
          />
        </ListItem>
        <ListItem sx={{ flexDirection: { xs: "column", sm: "row" }, px: 0 }}>
          <ListItemIcon>
            <Tooltip title={"browse source code"}>
              {/* <MuiLink
                sx={{ m: "auto", color: "primary.light" }}
                target="_blank"
                href={`https://github.com/NixOS/nixpkgs/blob/master/${category.replace(
                  "./",
                  ""
                )}`}
              > */}
              <InputIcon sx={{ m: "auto" }} />
              {/* </MuiLink> */}
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
              gutterBottom: true,
              fontSize: 14,
            }}
            secondaryTypographyProps={{
              // color: fn_type ? "text.primary" : "text.secondary",
              fontSize: theme.typography.fontSize + 4,
            }}
            secondary={
              "Types cannot be detected yet. Work with us on migrating this feature."
              // fn_type ? (
              // <CodeHighlight
              //   code={fn_type}
              //   theme={theme.palette.mode}
              //   lang={"Haskell"}
              // />
              // ) : (
              //   "no type provided yet."
              // )
            }
            primary="function signature "
          />
        </ListItem>
      </List>
    </Box>
  );
};
