import { ThemeOptions } from "@mui/material/styles";
import { commonOptions } from "./common";

const darkThemeOptions: ThemeOptions = {
  ...commonOptions,
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
  },
};

export { darkThemeOptions };
