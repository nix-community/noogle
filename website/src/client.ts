import seedrandom from "seedrandom";

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
export function pseudoRandomIntInclusive(
  min: number,
  max: number,
  config?: Config
) {
  min = Math.ceil(min);
  max = Math.floor(max);
  const randomNumber = config?.init || FOTD_RND;
  return Math.floor(randomNumber * (max - min + 1) + min); // The maximum is inclusive and the minimum is inclusive
}
