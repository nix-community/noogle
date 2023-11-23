{ pkgs, nix, ... }:
pkgs.mkShell {
  buildInputs = [ nix ];
  shellHook = ''
    echo "using a custom nix build: ${nix}"
  '';
}
