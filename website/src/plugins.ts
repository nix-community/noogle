import { visit } from "unist-util-visit";
import { data } from "@/models/data";

type Element = any;

// Build function lookups at module load time
// Qualified title -> URL (e.g. "lib.attrsets.zipAttrsWithNames" -> "/f/lib/attrsets/zipAttrsWithNames")
const functionUrlsByTitle = new Map<string, string>();
// Bare name -> URL (e.g. "zipAttrsWithNames" -> "/f/lib/attrsets/zipAttrsWithNames")
const functionUrlsByName = new Map<string, string>();

for (const doc of data) {
  const title = doc.meta.path.join(".");
  const name = doc.meta.path[doc.meta.path.length - 1];
  const url = `/f/${doc.meta.path.join("/")}`;
  functionUrlsByTitle.set(title, url);
  if (!functionUrlsByName.has(name)) {
    functionUrlsByName.set(name, url);
  }
}

const NIX_KEYWORDS = new Set([
  "if",
  "then",
  "else",
  "let",
  "in",
  "with",
  "rec",
  "inherit",
  "import",
  "or",
  "assert",
  "abort",
  "throw",
  "true",
  "false",
  "null",
]);

// Matches qualified (dot-separated) and bare identifiers
const IDENT_RE = /[a-zA-Z_][a-zA-Z0-9_']*(?:\.[a-zA-Z_][a-zA-Z0-9_']*)*/g;

function resolveUrl(match: string, inCode: boolean): string | undefined {
  // Try full qualified match first
  const titleUrl = functionUrlsByTitle.get(match);
  if (titleUrl) return titleUrl;

  // Try matching suffixes of the qualified name (e.g. "attrsets.zipAttrsWithNames" from "lib.attrsets.zipAttrsWithNames")
  if (match.includes(".")) {
    let rest = match;
    while (rest.includes(".")) {
      rest = rest.slice(rest.indexOf(".") + 1);
      const suffixUrl = functionUrlsByTitle.get(rest);
      if (suffixUrl) return suffixUrl;
    }
  }

  // For bare names, only link inside code
  const name = match.includes(".") ? match.slice(match.lastIndexOf(".") + 1) : match;
  if (inCode && !NIX_KEYWORDS.has(name)) {
    return functionUrlsByName.get(name);
  }

  return undefined;
}

function splitText(text: string, inCode: boolean): any[] {
  const result: any[] = [];
  let lastIndex = 0;
  let match;

  IDENT_RE.lastIndex = 0;
  while ((match = IDENT_RE.exec(text)) !== null) {
    const token = match[0];
    const url = resolveUrl(token, inCode);

    if (url) {
      if (match.index > lastIndex) {
        result.push({ type: "text", value: text.slice(lastIndex, match.index) });
      }
      result.push({
        type: "element",
        tagName: "a",
        properties: { href: url, "data-noogle-link": true },
        children: [{ type: "text", value: token }],
      });
      lastIndex = match.index + token.length;
    }
  }

  if (lastIndex === 0) {
    return [{ type: "text", value: text }];
  }
  if (lastIndex < text.length) {
    result.push({ type: "text", value: text.slice(lastIndex) });
  }
  return result;
}

function processNode(node: any, inCode: boolean, inPre: boolean) {
  if (!node.children) return;

  const newChildren: any[] = [];
  for (const child of node.children) {
    if (child.type === "text") {
      newChildren.push(...splitText(child.value, inCode));
    } else if (child.type === "element" && child.tagName !== "a") {
      const childIsPre = child.tagName === "pre";
      const childIsCode = child.tagName === "code";
      // Only treat inline code (not inside <pre>) as linkable code context
      const isInlineCode = childIsCode && !inPre;
      // Skip processing children of block code entirely
      if (childIsCode && inPre) {
        newChildren.push(child);
      } else {
        processNode(child, inCode || isInlineCode, inPre || childIsPre);
        newChildren.push(child);
      }
    } else {
      newChildren.push(child);
    }
  }
  node.children = newChildren;
}

export function rehypeLinkNoogleFunctions() {
  return (tree: any) => {
    processNode(tree, false, false);
  };
}

export default function remarkBareUrls() {
  /**
   * @param {import('mdast').Root} tree
   *   Tree.
   * @returns {undefined}
   *   Nothing.
   */
  return function (tree: any) {
    // Use unist-util-visit to walk through the markdown AST
    visit(tree, "text", (node, index, parent) => {
      const urlRegex = /\bhttps?:\/\/[^\s<]+/g;
      let match;
      const nodes = [];

      let lastIndex = 0;
      while ((match = urlRegex.exec(node.value)) !== null) {
        // Push any text before the URL
        if (match.index > lastIndex) {
          nodes.push({
            type: "text",
            value: node.value.slice(lastIndex, match.index),
          });
        }

        // Create the <a> tag for the URL
        const url = match[0];
        nodes.push({
          type: "link",
          title: null,
          url: url,
          children: [{ type: "text", value: url }],
        });

        lastIndex = match.index + url.length;
      }

      // Push any remaining text after the last URL
      if (lastIndex < node.value.length) {
        nodes.push({
          type: "text",
          value: node.value.slice(lastIndex),
        });
      }

      // Replace the original text node with the new nodes (text + links)
      if (nodes.length > 0) {
        parent.children.splice(index, 1, ...nodes);
      }
    });
  };
}

export function styleDirectives() {
  /**
   * @param {import('mdast').Root} tree
   *   Tree.
   * @returns {undefined}
   *   Nothing.
   */
  return (tree: any) => {
    visit(tree, (node) => {
      if (
        node.type === "containerDirective" ||
        node.type === "leafDirective" ||
        node.type === "textDirective"
      ) {
        if (node.name !== "note") return;

        const data = node.data || (node.data = {});
        const tagName = node.type === "textDirective" ? "span" : "div";

        data.hName = tagName;
        data.hProperties = node.attributes || {};
      }
    });
  };
}

export function replaceComponents() {
  return (tree: any) => {
    visit(tree, "element", (node: Element, index, parent: Element) => {
      if (["h1", "h2", "h3", "h4", "h5"].includes(node.tagName) && index) {
        const level = +node.tagName.charAt(1) + 1;
        parent.children[index] = {
          type: "element",
          tagName: `h${level}`,
          properties: {}, // Pass props here if needed
          children: node.children, // Keep the original children
        };
      }
      if (["a"].includes(node.tagName) && index !== undefined) {
        parent.children[index] = {
          type: "element",
          tagName: `a`,
          properties: {
            "data-link-md": true,
            ...redirectNixpkgsManualAnchor(
              node.properties.href as string,
              !node.properties["data-autolinked"] as boolean
            ),
          }, // Pass props here if needed
          children: node.children,
        };
      }
    });
  };
}

function redirectNixpkgsManualAnchor(href: string, transformLink: boolean) {
  if (!transformLink) {
    return { href };
  }
  if (href.startsWith("@docroot@")) {
    return {
      href: `https://nix.dev/manual/nix/latest/${href
        .replace("@docroot@/", "")
        .replace(".md", "")}`,
      target: "_blank",
    };
  }
  if (href.startsWith("#")) {
    return {
      href: `https://nixos.org/manual/nixpkgs/unstable/${href}`,
      target: "_blank",
    };
  }
  return { href };
}

export function sanitizeDirectives(markdown: string) {
  const res = markdown.replace(/:::\{/g, ":::note{");
  return res;
}

// Plugin to normalize directive spacing
export const normalizeDirectives = (src: string) => {
  // Normalize directive spacing - remove spaces between ::: and attributes
  const normalized = src.replace(/^(:::+)\s+(\{[^}]*\})/gm, "$1$2");

  return normalized;
};
