import "@testing-library/jest-dom";
import * as React from "react";
import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import { SearchInput } from "./";

describe("render search", () => {
  const mockedSearch = jest.fn();
  mockedSearch.mockImplementation((term: string) => {
    return term;
  });
  const mockedClear = jest.fn();
  mockedClear.mockImplementation(() => {
    return undefined;
  });
  beforeEach(() => {
    render(
      <SearchInput
        handleSearch={mockedSearch}
        clearSearch={mockedClear}
        placeholder={"Search"}
      />
    );
  });

  test("renders all elements from the searchbar", async () => {
    const inputBar = screen.getByRole("textbox");
    const clearButton = screen.getByRole("button", { name: "clear-button" });
    const searchButton = screen.getByRole("button", { name: "search-button" });
    expect(inputBar).toBeVisible();
    expect(searchButton).toBeVisible();
    expect(clearButton).toBeVisible();
    const term = "search for term";
    await userEvent.type(inputBar, term);
    await userEvent.click(searchButton);
    expect(mockedSearch).toBeCalledWith(term);
  });

  test("search for a term", async () => {
    const inputBar = screen.getByRole("textbox");
    const searchButton = screen.getByRole("button", { name: "search-button" });
    const term = "search for term";
    await userEvent.type(inputBar, term);
    await userEvent.click(searchButton);
    expect(mockedSearch).toBeCalledWith(term);
  });

  test("clearing search", async () => {
    const inputBar = screen.getByRole("textbox");
    const clearButton = screen.getByRole("button", { name: "clear-button" });
    const term = "search for term";
    await userEvent.type(inputBar, term);
    await userEvent.click(clearButton);
    expect(mockedClear).toBeCalled();
  });
});
