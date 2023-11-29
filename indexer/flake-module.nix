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

      indexer = craneLib.buildPackage commonArgs;
      checks = {
        inherit indexer;
        indexer-clippy = craneLib.cargoClippy (commonArgs // {
          cargoClippyExtraArgs = "--all-targets -- --deny warnings";
        });
        indexer-fmt = craneLib.cargoFmt { inherit src; };
        indexer-nextest = craneLib.cargoNextest (commonArgs // {
          partitions = 1;
          partitionType = "count";
        });
      };
      nixpkgs-data = pkgs.stdenv.mkDerivation {
        pname = "data";
        version = "0.1.0";
        description = ''
          wrapper around the indexer. 

          Calls the indexer with '<nixpkgs>'/path.
          and defines one output for every specified input path

          currently this list is manually maintained below.
        '';
        src = inputs.nixpkgs-master;
        outputs = [ "out" "lib" "trivial_builders" "build_support" ];
        nativeBuildInputs = [ indexer ];
        buildPhase = ''
          echo "running nix metadata collect in nixpkgs/lib"
          ${indexer}/bin/indexer --dir ./lib
          ${indexer}/bin/indexer --dir ./pkgs/build-support/trivial-builders
          ${indexer}/bin/indexer --dir ./pkgs/build-support
        '';
        installPhase = ''
          cat lib.json > $lib
          cat trivial-builders.json > $trivial_builders
          cat build-support.json > $build_support

          mkdir $out
          ln -s $lib $out/lib
          ln -s $trivial_builders $out/trivial_builders
          ln -s $build_support $out/build_support
        '';
      };
    in
    {
      packages = { inherit indexer nixpkgs-data; };
      inherit checks;
      devShells.indexer = craneLib.devShell {
        # Inherit inputs from checks.
        inherit checks;
      };
    };
}
