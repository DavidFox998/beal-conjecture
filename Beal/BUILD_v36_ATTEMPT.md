# v36 modular starter — 2026-09-30 UTC

Branch: `beal-v36-modular`, cut from `beal-v35-odd-reduction` at `25d9ac71`. That tip already contains `origin/main` `3dd7728f` (merge `cb55c248`). No merge to `main`, no tag, no Zenodo mint. `main` stays `3dd7728f` with DOI `10.5281/zenodo.23054568`.

## Dependency graph

```
v34 nodal chart (BealEven, 461 lines)
  E_nodal = lineV ∪ lineVU over a domain
  lines meet only at (0,0)
  F₂ points (0,0), (1,0), (1,1)
  D(2) dense in Spec(ℤ₂); I[1/2] = ⊤ on the generic fibre
  finite type of the divided 2-chart
        │
        │  does not give
        ▼
  degree-one / nonzero overline{2t}     EXCLUDED
  UniversallyClosed / IsProperMap       not proved
  E ≅ ℙ¹                                false: the chart is a node
  pullback vs quotient Proj             not identified
        │
        ▼
v35 odd arithmetic (BealOdd, 249 lines)
  Odd x → Odd p → x^p % 4 = x % 4 → 2 ∤ x^p
  counterexample: Odd 3 ∧ 2 ∣ 2^3
  odd_branch_chart (2 ∤ x ∧ 2 ∤ y)      UNINHABITED
        │
        ▼
v36 modular package (BealModular, 169 lines)
  Frey model Y² = X(X - x^p)(X + y^q)   polynomial identity only
  coprime bases cannot both be even     proved
  coprime(2,3) shows one base may be even
  frey_semistable                       UNINHABITED (needs the 2-adic input)
  wilesBCDT_modularity                  UNINHABITED shape, not a Lean axiom
  ribet_level_lowering                  UNINHABITED shape, not a Lean axiom
  x0_2 genus numerals = 0               proved arithmetic, not dim S₂(Γ₀(2))
  no_weight_two_level_two_newform       not identified with those numerals
  RibetAxiom                            UNINHABITED conjunction
```

## What is proved

- `frey_product_eq_weierstrass`: the product `X(X - a^p)(X + b^q)` equals the Weierstrass right-hand side used by `freyWeierstrassGeneral`.
- `coprime_not_both_even`: `Nat.Coprime x y → ¬ (2 ∣ x ∧ 2 ∣ y)`. The even-chart target is incompatible with coprimeness once it is derived. Deriving it is still open (`even_solution_implies_two_divides`).
- `coprime_allows_one_even`: `Nat.Coprime 2 3`.
- `reused_odd_exponents_avoid_two_chart`: the v35 mod-4 lemma. It is not applied to the Frey curve, and `I[1/2] = ⊤` is not applied either.
- `x0_2_genus_numerals`: `1 + 3/12 - 1/4 - 0/3 - 2/2 = 0` in `ℚ`.

## What is not proved

`RibetAxiom` is

```
frey_two_adic_input ∧ odd_Beal ∧ even_Beal
```

with `frey_two_adic_input` equal to `even_solution_implies_two_divides ∧ odd_branch_chart`.

Wiles/BCDT and Ribet level lowering are `def`s with a predicate parameter. Mathlib v4.12.0 has neither theorem. They are not declared with the Lean `axiom` keyword: an `axiom` would be usable as a proof and would add a dependency beyond `propext`, `Classical.choice`, and `Quot.sound`. The trivial predicate `fun _ => True` fits the shape and is not modularity; this file gives no instance.

`no_weight_two_level_two_newform` still needs the identification of `dim S₂(Γ₀(2))` with the genus numeral. The numeral theorem does not inhabit it.

## Commands

- `lake build BealEven`: exit 0
- `lake build BealOdd`: exit 0
- `lake build BealModular`: exit 0. `Built Beal.«Beal.Modular».Axioms`. `Build completed successfully.`

Printed axioms on the new theorems are among `propext`, `Classical.choice`, and `Quot.sound`. No `sorryAx`. No new Lean axiom.

## Lake module

`lean_lib BealModular` uses

```
roots := #[`Beal.«Beal.Modular».Axioms]
globs := #[.one `Beal.«Beal.Modular».Axioms]
```

The directory is `Beal/Beal.Modular/`. A bare name is not a `Glob`.

## v38 outline

`docs/v38.md` lists the chain that is still open. No Lean file was added, and no Lean `axiom` was declared.

Rebuilt on `6f2fcb66` before that note:

- `lake build BealEven`: exit 0
- `lake build BealOdd`: exit 0
- `lake build BealModular`: exit 0

The outline, in order: a degree-one nonzero `overline{2t}` (excluded; this is the missing input for `2 ∣ X, Y` and for `2 ∤ X, Y`); `UniversallyClosed` for `Bl_I` proved from the three-open cover, the 105-line saturations `J_X = (G_X : X^∞)` and `J_Y = (G_Y : Y^∞)`, the 59-line generic fibre, and the 167-line special-fibre glue, because Mathlib v4.12.0 has no Rees `Proj` properness theorem; Frey semistability from those 2-adic inputs; modularity and Ribet as uninhabited `Prop`s; and a theorem `dim S₂(Γ₀(2)) = 0`, which the rational numeral `1 + 3/12 - 1/4 - 2/2 = 0` is not. `E ≅ ℙ¹` stays false for the node.
