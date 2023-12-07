import { Group, generateStaticSidebarEntries, set } from "@/utils";
import { Box, List, Paper, Typography } from "@mui/material";
import { ListGroup } from "./ListGroup";

export const NavSidebar = async () => {
  const list = await generateStaticSidebarEntries();
  const grp: Group = list.reduce((acc, item) => {
    set(acc, item.id.join("."), item.id);
    return acc;
  }, {});
  return (
    <Paper sx={{ height: "100%" }}>
      <Box
        sx={{
          display: "flex",
          width: "100%",
          py: 2,
        }}
      >
        <Typography variant="subtitle1" component="h3">
          References
        </Typography>
      </Box>
      <List
        sx={{ width: "100%", bgcolor: "background.paper" }}
        component="nav"
        disablePadding
      >
        <ListGroup grp={grp} position={0} />
      </List>
    </Paper>
  );
};
