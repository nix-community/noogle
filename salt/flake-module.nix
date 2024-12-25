{ inputs, ... }: {
  perSystem = { self', inputs', pkgs, system, ... }:
    let
      nix-manual = "${inputs.nix-master}/doc/manual/source/language/derivations.md";
      pkgs = import inputs.nixpkgs-master { inherit system; };

      # https://github.com/NixOS/nix/blob/master/doc/manual/src/language/derivations.md
      salt = pkgs.stdenv.mkDerivation {
        pname = "salt-data";
        version = "0.1.0";
        src = ./src;
        installPhase = ''
          mkdir $out
          cp -rf . $out
          cp ${nix-manual} $out

          ${pkgs.nixVersions.latest}/bin/nix __dump-language > $out/language.json
        '';
      };
    in
    {
      packages = {
        inherit salt;
      };
    };
}
