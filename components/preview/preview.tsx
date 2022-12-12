import {
  Box,
  Container,
  IconButton,
  Link,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemSecondaryAction,
  ListItemText,
  Tooltip,
  Typography,
} from "@mui/material";
// import CloseIcon from "@mui/icons-material/Close";
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

// import hljs from "highlight.js";
// needed for nextjs to import the classes of github theme
import "highlight.js/styles/github.css";
interface PreviewProps {
  docItem: DocItem;
  handleClose: () => void;
}

export const Preview = (props: PreviewProps) => {
  const { docItem, handleClose } = props;
  const { name, description, category, example, fn_type } = docItem;

  const getGeneratedExamples = () => {
    if (description) {
      const regex = /(```.+?```)/gms;
      console.log({ description, regex });
      if (typeof description === "object") {
        return description
          .join(" ")
          .match(regex)
          ?.join("\n#---\n")
          ?.replaceAll("```nix", "")
          ?.replaceAll("```", "");
      } else {
        return description
          .match(regex)
          ?.join("\n#---\n")
          ?.replaceAll("```nix", "")
          ?.replaceAll("```", "");
      }
    }
  };

  const finalExample = example || getGeneratedExamples();
  console.log({ finalExample });
  const prefix = category.split(/([\/.])/gm).at(4) || "builtins";
  const libName = category
    .match(/(?:[a-zA-Z]*)\.nix/gm)?.[0]
    ?.replace(".nix", "");
  const docsRef = `https://nixos.org/manual/nixpkgs/stable/#function-library-lib.${libName}.${name}`;
  return (
    <Box
      sx={{
        p: 1,
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
      <List sx={{ width: "100%" }}>
        <ListItem sx={{ flexDirection: { xs: "column", sm: "row" } }}>
          <ListItemIcon>
            <LocalLibraryIcon sx={{ m: "auto" }} />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
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
              component: "div",
            }}
            primary={"nixpkgs/" + category.replace("./", "")}
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

                        // languages: { nix } }}
                      >
                        {description}
                      </ReactMarkdown>
                    )}
              </Container>
            }
          />
        </ListItem>
        <ListItem sx={{ flexDirection: { xs: "column", sm: "row" } }}>
          <ListItemIcon>
            <InputIcon sx={{ m: "auto" }} />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
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
          }}
        >
          <ListItemIcon>
            <CodeIcon sx={{ m: "auto" }} />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
              alignSelf: "flex-start",
            }}
            disableTypography
            primary={
              finalExample && (
                <Typography sx={{ color: "text.secondary" }}>
                  Example
                </Typography>
              )
            }
            secondary={
              finalExample ? (
                <Box sx={{ mt: -2 }}>
                  <Highlight className={`nix ${styles.hljs}`}>
                    {finalExample}
                  </Highlight>
                </Box>
              ) : (
                <Typography
                  sx={{ color: "text.secondary" }}
                >{`no example yet provided`}</Typography>
              )
            }
          />
        </ListItem>
      </List>
    </Box>
  );
};
