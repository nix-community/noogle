{
  #
  # All these arguments can be overridden in production build
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

  # Evaluate a single entry based on its mode
  evalEntry = _name: entry:
    if entry.mode == "recursive" then
      collectFns entry.set {
        initialPath = entry.path;
        ignores = entry.ignores or [ ];
      }
    else if entry.mode == "shallow" then
      getDocsFromSet entry.set entry.path
    else
      throw "unknown mode '${entry.mode}' for entry '${_name}'";

  # Named datasets, each with declarative entries.
  # Each entry specifies:
  #   - set: the attribute set to analyze
  #   - path: display path in noogle
  #   - mode: "recursive" (traverse nested sets) or "shallow" (top-level functions only)
  #   - ignores: (optional, recursive only) attribute names to skip

  datasets = {
    nix = {
      entries = {
        ############# Recursive analysis
        lib = { set = lib; path = [ "lib" ]; mode = "recursive"; };
        rustPackages = { set = pkgs.rustPackages; path = [ "pkgs" "rustPackages" ]; mode = "recursive"; };
        appimageTools = { set = pkgs.appimageTools; path = [ "pkgs" "appimageTools" ]; mode = "recursive"; };
        elmPackages = { set = pkgs.elmPackages; path = [ "pkgs" "elmPackages" ]; mode = "recursive"; };
        agdaPackages = { set = pkgs.agdaPackages; path = [ "pkgs" "agdaPackages" ]; mode = "recursive"; ignores = [ "lib" ]; };
        dhallPackages = { set = pkgs.dhallPackages; path = [ "pkgs" "dhallPackages" ]; mode = "recursive"; ignores = [ "lib" ]; };
        beamPackages = { set = pkgs.beamPackages; path = [ "pkgs" "beamPackages" ]; mode = "recursive"; };
        testers = { set = pkgs.testers; path = [ "pkgs" "testers" ]; mode = "recursive"; };
        dotnetCorePackages = { set = pkgs.dotnetCorePackages; path = [ "pkgs" "dotnetCorePackages" ]; mode = "recursive"; };
        emacsPackages = { set = pkgs.emacsPackages; path = [ "pkgs" "emacsPackages" ]; mode = "recursive"; };
        gradle-packages = { set = pkgs.gradle-packages; path = [ "pkgs" "gradle-packages" ]; mode = "recursive"; };
        ociTools = { set = pkgs.ociTools; path = [ "pkgs" "ociTools" ]; mode = "recursive"; };
        releaseTools = { set = pkgs.releaseTools; path = [ "pkgs" "releaseTools" ]; mode = "recursive"; };
        vmTools = { set = pkgs.vmTools; path = [ "pkgs" "vmTools" ]; mode = "recursive"; };

        ############# Shallow analysis
        # pkgs cannot be analyzed recursively; nested items must be configured specifically
        stdenv = { set = pkgs.stdenv; path = [ "pkgs" "stdenv" ]; mode = "shallow"; };
        pkgs = { set = pkgs; path = [ "pkgs" ]; mode = "shallow"; };
        dockerTools = { set = pkgs.dockerTools; path = [ "pkgs" "dockerTools" ]; mode = "shallow"; };
        writers = { set = pkgs.writers; path = [ "pkgs" "writers" ]; mode = "shallow"; };
        haskellLib = { set = pkgs.haskell.lib; path = [ "pkgs" "haskell" "lib" ]; mode = "shallow"; };
        python3Packages = { set = pkgs.python3Packages; path = [ "pkgs" "python3Packages" ]; mode = "shallow"; };
        builtins = { set = builtins; path = [ "builtins" ]; mode = "shallow"; };
        make-disk-image = { set = { inherit make-disk-image; }; path = [ ]; mode = "shallow"; };
      };
    };
  };

  # Evaluate all entries in a dataset
  evalDataset = dataset:
    let
      docs = lib.mapAttrs evalEntry dataset.entries;
    in
    builtins.foldl' (acc: name: acc ++ docs.${name}) [ ] (builtins.attrNames docs);

  # Evaluate each dataset separately
  docs = lib.mapAttrs (_: evalDataset) datasets;

  # For backwards compat: flatten the "nix" dataset
  all = docs.nix;

  # generate test_data for pesto
  test_data = {
    attrsets = getDocsFromSet lib.attrsets [ "lib" "attrsets" ];
  };
in
{ inherit tools pkgs datasets docs evalDataset evalEntry toFile getDocsFromSet collectFns all test_data; }
