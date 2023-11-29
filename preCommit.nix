{ self, ... }: {
  perSystem =
    { pkgs
    , self'
    , system
    , ...
    }:
    let
      formatters = with pkgs; [
        nixfmt
        nodePackages.prettier #3.0.0 installed over nixpkgs
        rustfmt
      ];
    in
    {
      checks.pre-commit-check = self.inputs.pre-commit-hooks.lib.${system}.run {
        src = ./.;
        hooks = {
          treefmt.enable = true;
          statix.enable = true;
        };
        excludes = [ "indexer/test" ".github" "scripts/data" "test_data" ];
        settings = {
          statix.ignore = [ "indexer/test" "test_data" ];
          nixfmt.width = 80;
          treefmt.package = pkgs.writeShellApplication {
            name = "treefmt";
            runtimeInputs =
              [
                pkgs.treefmt
              ]
              ++ formatters;
            text = ''
              exec treefmt "$@"
            '';
          };
        };
      };
    };
}
