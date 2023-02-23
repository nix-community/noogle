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
      inherit (builtins.fromJSON (builtins.readFile ./website/package.json)) name;
      prepareData = prefix: ''
        cp -f ${inp.nixdoc-fork.packages.${system}.data.lib} ${prefix}./models/data/lib.json
        cp -f ${inp.nixdoc-fork.packages.${system}.data.build_support} ${prefix}./models/data/trivial-builders.json
        node ${prefix}./scripts/make-builtins.js ${prefix}./models/data      
      '';
    in
    (inp.dream2nix.lib.makeFlakeOutputs {
      systems = [ system ];
      projects = ./projects.toml;
      config.projectRoot = ./website;
      source = ./website;

      packageOverrides = {
        ${name}.staticPage = {
          preBuild = prepareData "";
          installPhase = ''
            runHook preInstall

            npm run export
            mkdir -p $out/static
            cp -r ./out/* $out/static/
            cp -r ./ $lib         

            runHook postInstall
          '';
        };
      };
    })
    // {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [ nodejs-18_x ];
        shellHook = ''
          ${prepareData "./website/"}
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
