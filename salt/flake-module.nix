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
          echo "#################"
          declare -f
          echo "#################"

          mkdir $out
          cp -rf . $out
          cp ${nix-manual} $out
        '';
      };
      hooks = pkgs.stdenv.mkDerivation {
        pname = "hooks-data";
        version = "0.1.0";
        src = ./src;
        installPhase = ''
          # Start a JSON array

          exec 3>$out

          # Start a JSON array, redirect to file descriptor 3
          echo "[" >&3

          # Get all functions, parse them, and output as JSON, redirect to file descriptor 3
          declare -f | awk -v RS= -v FS='\n' '{
              # Extract the function name from the first line
              split($1, a, " ");
              func_name = a[2];

              # Combine the body lines
              func_body = "";
              for (i = 2; i <= NF; i++) {
                  func_body = func_body (i > 2 ? "\\n" : "") $i;
              }

              # Properly escape JSON special characters in body
              gsub(/\\/, "\\\\", func_body); # First escape backslashes to prevent breaking other escaped sequences
              gsub(/"/, "\\\"", func_body);  # Escape double quotes

              # Using printf to safely format JSON, escaping % characters
              printf("{\"name\": \"%s\", \"body\": \"%s\"}", func_name, gsub(/%/,"%%",func_body));
              if (NR < last) print ",";
          }' last=$(declare -f | awk -v RS= -v FS='\n' 'END {print NR}') >&3

          # End the JSON array, redirect to file descriptor 3
          echo "]" >&3

          # Close the output redirection from file descriptor 3
          exec 3>&-
        '';
      };
    in
    {
      packages = {
        inherit salt hooks;
      };
    };
}
