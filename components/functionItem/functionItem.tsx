import { ListItemText, Paper, Stack, Typography } from "@mui/material";
import { useMemo } from "react";
import { DocItem } from "../../types/nix";
import { Preview } from "../preview/preview";

interface FunctionItemProps {
  selected: boolean;
  name: String;
  docItem: DocItem;
  handleClose: () => void;
}
export default function FunctionItem(props: FunctionItemProps) {
  const { name, docItem, selected, handleClose } = props;
  const { fn_type, category, description } = docItem;
  const descriptionPreview = useMemo(() => {
    const getFirstWords = (s: string) => {
      const indexOfDot = s.indexOf(".");
      if (indexOfDot) {
        return s.slice(0, indexOfDot + 1);
      }
      return s.split(" ").filter(Boolean).slice(0, 10).join(" ");
    };
    if (typeof description === "object") {
      const singleString = description.join("");
      return getFirstWords(singleString);
    } else if (description) {
      return getFirstWords(description);
    } else {
      return "";
    }
  }, [description]);
  return (
    <Paper
      elevation={0}
      sx={{
        cursor: !selected ? "pointer" : "default",
        display: "flex",
        justifyContent: "left",
        px: 2,
        py: 1,
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
            <ListItemText
              primary={`${
                category.includes(".nix") ? "lib" : "builtins"
              }.${name}`}
              secondary={category}
            />
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
        {selected && <Preview docItem={docItem} handleClose={handleClose} />}
      </Stack>
    </Paper>
  );
}
