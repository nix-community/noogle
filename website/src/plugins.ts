import { h } from "hastscript";
import { visit } from "unist-util-visit";
import { Element } from "hast";

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
        // console.log({ node });

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
        // Replace h1 node with your custom component represented as an HAST node
        parent.children[index] = {
          type: "element",
          tagName: `h${level}`,
          properties: {}, // Pass props here if needed
          children: node.children, // Keep the original children
        };
      }
      if (["a"].includes(node.tagName) && index) {
        // Replace h1 node with your custom component represented as an HAST node
        parent.children[index] = {
          type: "element",
          tagName: `a`,
          properties: {
            "data-link-md": true,
          }, // Pass props here if needed
          children: node.children,
        };
      }
    });
  };
}

export function sanitizeDirectives(markdown: string) {
  const res = markdown.replace(/:::\{/g, ":::note{");
  return res;
}
