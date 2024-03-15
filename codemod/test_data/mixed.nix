{
  /*Short tagline 
    in multiline
    with empty lines

    indepentent block of lines
    should not be indented differently

    > Note: this is a note.

    ```nix
    {
      a = {
        b = {
          c = {
            d = 1;
          };
        };
      };
    }
    ```

    Codeblocks must keep indentation.

    Type: 
      Indent :: a -> 
      {
        a: {
          b: {
            c: {
              d: Int;
            };
          };
        };
      }

    Example:
        packageDir "foo"
        => {
          foo = {
            src = ./.;
          };
        }
  */
  packageDir = dir: 1;
}
