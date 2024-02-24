## derivationStrict

🚧🚧🚧 under construction 🚧🚧🚧

Is the fundamental primop that is used to bootstrap `builtins.derivation`.

derivationStrict is usually not used anywhere else, unless you want to bootstrap your own fundamental derivation.

derivation strict is a function that takes an attribute set of the following attributes

and returns an attribute set, which can be used to bootstrap the nix build plane.
The returned attribute set is not a derivation and cannot be built.

A buildable derivation must contain at least the following attributes:

TODO:
