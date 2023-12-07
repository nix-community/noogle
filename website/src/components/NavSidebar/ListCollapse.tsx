"use client";
import { ChevronRight, ExpandMore } from "@mui/icons-material";
import {
  Collapse,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
} from "@mui/material";
import { ReactNode, useState } from "react";

const borderStyle = {
  borderInlineStartStyle: "solid",
  borderInlineStartWidth: "1px",
  borderInlineStartColor: "#e4e4e7",
  ml: 2,
  pl: 2,
};
interface CollapseWrapperProps {
  children: ReactNode;
  name: string;
  position: number;
}
export const CollapseWrapper = (props: CollapseWrapperProps) => {
  const { children, name, position } = props;
  const [expandedKeys, setExpanded] = useState<string[]>([]);
  const isExpanded = expandedKeys.includes(name);
  return (
    <>
      <ListItem
        disablePadding
        disableGutters
        sx={{
          ...(position > 0 ? borderStyle : undefined),
        }}
      >
        <ListItemButton
          disableGutters
          onClick={() => {
            setExpanded((s) =>
              isExpanded ? s.filter((n) => n !== name) : [...s, name]
            );
          }}
        >
          <ListItemText
            primary={name}
            primaryTypographyProps={{
              sx: {
                fontWeight: 700,
              },
            }}
          />
          <ListItemIcon sx={{ minWidth: "40px" }}>
            {isExpanded ? <ExpandMore /> : <ChevronRight />}
          </ListItemIcon>
        </ListItemButton>
      </ListItem>

      <Collapse in={isExpanded}>
        <List
          dense
          disablePadding
          sx={{
            ...(position > 0 ? borderStyle : undefined),
          }}
        >
          {children}
        </List>
      </Collapse>
    </>
  );
};
