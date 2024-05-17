"use client";
import { DarkMode, LightMode } from "@mui/icons-material";
import { IconButton, Tooltip, useColorScheme } from "@mui/material";

export const ThemeSwitch = () => {
  const { mode, setMode } = useColorScheme();

  return (
    <>
      {mode === "dark" ? (
        <Tooltip title="Turn on the light">
          <IconButton onClick={() => setMode("light")}>
            <LightMode />
          </IconButton>
        </Tooltip>
      ) : (
        <Tooltip title="Turn on the dark">
          <IconButton onClick={() => setMode("dark")}>
            <DarkMode />
          </IconButton>
        </Tooltip>
      )}
    </>
  );
};
