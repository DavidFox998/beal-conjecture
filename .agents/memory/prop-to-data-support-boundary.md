---
name: Prop-to-data support boundary
description: Why token-producing newform support must remain data-valued rather than hidden behind a proposition existential.
---

Keep any newform, representation-realization, and Hecke-annihilation witnesses
needed to construct a `PreservedForm` in a data-valued record in `Type`.
Do not first hide them behind an existential proposition and then attempt to
extract them into the token type.

**Why:** Lean forbids eliminating a proposition-valued existential into
`PreservedForm` without a choice principle. An attempted direct transport
therefore either fails or silently enlarges the foundational footprint.

**How to apply:** The proposition-valued support predicate remains useful for
logical statements. Whenever B15 or a later level-lowering layer must return
token data, carry the corresponding support record explicitly and only forget
it to the proposition when a Prop-valued conclusion is sufficient.