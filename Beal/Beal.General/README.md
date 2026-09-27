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

## Current boundary

**Properness remains unproved.** This Mathlib pin has interfaces for universal
closedness, finite type, and separatedness of scheme morphisms, but no
ready-made properness result for projective space over `ℤ_[2]`. In particular,
the closed image above is not a proof that the structure morphism to
`Spec ℤ_[2]` is universally closed. A sorry-free properness argument needs to
construct that morphism and prove the required projective-space property (or
prove the property directly for the cubic); no theorem in this folder assumes
it silently.

**All-stalk regularity remains unproved.** The valuation-one node
has a Noetherian dimension-two/two-generator certificate in the
actual `Z = 1` coordinate ring. Under the split nodal hypotheses,
the generic special-fibre prime also has a dimension-one/
one-generator certificate. At every non-node strict special-fibre
specialization, including non-rational primes, the integral chart
now has a checked dimension-two/two-generator certificate.
The infinity boundary `V = 0` is covered by the two local-ring
certificates above, but primes on the overlap `V ≠ 0` still need
regularity transported from the `Z = 1` chart. Generic-fibre
primes of `Z = 1` now have both a dimension-at-most-one bound
and a principal local maximal ideal under `W.Δ ≠ 0`, including
non-rational primes; the generic point has zero maximal ideal.
Consequently they cannot yet identify the projective cubic with a minimal
regular model. A split nodal tangent cone by itself does not establish Kodaira
type `I₁`, and the even-branch polynomial identity does not establish a
blow-up or conductor exponent. Any subsequent model or conductor theorem
must keep `W.Δ ≠ 0` explicit and discharge those geometric steps separately.