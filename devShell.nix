{ inputs, ... }: {
  perSystem = { self', system, ... }:
    let
      craneLib = inputs.crane.lib.${system};
    in
    {
      devShells.default = craneLib.devShell {
        # Inherit inputs from checks to get the Rust toolchain.
        checks = self'.checks;
      };
    };
}
