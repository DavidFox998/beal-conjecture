import Beal.Foundations.J0DecompositionCertificate
import Mathlib.Tactic

namespace BealLevel26Foundations.Descent.EC26

open Beal.Foundations.J0DecompositionCertificate

/-!
# v4.1.0 Weierstrass models for Cremona `26a1` / `26b1`

Certified minimal models from
`sagemath/certs/j0_26_decomposition.json`, already promoted in
`J0DecompositionCertificate`:

* `26a1`: `y² + xy + y = x³ - 5x - 8`, `[a₁,a₂,a₃,a₄,a₆] = [1, 0, 1, -5, -8]`,
  `Δ = -17576`, conductor `26` (LMFDB `26.a1`);
* `26b1`: `y² + xy + y = x³ - x² - 3x + 3`, `[1, -1, 1, -3, 3]`,
  `Δ = -1664`, conductor `26` (LMFDB `26.b1`).

These are the certified minimal models, not a second Weierstrass
chart.  Mathlib 4.12 has `WeierstrassCurve` but no LMFDB lookup.
Conductor and discriminant here are displayed certified fields, not
a conductor algorithm.

The frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`
is unchanged.
-/

/-- Certified `[a₁, a₂, a₃, a₄, a₆]` for Cremona `26a1`. -/
def EC_26a1_aInv : Fin 5 → ℤ
  | 0 => factor26a1.a1
  | 1 => factor26a1.a2
  | 2 => factor26a1.a3
  | 3 => factor26a1.a4
  | 4 => factor26a1.a6

/-- Certified `[a₁, a₂, a₃, a₄, a₆]` for Cremona `26b1`. -/
def EC_26b1_aInv : Fin 5 → ℤ
  | 0 => factor26b1.a1
  | 1 => factor26b1.a2
  | 2 => factor26b1.a3
  | 3 => factor26b1.a4
  | 4 => factor26b1.a6

def EC_26a1_conductor : ℕ := factor26a1.conductor
def EC_26b1_conductor : ℕ := factor26b1.conductor
def EC_26a1_discriminant : ℤ := factor26a1.discriminant
def EC_26b1_discriminant : ℤ := factor26b1.discriminant

theorem EC_26a1_conductor_certified : EC_26a1_conductor = 26 := rfl
theorem EC_26b1_conductor_certified : EC_26b1_conductor = 26 := rfl

theorem EC_26a1_discriminant_certified : EC_26a1_discriminant = -17576 := rfl
theorem EC_26b1_discriminant_certified : EC_26b1_discriminant = -1664 := rfl

theorem EC_26a1_aInv_eq_factor :
    EC_26a1_aInv 0 = 1 ∧
      EC_26a1_aInv 1 = 0 ∧
      EC_26a1_aInv 2 = 1 ∧
      EC_26a1_aInv 3 = -5 ∧
      EC_26a1_aInv 4 = -8 :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem EC_26b1_aInv_eq_factor :
    EC_26b1_aInv 0 = 1 ∧
      EC_26b1_aInv 1 = -1 ∧
      EC_26b1_aInv 2 = 1 ∧
      EC_26b1_aInv 3 = -3 ∧
      EC_26b1_aInv 4 = 3 :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

#print axioms EC_26a1_conductor_certified
#print axioms EC_26b1_conductor_certified
#print axioms EC_26a1_discriminant_certified
#print axioms EC_26b1_discriminant_certified

end BealLevel26Foundations.Descent.EC26
