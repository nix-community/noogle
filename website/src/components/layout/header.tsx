"use client";
import GitHubIcon from "@mui/icons-material/GitHub";
import { Box, IconButton, Link, Tooltip, useTheme } from "@mui/material";
import { SearchInput } from "../searchInput";
import { Menu } from "@mui/icons-material";

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
          zIndex: 1,
          backgroundColor:
            theme.palette.mode === "light"
              ? "primary.main"
              : "background.default",
          display: "grid",
          gridTemplateColumns: "0.3fr 0.4fr 0.3fr",
          alignContent: "center",
          borderBottomStyle: "solid",
          borderBottomColor: "#232223",
          borderBottomWidth: "1px",
        }}
      >
        <Box sx={{ justifySelf: "start", color: "primary.contrastText" }}>
          <IconButton color="inherit">
            <Menu />
          </IconButton>
        </Box>

        <Box
          sx={{
            justifySelf: "center",
            width: "100%",
            minWidth: "20rem",
            bgcolor: "background.paper",
            px: 2,
            borderRadius: 10,
            overflow: "hidden",
          }}
        >
          <SearchInput placeholder="search nix functions" />
        </Box>
        <Box sx={{ justifySelf: "end", mr: 2 }}>
          <Link
            href="https://github.com/nix-community/noogle"
            target="_blank"
            sx={{ color: "primary.contrastText" }}
          >
            <Tooltip title="Github">
              <IconButton color="inherit">
                <GitHubIcon
                  sx={{
                    display: "inline-block",
                  }}
                />
              </IconButton>
            </Tooltip>
          </Link>
        </Box>
      </Box>

      <Box sx={{ width: "100%", height: "4rem" }} />
    </>
  );
};
