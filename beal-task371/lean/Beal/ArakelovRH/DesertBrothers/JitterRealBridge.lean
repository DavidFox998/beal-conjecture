/-
  ArakelovRH/DesertBrothers/JitterRealBridge

  Real-valued interpretation of the choice-free fixed-point jitter certificate.
  This module is deliberately separate from JitterInterface: Lean 4.12's real
  field implementation contributes Classical.choice to the declarations that
  use real division, while the natural-number certificate remains axiom-free.
-/
import Beal.ArakelovRH.DesertBrothers.JitterInterface
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

namespace Beal.ArakelovRH.DesertBrothers

/-- The real number represented by the upstream fixed-point α₀ data. -/
noncomputable def fixedPointAlpha0 : ℝ :=
  (alpha0Numerator : ℝ) / (alpha0Denominator : ℝ)

/-- Integer quotient below `p * fixedPointAlpha0`. -/
def fixedPointQuotient (p : ℕ) : ℕ :=
  (p * alpha0Numerator) / alpha0Denominator

/-- Real distance from `p * fixedPointAlpha0` to a supplied natural integer. -/
noncomputable def fixedPointDistanceToInteger (p n : ℕ) : ℝ :=
  |(p : ℝ) * fixedPointAlpha0 - (n : ℝ)|

/-- Real nearest-integer distance for the fixed-point α₀ representation.

    The division algorithm places `p * fixedPointAlpha0` between
    `fixedPointQuotient p` and its successor, so the nearer of these two
    distances is the intended `‖p · α₀‖`-style quantity. -/
noncomputable def fixedPointNearestIntegerDistance (p : ℕ) : ℝ :=
  min (fixedPointDistanceToInteger p (fixedPointQuotient p))
    (fixedPointDistanceToInteger p (fixedPointQuotient p + 1))

private lemma div_add_mod_fixed (p : ℕ) :
    alpha0Denominator * ((p * alpha0Numerator) / alpha0Denominator) +
        (p * alpha0Numerator) % alpha0Denominator = p * alpha0Numerator := by
  exact Nat.div_add_mod _ _

private lemma residue_lt_denominator (p : ℕ) :
    (p * alpha0Numerator) % alpha0Denominator < alpha0Denominator := by
  apply Nat.mod_lt
  norm_num [alpha0Denominator]

private lemma signed_distance_left (p : ℕ) :
    (p : ℝ) * fixedPointAlpha0 - (fixedPointQuotient p : ℝ) =
      (fractionalResidue p : ℝ) / (alpha0Denominator : ℝ) := by
  unfold fixedPointQuotient fixedPointAlpha0 fractionalResidue
  have hnat := div_add_mod_fixed p
  have hcast :
      (alpha0Denominator : ℝ) *
          ((p * alpha0Numerator) / alpha0Denominator : ℕ) +
          ((p * alpha0Numerator) % alpha0Denominator : ℝ) =
        (p : ℝ) * (alpha0Numerator : ℝ) := by
    exact_mod_cast hnat
  norm_num [alpha0Denominator] at hcast ⊢
  field_simp
  linarith

private lemma signed_distance_right (p : ℕ) :
    (p : ℝ) * fixedPointAlpha0 -
        ((fixedPointQuotient p + 1 : ℕ) : ℝ) =
      -(((alpha0Denominator - fractionalResidue p : ℕ) : ℝ) /
        (alpha0Denominator : ℝ)) := by
  unfold fixedPointQuotient fixedPointAlpha0 fractionalResidue
  have hnat := div_add_mod_fixed p
  have hlt := residue_lt_denominator p
  have hrle :
      (p * alpha0Numerator) % alpha0Denominator ≤ alpha0Denominator :=
    Nat.le_of_lt hlt
  have hcast :
      (alpha0Denominator : ℝ) *
          ((p * alpha0Numerator) / alpha0Denominator : ℕ) +
          ((p * alpha0Numerator) % alpha0Denominator : ℝ) =
        (p : ℝ) * (alpha0Numerator : ℝ) := by
    exact_mod_cast hnat
  rw [Nat.cast_add, Nat.cast_one, Nat.cast_sub hrle]
  norm_num [alpha0Denominator] at hcast ⊢
  field_simp
  linarith

private lemma distance_left (p : ℕ) :
    fixedPointDistanceToInteger p (fixedPointQuotient p) =
      (fractionalResidue p : ℝ) / (alpha0Denominator : ℝ) := by
  unfold fixedPointDistanceToInteger
  rw [signed_distance_left]
  apply abs_of_nonneg
  apply div_nonneg
  · exact Nat.cast_nonneg _
  · norm_num [alpha0Denominator]

private lemma distance_right (p : ℕ) :
    fixedPointDistanceToInteger p (fixedPointQuotient p + 1) =
      ((alpha0Denominator - fractionalResidue p : ℕ) : ℝ) /
        (alpha0Denominator : ℝ) := by
  unfold fixedPointDistanceToInteger
  rw [signed_distance_right, abs_neg, abs_of_nonneg]
  apply div_nonneg
  · exact Nat.cast_nonneg _
  · norm_num [alpha0Denominator]

/-- The fixed-point natural distance is exactly the real nearest-integer
    distance after division by the fixed-point denominator. -/
theorem fixedPointNearestIntegerDistance_eq_scaled (p : ℕ) :
    fixedPointNearestIntegerDistance p =
      (scaledNearestIntegerDistance p : ℝ) /
        (alpha0Denominator : ℝ) := by
  unfold fixedPointNearestIntegerDistance scaledNearestIntegerDistance
  rw [distance_left, distance_right, Nat.cast_min]
  exact min_div_div_right (by norm_num [alpha0Denominator]) _ _

/-- Transport a choice-free fixed-point jitter certificate to the intended
    real-valued strict reciprocal nearest-integer inequality.

    `Classical.choice` in this theorem's audit comes from Lean 4.12's real
    field implementation. It is isolated here and does not enter
    `EutheosJitter`, `EutheosComplementSketch`, or the 07h supplier. -/
theorem realJitter_of_fixedPoint {p : ℕ} (j : EutheosJitter p) :
    fixedPointNearestIntegerDistance p < 1 / (p : ℝ) := by
  rw [fixedPointNearestIntegerDistance_eq_scaled]
  apply
    (div_lt_div_iff
      (by norm_num [alpha0Denominator])
      (by exact_mod_cast j.p_pos)).2
  norm_num
  exact_mod_cast
    (by simpa [Nat.mul_comm] using j.jitter_lt_reciprocal)

#check fixedPointAlpha0
#check fixedPointNearestIntegerDistance
#print axioms fixedPointNearestIntegerDistance_eq_scaled
#print axioms realJitter_of_fixedPoint
#print axioms EutheosJitter

end Beal.ArakelovRH.DesertBrothers