{
  /*
    Reduce a list by applying a binary operator from left to right,
    starting with an initial accumulator.

    Before each application of the operator, the accumulator value is evaluated.
    This behavior makes this function stricter than [`foldl`](#function-library-lib.lists.foldl).

    Unlike [`builtins.foldl'`](https://nixos.org/manual/nix/unstable/language/builtins.html#builtins-foldl'),
    the initial accumulator argument is evaluated before the first iteration.

    A call like

    ```nix
    foldl' op acc₀ [ x₀ x₁ x₂ ... xₙ₋₁ xₙ ]
    ```

    is (denotationally) equivalent to the following,
    but with the added benefit that `foldl'` itself will never overflow the stack.

    ```nix
    let
      acc₁   = builtins.seq acc₀   (op acc₀   x₀  );
      acc₂   = builtins.seq acc₁   (op acc₁   x₁  );
      acc₃   = builtins.seq acc₂   (op acc₂   x₂  );
      ...
      accₙ   = builtins.seq accₙ₋₁ (op accₙ₋₁ xₙ₋₁);
      accₙ₊₁ = builtins.seq accₙ   (op accₙ   xₙ  );
    in
    accₙ₊₁

    # Or ignoring builtins.seq
    op (op (... (op (op (op acc₀ x₀) x₁) x₂) ...) xₙ₋₁) xₙ
    ```

    Type: foldl' :: (acc -> x -> acc) -> acc -> [x] -> acc

    Example:
      foldl' (acc: x: acc + x) 0 [1 2 3]
      => 6
  */
  foldl' =
    /* The binary operation to run, where the two arguments are:

      1. `acc`: The current accumulator value: Either the initial one for the first iteration, or the result of the previous iteration
      2. `x`: The corresponding list element for this iteration
    */
    op:
    # The initial accumulator value
    acc:
    # The list to fold
    list:

    # The builtin `foldl'` is a bit lazier than one might expect.
    # See https://github.com/NixOS/nix/pull/7158.
    # In particular, the initial accumulator value is not forced before the first iteration starts.
    builtins.seq acc
      (builtins.foldl' op acc list);
}
