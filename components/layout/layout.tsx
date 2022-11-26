import { Box, Typography, Container, Link } from "@mui/material";
// import Link from "next/link";

export interface LayoutProps {
  children: React.ReactNode;
}

export function Layout(props: LayoutProps) {
  const { children } = props;

  return (
    <>
      <header>
        <Box sx={{ p: 2, backgroundColor: "primary.main" }}>
          <Typography variant="h1" sx={{ textAlign: "center", color: "#fff" }}>
            {`noog\u03BBe`}
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
    </>
  );
}
