import "../styles/globals.css";
import { AppRouterCacheProvider } from "@mui/material-nextjs/v13-appRouter";
import localFont from "next/font/local";
import { ClientSideLayoutContext } from "@/components/ClientSideLayoutContext";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "Noogle - Simply find Nix API reference documentation.",
  description:
    "Nix API reference. Includes nix, nixpkgs and nixos. Search nix functions within the nix ecosystem based on type, name, description, example, category and more.",
  creator: "@hsjobeki",
  abstract: "Nix and NixOS API Documentation",
  robots: { index: true, notranslate: true, nocache: true },
  icons: "/favicon.png",
};

const inter = localFont({
  src: "../fonts/InterVariable.ttf",
  display: "swap",
});

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" className={inter.className} data-color-scheme="light">
      <head>
        {/* <link rel="icon" href="/favicon.png" /> */}
        <link
          rel="search"
          type="application/opensearchdescription+xml"
          title="Search nix function on noogle"
          href="/search.xml"
        ></link>
      </head>
      <body>
        <AppRouterCacheProvider
          options={{
            enableCssLayer: true,
          }}
        >
          <ClientSideLayoutContext>
            {/* <CssBaseline /> */}
            {children}
          </ClientSideLayoutContext>
        </AppRouterCacheProvider>
      </body>
    </html>
  );
}
