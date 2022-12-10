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
        pt: 2,
        mt: 2,
        mb: -2,
        width: "100%",
        borderTop: "solid 1px",
        borderTopColor: "primary.main",
      }}
    >
      {/* <Box sx={{ display: "flex" }}> */}
      <Typography variant="h2">{`${prefix}.${name}`}</Typography>
      {/* </Box> */}
      <List sx={{ width: "100%" }}>
        <ListItem>
          <Tooltip title="close details">
            <IconButton onClick={() => handleClose()}>
              <ExpandLessIcon />
            </IconButton>
          </Tooltip>
        </ListItem>
        <ListItem>
          <ListItemIcon>
            <LocalLibraryIcon />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
            }}
            primaryTypographyProps={{
              color: "text.secondary",
              fontSize: 14,
            }}
            secondaryTypographyProps={{
              color: "text.primary",
              fontSize: "1rem",
            }}
            primary={"nixpkgs/" + category.replace("./", "")}
            secondary={
              <Container
                sx={{ ml: "0 !important", pl: "0 !important" }}
                maxWidth="lg"
              >
                {typeof description === "object"
                  ? description.map((d, idx) => (
                      <ReactMarkdown key={idx}>{d}</ReactMarkdown>
                    ))
                  : description && <ReactMarkdown>{description}</ReactMarkdown>}
              </Container>
            }
          />
        </ListItem>
        <ListItem>
          <ListItemIcon>
            <InputIcon />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
            }}
            primaryTypographyProps={{
              color: "text.secondary",
              fontSize: 14,
            }}
            secondaryTypographyProps={{
              color: "text.primary",
              fontSize: "1rem",
            }}
            secondary={fn_type || "no type yet provided"}
            primary="function signature "
          />
        </ListItem>
        <ListItem
          sx={{
            backgroundColor: "background.paper",
          }}
        >
          <ListItemIcon>
            <CodeIcon />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
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
                <Box sx={{ mt: -2, pl: 1.5 }}>
                  <Highlight className="nix">{finalExample}</Highlight>
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
