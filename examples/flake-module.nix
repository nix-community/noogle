{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, lib, ... }:
    {
      packages = {
        nixpkgs-examples = pkgs.stdenv.mkDerivation {
          name = "nixpkgs-examples";
          src = ./.;
          nativeBuildInputs = [ pkgs.python3 ];
          buildPhase = ''
            cp -f ${self'.packages.data-json} ./data.json
            python noogle_get_examples.py data.json ${inputs.nixpkgs-master}
            mv output.json $out
          '';
        };
      };
    };
}
