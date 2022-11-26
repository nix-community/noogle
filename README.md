# Static page with nextjs example

- Generates a static page
- Includes custom Image loader for static page generation

## Build

> ### ! The build step is completly independent of develop step and can be run right after checkout

`nix build .#`

This should create to following result:

- static/
  - __index.html__
  - favicon.ico
  - 404.html
  - vercel-svg
  - _next/
    - static/...
    - ...

## Develop

`nix develop`

This command creates the node_modules folder with all needed dependencies
