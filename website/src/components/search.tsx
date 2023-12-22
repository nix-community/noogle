"use client";
import React, { useState } from "react";

export default function SearchPage() {
  const [query, setQuery] = React.useState("");
  const [results, setResults] = React.useState([]);

  React.useEffect(() => {
    async function loadPagefind() {
      // @ts-ignore
      if (typeof window.pagefind === "undefined") {
        try {
          // @ts-ignore
          window.pagefind = await import(
            // @ts-expect-error pagefind.js generated after build
            /* webpackIgnore: true */ "/pagefind/pagefind.js"
          );
          // @ts-ignore
          console.log("setup:", window?.pagefind);
        } catch (e) {
          // @ts-ignore
          window.pagefind = { search: () => ({ results: [] }) };
        }
      }
    }
    loadPagefind();
  }, []);

  async function handleSearch() {
    // @ts-ignore
    console.log("searching", window?.pagefind);
    // @ts-ignore
    if (window.pagefind) {
      // @ts-ignore
      const search = await window.pagefind.search(query);
      setResults(search.results);
    }
  }

  return (
    <div>
      <input
        type="text"
        placeholder="Search..."
        value={query}
        onChange={(e) => setQuery(e.target.value)}
        onInput={handleSearch}
      />
      <div id="results">
        {results.map((result, index) => (
          // @ts-ignore
          <Result key={result.id} result={result} />
        ))}
      </div>
    </div>
  );
}

function Result({ result }: any) {
  const [data, setData] = useState(null);

  React.useEffect(() => {
    async function fetchData() {
      const data = await result.data();
      setData(data);
    }
    fetchData();
  }, [result]);

  if (!data) return null;

  // @ts-ignore
  return <div>{`${data.url}`}</div>;
}
