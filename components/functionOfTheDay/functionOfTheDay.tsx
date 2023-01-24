import {
  Button,
  Card,
  CardActions,
  CardContent,
  CardHeader,
  Divider,
  IconButton,
  useTheme,
} from "@mui/material";

import { useMemo, useState } from "react";
import seedrandom from "seedrandom";
import { Preview } from "../preview/preview";
import ClearIcon from "@mui/icons-material/Clear";
import { DocItem, MetaData } from "../../models/nix";

const date = new Date();

const dayOfYear = (date: Date) => {
  const diff = Number(date) - Number(new Date(date.getFullYear(), 0, 0));
  return Math.floor(diff / 1000 / 60 / 60 / 24);
};

const seed = dayOfYear(date).toString() + date.getFullYear().toString();
const rng = seedrandom(seed);

function getRandomIntInclusive(
  min: number,
  max: number,
  generator: () => number
) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(generator() * (max - min + 1) + min); // The maximum is inclusive and the minimum is inclusive
}

interface FunctionOfTheDayProps {
  handleClose: () => void;
  data: MetaData;
}
export const FunctionOfTheDay = (props: FunctionOfTheDayProps) => {
  const { handleClose, data } = props;
  const {
    palette: { info, error },
  } = useTheme();
  const todaysIdx = useMemo(
    () => getRandomIntInclusive(0, data.length - 1, rng),
    [data.length]
  );
  const [idx, setIdx] = useState<number>(todaysIdx);
  const selectedFunction = useMemo(() => data.at(idx) as DocItem, [idx, data]);

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
    setIdx(getRandomIntInclusive(0, data.length - 1, Math.random));
  };
  const setFunctionOfTheDay = () => {
    setIdx(todaysIdx);
  };

  return (
    <>
      <Card
        elevation={0}
        sx={{
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
          title={
            idx === todaysIdx
              ? "Function of the day"
              : "Did you know the function?"
          }
          action={
            <IconButton onClick={() => handleClose()}>
              <ClearIcon fontSize="large" />
            </IconButton>
          }
        />
        <CardContent>
          <Preview docItem={selectedFunction} closeComponent={<></>} />
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
    </>
  );
};
