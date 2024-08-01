{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, system, ... }:
    let
      craneLib = inputs.crane.lib.${system};
      # src = craneLib.cleanCargoSource (craneLib.path ./.);
      src = craneLib.path ./.;

      commonArgs = {
        inherit src;
        strictDeps = true;
        cargoArtifacts = craneLib.buildDepsOnly commonArgs;
      };

      codemod = craneLib.buildPackage commonArgs;


      nixpkgs-migrated = pkgs.stdenv.mkDerivation {
        name = "nixpkgs-migrated";
        src = inputs.nixpkgs-master;
        buildPhase = ''
          ${self'.packages.codemod}/bin/codemod .
          cp -r . $out
        '';
        dontFixup = true;
      };

      checks = {
        inherit codemod;
        codemod-clippy = craneLib.cargoClippy (commonArgs // {
          cargoClippyExtraArgs = "--all-targets -- --deny warnings";
        });
        codemod-fmt = craneLib.cargoFmt { inherit src; };
        codemod-nextest = craneLib.cargoNextest (commonArgs // {
          partitions = 1;
          partitionType = "count";
        });
      };
    in
    {
      packages = { inherit codemod nixpkgs-migrated; };
      inherit checks;
      devShells.codemod = craneLib.devShell {
        # Inherit inputs from checks.
        inherit checks;
      };
    };
}
