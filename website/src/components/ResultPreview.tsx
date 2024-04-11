import {
  Avatar,
  Badge,
  Box,
  Chip,
  Link,
  ListItem,
  ListItemAvatar,
  ListItemText,
} from "@mui/material";
import { PagefindResult } from "./Pagefind";
import { NixLambda, NixBuiltin } from "./Lambda";
import { data } from "@/models/data";
import { findType } from "@/models/nix";

import DataObjectIcon from "@mui/icons-material/DataObject";

interface ResultPreviewProps {
  result: PagefindResult;
}
export const ResultPreview = (props: ResultPreviewProps) => {
  const { result } = props;
  const { meta, excerpt, url } = result;

  const item = data.find((d) => d.meta.title === meta.title);
  const signature = item?.meta?.signature || (item && findType(item)) || "";

  const isFunctor = !!item?.meta?.is_functor;
  const isPrimop = item?.meta?.is_primop;
  const cntAliases = item?.meta?.aliases?.length;
  const category = item?.meta?.path?.[0];

  console.log({ isFunctor, item, signature });

  const icon = isFunctor ? (
    <DataObjectIcon />
  ) : isPrimop ? (
    <NixBuiltin />
  ) : (
    <NixLambda />
  );
  return (
    <>
      <ListItem
        sx={{ px: 1, py: 2, bgcolor: "background.paper", my: 1 }}
        aria-label={`item-${meta.title}`}
      >
        <ListItemAvatar sx={{ color: "primary.light", mr: 1.5 }}>
          <Badge
            badgeContent={category || "N/A"}
            color="primary"
            anchorOrigin={{
              vertical: "bottom",
              horizontal: "right",
            }}
          >
            <Avatar sx={{ bgcolor: "primary.light" }}>{icon}</Avatar>
          </Badge>
        </ListItemAvatar>
        <Box>
          <ListItemText
            primaryTypographyProps={{
              variant: "h5",
              component: "h2",
            }}
            secondaryTypographyProps={{
              variant: "body1",
            }}
            primary={
              <Link rel="canonical" href={`${url}`}>
                {meta.title}
              </Link>
            }
            secondary={signature || "Type signature not available"}
          />
          <ListItemText
            primaryTypographyProps={{
              variant: "body2",
              maxWidth: "40rem",
            }}
            primary={
              <div
                dangerouslySetInnerHTML={{
                  __html: excerpt,
                }}
              />
            }
          />
          <Box sx={{ display: "flex", gap: 2, mt: 1 }}>
            {!!category && (
              <Chip
                size="small"
                variant="outlined"
                color="primary"
                label={`Category: ${category}`}
              />
            )}
            {!!cntAliases && (
              <Chip
                size="small"
                variant="outlined"
                color="secondary"
                label={`Aliases: ${cntAliases}`}
              />
            )}
            {isFunctor && (
              <Chip
                size="small"
                variant="outlined"
                color="warning"
                label="Functor"
              />
            )}
            {isPrimop && (
              <Chip
                size="small"
                variant="outlined"
                color="info"
                label="Primop"
              />
            )}
          </Box>
        </Box>
      </ListItem>
    </>
  );
};
