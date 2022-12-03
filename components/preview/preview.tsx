import {
  Box,
  Link,
  List,
  ListItem,
  ListItemIcon,
  ListItemSecondaryAction,
  ListItemText,
  Typography,
} from "@mui/material";
import Highlight from "react-highlight";
import LocalLibraryIcon from "@mui/icons-material/LocalLibrary";
import InputIcon from "@mui/icons-material/Input";
import { DocItem } from "../../types/nix";
import CodeIcon from "@mui/icons-material/Code";

// import hljs from "highlight.js";

// needed for nextjs to import the classes of github theme
import "highlight.js/styles/github.css";
interface PreviewProps {
  docItem: DocItem;
}

export const Preview = (props: PreviewProps) => {
  const { docItem } = props;
  const { name, description, category, example, fn_type } = docItem;

  const prefix = category.split(/([\/.])/gm).at(4);
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
      <Typography variant="h2">{`${prefix}.${name}`}</Typography>
      <List sx={{ width: "100%" }}>
        <ListItem>
          <ListItemIcon>
            <LocalLibraryIcon />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
            }}
            primary={category.replace("./", "nixpkgs/")}
            secondary={description}
          />
          <ListItemSecondaryAction>
            <Link href={docsRef}>View Docs</Link>
          </ListItemSecondaryAction>
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
            primary={fn_type}
            secondary="function signature"
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
              <Typography sx={{ color: "text.secondary" }}>Example</Typography>
            }
            secondary={
              <Box sx={{ mt: -2, pl: 1.5 }}>
                <Highlight className="nix">{example}</Highlight>
              </Box>
            }
          />
        </ListItem>
      </List>
    </Box>
  );
};
