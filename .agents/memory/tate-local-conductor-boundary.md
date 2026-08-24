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

The final conditional route must pass the Tate-selected model into the modular
boundary. That boundary may return a typed form token and a certified descent
plan, while the Ribet interface transports the token one exact division at a
time to the level-2 contradiction.

**Why:** This removes the opaque direct `False` conclusion without falsely
claiming that Wiles alone has been formalized as a source of global
level-lowering data.

**How to apply:** Keep the plan explicit in documentation as an unformalized
global scaffold. Do not relabel it as a consequence of local Tate Step 2 or as
a constructed modular-form object.