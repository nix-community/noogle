/**
  Map each attribute in the given set and merge them into a new attribute set.

  # Example

  ```nix
  concatMapAttrs
      (name: value: {
        ${name} = value;
        ${name + value} = value;
      })
      { x = "a"; y = "b"; }
  => { x = "a"; xa = "a"; y = "b"; yb = "b"; }
  ```

  # Type

  ```
  concatMapAttrs :: (String -> a -> AttrSet) -> AttrSet -> AttrSet
  ```
  */
1
