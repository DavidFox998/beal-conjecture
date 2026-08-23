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