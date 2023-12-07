"use client";
import NixFunctions from "@/components/NixFunctions";
import { usePageContext } from "@/components/pageContext";

export default function Home() {
  const { pageState, setPageStateVariable } = usePageContext();
  return (
    // <PageContextProvider>
    <NixFunctions
      pageState={pageState}
      setPageStateVariable={setPageStateVariable}
    />
    // </PageContextProvider>
  );
}
