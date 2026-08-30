---
name: Lean Legendre symbol elaboration
description: How to elaborate Legendre-symbol theorem signatures from an explicit natural-prime proof in Lean 4.12.
---

When a theorem accepts `hp : Nat.Prime p`, a hypothesis containing `legendreSym p a`
must supply `Fact (Nat.Prime p)` while the signature itself is elaborated. Installing
the instance only inside the proof body is too late. Preserve the explicit prime-proof
interface by writing the hypothesis with `@legendreSym p ⟨hp⟩ a`, then install
`letI : Fact (Nat.Prime p) := ⟨hp⟩` in the body.

**Why:** `legendreSym` carries a typeclass argument for primality, and Lean elaborates
the theorem's binder types before entering its proof.

**How to apply:** Use namespace theorem applications with all required parameters,
such as `(legendreSym.eq_zero_iff p (a := a)).mpr h`, after the local `Fact` is installed.