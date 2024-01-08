import { HighlightBaseline } from "@/components/HighlightBaseline";
import { ShareButton } from "@/components/ShareButton";
import { BackButton } from "@/components/BackButton";
import { Doc, data, manualLinks } from "@/models/data";
import { getPrimopDescription } from "@/models/primop";
import { extractHeadings, mdxRenderOptions } from "@/utils";
import { Box, Divider, Typography, Link, Chip } from "@mui/material";
import { MDXRemote } from "next-mdx-remote/rsc";
import { findType, interpretType } from "@/models/nix";
import { FilterProvider } from "@/components/layout/filterContext";
import React, { Suspense } from "react";
import { PositionLink } from "@/components/PositionLink";
import { SearchNav } from "@/components/SearchNav";

import fs from "fs";
import path from "path";

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
      <Typography variant="subtitle1">On this page</Typography>
      <Box sx={{ display: "flex", flexDirection: "column" }}>
        {title && (
          <Link href={`#${title}`}>
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
          <Link key={idx} href={`#${h.id}`}>
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

// TODO: figure out why this causes hydration errors
const MDX = ({ source }: { source: string }) => (
  <MDXRemote
    options={{
      parseFrontmatter: true,
      mdxOptions: mdxRenderOptions,
    }}
    source={source}
    components={{
      a: (p) => (
        // @ts-ignore
        <Box
          sx={{
            color: "inherit",
            textDecoration: "none",
            ":before": {
              content: "''",
              display: "block",
              height: "75px",
              visibility: "hidden",
              marginTop: "-75px",
            },
          }}
          component="a"
          {...p}
        />
      ),
      // @ts-ignore
      h1: (p) => (
        // @ts-ignore
        <Typography variant="h3" component={"h2"} {...p} />
      ),
      // @ts-ignore
      h2: (p) => <Typography variant="h4" component={"h3"} {...p} />,
      // @ts-ignore
      h3: (p) => <Typography variant="h5" component={"h4"} {...p} />,
      // @ts-ignore
      h4: (p) => <Typography variant="h6" component={"h5"} {...p} />,
      // @ts-ignore
      h5: (p) => (
        // @ts-ignore
        <Typography variant="subtitle1" component={"h6"} {...p} />
      ),
      // @ts-ignore
      h6: (p) => (
        // @ts-ignore
        <Typography variant="subtitle2" component={"h6"} {...p} />
      ),
    }}
  />
);

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
                <Box component="h3" sx={{ display: "none" }}>
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
                  component={"h3"}
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
                <Link href="/md/tutorials/functors">Learn about functors</Link>
              </>
            )}
            {!!meta?.aliases?.length && (
              <>
                <Typography
                  variant="h5"
                  component={"div"}
                  sx={{ color: "text.secondary" }}
                >
                  Aliases
                </Typography>
                <ul>
                  {meta?.aliases?.map((a) => (
                    <li key={a.join(".")}>
                      <Link href={`/f/${a.join("/")}`}>{a.join(".")}</Link>
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
