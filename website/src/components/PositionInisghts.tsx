"use client";

import { DocMeta } from "@/models/data";
import { Box, Button, Collapse, Typography } from "@mui/material";
import { useState } from "react";
import CodeIcon from "@mui/icons-material/Code";

export const PositionInsights = ({ meta }: { meta: DocMeta }) => {
  // const { attr_position, lambda_position, count_applied, content_meta } = meta;

  const [open, setOpen] = useState(true);
  // const is_inherited =
  //   JSON.stringify(content_meta?.path) !== JSON.stringify(meta.path);

  return (
    <>
      <Box sx={{ width: "100%", display: "flex" }}>
        <Button
          onClick={() => setOpen((s) => !s)}
          sx={{ ml: "auto" }}
          startIcon={<CodeIcon />}
        >
          Position Infos
        </Button>
      </Box>
      <Collapse in={open}>
        <Typography>is_inherited</Typography>
      </Collapse>
    </>
  );
};
