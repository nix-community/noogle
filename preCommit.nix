{ self, ... }: {
  perSystem = { pkgs, self', system, ... }: {
    checks.pre-commit-check = self.inputs.pre-commit-hooks.lib.${system}.run {
      src = ./.;
      hooks = {
        nixfmt.enable = true;
        statix.enable = true;
        # markdownlint.enable = true;
      };
      excludes = [ "indexer/test" ".github" "scripts/data" ];
      settings = { statix.ignore = [ "indexer/test" ]; };
    };
  };
}
