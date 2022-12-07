import { ListItemText, Paper, Stack, Typography } from "@mui/material";
import { DocItem } from "../../types/nix";

interface FunctionItemProps {
  selected: boolean;
  name: String;
  docItem: DocItem;
}
export default function FunctionItem(props: FunctionItemProps) {
  const { name, docItem, selected } = props;
  const { fn_type, category } = docItem;
  return (
    <Paper
      elevation={0}
      sx={{
        cursor: "pointer",
        display: "flex",
        justifyContent: "left",
        px: 2,
        py: 1,
        color: selected ? "primary.main" : undefined,
        borderColor: selected ? "action.selected" : "none",
        borderWidth: 1,
        borderStyle: selected ? "solid" : "none",
        "&:hover": {
          backgroundColor: "action.hover",
        },
      }}
    >
      <Stack>
        <ListItemText primary={name} secondary={category} />
        <Typography
          sx={{
            color: !fn_type ? "text.secondary" : "text.primary",
          }}
        >{`${fn_type || "No type yet provided"} `}</Typography>
      </Stack>
    </Paper>
  );
}
