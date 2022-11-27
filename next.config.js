// const

const { PHASE_DEVELOPMENT_SERVER } = require("next/dist/shared/lib/constants");

/** @type {import('next').NextConfig} */

const nextConfig = (phase, { defaultConfig }) => {
  const config = {
    reactStrictMode: true,
    swcMinify: true,
    images: {
      loader: "custom",
    },
  };
  if (phase !== PHASE_DEVELOPMENT_SERVER) {
    return { ...config, basePath: "/noogle", assetPrefix: "/noogle/" };
  }
  return config;
};

module.exports = nextConfig;
