---
name: Lean 4.12 real arithmetic boundaries
description: Choice-free certificate design for real-looking inequalities under Lean 4.12 axiom audits.
---

Lean 4.12's real field, norm, and floor infrastructure can introduce `Classical.choice` into the axiom footprint of a certificate type, even when no explicit choice or floor operation is written. For choice-free boundary interfaces, carry the upstream fixed-point rational data and clear denominators into a natural-number inequality.

**Why:** The 07h desert-brothers boundary must remain auditable at `[propext, Quot.sound]`; a literal real reciprocal-distance field polluted the supplier footprint with `Classical.choice`.

**How to apply:** Keep the rational/fixed-point certificate as supplied data. Put its real interpretation and transport theorem in a separate audited module so consumers of the certificate do not inherit the real field's choice dependency.