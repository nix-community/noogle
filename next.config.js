/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  images: {
    loader: "custom",
  },
  basePath: "/noogle",
  assetPrefix: "/noogle/",
};

module.exports = nextConfig;
