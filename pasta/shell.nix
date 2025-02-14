{ pkgs, noogle-plugin, ... }:
let
  nix = noogle-plugin.passthru.nix;
in
pkgs.mkShell {
  buildInputs = [ nix ];
  shellHook = ''
    echo "using a custom nix build: ${nix}"
  '';
}
