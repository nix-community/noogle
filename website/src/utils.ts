import fs from "fs";
import bash from "highlight.js/lib/languages/bash";
import haskell from "highlight.js/lib/languages/haskell";
import nix from "highlight.js/lib/languages/nix";
import { SerializeOptions } from "next-mdx-remote/dist/types";
import { CompileMDXResult, compileMDX } from "next-mdx-remote/rsc";
import { parse, serialize } from "parse5";
import path from "path";
import rehypeAutolinkHeadings from "rehype-autolink-headings";
import rehypeHighlight from "rehype-highlight";
import rehypeSlug from "rehype-slug";
import rehypeStringify from "rehype-stringify";
// @ts-expect-error: Could not find type declaration file.
import remarkHeadingId from "remark-heading-id";
import remarkParse from "remark-parse";
import remarkRehype from "remark-rehype";
import remarkUnlink from "remark-unlink";
import {
  remarkDefinitionList,
  defListHastHandlers,
} from "remark-definition-list";

import remarkDirective from "remark-directive";

import { unified } from "unified";
import { rehypeExtractExcerpt } from "./excerpt";
import {
  replaceComponents,
  sanitizeDirectives,
  styleDirectives,
} from "./plugins";

/**
 * Function to generate a set from a path in lodash style
 * ```
 * set({}, "foo.bar", "value");
 * ->
 * {
 *   foo: {
 *     bar: "value"
 *   }
 * }
 * ```
 * @param obj Object in which to insert records
 * @param path Path/String in "." seperated form
 * @param value Any value to insert.
 */
export function set(obj: Record<string, any>, path: string, value: any): void {
  let schema = obj; // a moving reference to internal objects within obj
  const pList = path.split(".");
  const len = pList.length;
  for (let i = 0; i < len - 1; i++) {
    const elem = pList[i];
    if (!schema[elem]) schema[elem] = {};
    schema = schema[elem];
  }
  schema[pList[len - 1]] = value;
}

export const docsDir = path.join(process.cwd(), "src/docs");

export async function generateStaticSidebarEntries() {
  const files = fs.readdirSync(docsDir, {
    recursive: true,
    withFileTypes: true,
    encoding: "utf-8",
  });
  const paths: { id: string[] }[] = await Promise.all(
    files
      .filter((f) => !f.isDirectory())
      .map(async (f) => {
        const dirname = path.relative(docsDir, f.path);
        const filename = path.parse(f.name).name;
        const id = [...dirname.split("/"), filename];
        return {
          id,
        };
      })
  );
  return paths;
}

export type DocsFrontmatter = { title: String; path?: string[] };

export const getMdxMeta = async (
  parts: string[]
): Promise<{
  mdxSource: string;
  compiled: CompileMDXResult<DocsFrontmatter>;
}> => {
  const location = path.join(docsDir, `${parts.map(decodeURI).join("/")}.md`);
  const source = fs.readFileSync(location, { encoding: "utf-8" });

  return {
    mdxSource: source,
    compiled: await compileMDX({
      source,
      options: {
        parseFrontmatter: true,
        mdxOptions: {
          format: "md",
        },
      },
    }),
  };
};

export const getMdxSource = async (parts: string[]) => {
  const decoded = parts.map(decodeURI).join("/");
  const location = path.join(docsDir, `${decoded}.md`);
  const source = fs.readFileSync(location);
  return {
    mdxSource: source,
  };
};

export type Group = {
  [name: string]: string[] | Group;
};

type Heading = {
  level: number;
  value: string;
  id: string;
};

export const parseMd = async (src: string) => {
  const result = await unified()
    .use(remarkParse)
    .use(remarkHeadingId)
    .use(remarkDefinitionList)
    .use(remarkUnlink)
    .use(remarkDirective)
    .use(styleDirectives)
    .use(remarkRehype, {
      handlers: { ...(defListHastHandlers as {}) },
    })
    .use(rehypeHighlight, {
      detect: true,
      languages: { nix, haskell, bash, default: nix },
    })
    .use(rehypeSlug, {})
    .use(rehypeAutolinkHeadings, {
      behavior: "wrap",
      properties: { "data-autolinked": true },
    })
    .use(replaceComponents)
    .use(rehypeStringify)
    .process(sanitizeDirectives(src));

  // console.log({ result });
  return result;
};

export const extractExcerpt = async (
  content: string,
  maxLength: number
): Promise<string> => {
  const processor = unified()
    .use(remarkParse)
    .use(remarkRehype)
    .use(rehypeExtractExcerpt, {
      maxLength: maxLength,
      ellipsis: " ...",
    })
    .use(rehypeStringify);

  const result = await processor.process(content);

  return result.data.excerpt as string;
};
export const extractHeadings = async (content: string): Promise<Heading[]> => {
  const processor = unified()
    .use(remarkParse)
    .use(remarkHeadingId)
    .use(remarkRehype)
    .use(rehypeSlug)
    .use(rehypeStringify);

  const result = await processor.process(content);

  const document = parse(result.value.toString());

  const headings: Heading[] = [];
  const processNode = (node: any) => {
    if (
      node?.tagName &&
      ["h1", "h2", "h3", "h4", "h5", "h6"].some((hN) => node?.tagName === hN)
    ) {
      const nm = node.tagName.slice(1);
      const level = parseInt(nm, 10);
      const id = node?.attrs?.find((attr: any) => attr?.name === "id")?.value;
      const value: string = serialize(node);
      headings.push({ level, id, value });
    }
    if (node.childNodes) {
      node.childNodes.forEach(processNode);
    }
  };
  processNode(document);
  return headings as Heading[];
};

export const mdxRenderOptions: SerializeOptions["mdxOptions"] = {
  rehypePlugins: [
    [
      rehypeHighlight,
      {
        detect: true,
        languages: { nix, haskell, bash, default: nix },
      },
    ],
    [rehypeSlug, {}],
    [rehypeAutolinkHeadings, { behavior: "wrap" }],
  ],
  remarkPlugins: [remarkHeadingId, remarkDefinitionList, remarkUnlink],
  format: "md",
  remarkRehypeOptions: {
    handlers: {
      ...(defListHastHandlers as {}),
    },
  },
} as SerializeOptions["mdxOptions"];
