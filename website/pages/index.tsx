import React from "react";

import { usePageContext } from "../components/pageContext";
import NixFunctions from "../components/NixFunctions";

export default function FunctionsPage() {
  const { pageState, setPageStateVariable } = usePageContext();
  return (
    <NixFunctions
      pageState={pageState}
      setPageStateVariable={setPageStateVariable}
    />
  );
}
