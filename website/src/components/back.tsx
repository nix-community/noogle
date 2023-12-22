"use client";
import { ChevronLeft } from "@mui/icons-material";
import { IconButton } from "@mui/material";
import { useRouter } from "next/navigation";

export const BackButton = () => {
  const router = useRouter();
  return (
    <IconButton onClick={() => router.back()}>
      <ChevronLeft />
    </IconButton>
  );
};
