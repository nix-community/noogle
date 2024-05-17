"use client";
import { Box } from "@mui/material";
import { ReactNode } from "react";

export const Background = ({ children }: { children: ReactNode }) => {
  return (
    <Box
      sx={{
        height: "100vh",
        display: "flex",
        flexDirection: "column",
        overflowX: "hidden",
        overflowY: "scroll",
        bgcolor: "background.paper",
      }}
    >
      {children}
    </Box>
  );
};
