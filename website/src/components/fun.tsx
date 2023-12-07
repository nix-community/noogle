"use client";

import { pseudoRandomIntInclusive } from "@/client";
import { useMemo, useState } from "react";
import Markdown from "react-markdown";

interface FunctionOfTheDayProps {
  allPaths: { id: string[] }[];
}
export const FunctionOfTheDay = (props: FunctionOfTheDayProps) => {
  const { allPaths } = props;

  const todaysIdx = useMemo(
    () => pseudoRandomIntInclusive(0, allPaths.length - 1),
    [allPaths.length]
  );
  const [idx] = useState<number>(todaysIdx);

  // redirect(`ref/${allPaths[idx].id.join("/")}`);
  // const setFunctionOfTheDay = () => {
  //   setIdx(todaysIdx);
  // };

  return (
    <>
      <div>{idx}</div>
      <div>{allPaths[idx].id.join("/")}</div>
      <Markdown>{allPaths[idx].id.join("\n")}</Markdown>
    </>
  );
};
