import type { Root } from "hast";
import { toString as hastToString } from "hast-util-to-string";
import type { Plugin } from "unified";
import { EXIT, visit } from "unist-util-visit";

export interface RehypeExtractExcerptOptions {
  /** The var name of the vFile.data export. defaults to `excerpt` */
  name?: string;

  /** The character length to truncate the excerpt. defaults to 140  */
  maxLength?: number;

  /** The ellipsis to add to the excerpt. defaults to `...` */
  ellipsis?: string;

  /** Truncate the excerpt at word boundary. defaults to `true` */
  wordBoundaries?: boolean;

  /** The HTML tag name for the excerpt content. defaults to `p` */
  tagName?: string;
}

const defaults: RehypeExtractExcerptOptions = {
  name: "excerpt",
  maxLength: 140,
  ellipsis: "...",
  wordBoundaries: true,
  tagName: "p",
};

const rehypeExtractExcerpt: Plugin<[RehypeExtractExcerptOptions?], Root> = (
  userOptions?: RehypeExtractExcerptOptions
) => {
  const options = { ...defaults, ...userOptions };

  function truncateExcerpt(
    str: string,
    maxLength: number,
    ellipsis: string,
    wordBoundaries: boolean
  ): string {
    if (str.length > maxLength) {
      if (wordBoundaries) {
        return `${str.slice(
          0,
          str.lastIndexOf(" ", maxLength - 1)
        )}${ellipsis}`;
      }
      return `${str.slice(0, maxLength)}${ellipsis}`;
    }
    return str;
  }

  return (tree, vfile) => {
    const excerpt: string[] = [];

    visit(tree, "element", (node) => {
      if (node.tagName !== options.tagName) {
        return;
      }

      excerpt.push(
        truncateExcerpt(
          hastToString(node),
          options.maxLength!,
          options.ellipsis!,
          options.wordBoundaries!
        )
      );

      return EXIT;
    });
    vfile.data[options.name!] = excerpt[0];
  };
};

export { rehypeExtractExcerpt };
