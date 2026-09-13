import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Modularity.FreyModularity_13
import BealLevel26Foundations.Real.FreyWeierstrass

namespace BealLevel26Foundations.Frey.FreyCurve13

open BealLevel26Foundations.Base.BealCounterexampleBase
open BealLevel26Foundations.Modularity.FreyModularity13
  (FreyCurve13 frey_conductor_26)
open BealLevel26Foundations.Real.FreyWeierstrass

/-!
# v4.40.0 working-prime Weierstrass from shared bases

Does **not** import Forall.  Two attachments:

* `FreyCurve13_of_BealCounterexample` — displayed modularity
  triple on `A B C` (unchanged).
* `FreyCurve13_of_BealCounterexampleBases` — Mathlib
  `WeierstrassCurve Int` `Y² = X(X − A¹³)(X + B¹³)` via
  `freyCurve ↑A ↑B 13 13`.

The Weierstrass model is the *working-prime* display
(exponents `13, 13`), not the Frey curve of a mixed-exponent
packed equation.  It is not a noncuspidal `X₀(26)` point:
`ExistsNoncuspidal_26` is a displayed cusp-label existential.

`frey_conductor_26` is the `Nat` `26` (`rfl`), not Tate's
algorithm and not from `13 ∣ A*B*C` or `Is13Case`.
-/

/-- Displayed Frey triple on shared bases `w.A w.B w.C`.
Not `FreyCurve13 w.x w.y w.z`. -/
def FreyCurve13_of_BealCounterexample (w : BealCounterexampleBases) :
    FreyCurve13 w.A w.B w.C :=
  {}

/-- Working-prime integral Frey model
`Y² = X (X − A¹³) (X + B¹³)`.  Uses `C` only as a shared
base; the Weierstrass formula does not mention `C`. -/
def FreyCurve13_of_BealCounterexampleBases
    (w : BealCounterexampleBases) :
    WeierstrassCurve Int :=
  freyCurve (w.A : Int) (w.B : Int) 13 13

theorem freyCurve13_of_bases_eq
    (w : BealCounterexampleBases) :
    FreyCurve13_of_BealCounterexampleBases w =
      freyCurve (w.A : Int) (w.B : Int) 13 13 :=
  rfl

theorem freyCurve13_of_bases_coefficients
    (w : BealCounterexampleBases) :
    (FreyCurve13_of_BealCounterexampleBases w).a₁ = 0 ∧
      (FreyCurve13_of_BealCounterexampleBases w).a₂ =
        (w.B : Int) ^ 13 - (w.A : Int) ^ 13 ∧
      (FreyCurve13_of_BealCounterexampleBases w).a₃ = 0 ∧
      (FreyCurve13_of_BealCounterexampleBases w).a₄ =
        -((w.A : Int) ^ 13 * (w.B : Int) ^ 13) ∧
      (FreyCurve13_of_BealCounterexampleBases w).a₆ = 0 :=
  freyCurve_equation_coefficients (w.A : Int) (w.B : Int) 13 13

theorem freyCurve13_of_bases_discriminant
    (w : BealCounterexampleBases) :
    (FreyCurve13_of_BealCounterexampleBases w).Δ =
      16 * ((w.A : Int) ^ 13) ^ 2 * ((w.B : Int) ^ 13) ^ 2 *
        ((w.A : Int) ^ 13 + (w.B : Int) ^ 13) ^ 2 :=
  freyCurve_discriminant (w.A : Int) (w.B : Int) 13 13

/-- Δ ≠ 0 when the Nat bases are positive.
Not from primitivity of a packed equation.  Not a conductor. -/
theorem freyCurve13_of_bases_disc_ne_zero
    (w : BealCounterexampleBases)
    (hA : 0 < w.A) (hB : 0 < w.B) :
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 := by
  have hA0 : (w.A : Int) ≠ 0 := by exact_mod_cast (ne_of_gt hA)
  have hB0 : (w.B : Int) ≠ 0 := by exact_mod_cast (ne_of_gt hB)
  have hSumNat : 0 < w.A ^ 13 + w.B ^ 13 :=
    Nat.add_pos_left (pow_pos hA 13) _
  have hSum : (w.A : Int) ^ 13 + (w.B : Int) ^ 13 ≠ 0 := by
    have hCast : ((w.A ^ 13 + w.B ^ 13 : Nat) : Int) ≠ 0 := by
      exact_mod_cast (ne_of_gt hSumNat)
    simpa [Nat.cast_add, Nat.cast_pow] using hCast
  exact freyCurve_discriminant_ne_zero hA0 hB0 hSum

/-- Explicit Δ ≠ 0 from `0 < A` and `0 < B` on the
working-prime pack `Y² = X(X − A¹³)(X + B¹³)`.
Same as `freyCurve13_of_bases_disc_ne_zero`.  Not a
conductor and not from `Is13Case`. -/
theorem frey_Delta13_ne_0_of_pos
    (w : BealCounterexampleBases)
    (hA : 0 < w.A) (hB : 0 < w.B) :
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 :=
  freyCurve13_of_bases_disc_ne_zero w hA hB

/-- Displayed conductor *label*.  Not Tate.  Not from
`Is13Case` and not from `13 ∣ A*B*C`. -/
theorem frey_conductor_26_eq : frey_conductor_26 = 26 :=
  rfl

theorem frey_conductor_26_eq_two_mul_13 :
    frey_conductor_26 = 2 * 13 :=
  rfl

/-- Displayed working-prime label `2 * 13`.  `rfl`, not Tate.
v4.47.0 Tate sketch is
`Frey.FreyConductor26.frey_conductor_26_of_Is13Case`
(uninhabited). -/
theorem frey_conductor_26_rfl : frey_conductor_26 = 2 * 13 :=
  rfl

/-- Legacy name of `frey_conductor_26_rfl`.  Still `rfl`. -/
theorem frey_conductor_26_of_Is13Case :
    frey_conductor_26 = 2 * 13 :=
  frey_conductor_26_rfl

#check FreyCurve13_of_BealCounterexample
#check FreyCurve13_of_BealCounterexampleBases
#print axioms FreyCurve13_of_BealCounterexample
#print axioms FreyCurve13_of_BealCounterexampleBases
#print axioms freyCurve13_of_bases_disc_ne_zero
#print axioms frey_Delta13_ne_0_of_pos
#check frey_Delta13_ne_0_of_pos
#print axioms frey_conductor_26_eq
#print axioms frey_conductor_26_rfl
#print axioms frey_conductor_26_of_Is13Case

end BealLevel26Foundations.Frey.FreyCurve13
