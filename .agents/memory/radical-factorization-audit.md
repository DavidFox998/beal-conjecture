---
name: Radical factorization audit
description: Approved dependency boundary for the literal prime-radical Beal branch.
---

The literal `Rad(A * B * C) = p` factorization bridge may depend only on
`propext`, `Classical.choice`, and `Quot.sound`. These are the standard Lean
foundations used by the finite factorization (`Finsupp`/`DFinsupp`) library,
not mathematical assumptions.

**Why:** Requiring an empty axiom report would force the project either to
reimplement finite factorization from Lean core or to treat the required
prime-power conclusion as an unproved certificate. Neither is an honest
formalization of the literal radical condition.

**How to apply:** Audit the public prime-radical branch after changes. Reject
any dependency on mathematical theorem declarations (for example modularity,
level-lowering, BSD, RH, or cusp-form assumptions), even if the three
foundational entries remain present.