import rehypeHighlight from "rehype-highlight";
import bash from "highlight.js/lib/languages/bash";
import haskell from "highlight.js/lib/languages/haskell";
import nix from "highlight.js/lib/languages/nix";
import mdx from "@next/mdx";
import remarkGfm from "remark-gfm";

const withMDX = mdx({
  options: {
    remarkPlugins: [remarkGfm],
    rehypePlugins: [
      [
        rehypeHighlight,
        {
          detect: true,
          languages: { nix, haskell, bash, default: nix },
        },
      ],
    ],
  },
});

/** @type {import('next').NextConfig} */
const nextConfig = {
  pageExtensions: ["js", "jsx", "mdx", "ts", "tsx"],
  compress: true,
  optimizeFonts: true,
  output: "export",
  reactStrictMode: true,
  swcMinify: true,
  images: {
    loader: "custom",
  },
};

// module.exports = nextConfig;
export default withMDX(nextConfig);
