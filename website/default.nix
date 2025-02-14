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
  '';

  installPhase = ''
    runHook preInstall
    npx pagefind --site ./out
    mv out $out
    runHook postInstall
  '';

  npmConfigHook = pkgs.importNpmLock.npmConfigHook;
}
