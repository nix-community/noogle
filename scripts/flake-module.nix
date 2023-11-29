_: {
  perSystem = { self', inputs', pkgs, ... }:
    let
      builtins-data = pkgs.stdenv.mkDerivation {
        pname = "builtins-data";
        version = "0.1.0";
        src = ./.;
        nativeBuildInputs = [ pkgs.nodejs_20 ];
        buildPhase = ''
          npm run build
        '';
        installPhase = ''
          cat data.json > $out
        '';
      };
    in
    {
      packages = {
        inherit builtins-data;
      };
      devShells.builtins-data = pkgs.mkShell {
        inputsFrom = [ builtins-data ];
      };
    };
}
