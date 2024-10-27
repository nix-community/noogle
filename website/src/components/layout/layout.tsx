import {
  Box,
  Container,
  IconButton,
  Link,
  Tooltip,
  Typography,
} from "@mui/material";
import GitHubIcon from "@mui/icons-material/GitHub";
import { Background } from "./Background";
import { ThemeSwitch } from "./themeSwitch";

export interface LayoutProps {
  children: React.ReactNode;
}

export const SocialIcons = () => {
  return (
    <>
      <Link
        href="https://github.com/nix-community/noogle"
        target="_blank"
        sx={{ color: "inherit" }}
      >
        <Tooltip title="Github">
          <IconButton
            sx={{
              color: "#fff",
            }}
            aria-label="nixos github"
          >
            <GitHubIcon />
          </IconButton>
        </Tooltip>
      </Link>
    </>
  );
};

export function LandingPageLayout(props: LayoutProps) {
  const { children } = props;

  return (
    <Background>
      <Box sx={{ textAlign: "end", px: 2, py: 1 }}>
        <SocialIcons />
        <ThemeSwitch />
      </Box>
      <main
        style={{
          marginTop: "4.8rem",
          marginBottom: "auto",
        }}
      >
        <Container fixed sx={{ px: 0 }}>
          {children}
        </Container>
      </main>
      <footer
        style={{
          fontSize: "0.8rem",
          display: "flex",
          flexDirection: "column",
          placeItems: "center",
          justifyContent: "center",
          width: "100%",
          paddingBottom: 8,
        }}
      >
        Powered by{" "}
        <Link sx={{ ml: 1 }} href="https://oceansprint.org/">
          {" "}
          OceanSprint
        </Link>{" "}
        © 2023 Noogle. All rights reserved.
        <Typography
          component={"div"}
          variant="subtitle2"
          sx={{ maxWidth: "100rem", fontSize: "0.7rem" }}
        >
          Noogle is an independent website and is not affiliated with or
          endorsed by Google Inc. The use of the term Noogle is solely for the
          purpose of branding and does not imply any connection with Google or
          its products.
        </Typography>
      </footer>
    </Background>
  );
}
