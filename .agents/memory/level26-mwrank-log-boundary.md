---
name: Level-26 descent certificate boundary
description: Separation between reproducible twisted congruences, Sage output, and the unformalized semantic descent bridge.
---

Keep the dependency-free twisted-congruence certificate and any Sage/mwrank
transcript in separate immutable outputs.  Coefficient-defined Lean names must
not be silently identified with database labels returned by Sage.

**Why:** Modular witnesses, reported rank-zero output, and `--trivial` quartic
labels do not provide p-adic lifts, a complete descent map, identification with
the full 2-Selmer group, or the Selmer-to-rank bridge. Sharing an output path
also makes the two independent reproductions overwrite one another.

**How to apply:** Check finite twisted congruences independently and feed them
to one theorem-valued external interface. Preserve explicit obligations for
Qp lifting, covering completeness, Selmer semantics, and rank soundness until
Lean can verify them.