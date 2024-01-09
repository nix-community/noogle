{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, system, ... }:
    let
      craneLib = inputs.crane.lib.${system};
      src = craneLib.cleanCargoSource (craneLib.path ./.);

      commonArgs = {
        inherit src;
        strictDeps = true;
        cargoArtifacts = craneLib.buildDepsOnly commonArgs;
      };

      pesto = craneLib.buildPackage commonArgs;

      data-json = pkgs.stdenv.mkDerivation {
        name = "pesto-data";
        src = ./.;
        buildPhase = ''
          ${pesto}/bin/pesto --pos-file ${self'.packages.pasta} --format json $out
        '';
      };


      checks = {
        inherit pesto;
        pesto-clippy = craneLib.cargoClippy (commonArgs // {
          cargoClippyExtraArgs = "--all-targets -- --deny warnings";
        });
        pesto-fmt = craneLib.cargoFmt { inherit src; };
        pesto-nextest = craneLib.cargoNextest (commonArgs // {
          partitions = 1;
          partitionType = "count";
        });
      };
    in
    {
      packages = { inherit pesto data-json; };
      inherit checks;
      devShells.pesto = craneLib.devShell {
        # Inherit inputs from checks.
        inherit checks;
      };
    };
}
