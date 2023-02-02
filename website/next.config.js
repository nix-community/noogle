/** @type {import('next').NextConfig} */

const nextConfig = (phase, { defaultConfig }) => {
  const config = {
    reactStrictMode: true,
    swcMinify: true,
    images: {
      loader: "custom",
    },
  };
  return config;
};

module.exports = nextConfig;
