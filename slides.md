<!-- $theme: gaia -->

# The Future of PPX

### Towards a unified and more robust ecosystem

#

###### Nathan Rebours, Tarides
###### Jeremie Dimino, Jane Street

---

# What is PPX?

## Syntax extensions for PPXes

- Extension points:
```ocaml
let x = [%eq: int list] [1; 2] [2; 3]`
```
- Attributes:
```ocaml
type t = int list [@@deriving eq]`
```

---

# What is PPX?

## Compiler integration

`ocamlc -ppx ppx foo.ml`

![100%](images/ocamlc-ppx.svg)
