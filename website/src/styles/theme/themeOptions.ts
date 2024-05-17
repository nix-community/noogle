import { CssVarsThemeOptions } from "@mui/material/styles";
import { commonOptions } from "./common";
import type {} from "@mui/material/themeCssVarsAugmentation";

const cssThemeOptions: CssVarsThemeOptions = {
  ...commonOptions,
  colorSchemes: {
    light: {
      palette: {
        mode: "light",
        primary: {
          main: "#6586c8",
        },
        secondary: {
          main: "#6ad541",
        },
        background: {
          paper: "#fafafa",
          default: "#f0f1f2",
        },
        // @ts-expect-error
        header: {
          default: "var(--mui-palette-primary-main)",
        },
      },
    },
    dark: {
      palette: {
        mode: "dark",
        background: {
          // default: "#0f192c",
          default: "#1b1d22",
          paper: "#17181c",
        },
        primary: {
          main: "#6586c8",
        },
        secondary: {
          main: "#40224e",
        },
        // @ts-expect-error
        header: {
          default: "#101010",
        },
      },
    },
  },
};

export { cssThemeOptions };
