import { HighlightBaseline } from "@/components/HighlightBaseline";
import { ShareButton } from "@/components/ShareButton";
import { BackButton } from "@/components/BackButton";
import { Doc, FilePosition, data } from "@/models/data";
import { getPrimopDescription } from "@/models/primop";
import { extractHeadings, mdxRenderOptions } from "@/utils";
import { Edit } from "@mui/icons-material";
import { Box, Button, Divider, Typography, Link, Chip } from "@mui/material";
import { MDXRemote } from "next-mdx-remote/rsc";
import { findType, interpretType } from "@/models/nix";
import LinkIcon from "@mui/icons-material/Link";
import { FilterProvider } from "@/components/layout/filterContext";
import { Suspense } from "react";

// Important the key ("path") in the returned dict MUST match the dynamic path segment ([...path])
export async function generateStaticParams(): Promise<{ path: string[] }[]> {
  const paths = data.map((docItem) => {
    return {
      path: docItem.meta.path.map((s) => s),
    };
  });
  return paths;
}

const getSourcePosition = (baseUrl: string, position: FilePosition): string => {
  const filename = position?.file.split("/").slice(4).join("/");
  const line = position?.line;
  const column = position?.column;
  let res = `${baseUrl}`;
  if (filename && line && column) {
    res += `/${filename}#L${line}:C${column}`;
  }
  return res;
};

interface TocProps {
  mdxSource: string;
}

const Toc = async (props: TocProps) => {
  const { mdxSource } = props;
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
        p: 1,
        order: 3,
        whiteSpace: "nowrap",
      }}
    >
      <Typography variant="subtitle1">On this page</Typography>
      <Box sx={{ display: "flex", flexDirection: "column" }}>
        {headings.map((h, idx) => (
          <Link key={idx} href={`#${h.id}`}>
            <Typography
              variant="body2"
              sx={{
                justifyContent: "start",
                textTransform: "none",
                color: "text.secondary",
                pl: (h.level - 1) * 2 + 1,
                py: 0.5,
              }}
            >
              {h.value}
            </Typography>
          </Link>
        ))}
      </Box>
    </Box>
  );
};

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

  const position =
    meta?.content_meta?.position ||
    meta?.attr_position ||
    (meta?.count_applied == 0 && meta?.lambda_position);

  const raw_position =
    meta?.content_meta?.position ||
    meta?.attr_position ||
    meta?.lambda_position;

  const source =
    meta?.is_primop && meta?.primop_meta
      ? getPrimopDescription(meta.primop_meta) + mdxSource
      : mdxSource;
  // Skip generating this builtin.
  // It is internal information of noogle.
  if (meta?.title === "builtins.lambdaMeta") {
    return undefined;
  }

  return (
    <>
      <Toc mdxSource={mdxSource} />
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
          meta.path.map((attr, idx) => (
            <Box sx={{ display: "none" }} key={`${idx}`}>
              {attr}
            </Box>
          ))}
        <Box>
          <Box
            sx={{
              display: "flex",
              alignItems: "center",
              wordBreak: "break-word",
              flexWrap: "wrap",
            }}
          >
            <Suspense fallback={<BackButton />}>
              <FilterProvider>
                <BackButton />
              </FilterProvider>
            </Suspense>
            <Typography
              variant="h2"
              component={"h1"}
              sx={{ marginRight: "auto" }}
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
                No documentation found yet.
              </Typography>

              {!position && (
                <div data-pagefind-ignore="all">
                  <Typography variant="h5" sx={{ pt: 2 }}>
                    {"Noogle's tip"}
                  </Typography>
                  <Typography
                    variant="body1"
                    component={"span"}
                    gutterBottom
                    sx={{ py: 2 }}
                  >
                    <div>
                      Position of the source could not be detected
                      automatically.
                    </div>
                    <div>
                      Sometimes the documentation is missing or the extraction
                      of the documentation fails. In these cases, it is
                      advisable to look for the recognized position in the
                      source code
                    </div>
                    {raw_position && (
                      <Link
                        target="_blank"
                        href={getSourcePosition(
                          "https://github.com/hsjobeki/nixpkgs/tree/migrate-doc-comments",
                          raw_position
                        )}
                      >
                        <Button
                          data-pagefind-ignore="all"
                          variant="text"
                          sx={{
                            textTransform: "none",
                            my: 1,
                            placeSelf: "start",
                          }}
                          startIcon={<LinkIcon />}
                        >
                          Original/underlying function
                        </Button>
                      </Link>
                    )}
                    <div>You may find further instructions there</div>
                  </Typography>
                </div>
              )}
              {position && (
                <Link
                  target="_blank"
                  href={getSourcePosition(
                    "https://github.com/hsjobeki/nixpkgs/tree/migrate-doc-comments",
                    position
                  )}
                >
                  <Button
                    data-pagefind-ignore="all"
                    variant="text"
                    sx={{
                      textTransform: "none",
                      my: 1,
                      placeSelf: "start",
                    }}
                    startIcon={<LinkIcon />}
                  >
                    Original/underlying function
                  </Button>
                </Link>
              )}
            </Box>
          )}
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
          {position && (
            <div data-pagefind-ignore="all">
              {!source && (
                <Typography
                  variant="body1"
                  sx={{ color: "text.secondary", py: 2 }}
                >
                  Contribute now!
                </Typography>
              )}
              <Typography variant="subtitle2" sx={{ color: "text.secondary" }}>
                <Link
                  target="_blank"
                  href={getSourcePosition(
                    "https://github.com/hsjobeki/nixpkgs/tree/migrate-doc-comments",
                    position
                  )}
                >
                  <Button
                    variant="text"
                    sx={{ textTransform: "none", my: 1, placeSelf: "start" }}
                    startIcon={<Edit />}
                  >
                    Edit source
                  </Button>
                </Link>
              </Typography>
            </div>
          )}
          <div data-pagefind-ignore="all">
            {(!!meta?.aliases?.length || !!signature) && (
              <>
                <Divider flexItem />
                <Typography
                  variant="subtitle1"
                  component={"h3"}
                  sx={{
                    color: "text.secondary",
                    alignSelf: "center",
                    pb: 2,
                  }}
                >
                  Noogle also knows
                </Typography>
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
                <MDXRemote
                  options={{
                    mdxOptions: mdxRenderOptions,
                  }}
                  source={`\`\`\`haskell\n${signature.trim()}\n\`\`\`\n`}
                />
              </>
            )}
          </div>
        </Box>
        <Divider flexItem sx={{ mt: 2 }} />
      </Box>
    </>
  );
}
