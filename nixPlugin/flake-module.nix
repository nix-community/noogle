{ ... }: {
  perSystem = { pkgs, system, ... }:
    let
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
