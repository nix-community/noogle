import {
  Avatar,
  Badge,
  Box,
  Chip,
  Link,
  ListItem,
  ListItemAvatar,
  ListItemText,
  Tooltip,
} from "@mui/material";
import { PagefindResult } from "./Pagefind";
import { Lambda, Nix } from "./Lambda";
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

  const icon = isFunctor ? <DataObjectIcon /> : isPrimop ? <Lambda /> : <Nix />;
  return (
    <>
      <ListItem
        sx={{ px: 1, py: 2, bgcolor: "background.paper", my: 1 }}
        aria-label={`item-${meta.title}`}
      >
        <ListItemAvatar sx={{ color: "primary.light", mr: 1.5 }}>
          <Tooltip
            title={
              isFunctor
                ? "This function is implemented using a functor. Functors are polymorphic data structures that act both as attribute sets and functions."
                : isPrimop
                ? "This function is directly implemented using a builtins function."
                : `This function is defined in ${category}.`
            }
          >
            <Badge
              badgeContent={isPrimop ? "builtin" : category || "N/A"}
              color="primary"
              anchorOrigin={{
                vertical: "bottom",
                horizontal: "right",
              }}
            >
              <Avatar sx={{ bgcolor: "primary.light" }}>{icon}</Avatar>
            </Badge>
          </Tooltip>
        </ListItemAvatar>
        <Box>
          <ListItemText
            primaryTypographyProps={{
              variant: "h5",
              component: "h2",
            }}
            secondaryTypographyProps={{
              variant: "body1",
              color: "text.primary",
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
              <Tooltip title="This function has aliases, which are alternative names for the same function, either shorter or longer.">
                <Chip
                  size="small"
                  variant="outlined"
                  color="primary"
                  label={`Aliases: ${cntAliases}`}
                />
              </Tooltip>
            )}
            {isFunctor && (
              <Tooltip title="This function is implemented using a functor. In Nix, functors are polymorphic data structures that can act both as attribute sets and functions.">
                <Chip
                  size="small"
                  variant="outlined"
                  color="warning"
                  label="Functor"
                />
              </Tooltip>
            )}
            {isPrimop && (
              <Tooltip title="This function is directly implemented using a builtins function. Builtins functions are predefined by Nix and provide its core functionality.">
                <Chip
                  size="small"
                  variant="outlined"
                  color="warning"
                  label="builtin"
                />
              </Tooltip>
            )}
          </Box>
        </Box>
      </ListItem>
    </>
  );
};
