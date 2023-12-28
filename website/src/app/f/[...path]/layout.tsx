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
      <Container maxWidth="lg">{children}</Container>
    </>
  );
}
