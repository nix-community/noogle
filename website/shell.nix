{ fmod, pkg, pkgs, hooks, ... }:
pkgs.mkShell {
  buildInputs = [ fmod.config.floco.settings.nodePackage ];
  shellHook = ''
    ${hooks.prepare "models/data"}
    
    ID=${pkg.built.tree}
    currID=$(cat .floco/.node_modules_id 2> /dev/null)

    mkdir -p .floco
    if [[ "$ID" != "$currID" || ! -d "node_modules"  ]];
    then
      ${pkgs.rsync}/bin/rsync -a  --checksum  --chmod=ug+w  --delete ${pkg.built.tree}/node_modules/ ./node_modules/
      echo -n $ID > .floco/.node_modules_id
      echo "floco ok: node_modules updated"
    fi

    export PATH="$PATH:$(realpath ./node_modules)/.bin"

  '';
}
