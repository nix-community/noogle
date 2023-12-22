import { ThemeOptions } from "@mui/material/styles";
import { commonOptions } from "./common";
const lightThemeOptions: ThemeOptions = {
  ...commonOptions,
  palette: {
    mode: "light",
    primary: {
      main: "#6586c8",
    },
    secondary: {
      main: "#6ad541",
    },
    background: {
      default: "#fafaff",
    },
  },
};

export { lightThemeOptions };
