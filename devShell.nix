{ inputs, ... }:
{
  perSystem =
    { self', pkgs, ... }:
    let
      craneLib = inputs.crane.mkLib pkgs;
    in
    {
      devShells.default = craneLib.devShell {
        # Inherit inputs from checks to get the Rust toolchain.
        checks = self'.checks;
      };
    };
}
