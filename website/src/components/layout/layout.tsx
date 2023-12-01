import nixSnowflake from "@/assets/nix-snowflake.svg";
import nixWhite from "@/assets/white.svg";
import GitHubIcon from "@mui/icons-material/GitHub";
import {
  Box,
  Container,
  IconButton,
  Link,
  Tooltip,
  Typography,
  useMediaQuery,
  useTheme,
} from "@mui/material";
import { Image } from "../image";
export interface LayoutProps {
  children: React.ReactNode;
}

export const useMobile = () => useMediaQuery(useTheme().breakpoints.down("md"));

export function Layout(props: LayoutProps) {
  const { children } = props;
  const theme = useTheme();

  return (
    <Box
      sx={{
        height: "100vh",
        overflow: "scroll",
        bgcolor:
          theme.palette.mode === "light" ? "rgb(242, 248, 253)" : "#070c16",
      }}
    >
      <header>
        <Box
          sx={{
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
            variant="h1"
            component="h1"
            sx={{
              textAlign: "center",
              color: "#fff",
              fontSize: "30pt",
              lineHeight: 1.2,
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
                height={25}
                style={{
                  marginBottom: "0rem",
                }}
              />
            </Box>
            <Box sx={{ ml: 1 }} component="span">{`noog\u03BBe`}</Box>
            <Link
              href="https://github.com/nix-community/noogle"
              target="_blank"
            >
              <Tooltip title="Contribute on Github">
                <IconButton
                  sx={{ float: "right", top: "0.6rem", right: "1em", p: 0 }}
                >
                  <GitHubIcon
                    sx={{
                      display: {
                        xs: "none",
                        md: "inline-block",
                      },
                    }}
                  />
                </IconButton>
              </Tooltip>
            </Link>
          </Typography>
        </Box>
      </header>
      <main
        style={{
          marginTop: "1rem",
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
