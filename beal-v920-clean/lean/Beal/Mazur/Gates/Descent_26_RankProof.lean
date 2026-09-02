import Beal.Mazur.Gates.Descent_26_Bridge
import Beal.Mazur.Gates.Descent_26_PadicCertificates
import Beal.Mazur.Gates.SecondDescent_Real_26
import Mathlib.NumberTheory.Padics.PadicNumbers
import Mathlib.RingTheory.Polynomial.RationalRoot
import Mathlib.Tactic

namespace Beal17Mazur.Gates.Descent26RankProof

open Beal17Mazur.Jacobian
open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26Bridge
open Beal17Mazur.Gates.Descent26PadicCertificates
open Beal17Mazur.Gates.SecondDescentReal26
open Polynomial
open scoped Polynomial

noncomputable section

/-!
# The maximal honest level-26 rank interface

The two rational 2-torsion exclusions below are kernel-checked.  The second
descent and the Selmer-to-Mordell--Weil theorem are not available in Mathlib
4.12, so this module packages their exact proof obligations in an uninhabited
certificate.  No unconditional free-rank theorem is claimed.
-/

/-! ## The genuine two-division cubics -/

def E26a1TwoDivision : Polynomial Int :=
  Cubic.toPoly ⟨4, -3, -10, 13⟩

def E26b1TwoDivision : Polynomial Int :=
  Cubic.toPoly ⟨4, 1, -18, -31⟩

theorem E26a1_twoTorsionPolynomial :
    E26a1W.twoTorsionPolynomial = (⟨4, -3, -10, 13⟩ : Cubic ℚ) := by
  have ha1 : E26a1W.a₁ = 1 := rfl
  have ha2 : E26a1W.a₂ = -1 := rfl
  have ha3 : E26a1W.a₃ = 1 := rfl
  have ha4 : E26a1W.a₄ = -3 := rfl
  have ha6 : E26a1W.a₆ = 3 := rfl
  ext <;>
    simp [WeierstrassCurve.twoTorsionPolynomial,
      WeierstrassCurve.b₂, WeierstrassCurve.b₄,
      WeierstrassCurve.b₆, ha1, ha2, ha3, ha4, ha6] <;>
    norm_num

theorem E26b1_twoTorsionPolynomial :
    E26b1W.twoTorsionPolynomial = (⟨4, 1, -18, -31⟩ : Cubic ℚ) := by
  have ha1 : E26b1W.a₁ = 1 := rfl
  have ha2 : E26b1W.a₂ = 0 := rfl
  have ha3 : E26b1W.a₃ = 1 := rfl
  have ha4 : E26b1W.a₄ = -5 := rfl
  have ha6 : E26b1W.a₆ = -8 := rfl
  ext <;>
    simp [WeierstrassCurve.twoTorsionPolynomial,
      WeierstrassCurve.b₂, WeierstrassCurve.b₄,
      WeierstrassCurve.b₆, ha1, ha2, ha3, ha4, ha6] <;>
    norm_num

/-! ## Rational-root exclusions -/

private def scaledA : Polynomial Int :=
  Cubic.toPoly ⟨1, -3, -40, 208⟩

private def scaledB : Polynomial Int :=
  Cubic.toPoly ⟨1, 1, -72, -496⟩

private theorem scaledA_monic : scaledA.Monic :=
  Cubic.monic_of_a_eq_one'

private theorem scaledB_monic : scaledB.Monic :=
  Cubic.monic_of_a_eq_one'

private def scaledAInt (u : Int) : Int :=
  u ^ 3 - 3 * u ^ 2 - 40 * u + 208

private def scaledBInt (u : Int) : Int :=
  u ^ 3 + u ^ 2 - 72 * u - 496

private theorem scaledAInt_ne_zero (u : Int) : scaledAInt u ≠ 0 := by
  intro h
  have hu : u ≡ u % 3 [ZMOD (3 : Int)] :=
    (Int.mod_modEq u 3).symm
  have hm : scaledAInt u ≡ scaledAInt (u % 3) [ZMOD (3 : Int)] := by
    dsimp [scaledAInt]
    exact ((hu.pow 3).sub ((Int.ModEq.refl 3).mul (hu.pow 2))).sub
      ((Int.ModEq.refl 40).mul hu) |>.add (Int.ModEq.refl 208)
  rw [h] at hm
  have hlo : 0 ≤ u % 3 := Int.emod_nonneg _ (by norm_num)
  have hhi : u % 3 < 3 := Int.emod_lt_of_pos _ (by norm_num)
  interval_cases u % 3 <;> norm_num [scaledAInt, Int.ModEq] at hm

private theorem scaledBInt_ne_zero (u : Int) : scaledBInt u ≠ 0 := by
  intro h
  have hu : u ≡ u % 3 [ZMOD (3 : Int)] :=
    (Int.mod_modEq u 3).symm
  have hm : scaledBInt u ≡ scaledBInt (u % 3) [ZMOD (3 : Int)] := by
    dsimp [scaledBInt]
    exact ((hu.pow 3).add (hu.pow 2)).sub
      ((Int.ModEq.refl 72).mul hu) |>.sub (Int.ModEq.refl 496)
  rw [h] at hm
  have hlo : 0 ≤ u % 3 := Int.emod_nonneg _ (by norm_num)
  have hhi : u % 3 < 3 := Int.emod_lt_of_pos _ (by norm_num)
  interval_cases u % 3 <;> norm_num [scaledBInt, Int.ModEq] at hm

private theorem scaledA_root_of_E26a1_root {r : ℚ}
    (h : aeval r E26a1TwoDivision = 0) :
    aeval (4 * r) scaledA = 0 := by
  simp only [E26a1TwoDivision, scaledA, Cubic.toPoly, map_add, map_mul,
    map_pow, aeval_X, aeval_C, map_intCast, map_ofNat, map_neg] at h ⊢
  norm_num at h ⊢
  nlinarith

private theorem scaledB_root_of_E26b1_root {r : ℚ}
    (h : aeval r E26b1TwoDivision = 0) :
    aeval (4 * r) scaledB = 0 := by
  simp only [E26b1TwoDivision, scaledB, Cubic.toPoly, map_add, map_mul,
    map_pow, aeval_X, aeval_C, map_intCast, map_ofNat, map_neg] at h ⊢
  norm_num at h ⊢
  nlinarith

theorem E26a1_twoDivision_no_rational_root :
    ∀ r : ℚ, aeval r E26a1TwoDivision ≠ 0 := by
  intro r h
  have hscaled := scaledA_root_of_E26a1_root h
  obtain ⟨u, hu, _⟩ :=
    exists_integer_of_is_root_of_monic scaledA_monic hscaled
  rw [hu] at hscaled
  have hu0 : scaledAInt u = 0 := by
    exact_mod_cast (show (scaledAInt u : ℚ) = 0 by
      simp only [scaledA, Cubic.toPoly, map_add, map_mul, map_pow,
        aeval_X, aeval_C, map_intCast, map_ofNat, map_neg] at hscaled
      norm_num [scaledAInt] at hscaled ⊢
      ring_nf at hscaled ⊢
      exact hscaled)
  exact scaledAInt_ne_zero u hu0

theorem E26b1_twoDivision_no_rational_root :
    ∀ r : ℚ, aeval r E26b1TwoDivision ≠ 0 := by
  intro r h
  have hscaled := scaledB_root_of_E26b1_root h
  obtain ⟨u, hu, _⟩ :=
    exists_integer_of_is_root_of_monic scaledB_monic hscaled
  rw [hu] at hscaled
  have hu0 : scaledBInt u = 0 := by
    exact_mod_cast (show (scaledBInt u : ℚ) = 0 by
      simp only [scaledB, Cubic.toPoly, map_add, map_mul, map_pow,
        aeval_X, aeval_C, map_intCast, map_ofNat, map_neg] at hscaled
      norm_num [scaledBInt] at hscaled ⊢
      ring_nf at hscaled ⊢
      exact hscaled)
  exact scaledBInt_ne_zero u hu0

/-! ## From an order-two point to a root of the cubic -/

private theorem twoTorsion_root
    (W : WeierstrassCurve ℚ) {x y : ℚ}
    (hPoint : W.toAffine.Nonsingular x y)
    (hDouble :
      2 • (WeierstrassCurve.Affine.Point.some hPoint :
        W.toAffine.Point) = 0) :
    (W.twoTorsionPolynomial.toPoly).eval x = 0 := by
  have hSelf :
      (WeierstrassCurve.Affine.Point.some hPoint :
        W.toAffine.Point) +
        WeierstrassCurve.Affine.Point.some hPoint = 0 := by
    simpa [two_nsmul] using hDouble
  have hy : y = W.toAffine.negY x y := by
    by_contra hne
    rw [WeierstrassCurve.Affine.Point.add_self_of_Y_ne hne] at hSelf
    exact WeierstrassCurve.Affine.Point.some_ne_zero _ hSelf
  have hEquation := hPoint.1
  rw [WeierstrassCurve.Affine.equation_iff] at hEquation
  simp only [WeierstrassCurve.Affine.negY] at hy
  simp [WeierstrassCurve.twoTorsionPolynomial, Cubic.toPoly,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆]
  nlinarith [hEquation, hy]

def NoRationalTwoTorsion (E : WeierstrassCurve ℚ) : Prop :=
  ∀ P : MordellWeilGroup E, 2 • P = 0 → P = 0

theorem no_rational_two_torsion_26a1W :
    NoRationalTwoTorsion E26a1W := by
  intro P hP
  cases P with
  | zero => rfl
  | @some x y hxy =>
    exfalso
    have hroot := twoTorsion_root E26a1W hxy hP
    rw [E26a1_twoTorsionPolynomial] at hroot
    exact E26a1_twoDivision_no_rational_root x (by
      simp only [E26a1TwoDivision, Cubic.toPoly, map_add, map_mul, map_pow,
        aeval_X, aeval_C, map_intCast, map_ofNat, map_neg]
      norm_num
      simpa [Cubic.toPoly] using hroot)

theorem no_rational_two_torsion_26b1W :
    NoRationalTwoTorsion E26b1W := by
  intro P hP
  cases P with
  | zero => rfl
  | @some x y hxy =>
    exfalso
    have hroot := twoTorsion_root E26b1W hxy hP
    rw [E26b1_twoTorsionPolynomial] at hroot
    exact E26b1_twoDivision_no_rational_root x (by
      simp only [E26b1TwoDivision, Cubic.toPoly, map_add, map_mul, map_pow,
        aeval_X, aeval_C, map_intCast, map_ofNat, map_neg]
      norm_num
      simpa [Cubic.toPoly] using hroot)

/-! ## Genuine local predicates and the finite representative list -/

def HasRealPoint (q : BinaryQuartic) : Prop :=
  ∃ x z y : ℝ, (x ≠ 0 ∨ z ≠ 0) ∧
    y ^ 2 =
      q.a * x ^ 4 + q.b * x ^ 3 * z + q.c * x ^ 2 * z ^ 2 +
        q.d * x * z ^ 3 + q.e * z ^ 4

def HasQpPoint (q : BinaryQuartic) (p : Nat) (hp : Nat.Prime p) : Prop := by
  letI : Fact (Nat.Prime p) := ⟨hp⟩
  exact ∃ x z y : ℚ_[p], (x ≠ 0 ∨ z ≠ 0) ∧
    y ^ 2 =
      q.a * x ^ 4 + q.b * x ^ 3 * z + q.c * x ^ 2 * z ^ 2 +
        q.d * x * z ^ 3 + q.e * z ^ 4

def EverywhereLocallySoluble (q : BinaryQuartic) : Prop :=
  HasRealPoint q ∧ ∀ p : Nat, ∀ hp : Nat.Prime p, HasQpPoint q p hp

/-- Locally soluble classes among the proof-relevant transcript ledger.

The `SUnitRepresentative` component is the eight-element representative list
from `E26.lean`; this definition does not assert that the list has already been
proved equivalent to the abstract squareclass quotient `ℚ(S,2)`.  That
identification is part of `CurveSecondDescentSoundness` below. -/
def SelmerCandidates (rows : List BinaryQuartic) :
    Set SUnitRepresentative :=
  {d | ∃ candidate : LedgerClass rows,
    candidate.sUnit = d ∧
      IntegrallySoluble candidate ∧
      EverywhereLocallySoluble candidate.quartic}

def oneSUnit : SUnitRepresentative :=
  ⟨1, by simp [Q_S2_13]⟩

/-! ## The exact second-descent and torsion boundaries -/

def IsRationalTorsionPoint {E : WeierstrassCurve ℚ}
    (P : MordellWeilGroup E) : Prop :=
  ∃ n : Nat, 0 < n ∧ n • P = 0

def RationalTorsionPoints (E : WeierstrassCurve ℚ) :=
  {P : MordellWeilGroup E // IsRationalTorsionPoint P}

structure TorsionOdd_26_Certificate where
  a1_exact_cardinality : Nat.card (RationalTorsionPoints E26a1W) = 7
  b1_exact_cardinality : Nat.card (RationalTorsionPoints E26b1W) = 3
  a1_no_two_torsion : NoRationalTwoTorsion E26a1W
  b1_no_two_torsion : NoRationalTwoTorsion E26b1W

def TorsionOdd_26 : Prop :=
  Nonempty TorsionOdd_26_Certificate

/-- The missing theorem that connects this exact local ledger computation to
the Mordell--Weil quotient.  Its premise makes the singleton Selmer result
logically relevant; no arbitrary status record can inhabit it. -/
def CurveSecondDescentSoundness
    (E : WeierstrassCurve ℚ) (rows : List BinaryQuartic) : Prop :=
  SelmerCandidates rows = {oneSUnit} →
    CompleteTwoDescent E rows →
      IsFreeRankZero E

structure SecondDescentCertificate_26 where
  selmer_26a1_singleton :
    SelmerCandidates E26a1MwrankQuartics = {oneSUnit}
  selmer_26b1_singleton :
    SelmerCandidates E26b1MwrankQuartics = {oneSUnit}
  descent_26a1 :
    CompleteTwoDescent E26a1W E26a1MwrankQuartics
  descent_26b1 :
    CompleteTwoDescent E26b1W E26b1MwrankQuartics
  second_descent_sound_26a1 :
    CurveSecondDescentSoundness E26a1W E26a1MwrankQuartics
  second_descent_sound_26b1 :
    CurveSecondDescentSoundness E26b1W E26b1MwrankQuartics

def SecondDescentHypothesis_26 : Prop :=
  Nonempty SecondDescentCertificate_26

/-- The external soundness boundary for the checked congruences and historical
mwrank report fields.

Lean checks the exact model, quartic, rank, and Selmer-rank fields of the
report in `SecondDescent_Real_26.lean`.  Genuine bad-prime solubility is a
separate proof-relevant input, so the JSON checker is never treated as a Lean
theorem.  This interface retains exactly the remaining covering-completeness,
Selmer-identification, and rank-soundness assertions. -/
structure Level26ExternalComputationInterface where
  complete_two_descents :
    GenuinePAdicCertificate_26 →
    genuineMwrankTranscript_26.curve26a1ReportedSelmerRank = 0 →
    genuineMwrankTranscript_26.curve26b1ReportedSelmerRank = 0 →
    SecondDescentHypothesis_26

/-- Honest v9.2.0 wrapper around the archived external mwrank certificate.

The theorem itself is axiom-free.  Its explicit premise is the external
computation trust boundary; it does not claim that genuine `ℚ₂` or `ℚ₁₃`
solubility is decided inside Lean. -/
theorem SecondDescentHypothesis_26_real
    (pAdic : GenuinePAdicCertificate_26)
    (external : Level26ExternalComputationInterface) :
    SecondDescentHypothesis_26 := by
  apply external.complete_two_descents
  · exact pAdic
  · exact genuineMwrankTranscript_zero_reports_checked.2.2.1
  · exact genuineMwrankTranscript_zero_reports_checked.2.2.2

def secondDescentStatus : String :=
  "CONDITIONAL: Hensel data checked externally; Lean p-adic proof, completeness, and Selmer-to-rank soundness explicit"

def torsionStatus : String :=
  "CONDITIONAL: exact rational torsion orders 7 and 3 are not kernel-checked"

theorem freeRankZero_of_secondDescent :
    SecondDescentHypothesis_26 ∧ TorsionOdd_26 →
      IsFreeRankZero E26a1W ∧ IsFreeRankZero E26b1W := by
  rintro ⟨⟨certificate⟩, _⟩
  exact
    ⟨certificate.second_descent_sound_26a1
        certificate.selmer_26a1_singleton certificate.descent_26a1,
      certificate.second_descent_sound_26b1
        certificate.selmer_26b1_singleton certificate.descent_26b1⟩

#print axioms sUnits_26_card_8_decide
#print axioms ledger_length
#print axioms E26a1_twoTorsionPolynomial
#print axioms E26b1_twoTorsionPolynomial
#print axioms E26a1_twoDivision_no_rational_root
#print axioms E26b1_twoDivision_no_rational_root
#print axioms no_rational_two_torsion_26a1W
#print axioms no_rational_two_torsion_26b1W
#print axioms SecondDescentHypothesis_26_real
#print axioms freeRankZero_of_secondDescent

end

end Beal17Mazur.Gates.Descent26RankProof