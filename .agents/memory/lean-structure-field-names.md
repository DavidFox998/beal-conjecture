---
name: Lean structure field names
description: A Lean 4.12 elaboration collision involving short dependent field names under broad imports.
---

When a structure's later fields depend on earlier fields, avoid single-letter names in a namespace with broad imports. Lean 4.12 can resolve those identifiers as existing terms, producing misleading `HPow`, `Nat.gcd`, universe, and downstream unknown-identifier errors.

**Why:** A dependent arithmetic record failed even with explicit `Nat.pow`; a minimal reproduction compiled once its fields used descriptive names.

**How to apply:** If a structure declaration causes cascading elaboration failures, first reproduce it minimally and rename dependent fields descriptively before changing theorem logic or adding type annotations elsewhere.