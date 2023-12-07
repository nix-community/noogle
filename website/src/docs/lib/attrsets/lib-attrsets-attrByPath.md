---
title: lib.attrsets.attrByPath
editUrl: https://www.github.com/hsjobeki/nixpkgs/tree/migrate-doc-comments/lib/attrsets.nix#L45C5
description: lib.attrsets.attrByPath
sidebar:

    order: 7
---

Return an attribute from nested attribute sets.

# Example

```nix
x = { a = { b = 3; }; }
# ["a" "b"] is equivalent to x.a.b
# 6 is a default value to return if the path does not exist in attrset
attrByPath ["a" "b"] 6 x
=> 3
attrByPath ["z" "z"] 6 x
=> 6
```

# Type

```
attrByPath :: [String] -> Any -> AttrSet -> Any
```

# Arguments

- [attrPath] A list of strings representing the attribute path to return from `set`
- [default] Default value if `attrPath` does not resolve to an existing value
- [set] The nested attribute set to select values from


# Aliases

- [lib.attrByPath](/reference/lib/lib-attrbypath)


