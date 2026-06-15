import { compileMDX } from "next-mdx-remote/rsc";
import { mdxRenderOptions } from "@/utils";
import fs from "fs";

export async function renderStaticMdx(url: string) {
  const source = fs.readFileSync(url, "utf-8");

  const mdxOptions = { ...mdxRenderOptions, format: "mdx" as const };

  const { content } = await compileMDX({
    source,
    options: {
      // @ts-expect-error: since we upgraded next-mdx it doesnt export the types anymore
      // And i am too lazy to figure out their new rendering pipeline :D
      mdxOptions,
    },
  });

  return <>{content}</>;
}
