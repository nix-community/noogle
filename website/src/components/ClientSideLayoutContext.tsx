"use client";
import { Button, CssBaseline, useMediaQuery } from "@mui/material";
import { cssThemeOptions } from "@/styles/theme";
import { ReactNode, useEffect, useState } from "react";
import { Toaster } from "react-hot-toast";
import {
  Experimental_CssVarsProvider as CssVarsProvider,
  experimental_extendTheme as extendTheme,
  getInitColorSchemeScript,
  useColorScheme,
} from "@mui/material/styles";

const theme = extendTheme(cssThemeOptions);

const Mode = () => {
  const userPrefersDarkmode = useMediaQuery("(prefers-color-scheme: dark)");
  const { mode, setMode } = useColorScheme();

  const [mounted, setMounted] = useState(false);

  useEffect(
    () => {
      setMounted(true);
      setMode(userPrefersDarkmode ? "dark" : "light");
    },
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [userPrefersDarkmode]
  );

  if (!mounted) {
    // for server-side rendering
    // learn more at https://github.com/pacocoursey/next-themes#avoid-hydration-mismatch
    return null;
  }

  return (
    <Button
      variant="outlined"
      onClick={() => {
        if (mode === "light") {
          setMode("dark");
        } else {
          setMode("light");
        }
      }}
    >
      {mode === "light" ? "Change to Dark" : "Change to Light"}
    </Button>
  );
};

export const ClientSideLayoutContext = ({
  children,
}: {
  children: ReactNode;
}) => {
  return (
    // <ThemeProvider theme={userPrefersDarkmode ? darkTheme : lightTheme}>
    <>
      {getInitColorSchemeScript()}
      <CssVarsProvider theme={theme}>
        <CssBaseline />
        <Mode />
        <Toaster />
        {children}
      </CssVarsProvider>
    </>
    // </ThemeProvider>
  );
};
