---
name: Lean Lake source directories
description: Lake package convention for small standalone Lean repositories.
---

When a standalone Lean repository keeps source files under `lean/`, its
`lean_lib` declaration must explicitly set `srcDir := "lean"`. Otherwise Lake
looks for the library entrypoint at the repository root.

**Why:** The first clean GitHub build of the foundations scaffold restored all
dependencies successfully but failed before elaboration because Lake searched
for `./BealLevel26Foundations.lean` instead of the intended `lean/` file.

**How to apply:** Use a `lean_lib Name where` block with `srcDir := "lean"` for
new repositories whose source tree is separated from package metadata.