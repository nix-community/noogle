{
  description = "Noogle.dev | Discover the nix api surface";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-master.url = "nixpkgs/master";

    nix-master.url = "github:NixOS/nix/?ref=master";
    # A custom nix version, to introspect lambda values.
    nix.url = "github:hsjobeki/nix/?ref=feat/positions";

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";

    crane.url = "github:ipetkov/crane";
    crane.inputs.nixpkgs.follows = "nixpkgs";

    floco.url = "github:aakropotkin/floco";
    floco.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } ({ ... }: {
      systems = [ "x86_64-linux" ];
      imports = [
        ./devShell.nix
        ./preCommit.nix
        ./website/flake-module.nix
        ./salt/flake-module.nix
        ./examples/flake-module.nix
        ./pasta/flake-module.nix
        ./pesto/flake-module.nix
        # Deprecated. Will be removed.
        ./codemod/flake-module.nix
        ./indexer/flake-module.nix
        ./scripts/flake-module.nix
      ];
    });
}

