import { FilterProvider } from "@/components/layout/filterContext";
import { Header } from "@/components/layout/header";
import { SearchInput } from "@/components/searchInput";
import { ReactNode, Suspense } from "react";

export default function SearchLayout({ children }: { children: ReactNode }) {
  return (
    <>
      <Suspense fallback="query">
        <FilterProvider>
          <Header search={<SearchInput placeholder="Search functions" />} />
          {children}
        </FilterProvider>
      </Suspense>
    </>
  );
}
