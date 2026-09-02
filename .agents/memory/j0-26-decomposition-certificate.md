---
name: J0(26) decomposition certificate
description: Durable boundary and model-order rule for the reproducible level-26 Jacobian decomposition.
---

The Sage decomposition labels its `(1,0,1,-5,-8)` factor `26a` and its
`(1,-1,1,-3,3)` factor `26b`, while the established Lean development names
those coefficient models in the opposite order. Preserve both sources and
record the coefficient match explicitly; never silently relabel the Lean
models.

**Why:** The product is insensitive to factor order, but silently changing
names would make the decomposition certificate disagree with earlier checked
elliptic-curve definitions and could corrupt later rank or covering bridges.

**How to apply:** Keep the JSON witness limited to transcript integrity,
models, and dimension arithmetic. Treat Sage decomposition semantics and
mwrank/second-descent rank semantics as visible theorem premises, not facts
derived from the JSON or global Lean axioms.