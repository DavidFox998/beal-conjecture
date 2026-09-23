---
name: Conditional bridge proposition boundaries
description: Why concrete Mazur, Tate, and Ribet closure results require explicit conversions before entering the older Conditional-32 bridge.
---

The newer concrete Mazur, Tate, and Ribet proposition names are separate
contracts from the older abstract propositions consumed by the
Conditional-32 bridge. Do not treat them as definitionally identical or
silently coerce one to the other. Require explicit typed conversion
boundaries and apply them only after deriving each concrete conclusion.

**Why:** The concrete modules and the older bridge were developed in
different namespaces with intentionally distinct proposition surfaces.
Numerical identities cannot connect them, and pretending they coincide
would overstate the formal closure.

**How to apply:** Any future Conditional-32 theorem should preserve the
order: construct concrete Mazur/Tate/Ribet evidence, derive the concrete
conclusions, apply explicit conversion functions, then feed the resulting
three abstract hypotheses to the legacy bridge.