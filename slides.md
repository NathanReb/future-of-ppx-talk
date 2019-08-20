<!-- $theme: gaia -->

# The Future of PPX

### Towards a unified and more robust ecosystem

#

###### Nathan Rebours, Tarides
###### Jeremie Dimino, Jane Street

---

## What is PPX?

#### Syntax extensions for PPXes

- Extension points:
```ocaml
let x = [%eq: int list] [1; 2] [2; 3]
```
- Attributes:
```ocaml
type t = int list [@@deriving eq]
```

---

## What is PPX?

#### Compiler integration

`ocamlc -ppx ppx foo.ml`

![100%](images/ocamlc-ppx.svg)

---

## What are the issues with PPX?

#### Combining several PPXes

`ocamlc -ppx ppx1 -ppx ppx2 -ppx ppx3 foo.ml`

![100%](images/ocamlc-composing-ppx.svg)

---

## What are the issues with PPX?

#### Combining several PPXes

Is it equivalent to run `ocamlc -ppx ppx1 -ppx ppx2 -ppx ppx3 foo.ml` and `ocamlc -ppx ppx2 -ppx ppx1 -ppx ppx3 foo.ml` ?

![70%](images/ocamlc-composing-ppx-order.svg)

Issue for both PPX authors and users...

---

## ocaml-migrate-parsetree

![40%](images/omp-driver.svg)

---

## ocaml-migrate-parsetree

#### Combining several PPXes

![](images/omp-driver-composing.svg)

