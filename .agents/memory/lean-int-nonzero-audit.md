---
name: Lean Int nonzero audit
description: A direct proof pattern for integer products that avoids Classical.choice and Quot.sound.
---

When an axiom audit must allow only `propext`, avoid tactic-heavy casts and
nonlinear automation for integer nonzero proofs. Prove the result by
decomposing `Int.mul_eq_zero` and by an explicit induction over natural
exponents.

**Why:** In the Lean 4.12 Mathlib stack, `exact_mod_cast`, `nlinarith`, and
`omega` can leave `Classical.choice` and `Quot.sound` in a theorem's axiom
audit, even for elementary arithmetic statements.

**How to apply:** Derive nonzero integer casts with `Int.ofNat_ne_zero`, write
the power-nonzero argument by induction, and eliminate zero products with
`Int.mul_eq_zero`. Use this in foundational wrappers that must retain only
`propext`.