---
name: markdownExample
id: noogle.user.docs
category: examples.contributions
fn_type: "{\n pkg :: String;\n} -> Derivation"
example: see above
---

# Noogle now supports writing markdown documentation. Directly via Github! ✅🎁🍾

## [Write first contribution](https://github.com/nix-community/noogle/new/main/website/user-docs?filename=newdoc.md&&value=Your%20first%20contribution&&view=preview)

> Learn how to contribute. This work can also help to improve the nix documentation

## Example Noogle Contribution

```md

---
name: markdownExample
id: markdown.custom.injection
category: examples.contributions
fn_type: "{ pkg :: String } \n -> \n Derivation"
example: see above
---
 
Required - unique id

- id: string; select item, and inspect the url to retrieve

Optional - if given will override what was automatically retrieved

- name: string
- category: string
- fn_type: string
- category: string

```
