---
name: Lean core axiom audit
description: Why an import-free declaration can still depend on a standard axiom in Lean 4.12.
---

For a genuinely axiom-free Lean 4.12 definition, avoid using `Nat.gcd` in the
core declaration: `#print axioms` reports that `Nat.gcd` depends on `propext`,
even when the file has no imports.

**Why:** “zero imports” only limits the module dependencies; it does not
guarantee that core-library declarations have no axiomatic dependencies.
The Beal primitive/common-divisor formulation was used instead of a gcd
equality so the core statement could pass an actual axiom audit.

**How to apply:** Keep foundational definitions in an import-free core module
using direct arithmetic witnesses where needed. Put bridges to convenience
definitions such as `Nat.gcd` in a Mathlib wrapper, and have CI run
`#print axioms` plus an explicit check for `propext`, `Classical.choice`,
`Quot.sound`, and `sorryAx`.

## Concrete real-number transport boundary

A theorem about the concrete type `ℝ` can legitimately require
`Classical.choice` and `Quot.sound` in Lean 4.12/Mathlib even when its
arithmetic proof is elementary. The dependencies arise from the quotient/
completion implementation of the ordered real field, not from a tactic choice.

**Why:** Direct proofs using `exact_mod_cast`, `positivity`, `norm_num`, or
standard order lemmas all instantiate the same real-number structure and
produce that dependency budget.

**How to apply:** Keep a corresponding integer or generic theorem in the
strict `propext`-only audit. If API compatibility requires the concrete-real
corollary, label it as an explicit trusted Mathlib transport, audit its exact
expected dependency set separately, and still reject `sorryAx`.

## Galois interface foundation boundary

In Lean 4.12, Mathlib's bundled `Subgroup` and matrix-unit
`Matrix.GeneralLinearGroup (Fin 2) (ZMod ℓ)` introduce `Classical.choice` into
an axiom audit even when only used as types.

**Why:** Their bundled instance and unit infrastructure carries a stronger
foundation footprint than the local Galois interface needs.

**How to apply:** For a strict `propext`/`Quot.sound` Galois boundary, use an
explicit closure-complete subgroup record and represent `GL₂(ZMod ℓ)` as
linear automorphisms of the concrete two-dimensional residual module. Audit
the resulting unramifiedness predicate directly before connecting it to Tate
or level lowering.

## Frobenius quotient representatives

A `FrobeniusClass` represented as a quotient modulo inertia has no canonical
representative that can be applied to a residual representation constructively.

**Why:** Selecting one quotient representative would introduce a hidden choice
principle and obscure the required decomposition/inertia data.

**How to apply:** State mod-ℓ trace compatibility with explicit inertia,
Frobenius-class, and decomposition-element representative arguments. Add a
canonical `Frob_n` only after the arithmetic local-data construction itself is
formalized; do not manufacture one for a scaffolding interface.

## Constructive generated subrings

In Lean 4.12, `Subring.closure` introduces `Classical.choice` into an axiom
audit, even when the generating set is explicit.

**Why:** The standard closure is implemented through lattice machinery whose
construction has a stronger foundation footprint than a strict
`propext`/`Quot.sound` boundary permits.

**How to apply:** When a generated subring must remain within that strict
budget, define finite formal expressions in the generators, evaluate them into
the ambient ring, and package the evaluation range with constructive closure
proofs for zero, one, addition, negation, and multiplication.