{
  /**
    Header

    # Example

    ```nix
    format me
      nested 1
        nested 2
    ```

    # Type

    ```
    some :: {
      nested :: Number;
    }
    ```
  */
  stuff = 1;
  /* Throw if pred is false, else return pred.
     Intended to be used to augment asserts with helpful error messages.

     Example:
       assertMsg false "nope"
       stderr> error: nope
           
       assert assertMsg ("foo" == "bar") "foo is not bar, silly"; ""
       stderr> error: foo is not bar, silly

     Type:
       assertMsg :: Bool -> String -> Bool
  */
  fun = true;
}
