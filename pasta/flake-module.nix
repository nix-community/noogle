{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, lib, ... }:
    let
      inherit (inputs'.nix.packages) nix;
      nixpkgs = self'.packages.nixpkgs-migrated;
    in
    {
      packages = {
        pasta-meta = pkgs.stdenv.mkDerivation {
          name = "pasta-meta";
          src = ./.;
          buildPhase = ''
            echo "\"${builtins.toJSON inputs.nixpkgs-master.rev}\"" > $out
          '';
        };
        pasta = pkgs.callPackage ./default.nix { inherit nixpkgs nix pkgs; };
      };
      devShells.pastaMaker = pkgs.callPackage ./shell.nix { inherit pkgs nix; };
    };
}
