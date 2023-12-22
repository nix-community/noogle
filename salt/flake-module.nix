_: {
  perSystem = { self', inputs', pkgs, ... }:
    let
      salt = pkgs.stdenv.mkDerivation {
        pname = "salt-data";
        version = "0.1.0";
        src = ./src;
        installPhase = ''
          mkdir $out
          cp -rf . $out
        '';
      };
    in
    {
      packages = {
        inherit salt;
      };
    };
}
