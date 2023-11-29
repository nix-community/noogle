# Dough -> Pasta

We have to make our pasta from the Nixpkgs raw dough.

Analyse arbitrary nix expressions.

Contains tools, such as nix functions, that allow us to introspect the nix language.

Evaluating expressions and their metadata allows for precise documentation building

Evaluation requires a custom nix version available via devShell '.#pastaMaker'

Analyses a given path in the expression tree.

- Recursive tool, that works well with e.g., `pkgs.lib` or other sets that don't have hard evaluation errors inside them. Note: All kinds of recursions are reliably avoided.
- Flat tool, that works on attribute sets, without recursing it. Since both tools are not lazy they require at least the analyzed value to have no hard errors.

## Features

- Finding lambdas recursively
- Adding metadata about lambdas
  - Attribute Source Position
  - Lambda Source position
  - Count Partially Applied
  - ...
