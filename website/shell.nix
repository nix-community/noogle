{ data-json, pasta-meta, fmod, pkg, pkgs, hooks, ... }:
pkgs.mkShell {
  packages = [ fmod.config.floco.settings.nodePackage ];
  shellHook = ''
    ${hooks.prepare "src/models/data"}
    cp -f ${data-json} src/models/data/data.json
    cp -f ${pasta-meta} src/models/data/meta.json
    cp -rf ${pkgs.inter}/share/fonts/opentype/* src/fonts
    cp -rf ${pkgs.fira-code}/share/fonts/truetype/* src/fonts
    chmod -R +w src/models/data
    chmod -R +w src/fonts
    

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
