{ mkShell
, importNpmLock
, nodejs
, hooks
, ...
}:

mkShell {
  packages = [
    importNpmLock.hooks.linkNodeModulesHook
    nodejs
  ];

  npmDeps = importNpmLock.buildNodeModules {
    npmRoot = ./.;
    inherit nodejs;
    derivationArgs = {
      NPM_CONFIG_LEGACY_PEER_DEPS = "true";
    };
  };

  shellHook = ''
    ${hooks.prepare}
    export PATH="$PATH:$(realpath ./node_modules)/.bin"
  '';
}
