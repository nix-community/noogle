"use client";

import { useMemo } from "react";
import { fromUnixTime, formatDistanceToNow, formatISO } from "date-fns";
import { Chip, Link, Tooltip } from "@mui/material";

export const LastUpdatedFromCommit = ({
  lastModified,
  rev,
}: {
  lastModified: number;
  rev: string;
}) => {
  const date = useMemo(() => {
    const date = fromUnixTime(lastModified);
    return {
      repr: formatISO(date, { representation: "date" }),
      distance: formatDistanceToNow(date),
    };
  }, [lastModified]);
  return (
    <Tooltip title={`Upstream commit date: ${date.repr}`}>
      <Chip
        component="div"
        label={
          <span>
            {"Docs pulled from | "}
            <Link
              href={`https://github.com/NixOS/nixpkgs/tree/${rev}`}
              target="_blank"
              rel="noopener noreferrer"
              color="inherit"
            >
              This Revision
            </Link>
            {" | " + date.distance + " ago"}
          </span>
        }
        variant="outlined"
        color="primary"
        size="small"
      />
    </Tooltip>
  );
};
