import { Header } from "@/components/layout/header";
import { Container } from "@mui/material";
import { ReactNode } from "react";

export default function SearchLayout({ children }: { children: ReactNode }) {
  return (
    <>
      <Header />
      <Container maxWidth="lg">{children}</Container>
    </>
  );
}
