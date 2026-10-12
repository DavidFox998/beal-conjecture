# SCRATCH. Scope of `RhoE13Open` and `qcurve_extension_169_open`

Not part of the proof. Do not import this file. No theorem was changed to write it.

Survey of community Mathlib (`leanprover-community/mathlib4`, `master`, checked 2026-10-12 via the GitHub contents API and raw files) and of Darmon–Merel, J. Reine Angew. Math. 490 (1997). This repository does not depend on community Mathlib. Its `Mathlib/` directory is a local library.

## What the two opens actually say

`RhoE13Open` (`DarmonMerel/3_RibetLowering4413.lean`) is `opaque`. The docstring calls it absolute irreducibility of the mod-13 residual representation, equivalently a large image in `GL₂(𝔽₁₃)`. `rho_E_13` is the marker `GaloisRepresentation.unresolved`. Nothing produces a term.

`qcurve_extension_169_open` (`Mathlib/Modular/CmVanishing32.lean`) is a `Prop`, not an existence statement about a cohomology class. For a nonzero coprime Frey curve with `Modular E`, a `RibetLevel`, the Vélu/twist coefficient match, and `13 ∤ 2`, it asks

```text
13 ∣ freyTrace3 (a mod 3) (b mod 3) − (−6).
```

The docstring describes a missing representation `G_ℚ → GL₂(𝔽₁₆₉)` restricting to `ρ̄_E` up to `χ_{−2}`, with trace of `Frob_3²` equal to `−6`, and records that `H²(G_ℚ, 𝔽₁₆₉ˣ)` is not defined. That representation is not the proposition.

`freyTrace3_not_cong_neg_six` already proves the displayed divisibility is false for every residue pair in `{0,1,2}²` except `(0,0)`, where the trace lies in `{−2, 4, 6}`. `mod3_not_both_zero` says a coprime pair is not `(0,0)`. The Vélu match is `qcurve_isogeny_input`, true for every `E`, and `13 ∤ 2` is `thirteen_not_dvd_two`. So the open holds if and only if no nonzero coprime pair satisfies `Modular E` and `RibetLevel`. It is a nonexistence statement. It is not discharged by exhibiting a class.

## Mathlib inventory

Checked on `master`. A 404 from the contents API or from `raw.githubusercontent.com` is recorded as absent.

### Finite flat group schemes

Absent. There is no `Mathlib/AlgebraicGeometry/GroupScheme` (contents API 404).

Pieces that exist and are not that theory:

- `Mathlib/AlgebraicGeometry/Morphisms/Finite.lean`: `IsFinite`, a finite morphism of schemes.
- `Mathlib/AlgebraicGeometry/Morphisms/Flat.lean`: `Flat`.
- `Mathlib/AlgebraicGeometry/Morphisms/FlatRank.lean`: `Scheme.Hom.finrank` for a finite flat locally finitely presented morphism.

A group-scheme structure on a Weierstrass curve is an open pull request (#35151), not a file on `master`. Raynaud's classification of finite flat group schemes is absent.

### Tate modules

Absent for elliptic curves. No inverse limit of `E[ℓⁿ]`, no `T_ℓ(E)`, no `ρ_ℓ : Gal → GL₂(ℤ_ℓ)`.

Nearby names that are different objects:

- `Mathlib/RepresentationTheory/Homological/TateCohomology/`: Tate cohomology of a finite group, from a complete resolution. Not the Tate module.
- `Mathlib/Algebra/Module/Torsion/Basic.lean`: the torsion submodule of a module.

### Galois action on torsion points

The point group and the division polynomials exist. The residual representation does not.

- `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/` and `Jacobian/` and `Projective/`: nonsingular points.
- `Mathlib/AlgebraicGeometry/EllipticCurve/Group.lean`: the nonsingular points form an abelian group.
- `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean`: `twoTorsionPolynomial`.
- `Mathlib/AlgebraicGeometry/EllipticCurve/DivisionPolynomial/Basic.lean` and `Degree.lean`: `ψₙ`, `φₙ`.
- `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean`: good, split multiplicative, nonsplit multiplicative, and additive reduction, as used by the L-function below.
- `Mathlib/AlgebraicGeometry/EllipticCurve/LFunction.lean`: for good reduction, `a = q + 1 − |W(κ)|` is the integer in the local polynomial `1 − aT + qT²`. This is a point count. It is not identified with `trace ρ(Frob)`.
- `Mathlib/FieldTheory/Galois/Basic.lean`, `Infinite.lean`, `Profinite.lean`: finite and infinite Galois groups, including a profinite topology.
- `Mathlib/FieldTheory/PolynomialGaloisGroup.lean`: the Galois action on the roots of one polynomial.

There is no theorem that `Gal(K̄/K)` acts on `E[n]` through a homomorphism to `GL₂(ℤ/nℤ)`, and no determinant-cyclotomic-character lemma.

### Group cohomology

Discrete group cohomology exists, for a discrete group and a `k`-linear representation.

- `Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean`: `groupCohomology`, inhomogeneous cochains.
- `LowDegree.lean`: explicit `H⁰`, `H¹`, `H²`. `groupCohomology.H2` is `H²(G, A)`. `cocycles₂` and `coboundaries₂` are submodules of `G × G → A`. `H2π` is the map from 2-cocycles to `H²`.
- `Hilbert90.lean`: `H¹(Aut_K(L), Lˣ) = 0` for a finite extension, and the cyclic form of Hilbert 90. The file's TODO says Galois cohomology for infinite extensions is not developed, and additive Hilbert 90 is not proved.
- Also `Functoriality.lean`, `LongExactSequence.lean`, `Shapiro.lean`, `FiniteCyclic.lean`.

Continuous cohomology exists as a complex and is not yet Galois cohomology of `G_ℚ`:

- `Mathlib/RepresentationTheory/Homological/ContCohomology/Basic.lean`: `continuousCohomology` of a `TopRep`. The TODO says it is not yet identified with discrete `groupCohomology`, and the usual description by `n`-ary cochains is not yet proved.
- `LowDegree.lean`, `Functoriality.lean`, `Sha.lean` sit beside it.

`H²(G_ℚ, 𝔽₁₆₉ˣ)` is absent. Tate's vanishing `H²(G_ℚ, ℚ̄ˣ) = 0` is absent. A finite quotient of a Galois group could be fed to the discrete `H²`, once a module and a cocycle exist. The cocycle is the missing input.

### Frobenius elements

Present for a finite Galois extension of rings, absent as the Frobenius of an elliptic residual representation.

- `Mathlib/RingTheory/Frobenius.lean`: `AlgHom.IsArithFrobAt`, `IsArithFrobAt`, `arithFrobAt`, `isConj_arithFrobAt`. For a finite group acting on a ring with fixed subring, a prime of the top ring with finite residue field has an arithmetic Frobenius, and Frobenii over the same bottom prime are conjugate.
- Finite-field Frobenius (`iterateFrobenius`, `FiniteField.frobenius`) is the residue-field endomorphism used inside that file.

This does not produce `Frob_ℓ ∈ Gal(ℚ̄/ℚ)` acting on `E[13]`, and it does not prove `trace ρ(Frob_ℓ) = a_ℓ(E)`.

### Chebotarev

Absent. `Mathlib/NumberTheory/Chebotarev.lean` is a 404 on `master`. Searches of the Lean sources turn up Lebesgue density and Turán density, not Chebotarev density. `isConj_arithFrobAt` is the conjugacy of Frobenius elements in a finite Galois extension. It is not the density theorem.

## Darmon–Merel, irreducibility

Source: Henri Darmon and Loïc Merel, *Winding quotients and some variants of Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), 81–100. Author PDF `https://www.math.mcgill.ca/darmon/pub/Articles/Research/18.Merel/paper.pdf`.

Their equations are `xⁿ + yⁿ = 2zⁿ`, `xⁿ + yⁿ = z²`, and `xⁿ + yⁿ = z³`. The Frey curve is an elliptic curve over `ℚ`:

- (1) `Y² = X(X − aᵖ)(X − 2cᵖ)`.
- (2) `Y² + XY = X³ + ((c−1)/4) X² + (aᵖ/64) X` if `ab` is even, and `Y² = X³ + 2c X² + aᵖ X` if `ab` is odd.
- (3) the two models (7) and (8) in §1, with a rational point of order 3.

The signature `a⁴ + b⁴ = c¹³` is not one of these equations. The model in this repository, `y² = X³ + (4a) X² + 2(a² + b² √(−1)) X` over `ℤ[√−1]`, is not their Frey curve.

§2 fixes an isomorphism `E[p](ℚ̄) ≅ 𝔽ₚ²` and writes `ρ : Gal(ℚ̄/ℚ) → GL₂(𝔽ₚ)`.

**Theorem 2.2.** `ρ` is absolutely irreducible.

The proof splits.

- If `p ≥ 17`, they cite Corollary 4.4 of Mazur, *Rational isogenies of prime degree*, Invent. Math. 44 (1978), 129–162, their reference [18]. The only input they name is Lemma 1.2: the Frey curve has an odd prime of multiplicative reduction. This is Mazur's isogeny theorem, not a Frobenius-matrix computation.
- If `7 ≤ p ≤ 13` and `ρ` is reducible, Lemma 1.3 supplies a rational point of order 2 (equations (1) and (2)) or a rational subgroup of order 3 (equation (3)). The curve then gives a rational point on `X₀(N)` for `N ∈ {14, 22, 26, 21, 33, 39}`. For `p = 13` that is `X₀(26)` in cases (1) and (2), and `X₀(39)` in case (3). Those rational points are cusps or CM, by Mazur [18], Kubert, *Universal bounds on torsion*, Proc. London Math. Soc. 33 (1976), and, for `N = 39`, Kenku, *The modular curve `X₀(39)` and rational isogenies*, Math. Proc. Cambridge Philos. Soc. 85 (1979). A cusp or a CM point does not have non-integral `j`. Lemma 1.2 supplies an odd prime of multiplicative reduction, so `j` is non-integral.

What has to be formalized, for their theorem at `p = 13`, and not for this repository's curve:

1. Reducibility of `ρ` yields a `Gal(ℚ̄/ℚ)`-stable line in `E[p]`, equivalently a rational cyclic subgroup of order `p`, equivalently a non-cuspidal point of `X₀(p)`.
2. Lemma 1.3: the rational 2-torsion or the rational order-3 point, read off the Weierstrass model.
3. The resulting point of `X₀(26)` or `X₀(39)`.
4. The classification: rational points of those curves are cusps or CM.
5. A cusp or a CM curve has integral `j`, and multiplicative reduction at an odd prime makes `j` non-integral.

Items 1 and 3 use the moduli dictionary. They do not require the Tate module, a finite flat group scheme, or a matrix of `ρ(Frob_ℓ)`. They do require `E[p]` as a Galois module, or an equivalent definition of `X₀(N)` as a moduli space. Neither is in Mathlib. Mazur's isogeny theorem, Kubert's torsion bounds, and Kenku's determination of `X₀(39)(ℚ)` are absent.

The argument does not transfer to `RhoE13Open`. Their curve is over `ℚ` and carries a rational 2-torsion point or a rational 3-isogeny. A rational 13-isogeny by itself is possible: Mazur's list contains 13, and `X₀(13)` has non-cuspidal rational points. The contradiction at `p = 13` needs the extra level structure that lands on `X₀(26)` or `X₀(39)`. This repository's curve is a `ℚ`-curve over `ℚ(i)`. `IsQCurve` is an equality of Weierstrass coefficients with the twist by `−2`. It is not a rational point of `X₀(26)`.

The local substitute already written down here, `Psi13HasNoQiRoot`, is the absence of a root of `ψ₁₃` in the fraction field of `ℤ[√−1]`. `Irreducibility13.lean` records that a missing linear factor is not absolute irreducibility, and that `rhoE13_open_of_psi` (`Psi13HasNoQiRoot` and `ImageContainsSL2` imply `RhoE13Open`) is not a theorem. `GL2F13.dickson_13_open` is still the missing subgroup step, and `steinberg_prime_13_open` asks for a multiplicative prime whose Tate parameter is not divisible by 13. No such prime is constructed.

## What `qcurve_extension_169_open` minimally needs

The literature object is Ribet's extension of the residual representation of a `ℚ`-curve: isogenies `μ_σ : E^σ → E` whose failure to be a cocycle is a class in `H²(G_ℚ, 𝔽ₚˣ)`, trivialized so that `ρ̄_E ⊗ χ` extends to `G_ℚ`. For this model the local computation at `Gal(ℚ(i)/ℚ)` is the scalar `u = ±2`. The repository already has that arithmetic, and it is not a cocycle:

- `velu_target_eq_twist_neg_two` and `velu_cleared`: equalities in `ℤ` and `ℤ[√−1]`. `QCurve4413.lean` says there is no `EllipticCurve` type and the equality is not a morphism of schemes.
- `IsQCurve`: `twistBy = −2` and `numeratorDegree = 2`.
- `f13_linear_lift_scalar_fails`: no `c ∈ 𝔽₁₃` with `c² · u = 1` for `u = ±2`.
- `f169_linear_lift_scalar_exists`: such a `c` exists in `𝔽₁₃[√2]`.
- `frob_square_trace_at_3`: the integer identity `0² − 2·3 = −6`. It is not the trace of a Frobenius element.
- `coefficient_qcurve_misses_neg_six`: `(1,0,1)` is a `ℚ`-curve and its `𝔽₉` trace is `−2`, not `−6`.

Building the class still requires the isogeny on `E[13]`, its Galois conjugates, the 2-cocycle with values in `𝔽₁₆₉ˣ`, a trivialization (Hilbert 90 is only `H¹` for finite Galois groups; Tate vanishing is absent), and the identification of the trace at a prime above 3 with `−6`. The coefficient identity fixes which twist appears. It does not define the cocycle, and it does not prove the divisibility in the open. That divisibility is already false for every coprime pair.

## Gap

`(c)` large for both opens. Not `(a)`. Not `(b)`.

`RhoE13Open`, read as absolute irreducibility of `ρ̄_{E,13}`: community Mathlib has the point group, division polynomials, reduction, a point-count local factor, finite and profinite Galois groups, and arithmetic Frobenius in finite Galois extensions of rings. It does not have `E[n]` as a Galois module, the Tate module, finite flat group schemes, or Chebotarev. Assembling those into `ρ̄_{E,13}` and then proving the image is large is a theory-building project. Darmon–Merel's `p = 13` argument avoids the Tate module and still needs `X₀(26)(ℚ)` or `X₀(39)(ℚ)` plus Mazur, Kubert, and Kenku, none of which are in Mathlib, and it applies to a different Frey curve.

`qcurve_extension_169_open`, read as the `Prop` that is written down: the consequent is refuted by `freyTrace3_not_cong_neg_six` whenever the coprimality antecedent holds, and the Vélu antecedent is a theorem. Proving the open is proving that `Modular E` and `RibetLevel` do not occur. The `ℚ`-curve files do not provide that. Read as the representation in the docstring: the same missing `ρ̄_E`, plus a 2-cocycle on `G_ℚ` with values in `𝔽₁₆₉ˣ`. Discrete `H²` and continuous cohomology exist and do not take this module as input. Hilbert 90 does not cover `G_ℚ`.
