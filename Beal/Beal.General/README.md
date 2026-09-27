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

## Current boundary

**Properness remains unproved.** This Mathlib pin has interfaces for universal
closedness, finite type, and separatedness of scheme morphisms, but no
ready-made properness result for projective space over `ℤ_[2]`. In particular,
the closed image above is not a proof that the structure morphism to
`Spec ℤ_[2]` is universally closed. A sorry-free properness argument needs to
construct that morphism and prove the required projective-space property (or
prove the property directly for the cubic); no theorem in this folder assumes
it silently.

**All-stalk regularity remains unproved.** The two fibrewise nonsingularity
statements do not identify the local rings of the integral quotient or
prove their regularity. The infinity derivative is a certificate at one
point, not at every `Y = 1` stalk. At the valuation-one node, the
two-generator upper bound on the local dimension still needs a matching
lower bound and a regular-local-ring criterion. The translated nodal
special-fibre equation is not the integral infinity-chart equation.
Consequently they cannot yet identify the projective cubic with a minimal
regular model. A split nodal tangent cone by itself does not establish Kodaira
type `I₁`, and the even-branch polynomial identity does not establish a
blow-up or conductor exponent. Any subsequent model or conductor theorem
must keep `W.Δ ≠ 0` explicit and discharge those geometric steps separately.