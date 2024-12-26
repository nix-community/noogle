{ self, ... }: {
  perSystem = { self', pkgs, ... }:
    let
      inherit (self.inputs) floco;
      hooks = {
        prepare =
          let
            data_path = "src/models/data";
            fonts_path = "src/fonts";
          in
          ''
            # New data
            cp -f ${self'.packages.data-json} ${data_path}/data.json
            cp -f ${self'.packages.pasta-meta} ${data_path}/lib-meta.json
            cp -f ${self'.packages.nix-meta} ${data_path}/nix-meta.json
            cp -rf ${self'.packages.salt}/* ${data_path}
            chmod -R +w ${data_path}

            # Website fonts
            cp -rf ${pkgs.inter}/share/fonts/opentype/* ${fonts_path}
            cp -rf ${pkgs.fira-code}/share/fonts/truetype/* ${fonts_path}
            chmod -R +w ${fonts_path}
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
