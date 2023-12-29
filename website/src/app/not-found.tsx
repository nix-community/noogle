import { Filter } from "@/components/filter";
import { FilterProvider } from "@/components/layout/filterContext";
import { SearchInput } from "@/components/searchInput";
import { Box, Chip, Container, Typography } from "@mui/material";

import localFont from "next/font/local";
import { Suspense } from "react";

const fira = localFont({
  src: "../fonts/FiraCode-VF.ttf",
  display: "swap",
});

export default function NotFoundPage() {
  return (
    <Box
      data-pagefind-ignore="all"
      className={fira.className}
      sx={{
        width: "100vw",
        height: "100vh",
        display: "flex",
        justifyContent: "center",
        flexDirection: "column",
        alignItems: "center",
        overflowY: "scroll",
      }}
    >
      <Typography component="h2" variant="h3" sx={{ my: 2 }}>
        404, Lost in the Lambdasphere!
      </Typography>
      <Typography variant="body1">
        {`Lost in a parallel lambda-less universe!`}
      </Typography>
      <Typography variant="body1">
        {`In this bizarre parallel universe, lambdas are as elusive as a cat on a keyboard`}
      </Typography>
      <Typography variant="body1">
        {`To return to the lambda universe, type something below — hurry up, before we return Never.`}
      </Typography>
      <Chip
        sx={{ my: 2, p: 1 }}
        color="secondary"
        label={
          <Typography
            component="p"
            variant="h6"
            sx={{
              my: 1,
              color: "secondary.contrastText",
            }}
          >{`Trapped :: Any -> Never`}</Typography>
        }
      />

      <Container fixed sx={{ px: 0, my: 4 }}>
        <Box
          sx={{
            width: "100%",
            overflow: "hidden",
            py: 1,
            px: 2,
            bgcolor: "background.paper",
            borderRadius: 2,
            borderColor: "secondary.main",
            borderWidth: 1,
            borderStyle: "solid",
          }}
        >
          <Suspense fallback="search input ">
            <FilterProvider>
              <SearchInput placeholder="Type here to bend time and space..." />
              <Filter disableChevron disableSubmit showDivider />
            </FilterProvider>
          </Suspense>
        </Box>
      </Container>
    </Box>
  );
}
