---
name: Lean parent namespace exposure
description: Namespace-resolution rule that matters in nested Beal assembly modules.
---

Opening a nested Lean namespace does not make declarations from its parent
namespace available unqualified.

**Why:** A final assembly module opened several `Beal17Mazur.Gates.*`
namespaces, but `X0_26_RationalPoint` remained unresolved because it is
declared directly in `Beal17Mazur`. Opening `Beal17Mazur.Gates` still did not
expose the parent declaration.

**How to apply:** When a declaration is defined in a parent namespace, open
that exact parent or use its fully qualified name. Do not assume that opening
one or more child namespaces exposes parent declarations.