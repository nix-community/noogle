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
import nixWhite from "../../public/white.svg";
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
        height: "100vh",
        overflow: "hidden",
        bgcolor:
          theme.palette.mode === "light"
            ? "rgb(242, 248, 253)"
            : "rgb(23, 17, 22)",
      }}
    >
      <header>
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
            position: "fixed",
            top: 0,
            width: "100%",
            p: 1,
            zIndex: 1,
            borderBottomRightRadius: 16,
            borderBottomLeftRadius: 16,
            backgroundColor:
              theme.palette.mode === "light"
                ? "primary.main"
                : "background.paper",
          }}
        >
          <Typography
            variant="h2"
            sx={{
              textAlign: "center",
              color: "#fff",
            }}
          >
            <Box
              sx={{
                display: {
                  xs: "none",
                  md: "inline-block",
                },
              }}
              component="span"
            >
              <Image
                src={nixWhite}
                alt="nix-logo"
                height={50}
                style={{
                  marginBottom: "-0.5rem",
                }}
              />
            </Box>
            <Box sx={{ ml: 1 }} component="span">{`noog\u03BBe`}</Box>
            <Link href="https://github.com/hsjobeki/noogle">
              <IconButton sx={{ float: "right", top: "0.5em", right: "1em" }}>
                <GitHubIcon
                  fontSize="large"
                  sx={{
                    display: {
                      xs: "none",
                      md: "inline-block",
                    },
                  }}
                />
              </IconButton>
            </Link>
          </Typography>
        </Box>
      </header>
      <main
        style={{
          marginTop: "6em",
          maxHeight: "calc(100vh - 8em)",
          overflowY: "scroll",
          overflowX: "hidden",
          width: "100vw",
        }}
      >
        <Container sx={{ pt: 0, px: { xs: 0, md: 2 } }} maxWidth="xl">
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
