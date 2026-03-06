import fs from "fs";
import { renderStaticMdx } from "@/app/md/renderStaticMdx";

export default async function TypingPage() {
  const source = fs.readFileSync("src/app/md/typing/page.mdx", "utf-8");
  const content = await renderStaticMdx(source);
  return <>{content}</>;
}
