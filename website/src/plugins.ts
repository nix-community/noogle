import { h } from "hastscript";
import { visit } from "unist-util-visit";
import { Element } from "hast";

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
        data.hProperties = h(tagName, node.attributes || {}).properties;
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
        //   node,
        //   c: node.tagName,
        // });
        parent.children[index] = {
          type: "element",
          tagName: `a`,
          properties: {
            "data-link-md": true,
            ...redirectNixpkgsManualAnchor(node.properties.href as string),
          }, // Pass props here if needed
          children: node.children,
        };
      }
    });
  };
}

function redirectNixpkgsManualAnchor(href: string) {
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
