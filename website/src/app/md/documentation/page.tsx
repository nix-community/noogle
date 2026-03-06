import { renderStaticMdx } from "@/app/md/renderStaticMdx";

export default async function DocumentationPage() {
  return await renderStaticMdx("src/app/md/documentation/page.mdx");
}
