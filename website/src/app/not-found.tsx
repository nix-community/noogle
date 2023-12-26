import { Box } from "@mui/material";

import localFont from "next/font/local";

const fira = localFont({
  src: "../fonts/FiraCode-VF.ttf",
  display: "swap",
});

export default function NotFoundPage() {
  return (
    <Box data-pagefind-ignore="all" className={fira.className}>
      Page not found
    </Box>
  );
}
