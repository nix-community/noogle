"use client";

import { useMemo } from "react";
import { fromUnixTime, formatDistanceToNow, formatISO } from "date-fns";
import { Chip, Link, Tooltip } from "@mui/material";

interface LastUpdatedFromCommitProps {
  lastModified: number;
  rev: string;
  type: "nix" | "nixpkgs";
}
export const LastUpdatedFromCommit = ({
  lastModified,
  rev,
  type,
}: LastUpdatedFromCommitProps) => {
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
              href={
                type === "nixpkgs"
                  ? `https://github.com/NixOS/nixpkgs/tree/${rev}`
                  : `https://github.com/NixOS/nix/tree/${rev}`
              }
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
