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