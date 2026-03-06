{ mkShell, nodejs, pnpm_10, hooks, ... }:

mkShell {
  packages = [
    nodejs
    pnpm_10
  ];

  shellHook = ''
    ${hooks.prepare}
    export PATH="$PATH:$(realpath ./node_modules)/.bin"
  '';
}
