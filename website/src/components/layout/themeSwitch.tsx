"use client";
import { DarkMode, LightMode } from "@mui/icons-material";
import { IconButton, Tooltip } from "@mui/material";
import { useColorScheme } from "@mui/material/styles";

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
