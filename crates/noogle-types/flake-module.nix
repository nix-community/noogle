{ inputs, ... }: {
  perSystem = { pkgs, system, ... }:
    let
      craneLib = inputs.crane.lib.${system};

      # Workspace root so Cargo.lock and siblings are visible.
      src = craneLib.cleanCargoSource (craneLib.path ./../..);

      commonArgs = {
        inherit src;
        strictDeps = true;
        pname = "noogle-types";
        version = "0.1.0";
      };

      # Build only the deps of this crate once; reused across invocations.
      cargoArtifacts = craneLib.buildDepsOnly (commonArgs // {
        cargoExtraArgs = "--package noogle-types";
      });

      # ts-rs emits bindings as a side effect of `cargo test` for each
      # `#[ts(export)]` type. We redirect the export directory into the
      # build sandbox and publish it as $out.
      noogle-types-bindings = craneLib.mkCargoDerivation (commonArgs // {
        inherit cargoArtifacts;
        pnameSuffix = "-bindings";

        doCheck = false;
        doInstallCargoArtifacts = false;

        buildPhaseCargoCommand = ''
          mkdir -p "$PWD/ts-out"
          TS_RS_EXPORT_DIR="$PWD/ts-out" \
            cargo test --locked --package noogle-types
        '';

        installPhaseCommand = ''
          cp -r "$PWD/ts-out" "$out"
        '';
      });
    in
    {
      packages = { inherit noogle-types-bindings; };
    };
}
