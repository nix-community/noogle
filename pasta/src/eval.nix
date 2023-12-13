{ pkgs ? # import (builtins.fetchTree {
  #   repo = "nixpkgs";
  #   ref = "migrate-doc-comments";
  #   owner = "hsjobeki";
  #   type = "github";
  # }) {},
  import
    (builtins.fetchTree {
      repo = "nixpkgs";
      ref = "master";
      owner = "nixos";
      type = "github";
    })
    { }
,
}:
let
  inherit pkgs;
  inherit (pkgs) lib;
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
    stdenvTools = getDocsFromSet pkgs.stdenv [ "pkgs" "stdenv" ];

    ############# Non-recursive analysis sets
    pkgs = getDocsFromSet pkgs [ "pkgs" ];
    dockerTools = getDocsFromSet pkgs.dockerTools [ "pkgs" "dockerTools" ];
    pythonTools =
      getDocsFromSet pkgs.pythonPackages [ "pkgs" "pythonPackages" ];
    builtins =
      getDocsFromSet builtins [ "builtins" ];
  };
  all = builtins.foldl' (acc: name: acc ++ docs.${name}) [ ] (builtins.attrNames docs);

  # generate test_data for pesto
  test_data = {
    attrsets = getDocsFromSet lib.attrsets [ "lib" "attrsets" ];
  };

in
{ inherit tools pkgs docs toFile getDocsFromSet collectFns all test_data; }
