---
name: Projective grading in pinned Mathlib
description: The pinned Mathlib grading and projective-point interfaces require an explicit bridge before scheme-level Weierstrass proofs.
---

Mathlib's standard total-degree decomposition for multivariate polynomials is not installed as a global `GradedRing` instance, since alternate weightings are possible. Its graded-monoid and decomposition structures can be assembled explicitly, and that grading must be in scope while elaborating a statement about a homogeneous ideal, not only in the proof.

**Why:** A homogeneous cubic proof compiled, but the corresponding homogeneous-ideal statement failed before its proof because its grading instance had not yet been provided. Supplying a different `GradedAlgebra` instance in the proof did not fix the statement-level `GradedRing` requirement. Moreover, Mathlib's `Proj` requires a grading on the *quotient* ring; defining that ring and a closed zero locus in the ambient `Proj` does not supply the quotient grading or a closed subscheme.

**How to apply:** For future projective-scheme work, supply the chosen grading explicitly when forming homogeneous ideals and keep the quotient grading and actual `Proj` construction separate from pointwise Weierstrass projective-coordinate lemmas. Those pointwise lemmas do not construct the proper scheme or prove relative regularity.

The local grading used to *state* a homogeneous-localization comparison does not necessarily remain available when a later proof performs addition or multiplication on its source.

**Why:** Polynomial induction over a chart comparison failed to synthesize the source's additive and multiplicative operations even though the comparison map itself was well-typed. In this pinned Mathlib, those ring operations depend on the grading instance.

**How to apply:** Reintroduce the same quotient grading locally in a proof before using ring operations on homogeneous-localization elements; do not mistake an instance-synthesis failure for a mathematical obstruction to surjectivity.

In the pinned localization API, the scalar action on a full localization used by the homogeneous denominator identity can differ from the action selected by `Algebra.smul_def`. The direct Ore-localization zero and the zero inherited from its multiplicative structure can also fail to match in simplifier or rewriting tactics, even though they agree.

**Why:** Converting a homogeneous denominator identity into an equation of products, then cancelling a localized unit, took several failed direct rewrites. The obstacle was instance selection, not a missing algebraic hypothesis.

**How to apply:** Bridge the scalar actions using the Ore-localization fraction-at-one action and the localization algebra map before rewriting with ring homomorphisms. When `mul_zero` cannot match the zero in a localized goal, first state the equality of its direct zero and multiplicative-structure zero (provable by reflexivity here), then rewrite explicitly.

Dependent product-chart morphisms need more than commutativity of their denominators: transporting the induced `Spec` map also transports the localization ring instances, and composing heterogeneously equal arrows requires equalities at every intermediate object. Composition must follow the expression's actual association.

**Why:** Direct rewriting of a whole chart morphism and elimination of constituent heterogeneous equalities failed even though the factor order was mathematically immaterial. The missing data were instance and endpoint transports, not another ring identity.

**How to apply:** Establish the ring-instance and `Spec` endpoint transports before lifting a ring-map equality to `Spec`. For the full chart composite, line up each intermediate object equality and compose the heterogeneous arrow equalities in the same grouping as the target expression; only then turn the result into an ordinary equality across identified opens.

For a degree-preserving equivalence between graded coordinate rings, prove restriction naturality on a product basic chart by comparing both paths in the **double localization**. The translated product denominator must be treated as the product of the translated factors, not as a syntactically unchanged chart coordinate.

**Why:** Direct normalization of the product-chart map stalled because it is defined through the inverse of a product-to-double equivalence; even the translated product's target type needed an explicit bridge. Mapping the square into the double localization exposes two ordinary localization-map naturality squares and an injective comparison.

**How to apply:** First establish the graded map on the double denominator submonoid, then compare its restrictions from a single factor and from the product by checking homogeneous fractions. Use injectivity of the target product-to-double map to recover the desired product-chart equality. This is a ring-level result; scheme-map compatibility and gluing still require their own proof.

For swapped translated product opens, index both the chosen localization equivalence and the entire chosen scheme isomorphism by the source denominator, target denominator, and proof that the graded equivalence maps one to the other. Define the ordered-product versions as wrappers around these indexed constructions.

**Why:** Even after the swapped localization equivalences were identified, lifting their heterogeneous equality through a separately constructed `Spec.mapIso` composite failed on quotient-ring instances and dependent elimination. Indexing the *whole scheme comparison* keeps the denominators visible until the final congruence; commutativity then identifies both product presentations and proof irrelevance handles the evidence.

**How to apply:** Prove coherence at the ordered-product wrappers without unfolding the indexed constructions. Transport the second chart's restriction square to the first product presentation only after this scheme-level coherence is established. This settles overlap agreement, not the translated target cover or global gluing.

For a quotient `Proj` cover by coordinate opens, avoid first proving an equality between the quotient's irrelevant ideal and a variable-generated ideal. It is enough to show that each positive-degree quotient component belongs to any homogeneous prime containing every coordinate image; the zero component of an irrelevant element vanishes by definition.

**Why:** Directly treating quotient relevance as the ambient polynomial prime-cover condition skips a genuine grading argument. The degreewise route also avoids an unnecessary quotient-ring presentation of the irrelevant ideal.

**How to apply:** Lift a positive-degree quotient component to a homogeneous ambient polynomial, use the monomial support criterion to put it in the variable-generated ideal, then reassemble an irrelevant element by homogeneous decomposition. Only after establishing the actual quotient cover should chartwise morphisms be glued.

For gluing quotient `Proj` maps along a two-open scheme cover, the intersection equality alone is not the compatibility statement: the gluing theorem asks for an equality after composing with the pullback projections of the cover maps. Identify that pullback with the intersection via the open immersions' ranges, then cancel the open immersions to compare its projections to restriction maps. Transport the swapped product-chart morphism after composing with its ambient inclusion.

**Why:** Direct attempts to rewrite restriction squares into the gluing equation failed because the product opens and their arrows have dependent endpoint types. An isomorphism from the intersection to the pullback turns the existing restriction equality into the exact gluing condition without pretending those schemes are definitionally equal.

**How to apply:** Prove restriction compatibility on the ordered product open, use heterogeneous equality to exchange product order, and separately bridge that open to the pullback of the two scheme-cover inclusions before calling `glueMorphisms`. A source open cover alone does not imply a closed immersion: that property must be checked locally on a cover of the *target*.

An isomorphism of locally ringed spaces between the underlying spaces of schemes may need to be rewrapped as an isomorphism in the category of schemes before scheme-level morphism-property instances recognize it.

**Why:** The affine chart closed-immersion proof already existed, but inference could not transport it through the `projIsoSpec` isomorphisms until those locally ringed space isomorphisms were explicitly expressed as scheme isomorphisms.

**How to apply:** When using a property such as `IsClosedImmersion` through a `projIsoSpec` conjugation, construct scheme isomorphisms with the same hom, inv and inverse laws, then let the property's respects-isomorphisms instance transport the affine result. This only proves closed immersion on matching opens, not the glued global map.