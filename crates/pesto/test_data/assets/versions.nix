/**
  Version string functions.
*/
{ lib }:

rec {

  /**
    Break a version string into its component parts.

    # Example

    ```nix
    splitVersion "1.2.3"
    => ["1" "2" "3"]
    ```
  */
  splitVersion = builtins.splitVersion or (lib.splitString ".");

  /**
    Get the major version string from a string.

    # Example

    ```nix
    major "1.2.3"
    => "1"
    ```

    # Arguments

    - [v] 

  */
  major = v: builtins.elemAt (splitVersion v) 0;

  /**
    Get the minor version string from a string.

    # Example

    ```nix
    minor "1.2.3"
    => "2"
    ```

    # Arguments

    - [v] 

  */
  minor = v: builtins.elemAt (splitVersion v) 1;

  /**
    Get the patch version string from a string.

    # Example

    ```nix
    patch "1.2.3"
    => "3"
    ```

    # Arguments

    - [v] 

  */
  patch = v: builtins.elemAt (splitVersion v) 2;

  /**
    Get string of the first two parts (major and minor)
    of a version string.

    # Example

    ```nix
    majorMinor "1.2.3"
    => "1.2"
    ```

    # Arguments

    - [v] 

  */
  majorMinor = v:
    builtins.concatStringsSep "."
    (lib.take 2 (splitVersion v));

  /**
    Pad a version string with zeros to match the given number of components.

    # Example

    ```nix
    pad 3 "1.2"
    => "1.2.0"
    pad 3 "1.3-rc1"
    => "1.3.0-rc1"
    pad 3 "1.2.3.4"
    => "1.2.3"
    ```

    # Arguments

    - [n] 
    - [version] 

  */
  pad = n: version: let
    numericVersion = lib.head (lib.splitString "-" version);
    versionSuffix = lib.removePrefix numericVersion version;
  in lib.concatStringsSep "." (lib.take n (lib.splitVersion numericVersion ++ lib.genList (_: "0") n)) + versionSuffix;

}
