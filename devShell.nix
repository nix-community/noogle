{
  perSystem = { pkgs, self', config, ... }: {
    devShells.default = pkgs.mkShell {
      packages = [ ];
      shellHook = ''
        ${self'.checks.pre-commit-check.shellHook}
      '';
    };
  };
}
