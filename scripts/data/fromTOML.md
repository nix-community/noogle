# Parse a TOML-configuration from String

```
builtins.fromTOML ''
# Toplevel
foo = "bar"

# Simple Attrset
[set]
info = "foobar"

# Nested Attrset
[set.nested]
meta = 42
''
-> 
{
  foo = "bar";
  set = {
    info = "foobar";
    nested = {
      meta = 42;
    };
  };
}
```

Also works nicely with `readFile`:

```
builtins.fromTOML (builtins.readFile ./config.toml)
```
