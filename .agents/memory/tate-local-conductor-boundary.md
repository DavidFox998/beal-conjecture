---
name: Tate local conductor boundary
description: The formal boundary for Tate Step 2 while a complete conductor computation remains outside Lean.
---

Use one integral Frey-model witness per fixed Frey equation. The model stores
the equation as well as its coefficients, `c₄`, discriminant, and one supplied
global conductor. The odd-prime Tate theorem must consume explicit unit-`c₄`
and bad-discriminant certificates for that same model; the derived result must
reuse its conductor rather than receive an arbitrary natural number.

**Why:** A generic Tate axiom with unrelated `c₄`, discriminant, and conductor
was too weak to express a mathematical local conductor statement. Hiding the
local exponent relation as a model field was also too permissive: it made the
supplier provide the theorem instead of exposing the real mathematical boundary.

**How to apply:** Keep the Tate boundary as one narrow external theorem with
explicit prime, oddness, unit-`c₄`, and bad-fiber hypotheses. Prove the Frey
specialization as a wrapper. Do not call it a global or 2-adic computation.

The conductor exponent-one conclusion does not establish that a residual
Galois representation is unramified at that prime. That step requires an
actual absolute-Galois/inertia action and a theorem relating the Frey curve's
local reduction to the action of inertia.

**Why:** Conductor arithmetic describes the selected model's natural-number
conductor, whereas unramifiedness is a property of a representation restricted
to an inertia subgroup; neither object nor a bridge between them is currently
formalized.

**How to apply:** Do not use the Tate contract as an unramifiedness proof or
as a replacement for the representation-theoretic premise of level lowering.

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