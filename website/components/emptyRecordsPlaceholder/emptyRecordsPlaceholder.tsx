import { Card, CardContent, CardProps, Typography } from "@mui/material";

import InboxIcon from "@mui/icons-material/Inbox";

interface EmptyRecordsPlaceholderProps {
  title: string;
  subtitle?: string;
  icon?: React.ReactNode;
  CardProps?: CardProps;
}

export const EmptyRecordsPlaceholder = (
  props: EmptyRecordsPlaceholderProps
) => {
  const { title, subtitle, icon, CardProps = {} } = props;
  return (
    <Card
      elevation={0}
      sx={{
        pt: 4,
        my: 3,
        width: "100%",
        border: "none",
      }}
      {...CardProps}
    >
      <CardContent
        sx={{
          backgroundColor: "inherit",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          flexDirection: "column",
          height: "100%",
        }}
      >
        <Typography variant="h2" component="div">
          {icon || (
            <InboxIcon fontSize={"inherit"} sx={{ color: "text.secondary" }} />
          )}
        </Typography>

        <Typography
          variant={"subtitle1"}
          color="text.secondary"
          aria-label={"placeholder-title"}
        >
          {title}
        </Typography>

        <Typography
          variant={"subtitle2"}
          color="text.secondary"
          aria-label={"placeholder-subtitle"}
        >
          {subtitle}
        </Typography>
      </CardContent>
    </Card>
  );
};
