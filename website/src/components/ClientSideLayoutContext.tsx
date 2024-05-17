"use client";
import { CssBaseline, useMediaQuery } from "@mui/material";
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

const ModeTracker = () => {
  const userPrefersDarkmode = useMediaQuery("(prefers-color-scheme: dark)");
  const { setMode } = useColorScheme();

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

  return <></>;
};

export const ClientSideLayoutContext = ({
  children,
}: {
  children: ReactNode;
}) => {
  return (
    <>
      {getInitColorSchemeScript()}
      <CssVarsProvider theme={theme}>
        <CssBaseline />
        <ModeTracker />
        <Toaster />
        {children}
      </CssVarsProvider>
    </>
  );
};
