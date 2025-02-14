{ mkShell, importNpmLock, nodejs, hooks, ... }:

mkShell {
  packages = [
    importNpmLock.hooks.linkNodeModulesHook
    nodejs
  ];

  npmDeps = importNpmLock.buildNodeModules {
    npmRoot = ./.;
    inherit nodejs;
  };

  preConfigure = hooks.prepare;

  shellHook = ''
    export PATH="$PATH:$(realpath ./node_modules)/.bin"
  '';
}
