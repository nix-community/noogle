import {
  Box,
  Card,
  ListItemText,
  Paper,
  Stack,
  Typography,
} from "@mui/material";

interface FunctionItemProps {
  selected: boolean;
  name: String;
  info: {
    "attr-path": String;
    source: String;
    from: String;
    to: String;
  };
}
export default function FunctionItem(props: FunctionItemProps) {
  const { name, info, selected } = props;
  return (
    <Paper
      elevation={0}
      sx={{
        display: "flex",
        justifyContent: "left",
        px: 2,
        py: 1,
        color: selected ? "primary.main" : undefined,
        borderColor: selected ? "action.selected" : "none",
        borderWidth: 1,
        borderStyle: selected ? "solid" : "none",
      }}
    >
      <Stack>
        <ListItemText primary={name} secondary={info["attr-path"]} />
        <Typography>{`${info.from} -> ${info.to} `}</Typography>
      </Stack>
    </Paper>
  );
}
