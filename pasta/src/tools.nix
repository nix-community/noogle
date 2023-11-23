{ lib }:
let
  force = v: (builtins.tryEval v).value;

  dropBack = l: lib.reverseList (lib.drop 1 (lib.reverseList l));

  getDocs = parent: name:
    let
      lambda = builtins.lambdaMeta parent.${name};
      attr = { position = builtins.unsafeGetAttrPos name parent; };
    in { inherit lambda attr; };

  /* *
     Recursively collect documentation for all values
  */
  collectFns = set:
    { initialPath ? [ ], limit ? null, }:
    let
      filterFns = builtins.filter (item: item.type == "lambda");
      getFnDocs = map (fn: {
        path = initialPath ++ fn.path;
        inherit (fn) docs;
      });
    in getFnDocs (filterFns (builtins.genericClosure {
      startSet = [{
        __initial = true;
        key = [ ];
        value = set;

        path = [ ];
        name = "?";

        depth = 0;
        type = "?";
        parent = null;
        docs = null;
      }];
      operator = item:
        let
          currVal = force item.value;
          # Dont traverse into: "derivations", "option types"
        in if lib.isDerivation currVal || lib.isOptionType currVal || currVal
        == null then
          [ ]
          # Doc support for named key value pairs (sets)
        else if builtins.typeOf currVal == "set" then
          map (name:
            # NEXT ITEM
            let
              nextVal = force item.value.${name};
              # calling lib.unique prevents infinite recursion
              path = lib.unique (item.key ++ [ name ]);
            in if lib.isDerivation nextVal || name == "__functor"
            || (limit != null && item.depth >= limit) then
            # skipping some values by
            # returning the previous item
              item
            else {
              key = path;
              value = item.value.${name};
              # Propagate some values.
              type = if lib.isFunction nextVal then
                "lambda"
              else
                builtins.typeOf nextVal;
              docs = getDocs (lib.attrByPath (dropBack path) null set) name;
              inherit name path;
              parent = currVal;
              depth = item.depth + 1;
            }) (builtins.attrNames item.value)
        else
          [ ];
    }));

  # Convinient wrapper for debugging.
  toFile = thing: builtins.toFile "data.json" (builtins.toJSON thing);

  # Non-rcusively collect docs of all functions present in a set
  getDocsFromSet = s: path:
    let
      docs = lib.pipe s [
        # Filter out all attributes that are not a function or __functor
        (lib.filterAttrs (v: v: lib.isFunction (force v)))
        # Call getDocs for each name value pair
        (lib.mapAttrs (n: v: getDocs s n))
      ];
    in lib.pipe docs [
      # Transform into list
      builtins.attrNames
      # Collect all values
      (builtins.foldl' (res: name:
        res ++ [{
          path = path ++ [ name ];
          docs = docs.${name};
        }]) [ ])
    ];
in { inherit toFile collectFns getDocsFromSet; }
