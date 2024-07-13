import { HighlightBaseline } from "@/components/HighlightBaseline";
import { FilterProvider } from "@/components/layout/filterContext";
import { Header } from "@/components/layout/header";
import { SearchInput } from "@/components/searchInput";
import { Container } from "@mui/material";
import { ReactNode, Suspense } from "react";

export default function SearchLayout({ children }: { children: ReactNode }) {
  return (
    <>
      <Suspense fallback="query">
        <FilterProvider>
          <Header search={<SearchInput placeholder="Search functions" />} />
        </FilterProvider>
      </Suspense>
      <HighlightBaseline />
      <Container
        maxWidth="lg"
        sx={{
          minHeight: "calc(100vh - 3.7rem)",
          bgcolor: "background.paper",
          py: 1,
        }}
      >
        {children}
      </Container>
    </>
  );
}
