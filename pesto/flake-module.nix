{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, system, ... }:
    let
      craneLib = inputs.crane.lib.${system};
      src = craneLib.cleanCargoSource (craneLib.path ./.);

      commonArgs = {
        inherit src;
        strictDeps = true;
        buildInputs = [ pkgs.oniguruma ];
        nativeBuildInputs = [ pkgs.pkg-config ];
        RUSTONIG_SYSTEM_LIBONIG = "1";
      };

      cargoArtifacts = craneLib.buildDepsOnly commonArgs;

      pesto = craneLib.buildPackage (commonArgs // {
        inherit cargoArtifacts;
      });

      data-json = pkgs.stdenv.mkDerivation {
        name = "pesto-data";
        src = ./.;
        buildPhase = ''
          ${pesto}/bin/pesto --pos-file ${self'.packages.pasta} --format json --language ${self'.packages.salt}/language.json $out
        '';
      };

      checks = {
        inherit pesto;
        pesto-clippy = craneLib.cargoClippy (commonArgs // {
          inherit cargoArtifacts;
          cargoClippyExtraArgs = "--all-targets -- --deny warnings";
        });
        pesto-fmt = craneLib.cargoFmt { inherit src; };
        pesto-nextest = craneLib.cargoNextest (commonArgs // {
          inherit cargoArtifacts;
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
