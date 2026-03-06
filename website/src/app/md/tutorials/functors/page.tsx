import fs from "fs";
import { renderStaticMdx } from "@/app/md/renderStaticMdx";

export default async function FunctorsTutorialPage() {
  const source = fs.readFileSync(
    "src/app/md/tutorials/functors/page.mdx",
    "utf-8"
  );
  const content = await renderStaticMdx(source);
  return <>{content}</>;
}
