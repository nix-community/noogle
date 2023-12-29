"use client";
import { Box, useTheme } from "@mui/material";
import { ReactNode } from "react";

export const Background = ({ children }: { children: ReactNode }) => {
  const theme = useTheme();
  return (
    <Box
      sx={{
        height: "100vh",
        display: "flex",
        flexDirection: "column",
        overflowX: "hidden",
        overflowY: "scroll",
        bgcolor:
          theme.palette.mode === "light" ? "rgb(242, 248, 253)" : "#070c16",
      }}
    >
      {children}
    </Box>
  );
};
