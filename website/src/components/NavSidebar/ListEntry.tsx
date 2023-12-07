"use client";
import { ListItemButton } from "@mui/material";
import { usePathname } from "next/navigation";

interface ListIndicatorProps {
  currentPath: string;
  children: React.ReactNode;
}
export const ListEntry = (props: ListIndicatorProps) => {
  const { currentPath, children } = props;
  const pathname = usePathname();
  const selected = pathname === currentPath;
  return (
    <ListItemButton disableGutters selected={selected}>
      {children}
    </ListItemButton>
  );
};
