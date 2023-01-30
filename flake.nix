{
  inputs = {
    dream2nix.url = "github:nix-community/dream2nix";
    nixdoc-fork.url = "github:hsjobeki/nixdoc";
    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, pre-commit-hooks, ... }@inp:
    let
      system = "x86_64-linux";
      pkgs = inp.nixpkgs.legacyPackages.${system};
      inherit (builtins.fromJSON (builtins.readFile ./package.json)) name;
    in
    (inp.dream2nix.lib.makeFlakeOutputs {
      systemsFromFile = ./nix_systems;
      config.projectRoot = ./.;
      source = ./.;
      settings = [
        {
          subsystemInfo.nodejs = 18;
        }
      ];
      packageOverrides = {
        ${name}.staticPage = {
          preBuild = ''
            cp ${inp.nixdoc-fork.packages.${system}.data.lib} ./models/data/lib.json
            cp ${inp.nixdoc-fork.packages.${system}.data.build_support} ./models/data/trivial-builders.json
          
          '';
          installPhase = ''
            runHook preInstall

            npm run export
            mkdir -p $out/static
            cp -r ./out/* $out/static/         

            runHook postInstall
          '';
        };
      };
    })
    // {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [ nodejs-18_x ];
        shellHook = ''
          ${self.checks.${system}.pre-commit-check.shellHook}
        '';
      };
      checks.${system} = {
        pre-commit-check = pre-commit-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            nixpkgs-fmt.enable = true;
            statix.enable = true;
            markdownlint.enable = true;
          };
        };
      };
    };

}
