"use client";
import { AppState } from "@/components/appState";
import { Layout } from "@/components/layout";
import { CacheProvider, ThemeProvider } from "@emotion/react";
import { CssBaseline, createTheme, useMediaQuery } from "@mui/material";
import Head from "next/head";
import { SnackbarProvider } from "notistack";
import createEmotionCache from "../../createEmotionCache";
import "../styles/globals.css";
import { darkThemeOptions, lightThemeOptions } from "../styles/theme";

const clientSideEmotionCache = createEmotionCache();
const lightTheme = createTheme(lightThemeOptions);
const darkTheme = createTheme(darkThemeOptions);

export default function RootLayout({
  // Layouts must accept a children prop.
  // This will be populated with nested layouts or pages
  children,
}: {
  children: React.ReactNode;
}) {
  const userPrefersDarkmode = useMediaQuery("(prefers-color-scheme: dark)");
  return (
    <html lang="en">
      <Head>
        <title>noogle</title>
        <meta charSet="utf-8" />
        <meta
          name="description"
          content="Search nix functions. Search functions within the nix ecosystem based on type, name, description, example, category and more."
        />
        <meta />
        <meta name="robots" content="all" />
        <link rel="icon" href="/favicon.png" />
        <link
          rel="search"
          type="application/opensearchdescription+xml"
          title="Search nix function on noogle"
          href="/search.xml"
        ></link>
      </Head>
      <body>
        <CacheProvider value={clientSideEmotionCache}>
          <ThemeProvider theme={userPrefersDarkmode ? darkTheme : lightTheme}>
            <CssBaseline />
            <SnackbarProvider
              anchorOrigin={{ vertical: "bottom", horizontal: "center" }}
              maxSnack={1}
            >
              <AppState>
                <Layout>{children}</Layout>
              </AppState>
            </SnackbarProvider>
          </ThemeProvider>
        </CacheProvider>
      </body>
    </html>
  );
}
