{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, lib, ... }:
    let
      inherit (inputs'.nix.packages) nix;
      nixpkgs = self'.packages.nixpkgs-migrated;

      sourceInfo' = {
        inherit (inputs.nixpkgs-master.sourceInfo) rev lastModified;
      };
      metaFile = builtins.toFile "meta.json" (builtins.toJSON sourceInfo');
    in
    {
      packages = {
        pasta-meta = pkgs.stdenv.mkDerivation {
          name = "pasta-meta";
          src = ./.;
          buildPhase = ''
            cat ${metaFile} > $out
          '';
        };
        pasta = pkgs.callPackage ./default.nix { inherit nixpkgs nix pkgs; };
      };
      devShells.pastaMaker = pkgs.callPackage ./shell.nix { inherit pkgs nix; };
    };
}
