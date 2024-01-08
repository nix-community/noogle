import { Filter } from "@/components/filter";
import { FunctionOfTheDay } from "@/components/functionOfTheDay";
import { LandingPageLayout } from "@/components/layout";
import { FilterProvider } from "@/components/layout/filterContext";
import { SearchInput } from "@/components/searchInput";
import { Box, Typography, Link, Tooltip } from "@mui/material";

import localFont from "next/font/local";
import { Suspense } from "react";

const fira = localFont({
  src: "../fonts/FiraCode-VF.ttf",
  display: "swap",
});

export default function Home() {
  return (
    <LandingPageLayout>
      <Box
        sx={{
          display: "flex",
          flexDirection: "column",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <Link href="/md/release/2024-1" underline="none">
          <Tooltip title="Whats new">
            <Typography
              variant="h1"
              className={fira.className}
              sx={{
                mt: 10,
                mb: 4,
                fontSize: "4.5rem",
                fontVariantLigatures: "normal",
              }}
            >
              Noogλe :: 2024
            </Typography>
          </Tooltip>
        </Link>

        <Box
          sx={{
            width: "100%",
            overflow: "hidden",
            py: 1,
            px: 2,
            bgcolor: "background.paper",
            borderRadius: 2,
            borderColor: "primary.main",
            borderWidth: 1,
            borderStyle: "solid",
          }}
        >
          <Suspense fallback="search input ">
            <FilterProvider>
              <SearchInput placeholder="search nix functions" autoFocus />
              <Filter disableChevron disableSubmit showDivider />
            </FilterProvider>
          </Suspense>
        </Box>
        <FunctionOfTheDay />
      </Box>
    </LandingPageLayout>
  );
}
