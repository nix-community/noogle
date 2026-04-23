{ pkgs, nixpkgs, noogle-plugin, dataset ? "nix", ... }:
let nix = noogle-plugin.passthru.nix; in
pkgs.stdenv.mkDerivation {
  name = "pasta-${dataset}";
  src = ./src;
  nativeBuildInputs = [ nix ];
  buildPhase = ''
    nix-instantiate --extra-experimental-features 'nix-command flakes' --plugin-files ${noogle-plugin}/lib/libnoogle-plugin.so --eval --strict --json --store $PWD --show-trace \
      eval.nix --arg 'pkgs' 'import ${nixpkgs} {}' --arg 'repo' '${nixpkgs.outPath}' -A docs.${dataset} \
      > $out
  '';
}
