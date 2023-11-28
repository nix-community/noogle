{ floco, system, pkgs, nooglePkgs }:
let

  inherit (floco) lib;

  pjs =
    let
      msg = "default.nix: Expected to find `package.json' to lookup "
        + "package name/version, but no such file exists at: "
        + (toString ./package.json);
    in
    if builtins.pathExists ./package.json then
      lib.importJSON ./package.json
    else
      throw msg;
  ident = pjs.name;
  inherit (pjs) version;

  fmod = lib.evalModules {
    modules = [
      floco.nixosModules.floco
      {
        config.floco.settings = {
          inherit system;
          basedir = ./.;
        };
      }
      ./nix/floco-cfg.nix
    ];
    specialArgs = { inherit pkgs nooglePkgs; };
  };

  # This attrset holds a few derivations related to our package.
  # We'll expose these below to the CLI.
  pkg = fmod.config.floco.packages.${ident}.${version};

in
{ inherit pkg fmod; }
