{ ... }: {
  perSystem = { pkgs, system, ... }:
    let
      # Statically pin nix to 2_31 used for the plugin
      # We override the language docs seperately
      nix = pkgs.nixVersions.nix_2_31;
    in
    {
      packages = {
        noogle-plugin = pkgs.callPackage ./package.nix { inherit system nix; };
      };
      devShells = {
        noogle-plugin = pkgs.mkShell {
          packages = [ nix ];
        };
      };
    };
}
