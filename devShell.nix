{
  perSystem = { pkgs, self', config, ... }: {
    devShells.default = pkgs.mkShell {
      packages = [ pkgs.treefmt ];
      shellHook = ''
      '';
    };
  };
}
