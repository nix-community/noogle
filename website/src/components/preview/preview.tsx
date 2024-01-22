import { Doc } from "@/models/data";
import {
  Box,
  Link,
  List,
  ListItem,
  ListItemText,
  Typography,
} from "@mui/material";
import React from "react";
import { MarkdownPreview } from "../markdownPreview";
import { getPrimopDescription } from "@/models/primop";

interface PreviewProps {
  docItem: Doc;
}

export const Preview = (props: PreviewProps) => {
  const { docItem } = props;
  const { content, meta } = docItem;

  return (
    <Box
      sx={{
        p: { xs: 0.5, md: 1 },
        width: "100%",
        overflow: "none",
      }}
    >
      <Box
        sx={{
          display: { md: "flex", xs: "flex" },
          flexDirection: { md: "row", xs: "column-reverse" },
          width: "100%",
        }}
      >
        <Link rel="canonical" href={`/f/${meta.path.join("/")}`}>
          <Typography
            component="h3"
            variant="h4"
            sx={{ wordWrap: "normal", lineBreak: "anywhere" }}
          >
            {`${meta.title}`}
          </Typography>
        </Link>
      </Box>
      <List sx={{ width: "100%" }} disablePadding>
        <ListItem sx={{ flexDirection: { xs: "column", sm: "row" }, px: 0 }}>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
              alignSelf: "flex-start",
              width: "100%",
              px: 0,
            }}
            primary={
              <Box
                component={"div"}
                sx={{
                  ml: "0 !important",
                  pl: "0 !important",
                  overflow: "visible",
                  width: "100%",
                }}
              >
                {meta?.is_primop && meta.primop_meta && (
                  <MarkdownPreview
                    description={getPrimopDescription(meta.primop_meta)}
                  />
                )}
                {!!content?.content && (
                  <MarkdownPreview description={content.content} />
                )}
                {!content?.content && (
                  <Typography sx={{ color: "text.secondary" }}>
                    Not documented yet. Contribute now!
                  </Typography>
                )}
              </Box>
            }
          />
        </ListItem>
      </List>
    </Box>
  );
};
