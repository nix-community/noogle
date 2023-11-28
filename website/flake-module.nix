{ self, ... }: {
  perSystem = { self', pkgs, ... }:
    let
      inherit (self.inputs) floco;
      base = pkgs.callPackage ./default.nix {
        inherit floco;
        nooglePkgs = self'.packages;
      };
    in
    {
      packages = { ui = base.pkg.global; };
      devShells.ui = pkgs.callPackage ./shell.nix {
        inherit pkgs;
        inherit (base) fmod pkg;
        nooglePkgs = self'.packages;
      };
    };
}
