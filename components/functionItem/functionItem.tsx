import {
  Box,
  IconButton,
  ListItemText,
  Paper,
  Stack,
  Toolbar,
  Tooltip,
  Typography,
} from "@mui/material";
import { useMemo } from "react";
import { DocItem, NixType } from "../../types/nix";
import { Preview } from "../preview/preview";
import StarIcon from "@mui/icons-material/Star";
import ShareIcon from "@mui/icons-material/Share";
import { useLocalStorage } from "usehooks-ts";
import { useSnackbar } from "notistack";
import StarRateIcon from "@mui/icons-material/StarRate";
import StarBorderIcon from "@mui/icons-material/StarBorder";
import { Key } from "@mui/icons-material";

interface FunctionItemProps {
  selected: boolean;
  name: String;
  docItem: DocItem;
  handleClose: () => void;
}
const getKey = (item: DocItem) => `${item.category}/${item.name}`;

export default function FunctionItem(props: FunctionItemProps) {
  const { name, docItem, selected, handleClose } = props;
  const { fn_type, category, description, id } = docItem;
  const { enqueueSnackbar } = useSnackbar();
  const [favorites, setfavorites] = useLocalStorage<string[]>(
    "personal-favorite",
    []
  );
  const isFavorit = useMemo(
    () => favorites.includes(getKey(docItem)),
    [docItem, favorites]
  );
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
    const queries = [];
    const key = getKey(docItem);
    if (key) {
      queries.push(`fn=${key}`);
    }
    const handle = `https://noogle.dev/preview?${queries.join("&")}`;
    navigator.clipboard.writeText(handle);
    enqueueSnackbar("link copied to clipboard", { variant: "default" });
  };
  const handleFavorit = () => {
    const key = getKey(docItem);
    setfavorites((curr) => {
      if (curr.includes(key)) {
        return curr.filter((v) => v !== key);
      } else {
        return [...curr, key];
      }
    });
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
            <Box sx={{ float: "right", position: "absolute", right: 4 }}>
              {isFavorit && <StarIcon />}
            </Box>
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
              <Tooltip title={`${isFavorit ? "remove" : "add"} favorite`}>
                <IconButton onClick={handleFavorit}>
                  {isFavorit ? <StarIcon /> : <StarBorderIcon />}
                </IconButton>
              </Tooltip>
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
