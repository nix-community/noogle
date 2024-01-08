"use client";
import { Box, LinearProgress, Link, useTheme } from "@mui/material";
import { SearchInput } from "../searchInput";
import { Filter } from "../filter";
import { Suspense } from "react";
import { SocialIcons } from "./layout";

import localFont from "next/font/local";

const fira = localFont({
  src: "../../fonts/FiraCode-VF.ttf",
  display: "swap",
});

export const Header = () => {
  const theme = useTheme();

  return (
    <>
      <Box
        sx={{
          position: "fixed",
          top: 0,
          width: "100%",
          py: 1.2,
          zIndex: 1000,
          backgroundColor:
            theme.palette.mode === "light" ? "primary.main" : "#101010",
          display: "grid",
          gridTemplateColumns: {
            xs: "1fr",
            md: "0.3fr 0.4fr 0.3fr",
          },
          alignContent: "center",
          // borderBottomStyle: "solid",
          // borderBottomColor: "#232223",
          // borderBottomWidth: "1px",
        }}
      >
        <Box
          sx={{
            justifyContent: "start",
            alignSelf: "center",
            px: 1,
            display: { xs: "none", md: "block" },
          }}
        >
          <Link
            href="/"
            className={fira.className}
            sx={{
              color: "primary.contrastText",
              letterSpacing: -0.3,
            }}
            aria-label="Home"
          >
            {"Noogλe"}
          </Link>
        </Box>
        {/* <Box
          sx={{
            justifySelf: "start",
            display: { xs: "block", md: "none" },
            color: "primary.contrastText",
          }}
        >
          <IconButton color="inherit" aria-label="Home">
            <Home />
          </IconButton>
        </Box> */}

        <Box
          sx={{
            justifySelf: "center",
            width: "100%",
            // minWidth: "20rem",
            bgcolor: "background.paper",
            px: 2,
            mx: 1,
            borderRadius: 10,

            overflow: "hidden",
          }}
        >
          <Suspense fallback="search input ">
            <SearchInput placeholder="search nix functions" />
          </Suspense>
        </Box>
        <Box
          sx={{
            justifySelf: "end",
            mr: 2,
            display: {
              xs: "none",
              md: "block",
            },
            color: "primary.contrastText",
          }}
        >
          <SocialIcons />
        </Box>
      </Box>

      <Box sx={{ width: "100%", height: "3.7rem" }} />

      <Suspense fallback={<LinearProgress />}>
        <Box
          sx={{
            bgcolor: "background.paper",
            px: 2,
            position: "sticky",
            top: "3.7rem",
            zIndex: 10,
          }}
        >
          <Filter disableChevron />
        </Box>
      </Suspense>
    </>
  );
};
