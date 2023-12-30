"use client";
import { ChevronLeft } from "@mui/icons-material";
import { IconButton } from "@mui/material";
import { useSessionStorage } from "usehooks-ts";
import { FilterOptions, useFilter } from "./layout/filterContext";
import { useRouter } from "next/navigation";

export const BackButton = () => {
  const [currentFilterOptions] = useSessionStorage<FilterOptions | null>(
    "currentFilterOptions",
    null
  );
  const router = useRouter();
  const { submit } = useFilter();

  const handleBack = () => {
    if (currentFilterOptions !== null) {
      submit(currentFilterOptions);
    } else {
      router.push("/");
    }
  };
  return (
    <IconButton onClick={() => handleBack()} aria-label="Back">
      <ChevronLeft />
    </IconButton>
  );
};
