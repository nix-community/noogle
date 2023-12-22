{ self, ... }: {
  perSystem = { self', pkgs, ... }:
    let
      inherit (self.inputs) floco;
      hooks = {
        prepare = prefix: ''
          cp -f ${self'.packages.nixpkgs-data.lib} ${prefix}/lib.json
          cp -f ${self'.packages.nixpkgs-data.trivial_builders} ${prefix}/trivial-builders.json
          cp -f ${self'.packages.nixpkgs-data.build_support} ${prefix}/build_support.json
          cp -f ${self'.packages.builtins-data} ${prefix}/builtins.json
        '';
      };
      base = pkgs.callPackage ./default.nix {
        inherit floco hooks;
      };
    in
    {
      packages = { ui = base.pkg.global; };
      devShells.ui = pkgs.callPackage ./shell.nix {
        inherit pkgs hooks;
        inherit (base) fmod pkg;
        inherit (self'.packages) data-json pasta-meta;
      };
    };
}
