# Doc-comments Codemod 

A simple codemod based on [rnix](https://github.com/nix-community/rnix-parser).
It migrates all comments automatically into the new markdown format.

## Features

- Fully automatic.
- Changes all files from all directories (if needed).
- Markdown output.
- Re-aligns the indentation.

## Example

`input`
```nix
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
  assertMsg =
```

-> 

`output`
````nix
  /**
    Throw if pred is false, else return pred.
    Intended to be used to augment asserts with helpful error messages.

    # Example

    ```nix
    assertMsg false "nope"
               stderr> error: nope
    
               assert assertMsg ("foo" == "bar") "foo is not bar, silly"; ""
               stderr> error: foo is not bar, silly
    ```

    # Type

    ```
    assertMsg :: Bool -> String -> Bool
    ```
  */
  assertMsg =
````

## Development

Enter the devshell

`nix develop .#codemod`
