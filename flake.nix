{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-master.url = "nixpkgs/master";

    dream2nix.url = "github:nix-community/dream2nix";

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, pre-commit-hooks, dream2nix, nixpkgs-master }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      websiteName = (builtins.fromJSON (builtins.readFile ./website/package.json)).name;
      inherit (self.packages.${system}) indexer nixpkgs-data;

      prepareData = prefix: ''
        cp -f ${nixpkgs-data.lib} ${prefix}./models/data/lib.json
        cp -f ${nixpkgs-data.build_support} ${prefix}./models/data/trivial-builders.json
        node ${prefix}./scripts/make-builtins.js ${prefix}./models/data      
      '';

      dream2nixOutput = dream2nix.lib.makeFlakeOutputs {
        systems = [ system ];
        projects = ./projects.toml;
        config.projectRoot = ./.;
        source = ./.;

        packageOverrides = {
          ${websiteName}.staticPage = {
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
      };
    in
    {
      packages.${system} = dream2nixOutput.packages.${system} // {
        nixpkgs-data = pkgs.stdenv.mkDerivation {
          pname = "data";
          version = "0.1.0";
          description = ''
            wrapper around the indexer. 

            Calls the indexer with '<nixpkgs>'/path.
            and defines one output for every specified input path

            currently this list is manually maintained below.
          '';
          src = nixpkgs-master;
          outputs = [ "out" "lib" "build_support" ];
          nativeBuildInputs = [ indexer ];
          buildPhase = ''
            echo "running nix metadata collect in nixpkgs/lib"
            ${indexer}/bin/indexer --dir ./lib
            ${indexer}/bin/indexer --dir ./pkgs/build-support
          '';
          installPhase = ''
            cat lib.json > $lib
            cat build-support.json > $build_support

            mkdir $out
            ln -s $lib $out/lib
            ln -s $build_support $out/build_support
          '';
        };

        default = self.packages.${system}.noogle;
      };

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [ nodejs-18_x rustfmt rustc cargo clippy ];
        inputsFrom = [ indexer ];
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
          excludes = [ "indexer/test" ];
          settings = {
            statix.ignore = [ "indexer/test" ];
          };

        };
      };
    };

}
