/** @type {import('next').NextConfig} */
// rehypePlugins: [
//   [
//     rehypeHighlight,
//     {
//       detect: true,
//       languages: { nix, haskell, bash, default: nix },
//     },
//   ],
//   [rehypeSlug, {}],
//   [rehypeAutolinkHeadings, { behavior: "wrap" }],
// ],
// remarkPlugins: [remarkHeadingId],
// format: "md",
// const remarkHeadingId = require("remark-heading-id");
// const remarkFrontmatter = import("remark-frontmatter");
// const withMDX = require("@next/mdx")({
//   options: {
//     remarkPlugins: [remarkHeadingId, remarkFrontmatter],
//     rehypePlugins: [],
//   },
//   extension: /\.mdx?$/,
// });

const nextConfig = (phase, { defaultConfig }) => {
  const config = {
    compress: true,
    optimizeFonts: true,
    output: "export",
    reactStrictMode: true,
    swcMinify: true,
    images: {
      loader: "custom",
    },
  };

  return config;
};

module.exports = nextConfig;
