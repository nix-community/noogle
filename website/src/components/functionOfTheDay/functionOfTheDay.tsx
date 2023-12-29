"use client";
import {
  Button,
  Card,
  CardActions,
  CardContent,
  CardHeader,
  Divider,
  useTheme,
} from "@mui/material";
import { useMemo, useState } from "react";
import seedrandom from "seedrandom";
import { Preview } from "../preview/preview";
import { Doc, data } from "@/models/data";

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

export const FunctionOfTheDay = () => {
  const {
    palette: { info, error },
  } = useTheme();

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
    setIdx(getRandomIntInclusive(0, data.length - 1, { init: Math.random() }));
  };
  const setFunctionOfTheDay = () => {
    setIdx(todaysIdx);
  };

  return (
    <Card
      elevation={0}
      sx={{
        width: "100%",
        my: 5,
        borderImageSlice: 1,
        borderImageSource:
          idx === todaysIdx
            ? `linear-gradient(to left, ${info.light},${error.main})`
            : `linear-gradient(to left, ${info.light},${info.dark})`,
        borderWidth: 4,
        borderStyle: "solid",
      }}
    >
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
          Random
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
    </Card>
  );
};
