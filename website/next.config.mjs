/** @type {import('next').NextConfig} */
const nextConfig = {
  pageExtensions: ["js", "jsx", "ts", "tsx"],
  compress: true,
  output: "export",
  reactStrictMode: true,
  trailingSlash: true,
  images: {
    loader: "custom",
  },
};

export default nextConfig;
