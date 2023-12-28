"use client";
import {
  CssBaseline,
  ThemeProvider,
  createTheme,
  useMediaQuery,
} from "@mui/material";
import { darkThemeOptions, lightThemeOptions } from "@/styles/theme";
import { ReactNode } from "react";
import { Toaster } from "react-hot-toast";
const darkTheme = createTheme(darkThemeOptions);
const lightTheme = createTheme(lightThemeOptions);

export const ClientSideLayoutContext = ({
  children,
}: {
  children: ReactNode;
}) => {
  const userPrefersDarkmode = useMediaQuery("(prefers-color-scheme: dark)");
  return (
    <ThemeProvider theme={userPrefersDarkmode ? darkTheme : lightTheme}>
      <CssBaseline />
      <Toaster />
      {children}
    </ThemeProvider>
  );
};
