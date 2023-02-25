import libData from "./data/lib.json";
import trivialBuilders from "./data/trivial-builders.json";
import builtins from "./data/builtins.json";

it("has not changed lib data", () => {
  expect(libData).toMatchSnapshot();
});
it("has not changed trivial-builders data", () => {
  expect(trivialBuilders).toMatchSnapshot();
});
it("has not changed builtins data", () => {
  expect(builtins).toMatchSnapshot();
});
