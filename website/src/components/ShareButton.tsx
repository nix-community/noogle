"use client";
import { Share } from "@mui/icons-material";
import { IconButton } from "@mui/material";
import toast from "react-hot-toast";

export const ShareButton = () => {
  const handleShare = () => {
    const handle = window.location.href;
    navigator.clipboard.writeText(handle);
    toast.success("link copied to clipboard");
  };

  return (
    <IconButton onClick={() => handleShare()}>
      <Share />
    </IconButton>
  );
};
