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

`FreyConductor_OPEN` and `FreyConductorDivides` stay hypotheses.
`n_dvd_N_of_ribet` needs an extra assumption `n ∣ N`, which
`ribet_level_lowering_4413` does not produce.
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
