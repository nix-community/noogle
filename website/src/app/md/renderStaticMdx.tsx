import { compileMDX } from "next-mdx-remote/rsc";
import { mdxRenderOptions } from "@/utils";

export async function renderStaticMdx(source: string) {
  const mdxOptions = { ...mdxRenderOptions, format: "mdx" as const };

  const { content } = await compileMDX({
    source,
    options: {
      mdxOptions,
    },
  });

  return content;
}
