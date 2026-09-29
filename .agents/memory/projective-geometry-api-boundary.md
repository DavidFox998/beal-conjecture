---
name: Projective geometry API boundary
description: Distinguishes the available affine and projective interfaces in the pinned Mathlib for the Weierstrass model.
---

The pinned Mathlib has a scheme construction for `Proj` and a closed-immersion theorem for `Spec` of a quotient. Its algebraic geometry interfaces do not supply a ready-made properness theorem for `Proj` of a finitely generated graded algebra. Treat properness as a separate proof obligation, not as a consequence of defining the quotient scheme or proving its global closed immersion.

**Why:** Affine chart immersions do not alone imply a global closed immersion: the ambient target opens must be covered, and their preimages identified with the matching quotient charts. Even after that argument succeeds, closed immersion alone does not establish that the ambient projective plane is proper over the base.

**How to apply:** Recheck the live pinned API for properness before deriving it from a projective embedding; if the necessary projective-space result is absent, supply it independently. Do not infer properness, regularity, minimality, or reduction type solely from the closed immersion.

The pinned Proj construction does not automatically give a structure morphism to the spectrum of the grading base, nor a base-change theorem for a homogeneous quotient. Its scalar global sections can supply the former, but a fibre-product comparison still needs compatibility on affine chart rings and overlaps.

**Why:** A graded coordinate-ring equivalence and an irreducible uniformizer zero locus do not identify the scheme structure of the actual fibre; confusing these gave an unjustified shortcut toward reduction claims.

**How to apply:** When reasoning about a projective special fibre, distinguish the actual pullback from Proj of the graded coordinate quotient until the chartwise base-change isomorphisms and their overlap compatibility are proved. Do not transfer scheme-theoretic irreducibility or reduction classification across an unproved comparison.

For a Proj chart, equality of scalar sections in the projective structure sheaf is not yet equality of maps into the global sections of the *restricted scheme*. Transport through the canonical comparison between those two section rings before using the Γ–Spec adjunction; then use the adjunction's naturality to identify the restricted base morphism.

**Why:** A direct large calculation at the scheme level stalled Lean elaboration, while the sheaf and restricted-scheme section rings required an explicit isomorphism. The staged proof made the base-map identity checkable without assuming the desired pullback comparison.

**How to apply:** In future local-to-global Proj comparisons, first check the sheaf restriction square, move to Γ of the open subscheme through the canonical comparison, and only then compare the associated scheme morphisms. The fact that a restricted chart is open in the actual fibre still does not imply its local isomorphism glues over the overlap.

A commutative square of scalar-quotient chart rings (or of their affine spectra) is only the algebraic part of fibre-chart overlap compatibility. Even after naturality is proved separately for the chosen affine pullback-to-quotient and Proj-to-affine chart isomorphisms, it does not automatically establish naturality of their composite on the actual restricted Proj fibre.

**Why:** The composite changes pullback diagrams as well as chart objects. Compatibility with the induced pullback maps is an additional categorical square; a direct statement with deeply nested pullback maps can exhaust Lean's elaboration heartbeats even when its component squares check.

**How to apply:** Before identifying the global scheme-theoretic fibre with a graded-quotient Proj, factor the induced pullback maps into separately typed morphisms, prove the composite square under both overlap inclusions, and only then use the open-cover gluing API. Give the affine pullback maps the same explicit scalar and residue-map presentation as the restricted Proj pullbacks; otherwise categorical projection rewrites may fail to match definitionally equal maps. Do not merely raise elaboration limits on a giant nested statement. Reversing product coordinates also needs explicit transport: the two product opens agree by commutativity, but their chart-ring types are not definitionally identical.

For a candidate affine chart represented by a polynomial quotient, a noncomputable type-synonym `def` may prevent Lean from synthesizing the quotient's ring instance at the point where a ring hom is stated; use a reducible `abbrev` for that ring type. This Mathlib pin distinguishes the `Spec` module's locally ringed-space construction from scheme-level `Spec.map`, which is available after importing the Scheme module.

**Why:** The candidate divided chart's ring hom failed during elaboration before its proof, even though the quotient was a ring; then its scheme morphism failed because only the lower-level `Spec` module was imported. Neither was a mathematical obstruction to defining the chart map.

**How to apply:** Use a reducible alias for the quotient coordinate ring, establish the polynomial identity before quotient-lifting, and import the scheme-level interface to construct the induced `Spec.map`. A chart morphism to the original surface still does not identify a blow-up or a strict transform: saturation and the other charts remain separate obligations.

An affine candidate can pass both the equation-saturation test and the Cartier-centre test without being identified as an open of the blow-up. The pinned Rees-algebra development defines an algebraic subalgebra, not a ready-to-use scheme blow-up with a proved `D₊` chart comparison. Even after supplying a grading and a basic-open `Spec` description, identifying its degree-zero ring with the divided chart remains an independent kernel-and-surjectivity problem.

**Why:** Local ideal calculations do not construct the graded `Proj`, prove the affine-chart equivalence, or glue the other charts. Calling the candidate morphism a strict transform on that basis would promote a necessary condition into the missing geometric theorem.

**How to apply:** Use saturation and non-zero-divisibility as inputs to a future Rees/Proj chart proof; only then identify the chart morphism with the blow-up and compare global fibres. Do not infer resolution, minimality, Kodaira type, or conductor from the local calculation alone.

For affine schematic-closure calculations in this pin, the localization kernel can be computed directly from powers of the chosen denominator, then the quotient by that kernel embeds in the localization. The quotient-lift injectivity result is in the ring-homomorphism namespace of the separate quotient-operations module, not the ideal-quotient namespace.

**Why:** A correct injectivity proof stalled twice on an unavailable lemma name/import after the kernel calculation had already checked. The resulting embedding still only describes closure in the chosen affine ambient ring.

**How to apply:** Establish the kernel using the away-localization zero criterion and a separately proved saturation equality, then use the ring-homomorphism quotient-lift injectivity theorem. Do not treat the embedding as a Rees `D₊` comparison until its graded chart equivalence is proved.

When the target is the blow-up **of the surface** at its centre, take the Rees algebra of the centre ideal *after mapping it into the surface coordinate ring*. The ambient plane's Rees algebra constructs a different blow-up, even though the surface strict transform may later be compared inside it.

**Why:** The affine saturation calculation starts in an ambient plane, which makes it easy to conflate the ambient blow-up with the surface blow-up. Neither its ideal kernel nor its coefficientwise Rees map supplies the required graded basic-open equivalence.

**How to apply:** Use the surface-centre Rees grading and its degree-zero basic-open localization as the actual `D₊` object, then prove the ratio-coordinate map has precisely the divided ideal as kernel and is surjective. Principalization of the image ideal is necessary but does not replace this ring equivalence or the structural morphism to the original surface.