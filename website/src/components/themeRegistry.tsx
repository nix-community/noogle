// app/ThemeRegistry.tsx
"use client";
import { darkThemeOptions, lightThemeOptions } from "@/styles/theme";
import createCache from "@emotion/cache";
import { CacheProvider } from "@emotion/react";
import { useMediaQuery } from "@mui/material";
import CssBaseline from "@mui/material/CssBaseline";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { useServerInsertedHTML } from "next/navigation";
import React, { ReactNode } from "react";

const lightTheme = createTheme(lightThemeOptions);
const darkTheme = createTheme(darkThemeOptions);

// This implementation is from emotion-js
// https://github.com/emotion-js/emotion/issues/2928#issuecomment-1319747902
export default function ThemeRegistry(props: {
  children: ReactNode;
  options: any;
}) {
  const userPrefersDarkmode = useMediaQuery("(prefers-color-scheme: dark)");

  const { options, children } = props;

  const [{ cache, flush }] = React.useState(() => {
    const cache = createCache(options);
    cache.compat = true;
    const prevInsert = cache.insert;
    let inserted: string[] = [];
    cache.insert = (...args) => {
      const serialized = args[1];
      if (cache.inserted[serialized.name] === undefined) {
        inserted.push(serialized.name);
      }
      return prevInsert(...args);
    };
    const flush = () => {
      const prevInserted = inserted;
      inserted = [];
      return prevInserted;
    };
    return { cache, flush };
  });

  useServerInsertedHTML(() => {
    const names = flush();
    if (names.length === 0) {
      return null;
    }
    let styles = "";
    for (const name of names) {
      styles += cache.inserted[name];
    }
    return (
      <style
        key={cache.key}
        data-emotion={`${cache.key} ${names.join(" ")}`}
        dangerouslySetInnerHTML={{
          __html: options.prepend ? `@layer emotion {${styles}}` : styles,
        }}
      />
    );
  });

  return (
    <CacheProvider value={cache}>
      <ThemeProvider theme={userPrefersDarkmode ? darkTheme : lightTheme}>
        <CssBaseline />
        {children}
      </ThemeProvider>
    </CacheProvider>
  );
}
