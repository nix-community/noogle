{ pkgs
, hooks
, nodejs
,
}:

pkgs.buildNpmPackage {
  pname = "noogle";
  version = "0.1.0";
  src = ./.;

  inherit nodejs;

  npmDeps = pkgs.importNpmLock {
    npmRoot = ./.;
  };

  npmFlags = [ "--legacy-peer-deps" ];

  preConfigure = hooks.prepare;

  postBuild = ''
    npx next-sitemap
  '';

  installPhase = ''
    runHook preInstall
    npx pagefind --site ./out
    # Remove Next.js RSC prefetch payloads to stay under Cloudflare Pages' 20k file limit.
    # Navigation will use full page loads instead of client-side transitions.
    find ./out -name '__next.*.txt' -delete
    find ./out -name 'index.txt' -delete
    mv out $out
    runHook postInstall
  '';

  npmConfigHook = pkgs.importNpmLock.npmConfigHook;
}
