"use client";
import {
  Button,
  Card,
  CardActions,
  CardContent,
  CardHeader,
  Divider,
  styled,
} from "@mui/material";
import { useMemo, useState } from "react";
import seedrandom from "seedrandom";
import { Preview } from "../preview/preview";
import { Doc, data as raw } from "@/models/data";

// Show only functions with content.
const data = raw;
const emptyIdxs = raw
  .map((d, idx) => (d.content?.content ? false : idx))
  .filter(Boolean);

const date = new Date();

const dayOfYear = (date: Date) => {
  const diff = Number(date) - Number(new Date(date.getFullYear(), 0, 0));
  return Math.floor(diff / 1000 / 60 / 60 / 24);
};

const seed = dayOfYear(date).toString() + date.getFullYear().toString();
const rng = seedrandom(seed);
const FOTD_RND = rng();

type Config = {
  init?: number;
};
function getRandomIntInclusive(min: number, max: number, config?: Config) {
  min = Math.ceil(min);
  max = Math.floor(max);
  const randomNumber = config?.init || FOTD_RND;
  return Math.floor(randomNumber * (max - min + 1) + min); // The maximum is inclusive and the minimum is inclusive
}

const FunctionCard = styled(
  Card,
  {}
)(({ theme }) => ({
  width: "100%",
  borderImageSlice: 1,
  borderImageSource: `linear-gradient(to left, ${theme.vars.palette.info.light},${theme.vars.palette.error.main})`,
  // : `linear-gradient(to left, ${info.light},${info.dark})`,
  borderWidth: 4,
  borderStyle: "solid",
}));

export const FunctionOfTheDay = () => {
  // const { mode } = useColorScheme();

  const todaysIdx = useMemo(
    () => getRandomIntInclusive(0, data.length - 1),
    []
  );
  const [idx, setIdx] = useState<number>(todaysIdx);
  const selectedFunction = useMemo(() => data.at(idx) as Doc, [idx]);

  const setNext = () => {
    setIdx((curr) => {
      if (curr >= data.length - 1) {
        return data.length - 1;
      }
      return curr + 1;
    });
  };
  const setPrev = () => {
    setIdx((curr) => {
      if (curr <= 0) {
        return 0;
      }
      return curr - 1;
    });
  };

  const setRandom = () => {
    const random = getRandomIntInclusive(0, emptyIdxs.length - 1, {
      init: Math.random(),
    });

    setIdx(emptyIdxs[random]);
  };
  const setFunctionOfTheDay = () => {
    setIdx(todaysIdx);
  };

  return (
    <FunctionCard sx={{ my: 5 }}>
      <CardHeader
        component="h2"
        sx={{ py: 0 }}
        title={
          idx === todaysIdx
            ? "Function of the day"
            : "Did you know the function?"
        }
      />
      <CardContent>
        <Preview docItem={selectedFunction} />
      </CardContent>
      <CardActions
        sx={{
          display: "flex",
          justifyContent: "space-evenly",
        }}
      >
        <Button
          onClick={() => setPrev()}
          disabled={idx === 0}
          sx={{ width: "100%" }}
        >
          Prev
        </Button>
        <Divider flexItem orientation="vertical" />
        <Button sx={{ width: "100%" }} onClick={() => setRandom()}>
          Random Undocumented
        </Button>
        <Button sx={{ width: "100%" }} onClick={() => setFunctionOfTheDay()}>
          Todays function
        </Button>
        <Divider flexItem orientation="vertical" />
        <Button
          sx={{ width: "100%" }}
          onClick={() => setNext()}
          disabled={idx === data.length - 1}
        >
          Next
        </Button>
      </CardActions>
    </FunctionCard>
  );
};
