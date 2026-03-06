import { renderStaticMdx } from "@/app/md/renderStaticMdx";

export default async function FunctorsTutorialPage() {
  return await renderStaticMdx("src/app/md/tutorials/functors/page.mdx");
}
