import { NavSidebar } from "@/components/NavSidebar";
import { Box } from "@mui/material";

export default async function Page({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div>
      <aside
        style={{
          position: "fixed",
          height: "100vh",
          overflowY: "scroll",
          overflowX: "hidden",
          left: 0,
          width: "19rem",
        }}
      >
        <NavSidebar />
      </aside>
      <Box
        sx={{
          ml: "25em",
          px: 2,
          py: 4,
          w: "100%",
          bgcolor: "background.paper",
        }}
      >
        {children}
      </Box>
    </div>
  );
}
