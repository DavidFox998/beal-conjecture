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
  `SL₂(𝔽₁₃)`. `RhoE13Open → Psi13HasNoQiRoot` is not proved, and neither
  is the converse.

`FreyConductor_OPEN` and `FreyConductorDivides` stay hypotheses.
The second conjunct of `ribet_level_lowering_4413` supplies `n ∣ N` when
`N` has `ConductorShape`. `RibetOutput.h_n_dvd_N` stores it.
`n_dvd_64csq_of_ribet` turns that into `n ∣ 64 |c|²`.
`n_dvd_32_or_64_of_prime_to_c` then removes primes dividing `c`.
It does not conclude `n = 32 ∨ n = 64`.
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

end FreyCurve4413
