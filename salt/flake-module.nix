{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, ... }:
    let
      nix-manual = "${inputs.nix-master}/doc/manual/src/language/derivations.md";
      # https://github.com/NixOS/nix/blob/master/doc/manual/src/language/derivations.md
      salt = pkgs.stdenv.mkDerivation {
        pname = "salt-data";
        version = "0.1.0";
        src = ./src;
        installPhase = ''
          mkdir $out
          cp -rf . $out
          cp ${nix-manual} $out
        '';
      };
    in
    {
      packages = {
        inherit salt;
      };
    };
}
