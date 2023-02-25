import {
  IconButton,
  ListItemText,
  Paper,
  Stack,
  Toolbar,
  Tooltip,
  Typography,
} from "@mui/material";
import { useMemo } from "react";
import { DocItem } from "../../models/nix";
import { Preview } from "../preview/preview";
import ShareIcon from "@mui/icons-material/Share";
import { useSnackbar } from "notistack";

interface FunctionItemProps {
  selected: boolean;
  name: String;
  docItem: DocItem;
  handleClose: () => void;
}

export default function FunctionItem(props: FunctionItemProps) {
  const { docItem, selected, handleClose } = props;
  const { fn_type, category, description, id } = docItem;
  const { enqueueSnackbar } = useSnackbar();
  const descriptionPreview = useMemo(() => {
    const getFirstWords = (s: string) => {
      const indexOfDot = s.indexOf(".");
      if (indexOfDot) {
        return s.slice(0, indexOfDot + 1);
      }
      return s.split(" ").filter(Boolean).slice(0, 10).join(" ");
    };
    if (typeof description === "object") {
      const singleString = description?.join("") || "";
      return getFirstWords(singleString);
    } else if (description) {
      return getFirstWords(description);
    } else {
      return "";
    }
  }, [description]);

  const handleShare = () => {
    const handle = window.location.href;
    navigator.clipboard.writeText(handle);
    enqueueSnackbar("link copied to clipboard", { variant: "default" });
  };
  return (
    <Paper
      elevation={0}
      sx={{
        cursor: !selected ? "pointer" : "default",
        display: "flex",
        justifyContent: "left",
        px: selected ? 0 : { xs: 0.8, md: 2 },
        pt: 1,
        mb: 0,
        color: selected ? "primary.main" : undefined,
        borderColor: selected ? "primary.light" : "none",
        borderWidth: 1,
        borderStyle: selected ? "solid" : "none",
        "&:hover": !selected
          ? {
              backgroundColor: "action.hover",
            }
          : {},
      }}
    >
      <Stack sx={{ width: "100%" }}>
        {!selected && (
          <>
            <ListItemText primary={`${id}`} secondary={category} />
            <ListItemText secondary={descriptionPreview} />
            <Typography
              sx={{
                color: !fn_type ? "text.secondary" : "text.primary",
              }}
            >
              {`${fn_type || "No type provided yet."} `}
            </Typography>
          </>
        )}
        {selected && (
          <>
            <Preview docItem={docItem} handleClose={handleClose} />
            <Toolbar
              sx={{
                justifyContent: "end",
              }}
            >
              <Tooltip title="Share">
                <IconButton onClick={handleShare}>
                  <ShareIcon />
                </IconButton>
              </Tooltip>
            </Toolbar>
          </>
        )}
      </Stack>
    </Paper>
  );
}
