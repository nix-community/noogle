{ pkgs, nixpkgs, nix, ... }:
pkgs.stdenv.mkDerivation {
  name = "pasta";
  src = ./src;
  nativeBuildInputs = [ nix ];
  buildPhase = ''
    nix-instantiate --eval --strict --json --store $PWD --show-trace \
      eval.nix --arg 'pkgs' 'import ${nixpkgs} {}' --arg 'repo' '${nixpkgs.outPath}' -A all \
      > $out
  '';
}
