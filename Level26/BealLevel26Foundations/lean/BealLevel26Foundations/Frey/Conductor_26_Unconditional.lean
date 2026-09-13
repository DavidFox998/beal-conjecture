import BealLevel26Foundations.Real.FreyWeierstrass
import Mathlib.NumberTheory.Padics.PadicVal.Basic

namespace BealLevel26Foundations.Frey.Conductor26Unconditional

open BealLevel26Foundations.Real.FreyWeierstrass

/-!
# Odd-prime valuation input for the Frey conductor

Mathlib 4.12 has no elliptic-curve conductor, Kodaira symbols, or Tate
algorithm.  This module therefore proves only the valuation statement that
is available unconditionally:

from `p ∤ c₄`, `p ∣ Δ`, and `Δ ≠ 0`, conclude `vₚ(c₄)=0` and `vₚ(Δ)>0`.

It does not import the parent conductor-data structure or the Tate
step-2 external premise.  The Tate/Kodaira classification implication
(type `Iₙ`, local conductor exponent one, `N = 2^e * rad(ABC)`) remains
an explicit boundary and is not discharged by `decide`.
-/

def freyC4Valuation26
    (p : Nat) (A B : Int) (x y : Nat) : Nat :=
  padicValInt p (freyCurve A B x y).c₄

def freyDiscriminantValuation26
    (p : Nat) (A B : Int) (x y : Nat) : Nat :=
  padicValInt p (freyCurve A B x y).Δ

theorem freyC4Valuation26_eq_zero
    {p : Nat} [Fact p.Prime] {A B : Int} {x y : Nat}
    (hc4 : ¬ (p : Int) ∣ (freyCurve A B x y).c₄) :
    freyC4Valuation26 p A B x y = 0 := by
  exact padicValInt.eq_zero_of_not_dvd hc4

theorem freyDiscriminantValuation26_pos
    {p : Nat} [Fact p.Prime] {A B : Int} {x y : Nat}
    (hΔ0 : (freyCurve A B x y).Δ ≠ 0)
    (hpΔ : (p : Int) ∣ (freyCurve A B x y).Δ) :
    0 < freyDiscriminantValuation26 p A B x y := by
  have hpPow : (p : Int) ^ 1 ∣ (freyCurve A B x y).Δ := by
    simpa using hpΔ
  have hPositive :
      1 ≤ freyDiscriminantValuation26 p A B x y := by
    exact ((padicValInt_dvd_iff 1 (freyCurve A B x y).Δ).mp hpPow).resolve_left hΔ0
  omega

theorem freyDiscriminantValuation26_ne_zero
    {p : Nat} [Fact p.Prime] {A B : Int} {x y : Nat}
    (hΔ0 : (freyCurve A B x y).Δ ≠ 0)
    (hpΔ : (p : Int) ∣ (freyCurve A B x y).Δ) :
    freyDiscriminantValuation26 p A B x y ≠ 0 :=
  (freyDiscriminantValuation26_pos hΔ0 hpΔ).ne'

structure OddPrimeMultiplicativeValuationInput26
    (p : Nat) (A B : Int) (x y : Nat) : Prop where
  prime : p.Prime
  discriminant_ne_zero : (freyCurve A B x y).Δ ≠ 0
  prime_dvd_discriminant : (p : Int) ∣ (freyCurve A B x y).Δ
  prime_not_dvd_c4 : ¬ (p : Int) ∣ (freyCurve A B x y).c₄

theorem oddPrimeMultiplicativeValuationInput26_values
    {p : Nat} {A B : Int} {x y : Nat}
    (h : OddPrimeMultiplicativeValuationInput26 p A B x y) :
    freyC4Valuation26 p A B x y = 0 ∧
      0 < freyDiscriminantValuation26 p A B x y := by
  letI : Fact p.Prime := ⟨h.prime⟩
  exact ⟨freyC4Valuation26_eq_zero h.prime_not_dvd_c4,
    freyDiscriminantValuation26_pos h.discriminant_ne_zero
      h.prime_dvd_discriminant⟩

/-- Explicit Tate/Kodaira boundary.  The valuation input is present; the
classification of the special fibre and the local conductor exponent are
not theorems in Mathlib 4.12 and are not obtained by `decide`. -/
structure TateKodairaBoundary26
    (p : Nat) (A B : Int) (x y : Nat) where
  valuationInput : OddPrimeMultiplicativeValuationInput26 p A B x y

theorem tateKodairaBoundary26_valuation
    {p : Nat} {A B : Int} {x y : Nat}
    (h : TateKodairaBoundary26 p A B x y) :
    freyC4Valuation26 p A B x y = 0 ∧
      0 < freyDiscriminantValuation26 p A B x y :=
  oddPrimeMultiplicativeValuationInput26_values h.valuationInput

#print axioms freyC4Valuation26_eq_zero
#print axioms freyDiscriminantValuation26_pos
#print axioms oddPrimeMultiplicativeValuationInput26_values
#print axioms tateKodairaBoundary26_valuation

end BealLevel26Foundations.Frey.Conductor26Unconditional
