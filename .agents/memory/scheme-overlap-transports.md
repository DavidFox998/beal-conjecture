---
name: Scheme overlap transports
description: Avoid dependent transport obstacles when proving projection equations for scheme intersections.
---

For a named open `T` equal to `U ⊓ V`, construct its scheme intersection isomorphism directly with `IsOpenImmersion.isoOfRangeEq` rather than defining it by `subst T` and reusing the literal-infimum isomorphism.

**Why:** Substitution can leave an `Eq.rec`-style dependent transport around the chosen isomorphism. The isomorphism itself checks, but later projection equations may not match `isoOfRangeEq_hom_fac`, even after unfolding.

**How to apply:** Prove the range equality using the named-open equality, then prove each projection equation by composing with the appropriate open immersion and canceling that monomorphism. For pulled-back opens, use `range_pullback_to_base_of_left` and `range_pullback_snd_of_left` to reduce the range equality to a preimage of an intersection.