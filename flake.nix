{
  inputs.dream2nix.url = "github:nix-community/dream2nix";
  outputs = inp:
  let
    inherit (builtins.fromJSON (builtins.readFile ./package.json)) name;
  in                              
    inp.dream2nix.lib.makeFlakeOutputs {
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
          installPhase = ''
            runHook preInstall

            npm run export
            mkdir -p $out/static
            cp -r ./out/* $out/static/         

            runHook postInstall
          '';
        };
      };
    };
}
