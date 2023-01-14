import { IconButton, Paper, Tooltip } from "@mui/material";
import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import { Preview } from "../components/preview/preview";
import { data } from "../models/data";
import { DocItem } from "../models/nix";
import ArrowBackIosIcon from "@mui/icons-material/ArrowBackIos";

const getKey = (item: DocItem) => `${item.category}/${item.name}`;

export default function PreviewPage() {
  const router = useRouter();
  const [item, setItem] = useState<DocItem | null>(null);
  useEffect(() => {
    const { query } = router;
    if (query?.fn) {
      if (typeof query.fn === "string") {
        const name = query.fn;
        setItem(data.find((d) => getKey(d) === name) || null);
      }
    }
  }, [router]);
  return (
    item && (
      <>
        <Paper sx={{ py: 4 }} elevation={0}>
          <Tooltip title="back to list">
            <IconButton
              sx={{
                mx: 3,
              }}
              size="small"
              onClick={() => router.push("/")}
            >
              <ArrowBackIosIcon fontSize="large" />
            </IconButton>
          </Tooltip>
          <Preview docItem={item} closeComponent={<span></span>} />
        </Paper>
      </>
    )
  );
}
