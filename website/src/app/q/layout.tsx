import { FilterProvider } from "@/components/layout/filterContext";
import { Header } from "@/components/layout/header";
import { ReactNode, Suspense } from "react";

export default function SearchLayout({ children }: { children: ReactNode }) {
  return (
    <>
      <Suspense fallback="query">
        <FilterProvider>
          <Header />
        </FilterProvider>
      </Suspense>
      {children}
    </>
  );
}
