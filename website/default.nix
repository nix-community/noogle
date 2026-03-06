{ pkgs
, hooks
, nodejs
, stdenv
,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "noogle";
  version = "0.1.0";
  src = ./.;

  nativeBuildInputs = with pkgs; [
    nodejs
    pnpmConfigHook
    pnpm_10
  ];

  preConfigure = hooks.prepare;

  buildPhase = ''
    runHook preBuild

    pnpm build
    pnpm exec next-sitemap
    pnpm exec pagefind --site ./out

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mv out $out

    runHook postInstall
  '';

  pnpmDeps = pkgs.fetchPnpmDeps {
    inherit (finalAttrs) pname version src;
    fetcherVersion = 3;
    hash = "sha256-o/czkpeCGlBMRp7ZADOPRUKll8zgC5NnW24mUVrUGH4=";
  };
})
