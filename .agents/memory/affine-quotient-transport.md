---
name: Affine quotient transport
description: Handling dependent ideal-quotient codomains in the pinned tensor-product right-exactness API
---

When a linear equivalence lands in a quotient by a submodule proved equal to an extended ideal, compose with `Submodule.quotEquivOfEq` and use its `quotEquivOfEq_mk` lemma to compare representative formulas.

**Why:** Direct rewriting of the ideal equality inside an equality involving `Submodule.Quotient.mk` failed with a dependent-motive error; a cast-based equivalence also left an opaque cast that simplification did not remove.

**How to apply:** Use this approach when lifting tensor-product quotient equivalences from module quotients to ring quotients or when checking that a ring map matches a known linear equivalence on pure tensors.