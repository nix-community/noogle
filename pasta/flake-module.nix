{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, ... }:
    let
      nix = inputs'.nix.packages.nix-clangStdenv;
      nixpkgs = inputs.nixpkgs-migrated;
    in
    {
      packages = {
        pasta = pkgs.callPackage ./default.nix { inherit nixpkgs nix pkgs; };
      };
      devShells.pastaMaker = pkgs.callPackage ./shell.nix { inherit pkgs nix; };
    };
}
