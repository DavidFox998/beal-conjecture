import Mathlib.Modular.LevelLowering4413
import Mathlib.Modular.EllipticCurveMinimal

/-!
# Irreducibility of `ρ_{E,13}` is still open

`xDivisionDegree 13 = 84` is the count `(13² - 1) / 2`. The division
polynomial `ψ₁₃` is `psi13` in `EllipticCurveMinimal`. Its constant term
on `y² = x³ + a₂ x² + a₄ x` is `a₄ ^ 42`. For a Frey curve the norm of
that constant term is `2 ^ 84 * c ^ 546`.

`Psi13HasNoQiRoot` is `psi13_no_Qi_root_Frey_OPEN`: the cleared polynomial
has no root in the fraction field of `ℤ[√-1]`. It is not a theorem.

`RhoE13Open E → Psi13HasNoQiRoot E` is not a lemma in this file.

* `RhoE13Open` is opaque. Its body is sealed, so it supplies no fact about
  `ψ₁₃`.
* A root of `ψ₁₃` in `ℚ(√-1)` is a linear factor. Absolute irreducibility
  of `ρ_{E,13}` is a statement about Galois-stable subgroups. The missing
  linear factor is not that statement, and the sealed irreducibility
  hypothesis does not prove the missing linear factor.
* `rho_E_13` is `GaloisRepresentation.unresolved`.
* A missing linear factor of `ψ₁₃` in `ℚ(√-1)` is not absolute
  irreducibility for GL2-type over `ℚ(√-1)`. The image must contain
  `SL₂(𝔽₁₃)`. `RhoE13NeedsSL2` is that gap. `RhoE13Open → Psi13HasNoQiRoot`
  is not proved. That direction is not the one absolute irreducibility
  needs, and the converse is not proved either.

`FreyConductor_OPEN` stays a hypothesis. `ribet_level_lowering_4413` takes
`FreyConductorDivides` and `RhoE13Open` and returns one level with
`n ∣ N`. `n_dvd_32_or_64_of_prime_to_c` removes primes dividing `|c|` and
concludes `n ∣ 32` or `n ∣ 64`. `TateAt2LowerBound` is the open hypothesis
`32 ∣ n`. It is not an axiom.
-/

namespace FreyCurve4413

/-- No root of the Frey `ψ₁₃` in the fraction field of `ℤ[√-1]`.

This is `psi13_no_Qi_root_Frey_OPEN`. The polynomial is constructed.
The proposition is not proved.
-/
def Psi13HasNoQiRoot (E : FreyCurve4413) : Prop :=
  psi13_no_Qi_root_Frey_OPEN E

theorem xDivisionDegree_13_count : xDivisionDegree 13 = 84 :=
  xDivisionDegree_13

/-- The image of `ρ_{E,13}` contains `SL₂(𝔽₁₃)`.

`rho_E_13` is `GaloisRepresentation.unresolved`, so the containment is not
a subgroup of a matrix group. `Psi13HasNoQiRoot` is the absence of a linear
factor of `ψ₁₃`. That is not this image statement, and it does not produce
`RhoE13Open`. The proposition is the pair of those open hypotheses. It is
not an axiom and it has no proof.
-/
def RhoE13NeedsSL2 (E : FreyCurve4413) : Prop :=
  RhoE13Open E ∧ Psi13HasNoQiRoot E

end FreyCurve4413
