---
name: Tate local conductor boundary
description: The formal boundary for Tate Step 2 while a complete conductor computation remains outside Lean.
---

Use one integral Frey-model witness per fixed Frey equation. Its odd-prime local
conductor contract must relate the same model's `c₄`, discriminant, and conductor
value, and the derived prime-by-prime result must reuse that witness rather than
receive an arbitrary natural number.

**Why:** A generic Tate axiom with unrelated `c₄`, discriminant, and conductor
was too weak to express a mathematical local conductor statement. Merely storing
a conductor field is also insufficient unless the local exponent relation is part
of the model contract.

**How to apply:** Keep the Tate boundary explicit and limited to odd primes until
the full conductor, including the 2-adic exponent, is represented and proved.
Documentation must call it an axiomatized local contract rather than a global
conductor computation.