"use client";
import { NixFunctions } from "@/components/NixFunctions/nixFunctions";
import { usePageContext } from "@/components/pageContext";

export default function Home() {
  const { pageState, setPageStateVariable } = usePageContext();
  return (
    <NixFunctions
      pageState={pageState}
      setPageStateVariable={setPageStateVariable}
    />
  );
}
