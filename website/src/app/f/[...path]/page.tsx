import { HighlightBaseline } from "@/components/HighlightBaseline";
import { ShareButton } from "@/components/ShareButton";
import { BackButton } from "@/components/BackButton";
import { Doc, data, manualLinks } from "@/models/data";
import { getPrimopDescription } from "@/models/primop";
import { extractExcerpt, extractHeadings, parseMd } from "@/utils";
import { Box, Divider, Typography, Link, Chip } from "@mui/material";
import { findType, interpretType } from "@/models/nix";
import { FilterProvider } from "@/components/layout/filterContext";
import React, { Suspense } from "react";
import { PositionLink } from "@/components/PositionLink";
import { SearchNav } from "@/components/SearchNav";

import fs from "fs";
import path from "path";
import { Metadata, ResolvingMetadata } from "next";

// Important the key ("path") in the returned dict MUST match the dynamic path segment ([...path])
export async function generateStaticParams(): Promise<{ path: string[] }[]> {
  const paths = data.map((docItem) => {
    return {
      path: docItem.meta.path.map((s) => s),
    };
  });
  return paths;
}

interface TocProps {
  mdxSource: string;
  title?: string;
}

const Toc = async (props: TocProps) => {
  const { mdxSource, title } = props;
  const headings = await extractHeadings(mdxSource);

  return (
    <Box
      data-pagefind-ignore="all"
      sx={{
        display: {
          xs: "none",
          md: "block",
        },
        position: "sticky",
        top: "3.7rem",
        p: 2,
        order: 3,
        whiteSpace: "nowrap",
      }}
    >
      <Typography variant="subtitle1" component={"div"}>
        On this page
      </Typography>
      <Box sx={{ display: "flex", flexDirection: "column" }}>
        {title && (
          <Link rel="canonical" href={`#${title}`}>
            <Typography
              variant="body2"
              sx={{
                justifyContent: "start",
                textTransform: "none",
                color: "text.primary",
                py: 0.5,
              }}
            >
              {title}
            </Typography>
          </Link>
        )}
        {headings.map((h, idx) => (
          <Link rel="canonical" key={idx} href={`#${h.id}`}>
            <Typography
              variant="body2"
              sx={{
                justifyContent: "start",
                textTransform: "none",
                color: "text.primary",
                pl: h.level,
                py: 0.5,
              }}
            >
              <span dangerouslySetInnerHTML={{ __html: h.value }} />
            </Typography>
          </Link>
        ))}
      </Box>
    </Box>
  );
};

const MDX = async ({ source }: { source: string }) => {
  const html = await parseMd(source);

  return <div dangerouslySetInnerHTML={{ __html: String(html.value) }} />;
};

async function getManualSrc(item: Doc): Promise<string | null> {
  // Path must be at exactly [ "builtins" ":id" ]
  if (item?.meta?.path?.length != 2 || item?.meta?.path?.[0] !== "builtins") {
    return null;
  }
  const extern = manualLinks.find((link) => link.id === item.meta.path[1]);
  if (!extern) {
    return null;
  }
  const manPath = path.join(process.cwd(), "src/models/data", extern.file);
  const source = fs.readFileSync(manPath, { encoding: "utf-8" });
  // const src = extern.file;
  // console.log({ source, manPath });
  return source;
}

export async function generateMetadata(
  { params }: { params: { path: string[] } },
  parent: ResolvingMetadata
): Promise<Metadata> {
  // read route params
  const item: Doc | undefined = data.find(
    (item) => item.meta.path.join(".") === params.path.join(".")
  );

  // fetch data

  // optionally access and extend (rather than replace) parent metadata
  const keywords = item?.meta?.path || [];
  const alias_keywords = item?.meta.aliases?.flat() || [];

  // const name = item?.meta.path[item?.meta.path.length - 1];

  const content = item?.content?.content || "";

  // const summary = await extractExcerpt(content, 35);
  const description = await extractExcerpt(content, 200);

  const title = `${item?.meta.path.join(".")} - Nix function reference`;

  return {
    // should be 20-70 characters
    title,
    // should be 70-160 characters
    description,
    authors: [
      { name: "nixos", url: "https://nixos.org/" },
      { name: "nixpkgs", url: "https://github.com/NixOS/nixpkgs" },
      { name: "nix", url: "https://github.com/NixOS/nix" },
    ],
    abstract: item?.content?.content,
    keywords: [...keywords, ...alias_keywords],
  };
}

// Multiple versions of this page will be statically generated
// using the `params` returned by `generateStaticParams`
export default async function Page(props: { params: { path: string[] } }) {
  const { params } = props;
  const item: Doc | undefined = data.find(
    (item) => item.meta.path.join(".") === params.path.join(".")
  );
  const mdxSource = item?.content?.content || "";
  const meta = item?.meta;

  const signature = meta?.signature || (item && findType(item)) || "";
  const { args: argTypes, returns: retTypes } = interpretType(
    meta?.path[meta?.path?.length - 1],
    signature
  );

  // Some builtins can load external documentation from the official manual
  // This is configured via "salt" module
  const externManualSrc = item && (await getManualSrc(item));

  const source = mdxSource;
  // Skip generating this builtin.
  // It is internal information of noogle.
  if (meta?.title === "builtins.lambdaMeta") {
    return undefined;
  }

  return (
    <>
      <Toc mdxSource={source + externManualSrc} title={item?.meta.title} />
      <Box
        component="main"
        data-pagefind-body
        sx={{
          maxWidth: "100vw",
          minHeight: "calc(100vh - 3.7rem)",
          overflow: "hidden",
          gridColumnStart: 2,
          p: { xs: 1, md: 2 },
          bgcolor: "background.paper",
        }}
      >
        <HighlightBaseline />
        {meta?.path &&
          meta.path.map((attr, idx, all) =>
            idx === all.length - 1 ? (
              <React.Fragment key={idx}>
                <meta data-pagefind-meta={`name:${attr}`} />
                <Box component="h2" sx={{ display: "none" }}>
                  {attr}
                </Box>
              </React.Fragment>
            ) : (
              <meta key={idx} data-pagefind-meta={`category:${attr}`} />
            )
          )}
        <Box>
          <Box
            sx={{
              display: "flex",
              alignItems: "center",
              wordBreak: "break-word",
              flexWrap: "wrap",
            }}
          >
            <Suspense fallback={""}>
              <FilterProvider>
                <BackButton />
              </FilterProvider>
            </Suspense>
            <Typography
              id={item?.meta.title}
              variant="h2"
              component={"h1"}
              sx={{
                marginRight: "auto",
              }}
            >
              {item?.meta.title}
            </Typography>
            {meta?.is_primop && meta.count_applied == 0 && (
              <>
                <Chip
                  label="Primop"
                  color="primary"
                  sx={{ ml: "auto", maxWidth: "10rem" }}
                />
                {meta?.primop_meta?.experimental && (
                  <Chip
                    label={"Experimental"}
                    color="warning"
                    sx={{ ml: "auto", maxWidth: "10rem" }}
                  />
                )}
              </>
            )}
            {meta?.is_functor && (
              <Chip
                label={"Functor"}
                color="warning"
                sx={{ ml: "auto", maxWidth: "10rem" }}
              />
            )}
            <ShareButton />
          </Box>
          <Divider flexItem sx={{ mt: 2 }} />

          <Box sx={{ display: "block" }}>
            {argTypes.map((t, i) => (
              <meta key={i} data-pagefind-filter={`from:${t}`} />
            ))}
            {retTypes.map((t, i) => (
              <meta key={i} data-pagefind-filter={`to:${t}`} />
            ))}
          </Box>

          {!source && (
            <Box data-pagefind-ignore="all">
              <Typography
                variant="body1"
                sx={{ color: "text.secondary", py: 2 }}
              >
                No reference documentation found yet.
              </Typography>

              {externManualSrc && (
                <>
                  <Typography
                    variant="h5"
                    component={"div"}
                    sx={{ color: "text.secondary", py: 2, textAlign: "center" }}
                  >
                    Noogle found this in the nix manual
                  </Typography>
                  <Box sx={{ fontStyle: "italic", p: 1 }}>
                    <MDX source={externManualSrc} />
                  </Box>
                  <Divider />
                </>
              )}

              <Typography
                variant="body1"
                sx={{ color: "text.secondary", py: 2 }}
              >
                Contribute now!
              </Typography>
            </Box>
          )}
          {meta?.primop_meta && (
            <MDX source={getPrimopDescription(meta?.primop_meta)} />
          )}
          <Divider />
          <MDX source={source} />
          {meta && <PositionLink meta={meta} content={item?.content} />}
          <div data-pagefind-ignore="all">
            {(!!meta?.aliases?.length ||
              (!!signature && !meta?.signature) ||
              meta?.is_functor) && (
              <>
                <Divider flexItem />
                <Typography
                  variant="subtitle1"
                  component={"h4"}
                  sx={{
                    color: "text.secondary",
                    alignSelf: "center",
                    pb: 2,
                    textAlign: "center",
                  }}
                >
                  Noogle also knows
                </Typography>
              </>
            )}
            {meta?.is_functor && (
              <>
                <Typography variant="h5" component={"div"}>
                  This is a Functor
                </Typography>
                <br />
                <Link rel="canonical" href="/md/tutorials/functors">
                  Learn about functors
                </Link>
              </>
            )}
            {!!meta?.aliases?.length && (
              <>
                <Typography
                  variant="h5"
                  component={"h5"}
                  sx={{ color: "text.secondary" }}
                >
                  Aliases
                </Typography>
                <ul>
                  {meta?.aliases?.map((a) => (
                    <li key={a.join(".")}>
                      <Link rel="canonical" href={`/f/${a.join("/")}`}>
                        {a.join(".")}
                      </Link>
                    </li>
                  ))}
                </ul>
              </>
            )}
            {!!signature && !meta?.signature && (
              <>
                <Typography
                  variant="h5"
                  component={"div"}
                  sx={{ color: "text.secondary" }}
                >
                  Detected Type
                </Typography>
                <MDX source={`\`\`\`haskell\n${signature.trim()}\n\`\`\`\n`} />
              </>
            )}
          </div>
        </Box>
        <Divider flexItem sx={{ mt: 2 }} />
        <Suspense fallback={<div></div>}>
          <FilterProvider>
            <SearchNav />
          </FilterProvider>
        </Suspense>
      </Box>
    </>
  );
}
