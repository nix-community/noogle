const withMDX = require("@next/mdx")();

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

module.exports = withMDX(nextConfig);
