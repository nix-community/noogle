import fs from "fs";
import { renderStaticMdx } from "@/app/md/renderStaticMdx";

export default async function Release20241Page() {
  const source = fs.readFileSync(
    "src/app/md/release/2024-1/page.mdx",
    "utf-8"
  );
  const content = await renderStaticMdx(source);
  return <>{content}</>;
}
