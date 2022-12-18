{
  inputs.dream2nix.url = "github:nix-community/dream2nix";
  inputs.nixdoc-fork.url = "github:hsjobeki/nixdoc";
  outputs = {self, nixpkgs,...}@inp:
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
          cp ${inp.nixdoc-fork.packages.${system}.data} ./models/lib.json
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
        buildInputs = with pkgs; [nodejs-18_x ];
      };
    };

}
