---
name: Two-adic generic-fibre comparisons
description: Safe route for comparing actual two-adic affine charts with fraction-field coordinate rings.
---

When passing from an actual chart over `ℤ_[2]` to its generic fibre, establish that inverting `2` inverts *every* nonzero base coefficient before constructing the `ℚ_[2]`-algebra map. The reason is the DVR factorization into a unit times a power of the uniformizer. Prove the comparison for an abstract algebra satisfying `IsLocalization.Away`, then specialize to the canonical localization only at the theorem boundary.

**Why:** A map that inverts only `2` does not acquire a fraction-field coefficient map by definition. This Mathlib pin also produced semiring-instance diamonds when the concrete `Localization.Away` type appeared too early in a return type; the abstract localization avoids those elaboration problems.

**How to apply:** Use this route for future two-adic generic-fibre chart comparisons and for transporting results to arbitrary generic-prime stalks. Do not transport dimension or regularity across a one-way coefficient-extension map; prove the inverse laws first. Dimension bounds and principal-maximal-ideal arguments remain distinct obligations.