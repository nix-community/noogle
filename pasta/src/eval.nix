{
  #
  # All these arguments can be overriden in production build
  #
  nixpkgs ? (builtins.fetchTree {
    repo = "nixpkgs";
    ref = "master";
    owner = "nixos";
    type = "github";
  })
, pkgs ? import nixpkgs { }
, repo ? nixpkgs.outPath
}:
let
  inherit (pkgs) lib;
  make-disk-image = import (repo + "/nixos/lib/make-disk-image.nix");
  tools = import ./tools.nix { inherit lib; };
  inherit (tools) getDocsFromSet collectFns toFile;

  # Contains seperate sets of metadata.
  # which then allows running seperate evaluations. Once at a time for better error tracing and memory management.

  docs = {
    ############# Recusive analysis sets
    lib = collectFns lib { initialPath = [ "lib" ]; };
    rustTools = collectFns pkgs.rustPackages {
      initialPath = [ "pkgs" "rustPackages" ];
    };

    ############# Non-recursive analysis sets (pkgs.<nested>)
    # pkgs cannot be analysed recursively
    # nested documentation items must be configured specifically
    stdenvTools = getDocsFromSet pkgs.stdenv [ "pkgs" "stdenv" ];
    pkgs = getDocsFromSet pkgs [ "pkgs" ];
    dockerTools = getDocsFromSet pkgs.dockerTools [ "pkgs" "dockerTools" ];
    writers = getDocsFromSet pkgs.writers [ "pkgs" "writers" ];
    haskellLib = getDocsFromSet pkgs.haskell.lib [ "pkgs" "haskell" "lib" ];
    pythonTools =
      getDocsFromSet pkgs.pythonPackages [ "pkgs" "pythonPackages" ];
    builtins =
      getDocsFromSet builtins [ "builtins" ];
    mkDiskImage = [
      {
        path = [ "make-disk-image" ];
        docs = tools.getDocs { inherit make-disk-image; } "make-disk-image";
      }
    ];
  };

  all = builtins.foldl' (acc: name: acc ++ docs.${name}) [ ] (builtins.attrNames docs);

  # generate test_data for pesto
  test_data = {
    attrsets = getDocsFromSet lib.attrsets [ "lib" "attrsets" ];
  };
in
{ inherit tools pkgs docs toFile getDocsFromSet collectFns all test_data; }
