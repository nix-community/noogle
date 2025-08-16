{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, lib, ... }:
    let
      nixpkgs = inputs.nixpkgs-master;

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
        pasta = pkgs.callPackage ./default.nix {
          inherit nixpkgs pkgs;
          inherit (self'.packages) noogle-plugin;
        };
      };
      devShells.pastaMaker = pkgs.callPackage ./shell.nix { inherit pkgs; inherit (self'.packages) noogle-plugin; };
    };
}
