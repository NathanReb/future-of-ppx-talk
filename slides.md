<!-- $theme: gaia -->

# The Future of PPX

### Towards a unified and more robust ecosystem

#

###### Nathan Rebours, Tarides
###### Jeremie Dimino, Jane Street

---

## What is PPX?

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

---

## What are the issues with PPX?

#### Combining several PPXes

`ocamlc -ppx ppx1 -ppx ppx2 -ppx ppx3 foo.ml`

![100%](images/ocamlc-composing-ppx.svg)

---

## What are the issues with PPX?

#### Combining several PPXes

Is it equivalent to apply PPXes in different orders?

![70%](images/ocamlc-composing-ppx-order.svg)

Issue for both PPX authors and users...

---

## ocaml-migrate-parsetree

---

## ocaml-migrate-parsetree

#### Driver

![30%](images/omp-driver.svg)

---

## ocaml-migrate-parsetree

#### Combining several PPXes

May involve a lot of AST migrations

![](images/omp-driver-composing.svg)

---

## ocaml-migrate-parsetree

#### Combining several PPXes

Backward migrations can fail

![](images/omp-driver-composing-migration-failure.svg)

---

## ocaml-migrate-parsetree

#### Combining several PPXes

The order is still an issue

![](images/omp-driver-composing-order.svg)

---

## ppxlib

---

## ppxlib

- Recursively applies transformation to generated code.


```ocaml
let x = [%something ()] in
...
```
expands into
```ocaml
let x = 1 + [%something_else ()] in
...
```

---

## ppxlib

- Quality of life improvements

```ocaml
type t =
  { a : int
  ; b : string [@defualt "b"]
  }
[@@deriving make]
```

```
Error: Uninterpreted attribute
; b : string [@defualt "b"]
             ^^^^^^^^^^^^^^
```

---

## ppxlib

#### Limitations



