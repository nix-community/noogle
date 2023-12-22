import { Doc } from "@/models/data";
import bash from "highlight.js/lib/languages/bash";
import haskell from "highlight.js/lib/languages/haskell";
import nix from "highlight.js/lib/languages/nix";
import rehypeHighlight from "rehype-highlight";

import { rehypeExtractExcerpt } from "@/excerpt";
import Markdown from "react-markdown";
import { HighlightBaseline } from "./HighlightBaseline";
import rehypeStringify from "rehype-stringify";
import remarkParse from "remark-parse";
import remarkRehype from "remark-rehype";
import { unified } from "unified";
import { useEffect, useState } from "react";

const getExcerpt = async (content: string): Promise<string> => {
  const processor = unified()
    .use(remarkParse)
    .use(remarkRehype)
    .use(rehypeExtractExcerpt)
    .use(rehypeStringify);

  const result = await processor.process(content);
  return result.data["excerpt"] as string;
};

export const Excerpt = ({ meta, content }: Doc) => {
  const mdxSource = content?.content || "";
  const [excerpt, setExcerpt] = useState<string>("");
  useEffect(() => {
    getExcerpt(mdxSource).then((r) => setExcerpt(r));
  }, [mdxSource]);
  return (
    <>
      <HighlightBaseline />
      <Markdown
        components={{
          h1: "h2",
          h2: "h3",
          h3: "h4",
          h4: "h5",
        }}
        rehypePlugins={[
          [
            rehypeHighlight,
            {
              detect: true,
              languages: { nix, haskell, bash, default: nix },
            },
          ],
        ]}
      >
        {excerpt}
      </Markdown>
    </>
  );
};
