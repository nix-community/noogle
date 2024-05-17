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

        code: {
          bg: "#f0f1f2",
          dark: "#0d1117",
        },

        fenced: {
          bg: "#f9f9f9",
        },

        example: {
          main: "#17a2b8",
        },

        warning: {
          main: "#ffc107",
        },

        caution: {
          main: "#d39e00",
        },

        important: {
          main: "#dc3545",
        },

        tip: {
          main: "#28a745",
        },

        note: {
          main: "#007bff",
        },

        misc: {
          a: "var(--mui-palette-primary-main)",
          tableBorder: "#d8e2ff",
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

        code: {
          bg: "#0d1117",
          dark: "#0d1117",
        },

        fenced: {
          bg: "#2c2c2c",
        },

        example: {
          main: "#9de1fe",
        },

        warning: {
          main: "#ffeeba",
        },

        caution: {
          main: "#ffd966",
        },
        important: {
          main: "#f5c6cb",
        },

        tip: {
          main: "#73c476",
        },

        note: {
          main: "#4a9eff",
        },

        misc: {
          a: "#adc6ff",
          tableBorder: "#0f448e",
        },
      },
    },
  },
};

export { cssThemeOptions };
