{
  perSystem = { pkgs, self', config, ... }: {
    devShells.default = pkgs.mkShell {
      packages = [ pkgs.treefmt ];
      shellHook = ''
        ${self'.checks.pre-commit-check.shellHook}
      '';
    };
  };
}
