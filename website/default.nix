{ pkgs, hooks, nodejs }:

pkgs.buildNpmPackage {
  pname = "noogle";
  version = "0.1.0";
  src = ./.;

  inherit nodejs;

  npmDeps = pkgs.importNpmLock {
    npmRoot = ./.;
  };

  preConfigure = hooks.prepare;

  postBuild = ''
    npx next-sitemap
    npx pagefind --site ./out
  '';

  npmConfigHook = pkgs.importNpmLock.npmConfigHook;
}
