---
name: Lean tactic-linter replacement scope
description: How to interpret tactic-linter replacement suggestions for semicolon-separated or sequential tactics
---

When Lean reports “Try this: ring_nf” at the location of a final `ring` in a tactic sequence, replace that final tactic only. Keep preceding normalization tactics unless Lean separately reports that they do nothing.

**Why:** A cast-normalization step can be necessary to expose the ring identity even when the linter recommends a better final normalization tactic. Treating the suggestion as a replacement for the whole sequence can leave cast-heavy goals unsolved.

**How to apply:** Follow the diagnostic source location precisely. Remove an earlier tactic only when an `unusedTactic` warning identifies that tactic itself, then rebuild the affected theorem before applying the same change to a visually similar proof.