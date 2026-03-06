import { renderStaticMdx } from "@/app/md/renderStaticMdx";

export default async function TypingPage() {
  return await renderStaticMdx("src/app/md/typing/page.mdx");
}
