import { renderStaticMdx } from "@/app/md/renderStaticMdx";

export default async function Release20241Page() {
  return await renderStaticMdx("src/app/md/release/2024-1/page.mdx");
}
