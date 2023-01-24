import * as React from "react";
import type { AppProps } from "next/app";
import { CacheProvider, EmotionCache } from "@emotion/react";
import { ThemeProvider, CssBaseline, createTheme } from "@mui/material";
import useMediaQuery from "@mui/material/useMediaQuery";
import { SnackbarProvider } from "notistack";

import "@fontsource/roboto/300.css";
import "@fontsource/roboto/400.css";
import "@fontsource/roboto/500.css";
import "@fontsource/roboto/700.css";

import createEmotionCache from "../createEmotionCache";
import { lightThemeOptions, darkThemeOptions } from "../styles/theme";
import "../styles/globals.css";
import { Layout } from "../components/layout";
import Head from "next/head";

interface MyAppProps extends AppProps {
  emotionCache?: EmotionCache;
}

const clientSideEmotionCache = createEmotionCache();

const lightTheme = createTheme(lightThemeOptions);
const darkTheme = createTheme(darkThemeOptions);

const MyApp: React.FunctionComponent<MyAppProps> = (props) => {
  const { Component, emotionCache = clientSideEmotionCache, pageProps } = props;
  const userPrefersDarkmode = useMediaQuery("(prefers-color-scheme: dark)");

  const getContent = () => {
    return (
      <Layout>
        <Component {...pageProps} />
      </Layout>
    );
  };

  return (
    <>
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
      </Head>

      <CacheProvider value={emotionCache}>
        <ThemeProvider theme={userPrefersDarkmode ? darkTheme : lightTheme}>
          <CssBaseline />
          <SnackbarProvider
            anchorOrigin={{ vertical: "bottom", horizontal: "center" }}
            maxSnack={1}
          >
            {getContent()}
          </SnackbarProvider>
        </ThemeProvider>
      </CacheProvider>
    </>
  );
};

export default MyApp;
