# General local arithmetic and the projective Weierstrass model

This folder formalizes the local arithmetic and geometry used in the general
Beal argument. The Lean files are checked against the repository's pinned Lean
and Mathlib versions through `lake build BealGeneral`; `lakefile.lean` lists the
modules included in that target. Earlier arithmetic and Tate-analysis modules
feed the projective model and its chart calculations.

## Projective proof structure

- `TateI1MinimalRegularModel.lean` defines the homogeneous cubic, its actual
  quotient `Proj`, the ambient projective plane, and explicit `Z=1` and `Y=1`
  affine chart comparisons. It proves the two source opens cover the quotient.
- `TwoChartGlobalMorphism.lean` glues the chart maps and proves each matching
  affine chart map is a closed immersion.
- `TargetOpenPreimages.lean` identifies the preimage of **each** ambient
  coordinate basic open with its quotient chart, including `X`.
- `GlobalClosedImmersion.lean` identifies the `X` restriction, covers the
  *target* by its three coordinate opens, and proves the glued map is a closed
  immersion. Its image is therefore closed in the ambient projective plane.
- `TateI1Classification.lean`, `TateI1Split.lean`, and `TateEvenBranch.lean`
  contain local node, special-fibre, valuation-one, and even-valuation
  certificates. Their statements distinguish the nodal tangent cone from the
  full cubic and retain explicit nonzero-discriminant hypotheses where needed.
- `GenericFibreNonsingular.lean` proves pointwise projective nonsingularity
  over every field with an injective map from `ℤ_[2]`, assuming `W.Δ ≠ 0`.
  It combines the affine discriminant criterion with the infinity argument.
- `SpecialFibreSmoothLocus.lean` identifies the smooth geometric points
  of a nodal special fibre away from its unique affine node, over every
  field extension of `𝔽₂`. This does not prove regularity of total-space stalks.
- `InfinityChartJacobian.lean` computes the `V = Z/Y` partial derivative
  of the **integral** `Y = 1` dehomogenization at infinity: it equals `1`,
  even after arbitrary base change. This certificate refers to the
  homogeneous cubic defining the actual quotient `Proj`, but is not a
  scheme-theoretic regularity theorem.
- `InfinityPrimeLocus.lean` proves directly in the integral `Y = 1`
  chart ring that `U³ = V · H`, with `H` a unit at every prime
  containing `V`. Thus such primes also contain `U`, and `V` lies
  in `(U)` in each corresponding localization.
- `InfinityLocalRegularity.lean` proves that the only `Y = 1`
  chart primes containing `V` are the generic and closed infinity
  section primes. Their local rings satisfy explicit Noetherian
  regular-parameter certificates of dimensions one and two,
  respectively; the latter has maximal ideal `(2,U)`.
- `TateEisenstein.lean` already proves that the translated valuation-one
  node has a Noetherian local ring of dimension two, a two-generated
  maximal ideal, and no single generator; its Eisenstein intermediate
  prime supplies the dimension lower bound.
- `TranslatedZChartNode.lean` transports this valuation-one
  regular-parameter certificate to the localization at the
  corresponding prime of the actual integral `Z = 1` chart ring. It
  constructs the coordinate translation and quotient-ring equivalence
  rather than equating only their reduced equations.
- `ZChartFlatness.lean` proves, under the nodal split-fibre
  hypotheses, that `2` is a non-zero-divisor in the actual integral
  `Z = 1` chart and all its prime localizations. It transports
  integrality of the special fibre from the translated cubic, then
  proves a Noetherian dimension-one/principal-maximal-ideal
  certificate at its generic prime in the actual chart. Every
  prime localization of the chart is Noetherian; this alone does
  not make the remaining primes regular.
- `ZChartSpecialFibreHeight.lean` proves that every prime of the
  actual `Z = 1` chart strictly containing the generic split
  special-fibre prime `(2)` has local height at least two. The proof
  applies to non-rational closed points as well as rational ones.
  It also computes both partials of the **full** reduced cubic and
  proves that an ideal containing both must contain the node ideal.
  More strongly, every reduced-cubic prime containing `u` contains
  the node. This support statement is transported through the whole
  special-fibre quotient and the integral coordinate translation to
  the actual `Z = 1` chart: the translated `u` coordinate is a unit
  in every non-node special-fibre prime localization.
  Conditional on a two-generated maximal ideal at a strict
  special-fibre specialization, the existing local height theorem
   gives Krull dimension exactly two; the non-node transport below
   now supplies those generators away from the node.
- `ZChartParameterLift.lean` proves an ideal-theoretic lifting lemma:
  if the maximal ideal modulo the uniformizer is principal, the
  integral local maximal ideal is generated by the uniformizer and
  a lift of its generator. It applies this implication to strict
  special-fibre specializations of the actual `Z = 1` chart, where
  the existing height lower bound then makes the local dimension
   exactly two. The non-node theorem below discharges this premise
   by transporting the reduced cubic's principal local ideal.
- `SplitNodeParametrization.lean` constructs `t = v/u` inside the
  reduced cubic's localization at every non-node prime, proving
  `u = t²+t` and `v = tu`. It uses this to exhibit a surjection
  from a localization of `𝔽₂[t]`, proving that **every** such
  reduced-cubic prime localization is a principal-ideal ring,
   including primes with non-rational residue fields.
- `ZChartNonNodeRegularity.lean` transports this principal-ideal
   result through the whole special-fibre quotient and localization,
   lifts a generator to the integral translated surface, and carries
   its two-parameter maximal ideal through the coordinate equivalence
   to the **actual** `Z = 1` chart. At every non-node prime strictly
   above `(2)`, the actual-chart local ring has dimension two and its
   maximal ideal is generated by the image of `2` and one lift.
- `ZChartGenericFibre.lean` proves that at any chart prime not
  containing `2`, the base DVR maps injectively into the prime
  quotient. Every nonzero base coefficient is a unit in the
  localization, which therefore receives a map from `ℚ_[2]`
  extending the coefficient map. Consequently `W.Δ ≠ 0`
  remains nonzero in the quotient. It evaluates the **actual**
  affine equation in each prime quotient and proves that at
  least one of its full partial derivatives becomes a unit in
  the corresponding chart localization, even for non-rational
  primes. This does not identify the entire generic-fibre
  coordinate ring or give a principal localized maximal ideal
  or its dimension bound.
- `GenericFibreCurveDimension.lean` proves the field-valued
  affine Weierstrass coordinate ring is integral over `K[X]`:
  its equation is monic in `Y`, and its quotient is a domain.
  It proves that this ring and every prime localization have
  dimension at most one in the prime-chain sense, including
  non-rational primes. Every nonzero curve prime contracts to a
  maximal ideal of `K[X]`; its principal generator is a possible
  polynomial parameter, but is not proved to generate the curve
  stalk's maximal ideal. The comparison and localization modules
  below transport the dimension bound to actual generic-prime stalks.
- `GenericFibreSimpleFibre.lean` proves a local simple-root lemma
  over **any** field: if the defining univariate polynomial's
  derivative is a unit at a prime of its quotient, that prime's
  localization is a field. It also proves that a local ring's
  maximal ideal is generated by `t` when its quotient by `(t)` is
  a field. The projection modules apply this to either coordinate:
  a polynomial `p(x)` from contraction is a local parameter when
  the `y`-partial is a unit; when the `x`-partial is a unit, the
  corresponding parameter is a polynomial `q(y)`. The Weierstrass
  equation is quadratic in `y` and cubic in `x`.
- `GenericFibreLocalQuotient.lean` supplies the localization/quotient
  step for a principal base ideal: if its fibre localized at the
  image of a prime is a field, the base generator generates the
  original prime localization's maximal ideal. This does not yet
  itself establish the required field-fibre premise.
- `GenericFibreProjectionX.lean` identifies the quotient of a
  polynomial `AdjoinRoot` by a principal base ideal with the
  corresponding polynomial fibre, proves the derivative-unit
  condition persists there, and combines the two preceding
  lemmas. Thus a **nonzero** field-valued affine Weierstrass
  prime with unit `y`-partial has a principal maximal ideal
  generated by its irreducible base polynomial in `x`, even
  when the residue field is not the base field. It also handles
  the zero prime separately (its local maximal ideal is zero).
- `GenericFibreProjectionY.lean` presents the negative of the
  affine equation as a monic cubic in `x` over `K[y]`, and proves
  its quotient is equivalent to the original coordinate ring.
  At a nonzero prime with unit `x`-partial, its contracted
  irreducible base polynomial `q(y)` generates the localized
  maximal ideal. The cubic derivative is the negative of the
  original `x`-partial. For `W.Δ ≠ 0`, nonsingularity at every
  prime quotient gives a unit `x`- or `y`-partial, so the two
  branches prove principality of every field-valued affine
  prime localization, including the generic point.
- `ZChartGenericFibreComparison.lean` constructs the coefficient-extension
  map from the actual `Z = 1` ring to the field-valued Weierstrass
  coordinate ring. Every nonzero base coefficient maps to a unit, so
  this map factors through any localization of the actual ring that
  inverts `2`. It also constructs a map back from the field-valued
  ring into every generic-fibre prime localization of the actual
  chart, using the fraction-field coefficient map and the affine
  equation. The localization module proves inverse laws after inverting `2`;
  these maps alone do not supply a regular parameter.
- `ZChartGenericFibreLocalization.lean` proves that inverting `2`
  in the actual integral chart also inverts every nonzero base
  coefficient. It constructs the reverse map from the field-valued
  curve into any such localization, proves both composite maps
  are identities, and obtains a ring equivalence with the
  field-valued affine Weierstrass coordinate ring. It transfers
  dimension at most one to the inverted chart and then to **every**
  localization of the actual chart at a prime not containing `2`,
  including non-rational primes. Principality is transferred in
  `ZChartGenericFibrePrincipal.lean`.
- `ZChartGenericFibrePrincipalCriterion.lean` proves every actual
  generic-prime localization is a domain. It gives a **conditional**
  principal-maximal-ideal theorem: if that local ring is integrally
  closed, its existing Noetherian and dimension-at-most-one bounds
  make it a Dedekind domain, so its maximal ideal is principal.
  The local integral-closedness hypothesis is not discharged
  here; the direct parameter argument below avoids that premise.
- `ZChartGenericFibrePrincipal.lean` proves unconditional
  principality of the local maximal ideal at every prime of
  the **actual** `Z = 1` chart away from `2`, assuming `W.Δ ≠ 0`.
  It identifies corresponding primes after inverting `2`,
  uses the proved fraction-curve equivalence, and compares the
  prime localizations. No rationality of the residue field is
  assumed.
- `ZChartAllPrimeParameters.lean` combines the generic and
  special-fibre cases into an all-prime regular-parameter certificate
  for the actual `Z = 1` chart, **under the split-node hypotheses and
  the valuation-one condition**. Generic-fibre primes have dimension
  at most one and principal local maximal ideals; the generic
  special-fibre prime has dimension one and a principal maximal
  ideal; all strict special-fibre primes have dimension two and
  two-generated maximal ideals. It does not identify projective
  stalks or cover the even-valuation branch.
- `YChartOverlapEquation.lean` checks the coordinate substitutions
  `u = x/y`, `v = 1/y` and their reverse at the level of the two
  defining equations in arbitrary commutative rings.
- `YChartOverlapLocalization.lean` uses those equations to construct
  inverse quotient-ring maps after inverting `y = Y/Z` on `Z = 1`
  and `V = Z/Y` on `Y = 1`. Their localized extensions give a
  checked ring equivalence; `x = X/Z` is **not** the inverted
  coordinate on this overlap.
- `YChartOverlapPrime.lean` matches every prime away from `V` with
  a prime away from `y`, and proves an equivalence of their
  localized rings, without assuming a rational residue field.
- `YChartAllPrimeParameters.lean` transports the split
  valuation-one `Z = 1` certificates through that equivalence and
  combines them with the existing generic and closed infinity
  boundary certificates. The result covers every prime localization
  of the actual `Y = 1` affine coordinate ring under the same
  explicit nodal, split, discriminant, and valuation-one hypotheses.
- `ProjectiveChartStalks.lean` identifies the stalk at every point
  of the actual quotient `Proj` with a corresponding prime
  localization of one of those two affine coordinate rings. It
  combines the existing two-open cover and both explicit affine
  chart isomorphisms with the structure-sheaf stalk equivalence,
  then transfers the Noetherian/dimension/generator certificate
  to **every projective stalk** in the split valuation-one case.
  It does not assert a minimal regular model or properness.
- `ProjectiveRegularLocalCriterion.lean` defines a project-local
  regular-local-ring predicate by matching a finite generating family
  for the maximal ideal to the exact Krull dimension. The pinned
  Mathlib lacks this ring-level predicate. It proves that a local
  domain of dimension at most one is either a field or has dimension
  exactly one. The split affine `Z = 1` chart has domain localizations
  at every prime: on the generic fibre by the fraction-curve
  comparison, and over `2` by the non-zero-divisor uniformizer and
  prime special-fibre ideal. The overlap transfers regularity to
  `Y = 1`; the two infinity primes have their own exact-dimension
  certificates. The two-open cover then gives the formal predicate
  at **every stalk of the actual quotient `Proj`** under the
  explicit split valuation-one hypotheses.
- `SplitProjectiveSpecialFibre.lean` proves that the homogeneous
  split nodal cubic `z v(v+u) - u³` generates a prime ideal over
  `ZMod 2`. It also checks the reversible degree-preserving
  coordinate translation of the **actual** projective equation
  reduced modulo `2`, the induced equivalence of the two reduced
  coordinate rings, and primality of the actual reduced equation.
  This does not yet identify their `Proj` with the
  scheme-theoretic special fibre of the integral quotient; that
  base-change comparison is still required.
- `ProjectiveFibreIrreducibility.lean` identifies the quotient of
  the **actual projective coordinate ring** by the image of `2`
  with the canonical split cubic's coordinate ring. The fibre
  ideal is homogeneous and prime. The degree-one infinity
  coordinate is outside it, so the corresponding closed
  `2`-vanishing locus **inside the actual quotient `Proj`**
  has a generic point and is topologically irreducible.
- `GradedProjectiveSpecialFibre.lean` constructs the grading on the
  quotient of the **actual** projective coordinate ring by `2`,
  and separately on the canonical split cubic's coordinate ring.
  It defines both `Proj` schemes and proves their underlying
  projective spectra irreducible. On polynomial representatives,
  the ring equivalence is coefficient reduction followed by the
  homogeneous translation, and both the equivalence and its inverse
  preserve each homogeneous degree. The **scheme-level Proj and
  base-change isomorphisms are not yet proved**; even a graded
  coordinate-ring equivalence alone does not identify the actual
  scheme-theoretic special fibre.
- `ProjectiveBaseMorphism.lean` constructs scalar global sections of
  the quotient `Proj` structure sheaf and uses the Γ–Spec adjunction
  to define its structure morphism to `Spec ℤ_[2]`. It also defines
  the **actual scheme-theoretic special fibre** as the pullback along
  `Spec (ZMod 2) → Spec ℤ_[2]`. The comparison of the *global*
  pullback with the graded quotient `Proj`, and its scheme-level
  comparison with the canonical split cubic, remain unproved. No
  reduction classification follows from these definitions alone.
- `ProjectiveChartComparison.lean` constructs degree-zero localization
  maps for degree-preserving ring homomorphisms even when the two
  gradings use different coefficient rings. It proves that these
  maps commute with enlargement of the denominator submonoid and
  that a graded coordinate-ring equivalence induces an isomorphism
  of basic-chart rings. This applies to the quotient special-fibre
  coordinate ring and the canonical split cubic, with the image of
  each chart denominator kept explicit. These ring maps have not
  yet been promoted to an isomorphism of the two `Proj` schemes.
- `AffineFibreTensor.lean` proves the general affine base-change
  ring isomorphism `S ⊗[R] (R ⧸ I) ≃+* S ⧸ I S`.
- `ProjectiveQuotientChart.lean` proves that degree-zero localization
  at a homogeneous element commutes with quotient by a homogeneous
  *base-scalar* ideal when its image has no vanishing powers. It
  identifies the map's kernel as the ideal generated by the scalar
  fraction and constructs quotient-chart ring isomorphisms for
  `Z`, `Y`, and their product `ZY` in the split nodal case.
  The quotient maps also commute with restrictions from either
  basic chart into their double localization. This is an algebraic
  comparison of the integral chart **modulo `2`** with a chart of
  the graded quotient. The canonical split cubic comparison likewise
  remains at chart-ring level.
- `ProjectiveFibreChartBaseChange.lean` identifies the scalar fraction
  on a homogeneous basic chart with restriction of the global Proj
  scalar section, first in the structure sheaf and then on global
  sections of the restricted scheme. Through the Γ–Spec adjunction it
  proves that the **actual** structure morphism restricts to the
  explicit affine scalar map under the Proj–Spec chart isomorphism.
  It then identifies the pullback of this *restricted morphism* along
  `Spec (ZMod 2) → Spec ℤ_[2]` with `Spec` of the corresponding graded
  quotient chart, subject to a nonvanishing-power hypothesis on the
  denominator. In the split-node case it instantiates this for the
  actual `Z`, `Y`, and `ZY` restrictions. The quotient base and
  `ZMod 2` are explicitly identified. Pasting for pullbacks shows
   each restricted fibre is an open subscheme of the **global** fibre;
   pulling back the integral two-chart cover gives an open cover of
   that fibre. The scalar chart maps preserve restriction to a product
   open. Restriction therefore descends to the chart quotients by the
   base scalar, and the resulting quotient-chart ring isomorphisms
   commute with restriction to the product overlap. This also gives
   a commuting square of the corresponding affine `Spec` maps; the
   same argument applies with `Z` and `Y` interchanged, since their
   products define the same basic open. The tensor-to-quotient
   base-change isomorphism and the complete tensor-to-graded-quotient
   chart isomorphism now commute with that restriction, as do their
   affine `Spec` maps. The chosen pullback-to-tensor isomorphism and
   the chosen **affine** pullback-to-graded-quotient isomorphism are
   natural under product-chart restriction. Independently, the
   particular Proj-to-affine basic-chart isomorphisms commute with
   the actual inclusion of projective opens. Their separately typed
   pullback maps now form a commuting square, and composing it with
   affine base change proves naturality of the **chosen restricted
   Proj-fibre isomorphisms** under a product-open inclusion. The
   residue-field comparison also respects that inclusion, so the
   corresponding chosen chart isomorphisms over `ZMod 2` are natural
   for either ordered product. The chosen product-chart isomorphism
   is invariant under swapping its factors after dependent transport.
   The graded special-fibre quotient's own `Proj` has a proved `Z`/`Y`
   open cover, and each member is isomorphic to the corresponding
   member of the pulled-back cover of the global fibre. Both
   scheme-theoretic intersections are identified with their named
   `Z·Y` product opens. The quotient-`Proj` overlap projections agree
   with both ordinary restrictions, while the actual-fibre projections
   agree with both pulled-back product-open inclusions. Comparing the
   reversed `Y·Z` product to `Z·Y` establishes naturality of the chosen
   cover-chart isomorphism for the **second** restriction as well.
   The resulting overlap isomorphism commutes with both projections:
   the two local transition maps therefore agree on the
   scheme-theoretic intersection. These compatible local isomorphisms
   and their inverses glue to
   `splitNodeSpecialFibreProjSchemeIso`, an isomorphism between the
   **actual scheme-theoretic special fibre** and the graded quotient's
   `Proj`. It transports the proved irreducibility of that `Proj` to
   the actual fibre. This does not yet identify the fibre with the
   canonical split cubic's `Proj` or classify its Kodaira type.

## Current boundary

**Properness remains unproved.** This Mathlib pin has interfaces for universal
closedness, finite type, and separatedness of scheme morphisms, but no
ready-made properness result for projective space over `ℤ_[2]`. In particular,
the closed image above is not a proof that the structure morphism to
`Spec ℤ_[2]` is universally closed. A sorry-free properness argument needs to
construct that morphism and prove the required projective-space property (or
prove the property directly for the cubic); no theorem in this folder assumes
it silently.

**The split valuation-one projective stalks satisfy the
dimension-matched regular-local-ring predicate**, including
non-rational points. In the low-dimensional branch, domainhood
excludes the zero-dimensional non-field case; a principal maximal
ideal and an upper dimension bound alone would not suffice.
This does not cover the even-valuation node. The actual scheme-theoretic
special fibre is now identified with the graded quotient's `Proj` and
proved irreducible in the split nodal case. A graded-ring-compatible
**scheme** isomorphism from that `Proj` to the canonical split cubic,
and the requisite model and minimality argument, are still needed.
Consequently these results cannot yet identify the projective cubic
with a minimal regular model. The split nodal tangent cone has two
distinct tangent lines, but this alone does not establish Kodaira
type `I₁`; at the node the partial derivative with respect to `v`
is `u = 0`, not a unit. The even-branch polynomial identity does not
establish a blow-up or conductor exponent. Any subsequent model or
conductor theorem must keep `W.Δ ≠ 0` explicit and discharge those
geometric steps separately. In the split branch, the relevant
discriminant hypothesis is `v₂(W.Δ) = 1`; the genuinely even-valuation
`Iₙ` branch requires even `v₂(Δ)`, not merely `4 ∣ Δ`.