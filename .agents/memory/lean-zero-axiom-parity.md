---
name: Lean zero-axiom parity
description: Keeping elementary Nat parity and power proofs audit-clean after Mathlib imports.
---

For strict zero-axiom arithmetic after importing Mathlib, spell natural powers
with explicit `Nat.pow` rather than overloaded power notation, and use direct
recursion plus explicit divisibility witnesses.

**Why:** In Lean 4.12, overloaded natural-power notation can resolve through an
instance carrying `propext` after Mathlib is loaded, even when a definitional
equality is proved by reflexivity. Explicit `Nat.pow` avoids that hidden
dependency.

**How to apply:** Use explicit `Nat.pow` in declarations requiring an empty
`#print axioms` report. Prove successor-power reductions with direct equality
proof terms, and audit every helper transitively.
