import "@testing-library/jest-dom";
// TODO: important mock zustand!
// State from previous tests leaking into other test cases because zustand is never reset in its own

import * as React from "react";
import { render, screen, act } from "@testing-library/react";
import mockAxios from "jest-mock-axios";
import userEvent from "@testing-library/user-event";

import { ImageList } from "./";
import { QueryClient, QueryClientProvider } from "react-query";
import { SnackbarProvider } from "notistack";

const queryClient = new QueryClient();

const Wrapper = (element: React.ReactNode) => (
  <QueryClientProvider client={queryClient}>
    <SnackbarProvider>{element}</SnackbarProvider>
  </QueryClientProvider>
);

const getImagesResp = [
  {
    filename: "testfile.iso",
    hash: "3993d64556f3ae803986f6d1c2debaa8f5a2a77da70cc35f86af6f99c849fe80",
    modify_time: "2022-07-28T07:45:32.331998395Z",
    size_bytes: 513,
  },
  {
    filename: "full.img",
    hash: "85c6a11c928611caff965aa2fc267b51ad3fc06657d0ee67ae00fec1711e81ef",
    modify_time: "2022-07-29T07:33:20.075281078Z",
    size_bytes: 1024 * 1024 * 1024,
  },
  {
    filename: "small.img",
    hash: "e8edbf1bb6121a38e8ee3a60e34a31887955bc9a292e9ef3bd598e8ccb7fef5a",
    modify_time: "2022-07-29T07:34:10.442184606Z",
    size_bytes: 1,
  },
];

describe("render imageList", () => {
  afterEach(() => {
    mockAxios.reset();
    jest.clearAllMocks();
  });

  beforeEach(async () => {
    await act(async () => {
      mockAxios.get.mockResolvedValue({ data: getImagesResp });
      render(Wrapper(<ImageList />), {});
    });
  });

  test("list is shown & has proper length", async () => {
    const list = await screen.getByRole("list", { name: "image-list" });
    const listItems = await screen.getAllByRole("listitem", {
      name: "image-entry-item",
    });
    expect(list).toBeVisible();
    expect(listItems).toHaveLength(getImagesResp.length);
    expect(mockAxios.get).toBeCalledTimes(1);
  });

  test("search: a term", async () => {
    const searchInput = await screen.getByRole("textbox", {
      name: "search-input",
    });
    const searchButton = await screen.getByRole("button", {
      name: "search-button",
    });
    await userEvent.type(searchInput, ".img");
    await userEvent.click(searchButton);

    /* 
      search for filename with ".img" in it
       -> should yield:
       [ "full.img", "small.img" ]
    */
    const listItems = await screen.getAllByRole("listitem", {
      name: "image-entry-item",
    });
    expect(listItems).toHaveLength(2);
    expect(listItems[0]).toHaveTextContent("full.img");
    expect(listItems[1]).toHaveTextContent("small.img");
  });

  test("delete an image", async () => {
    const deleteButtons = await screen.getAllByRole("button", {
      name: "delete-image",
    });

    const firstDeleteButton = deleteButtons?.[0];

    expect(firstDeleteButton).toBeEnabled();

    await userEvent.click(firstDeleteButton);

    //TODO: dont have delete functionality yet
    // expect(mockedDeleteFn).toBeCalled();
  });
});
