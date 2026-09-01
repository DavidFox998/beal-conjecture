---
name: Lean decide on finite certificates
description: How to keep finite audit certificates kernel-decidable when Lean will not synthesize Decidable for a named Prop.
---

For a finite table check, prefer a `Bool` evaluator and state its theorem as
`evaluator data = true`. If an aggregate certificate must remain Prop-valued,
construct it explicitly from the individually decided component theorems rather
than asking `decide` to solve the named wrapper.

**Why:** In Lean 4.12, typeclass synthesis may not unfold a named `def ... :
Prop` far enough to find `Decidable`, even when every underlying equality and
finite `List.all` check is decidable. Failed theorem elaboration then appears as
temporary `sorryAx` in `#print axioms`, which can obscure the real issue.

**How to apply:** Encode bounded row checks with `List.all`; prove each
`Bool = true` fact using kernel `decide`; then assemble conjunction-valued audit
bundles from those theorems. Do not switch to `native_decide` merely to bypass
the wrapper-elaboration problem.