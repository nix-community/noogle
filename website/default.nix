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

  npmConfigHook = pkgs.importNpmLock.npmConfigHook;
}
