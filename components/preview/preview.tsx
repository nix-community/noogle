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
import { info } from "console";
import { FuncData } from "../../pages";
import LocalLibraryIcon from "@mui/icons-material/LocalLibrary";
import InputIcon from "@mui/icons-material/Input";
import OutputIcon from "@mui/icons-material/Output";

interface PreviewProps {
  func: FuncData;
}

export const Preview = (props: PreviewProps) => {
  const { func } = props;
  return (
    <Box sx={{ p: 1, width: "100%" }}>
      <Typography variant="h2">{func.name}</Typography>
      <List sx={{ width: "100%" }}>
        <ListItem>
          <ListItemIcon>
            <LocalLibraryIcon />
          </ListItemIcon>
          <ListItemText
            primary={func.info["attr-path"]}
            secondary={func.info["doc-url"]}
          />
          <ListItemSecondaryAction>
            <Link href={func.info["doc-url"]}>View Docs</Link>
          </ListItemSecondaryAction>
        </ListItem>
        <ListItem>
          <ListItemIcon>
            <InputIcon />
          </ListItemIcon>
          <ListItemText primary={func.info.from} secondary="argument type" />
        </ListItem>
        <ListItem>
          <ListItemIcon>
            <OutputIcon />
          </ListItemIcon>
          <ListItemText primary={func.info.to} secondary="return type" />
        </ListItem>
        <ListItem></ListItem>
      </List>
    </Box>
  );
};
