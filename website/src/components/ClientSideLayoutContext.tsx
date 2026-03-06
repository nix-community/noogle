"use client";
import { CssBaseline } from "@mui/material";
import { cssThemeOptions } from "@/styles/theme";
import { ReactNode, useEffect, useState } from "react";
import { Toaster } from "react-hot-toast";
import {
  ThemeProvider,
  createTheme,
  useColorScheme,
} from "@mui/material/styles";
import InitColorSchemeScript from "@mui/material/InitColorSchemeScript";

const theme = createTheme(cssThemeOptions);

const ModeTracker = () => {
  const { setMode } = useColorScheme();
  const [mounted, setMounted] = useState(false);

  useEffect(
    () => {
      setMounted(true);
      const persistedMode = localStorage.getItem("mode");
      if (!persistedMode) {
        setMode("system");
      }
    },
    // eslint-disable-next-line react-hooks/exhaustive-deps
    []
  );

  if (!mounted) {
    // for server-side rendering
    // learn more at https://github.com/pacocoursey/next-themes#avoid-hydration-mismatch
    return null;
  }

  return <></>;
};

export const ClientSideLayoutContext = ({
  children,
}: {
  children: ReactNode;
}) => {
  return (
    <>
      <InitColorSchemeScript defaultMode="system" />
      <ThemeProvider theme={theme} defaultMode="system">
        <CssBaseline />
        <ModeTracker />
        <Toaster />
        {children}
      </ThemeProvider>
    </>
  );
};
