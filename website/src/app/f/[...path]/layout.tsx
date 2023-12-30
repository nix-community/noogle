import { FilterProvider } from "@/components/layout/filterContext";
import { Header } from "@/components/layout/header";
import { Container } from "@mui/material";
import { ReactNode, Suspense } from "react";

export default function SearchLayout({ children }: { children: ReactNode }) {
  return (
    <>
      <Suspense fallback="query">
        <FilterProvider>
          <Header />
        </FilterProvider>
      </Suspense>
      <Container
        disableGutters
        maxWidth="lg"
        sx={{
          display: {
            xs: "block",
            md: "grid",
          },
          // display: "grid",
          gridTemplateColumns: "1fr 6fr 1fr",
          alignItems: "start",
        }}
      >
        {children}
      </Container>
    </>
  );
}
