import { Doc } from "@/models/data";
import ManageSearchIcon from "@mui/icons-material/ManageSearch";
import ShareIcon from "@mui/icons-material/Share";
import {
  IconButton,
  ListItemText,
  Paper,
  Stack,
  Toolbar,
  Tooltip,
  Typography,
} from "@mui/material";
import { useSnackbar } from "notistack";
import { useMemo, useState } from "react";
import { Marker } from "react-mark.js";
import { Preview } from "../preview/preview";

interface FunctionItemProps {
  selected: boolean;
  name: String;
  docItem: Doc;
  handleClose: () => void;
  markWords: string[];
}

export default function FunctionItem(props: FunctionItemProps) {
  const { docItem, selected, handleClose, markWords } = props;
  // const { fn_type, category, description, id } = docItem;
  const { content, meta } = docItem;
  const [mark, setMark] = useState<Boolean>(false);
  const { enqueueSnackbar } = useSnackbar();

  const descriptionPreview = useMemo(() => {
    const getFirstWords = (s: string) => {
      const indexOfDot = s.indexOf(".");
      if (indexOfDot) {
        return s.slice(0, indexOfDot + 1);
      }
      return s.split(" ").filter(Boolean).slice(0, 10).join(" ");
    };
    if (content?.content) {
      return getFirstWords(content?.content);
    }
    return "";
  }, [content]);

  const handleShare = () => {
    const handle = window.location.href;
    navigator.clipboard.writeText(handle);
    enqueueSnackbar("link copied to clipboard", { variant: "default" });
  };

  // const normalId: string = useMemo(() => id, [id]);

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
            <ListItemText primary={`${meta.title}`} secondary={meta.title} />
            <ListItemText secondary={descriptionPreview} />
            <Typography
              sx={{
                color: "text.secondary",
              }}
            >
              {`Types cannot be detected yet. Work with us on migrating this feature.`}
            </Typography>
          </>
        )}
        {selected && (
          <>
            <Marker
              mark={mark ? markWords : []}
              options={{ className: "noogle-marker" }}
            >
              <Preview docItem={docItem} handleClose={handleClose} />
            </Marker>
            <Toolbar
              sx={{
                justifyContent: "end",
              }}
            >
              {Boolean(markWords.length) && (
                <Tooltip title={`${mark ? "Hide" : "Show"} matches`}>
                  <IconButton onClick={() => setMark((s) => !s)}>
                    <ManageSearchIcon fontSize="inherit" />
                  </IconButton>
                </Tooltip>
              )}
              <Tooltip title="Share">
                <IconButton onClick={handleShare}>
                  <ShareIcon fontSize="inherit" />
                </IconButton>
              </Tooltip>
            </Toolbar>
          </>
        )}
      </Stack>
    </Paper>
  );
}
