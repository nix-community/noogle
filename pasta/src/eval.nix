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
    appimageTools = collectFns pkgs.appimageTools { initialPath = [ "pkgs" "appimageTools" ]; };
    elmPackages = collectFns pkgs.elmPackages { initialPath = [ "pkgs" "elmPackages" ]; };

    agdaPackages = collectFns pkgs.agdaPackages { initialPath = [ "pkgs" "agdaPackages" ]; ignores = [ "lib" ]; };
    dhallPackages = collectFns pkgs.dhallPackages { initialPath = [ "pkgs" "dhallPackages" ]; ignores = [ "lib" ]; };

    beamPackages = collectFns pkgs.beamPackages { initialPath = [ "pkgs" "beamPackages" ]; };

    dotnetCorePackages = collectFns pkgs.dotnetCorePackages { initialPath = [ "pkgs" "dotnetCorePackages" ]; };
    emacsPackages = collectFns pkgs.emacsPackages { initialPath = [ "pkgs" "emacsPackages" ]; };
    gradle-packages = collectFns pkgs.gradle-packages { initialPath = [ "pkgs" "gradle-packages" ]; };

    ociTools = collectFns pkgs.ociTools { initialPath = [ "pkgs" "ociTools" ]; };
    releaseTools = collectFns pkgs.releaseTools { initialPath = [ "pkgs" "releaseTools" ]; };
    snapTools = collectFns pkgs.snapTools { initialPath = [ "pkgs" "snapTools" ]; };
    vmTools = collectFns pkgs.vmTools { initialPath = [ "pkgs" "vmTools" ]; };


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
