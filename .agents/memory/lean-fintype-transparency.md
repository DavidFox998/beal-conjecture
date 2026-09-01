---
name: Lean typeclass transparency
description: A Lean 4.12 typeclass-synthesis quirk for finite types wrapped around Fin.
---

When a finite type is only a renamed `Fin n`, define the public name as an
`abbrev` rather than an ordinary `def` if downstream declarations need Lean
to synthesize the inherited `Fintype` instance.

**Why:** In this environment, typeclass synthesis did not unfold an ordinary
definition while searching for `Fintype`, so a direct `Fintype.card` guard
failed even though the underlying type was `Fin n`. An `abbrev` preserved the
same definitional type while making the instance visible.

**How to apply:** Prefer `abbrev Foo := Fin n` for transparent finite index
types used by `Fintype.card` decision guards. Keep ordinary `def` when the
type intentionally needs an opaque boundary or its own explicit instance.