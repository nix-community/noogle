import {
  Box,
  Typography,
  Container,
  Link,
  useTheme,
  IconButton,
} from "@mui/material";
import { Image } from "../image";
import nixSnowflake from "../../public/nix-snowflake.svg";
import GitHubIcon from "@mui/icons-material/GitHub";
// import Link from "next/link";
export interface LayoutProps {
  children: React.ReactNode;
}

export function Layout(props: LayoutProps) {
  const { children } = props;
  const theme = useTheme();

  return (
    <Box
      sx={{
        bgcolor:
          theme.palette.mode === "light"
            ? "rgb(242, 248, 253)"
            : "rgb(23, 17, 22)",
      }}
    >
      <header
      // style={{ position: "sticky", top: 0, width: "100%", zIndex: 100 }}
      >
        <Box
          sx={{
            position: "fixed",
            top: "15rem",
            height: "100%",
            width: "100%",
            zIndex: 0,
            opacity: 0.1,
            backgroundImage: `url(${nixSnowflake.src})`,
            backgroundPositionX: "50%",
            backgroundRepeat: "no-repeat",
          }}
        />

        <Box
          sx={{
            p: 2,
            backgroundColor:
              theme.palette.mode === "light"
                ? "primary.main"
                : "background.paper",
          }}
        >
          <Typography
            variant="h1"
            sx={{
              textAlign: "center",
              color: "#fff",
            }}
          >
            <Box
              sx={{
                display: {
                  xs: "none",
                  md: "block",
                },
              }}
            >
              <Image
                src={nixSnowflake}
                alt="nix-logo"
                height={90}
                style={{
                  marginBottom: "-1rem",
                }}
              />
            </Box>
            <Box sx={{ ml: 1 }} component="span">{`noog\u03BBe`}</Box>
            <IconButton sx={{ float: "right", top: "1em", right: "1em" }}>
              <GitHubIcon
                fontSize="large"
                sx={{
                  display: {
                    xs: "none",
                    md: "block",
                  },
                }}
              />
            </IconButton>
          </Typography>
        </Box>
      </header>
      <main>
        <Container sx={{ pt: 0 }} maxWidth="xl">
          {children}
        </Container>
      </main>
      <footer
        style={{
          position: "fixed",
          bottom: 0,
          display: "flex",
          justifyContent: "center",
          width: "100%",
        }}
      >
        Powered by{" "}
        <Link sx={{ ml: 1 }} href="https://oceansprint.org/">
          {" "}
          OceanSprint
        </Link>
      </footer>
    </Box>
  );
}
