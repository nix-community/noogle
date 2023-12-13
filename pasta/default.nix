{ pkgs, nixpkgs, nix, ... }:
pkgs.stdenv.mkDerivation {
  name = "pasta";
  src = ./src;
  nativeBuildInputs = [ nix ];
  buildPhase = ''
    nix-instantiate --eval --strict --json --store $PWD \
      eval.nix --arg 'pkgs' 'import ${nixpkgs} {}' -A all \
      > $out
  '';
}
