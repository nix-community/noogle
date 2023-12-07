// import { DocsFrontmatter, getMdxMeta } from "@/components/ListGroup";
import {
  docsDir,
  extractHeadings,
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
        order: 2,
        width: "19rem",
        py: 4,
        px: 2,
      }}
      component={"aside"}
    >
      <Box
        sx={{
          position: "fixed",
          top: 0,
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
  return (
    <>
      <Box sx={{ display: "flex" }}>
        <Toc mdxSource={mdxSource} />
        <Box sx={{ order: 1, width: "60rem", marginInline: "auto", py: 2 }}>
          <MDXRemote
            options={{
              parseFrontmatter: true,
              mdxOptions: mdxRenderOptions,
            }}
            source={mdxSource}
          />
          <Button sx={{ textTransform: "none", my: 4 }} startIcon={<Edit />}>
            Edit source
          </Button>
        </Box>
      </Box>
    </>
  );
}
