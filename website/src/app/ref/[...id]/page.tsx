import {
  docsDir,
  extractHeadings,
  getMdxMeta,
  getMdxSource,
  mdxRenderOptions,
} from "@/utils";
import { Edit } from "@mui/icons-material";
import { Box, Button, Typography } from "@mui/material";
import fs from "fs";
// import "highlight.js/styles/github-dark-dimmed.css";
import "highlight.js/styles/github-dark.css";
import { MDXRemote } from "next-mdx-remote/rsc";
import Link from "next/link";
import path from "path";

export async function generateStaticParams() {
  const files = fs.readdirSync(docsDir, {
    recursive: true,
    withFileTypes: true,
    encoding: "utf-8",
  });
  const paths: { id: string[] }[] = files
    .filter((f) => !f.isDirectory())
    .map((f) => {
      const dirname = path.relative(docsDir, f.path);
      const filename = path.parse(f.name).name;
      return {
        id: [...dirname.split("/"), filename],
      };
    });
  return paths;
}

interface TocProps {
  mdxSource: Buffer;
}

const Toc = async (props: TocProps) => {
  const { mdxSource } = props;
  const headings = await extractHeadings(mdxSource);

  return (
    <Box
      sx={{
        top: 70,
        right: 0,
        position: "absolute",
        order: 2,
        width: "19rem",
        px: 2,
        mr: 8,
      }}
      component={"aside"}
    >
      <Box
        sx={{
          pt: 4,
          pl: 2,
        }}
      >
        <Typography variant="subtitle1">Table of Contents</Typography>
        <Box sx={{ display: "flex", flexDirection: "column" }}>
          {headings.map((h, idx) => (
            <Link key={idx} href={`#${h.id}`}>
              <Button
                fullWidth
                variant="text"
                sx={{
                  justifyContent: "start",
                  textTransform: "none",
                  color: "text.secondary",
                  pl: (h.level - 1) * 2,
                }}
              >
                {h.value}
              </Button>
            </Link>
          ))}
        </Box>
      </Box>
    </Box>
  );
};

// Multiple versions of this page will be statically generated
// using the `params` returned by `generateStaticParams`
export default async function Page(props: { params: { id: string[] } }) {
  const { mdxSource } = await getMdxSource(props.params.id);
  const meta = await getMdxMeta(props.params.id);
  console.log("matter", meta.compiled.frontmatter);
  const { frontmatter } = meta.compiled;
  return (
    <>
      <Toc mdxSource={mdxSource} />
      <Box sx={{ display: "flex" }}>
        <Box sx={{ order: 1, width: "60rem", marginInline: "auto", py: 2 }}>
          <Typography variant="h2" component={"h1"}>
            {frontmatter.path ? frontmatter.path.join(".") : frontmatter.title}
          </Typography>
          <MDXRemote
            options={{
              parseFrontmatter: true,
              mdxOptions: mdxRenderOptions,
            }}
            source={mdxSource}
            components={{
              h1: (p) => (
                // @ts-ignore
                <Typography variant="h3" component={"h2"} {...p} />
              ),
              h2: (p) => (
                // @ts-ignore
                <Typography variant="h4" component={"h3"} {...p} />
              ),
              h3: (p) => (
                // @ts-ignore
                <Typography variant="h5" component={"h4"} {...p} />
              ),
              h4: (p) => (
                // @ts-ignore
                <Typography variant="h6" component={"h5"} {...p} />
              ),
              h5: (p) => (
                // @ts-ignore
                <Typography variant="subtitle1" component={"h6"} {...p} />
              ),
              h6: (p) => (
                // @ts-ignore
                <Typography variant="subtitle2" component={"h6"} {...p} />
              ),
            }}
          />
          <Button sx={{ textTransform: "none", my: 4 }} startIcon={<Edit />} >
            Edit source {frontmatter.}
          </Button>
        </Box>
      </Box>
    </>
  );
}
