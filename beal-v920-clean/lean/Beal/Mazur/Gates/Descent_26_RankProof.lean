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
# The maximal honest level-26 Selmer/rank interface

The two rational 2-torsion exclusions below are kernel-checked.  The second
descent and the Selmer-to-Mordell--Weil theorem are not available in Mathlib
4.12.  This module therefore exposes the abstract 2-Selmer carriers and
packages their exact covering and local-solubility obligations in a
proof-relevant certificate.  No unconditional Selmer-cardinality or
free-rank theorem is claimed.
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

def HasRealPoint {rows : List BinaryQuartic}
    (candidate : CoefficientCovering rows) : Prop :=
  ∃ x z y : ℝ, (x ≠ 0 ∨ z ≠ 0) ∧
    candidate.sUnit.1 * y ^ 2 =
      candidate.quartic.a * x ^ 4 +
        candidate.quartic.b * x ^ 3 * z +
        candidate.quartic.c * x ^ 2 * z ^ 2 +
        candidate.quartic.d * x * z ^ 3 +
        candidate.quartic.e * z ^ 4

def HasQpPoint {rows : List BinaryQuartic}
    (candidate : CoefficientCovering rows)
    (p : Nat) (hp : Nat.Prime p) : Prop := by
  letI : Fact (Nat.Prime p) := ⟨hp⟩
  exact ∃ x z y : ℚ_[p], (x ≠ 0 ∨ z ≠ 0) ∧
    candidate.sUnit.1 * y ^ 2 =
      candidate.quartic.a * x ^ 4 +
        candidate.quartic.b * x ^ 3 * z +
        candidate.quartic.c * x ^ 2 * z ^ 2 +
        candidate.quartic.d * x * z ^ 3 +
        candidate.quartic.e * z ^ 4

def EverywhereLocallySoluble {rows : List BinaryQuartic}
    (candidate : CoefficientCovering rows) : Prop :=
  HasRealPoint candidate ∧
    ∀ p : Nat, ∀ hp : Nat.Prime p, HasQpPoint candidate p hp

/-! ## Abstract 2-Selmer carriers and their covering semantics -/

/-- An externally supplied cohomological model of the full 2-Selmer group of
a rational elliptic curve.

Mathlib 4.12 has no `H¹(ℚ, E[2])` or 2-Selmer API.  The carrier is consequently
defined here from externally supplied cohomological data rather than being
silently replaced by the finite coefficient list: `H1` is the ambient
cohomology carrier and `localKummerConditions` is the subgroup cut out by all
local Kummer images.  The full Selmer carrier is definitionally that subgroup.
Supplying these fields from actual Galois cohomology remains the visible
Mathlib boundary. -/
structure AbstractTwoSelmer (E : WeierstrassCurve ℚ) where
  H1 : Type
  h1Group : AddCommGroup H1
  localKummerConditions : @AddSubgroup H1 h1Group.toAddGroup
  exponent_two : ∀ s : localKummerConditions, 2 • s = 0
  kummerMap : MordellWeilGroup E →+ localKummerConditions
  kummer_kills_doubles :
    ∀ P : MordellWeilGroup E, kummerMap (2 • P) = 0

attribute [instance] AbstractTwoSelmer.h1Group

/-- The full Selmer carrier cut out inside the supplied cohomology model by
the local Kummer conditions. -/
abbrev AbstractTwoSelmer.Carrier
    {E : WeierstrassCurve ℚ} (selmer : AbstractTwoSelmer E) : Type :=
  selmer.localKummerConditions

/-- The abstract 2-Selmer object slot for the `26a1` factor. -/
abbrev Selmer2_26a1 := AbstractTwoSelmer E26a1W

/-- The abstract 2-Selmer object slot for the `26b1` factor. -/
abbrev Selmer2_26b1 := AbstractTwoSelmer E26b1W

/-- The exact semantic bridge from a coefficient ledger to an externally
supplied full 2-Selmer model.

`represents` is kept separate from coefficient equality: it is the arithmetic
assertion that a twisted quartic represents a particular cohomological Selmer
class.  Its existence is equivalent to genuine everywhere local solubility.
The final field records the assertion that the coefficient ledger represents
every class in the supplied full Selmer model. -/
structure SelmerLedgerIdentification
    (E : WeierstrassCurve ℚ) (rows : List BinaryQuartic)
    (selmer : AbstractTwoSelmer E) where
  coveringClass : CoefficientCovering rows → selmer.Carrier
  represents :
    CoefficientCovering rows → selmer.Carrier → Prop
  represents_iff :
    ∀ candidate : CoefficientCovering rows, ∀ s : selmer.Carrier,
      represents candidate s ↔
        coveringClass candidate = s ∧ EverywhereLocallySoluble candidate
  integral_implies_local :
    ∀ candidate : CoefficientCovering rows,
      IntegrallySoluble candidate → EverywhereLocallySoluble candidate
  every_selmer_class_has_covering :
    ∀ s : selmer.Carrier,
      ∃ candidate : CoefficientCovering rows,
        represents candidate s

/-- Compatibility of a particular coefficient descent with the Kummer map
into the supplied cohomological 2-Selmer model. -/
structure SelmerDescentCompatibility
    (E : WeierstrassCurve ℚ) (rows : List BinaryQuartic)
    (selmer : AbstractTwoSelmer E)
    (identification : SelmerLedgerIdentification E rows selmer)
    (descent : CompleteTwoDescent E rows) where
  descent_matches_kummer :
    ∀ P : MordellWeilGroup E,
      identification.coveringClass (descent.descentMap P) =
        selmer.kummerMap P

/-- The separate local-to-global input needed to make rational-point descent
surjective onto the full 2-Selmer group.

This is not part of the definition of Selmer membership.  It is the
curve-specific assertion that the locally soluble ledger coverings relevant
here have global primitive points; equivalently, it is where the required
vanishing of the represented `Sha(E/ℚ)[2]` classes must be proved. -/
structure SelmerExhaustionCertificate
    (E : WeierstrassCurve ℚ) (rows : List BinaryQuartic)
    (selmer : AbstractTwoSelmer E)
    (identification : SelmerLedgerIdentification E rows selmer) where
  sha_two_class_vanishes :
    ∀ candidate : CoefficientCovering rows,
      EverywhereLocallySoluble candidate → IntegrallySoluble candidate

/-- The abstract Selmer class attached to a rational point by a complete
coefficient-defined descent. -/
def descentClass
    {E : WeierstrassCurve ℚ} {rows : List BinaryQuartic}
    {selmer : AbstractTwoSelmer E}
    (descent : CompleteTwoDescent E rows)
    (identification : SelmerLedgerIdentification E rows selmer)
    (P : MordellWeilGroup E) : selmer.Carrier :=
  selmer.kummerMap P

/-- The covering attached to a point represents the resulting full
2-Selmer class. -/
theorem descentMap_lands_in_abstractSelmer
    {E : WeierstrassCurve ℚ} {rows : List BinaryQuartic}
    {selmer : AbstractTwoSelmer E}
    (descent : CompleteTwoDescent E rows)
    (identification : SelmerLedgerIdentification E rows selmer)
    (compatibility :
      SelmerDescentCompatibility E rows selmer identification descent) :
    ∀ P : MordellWeilGroup E,
      identification.represents (descent.descentMap P)
        (descentClass descent identification P) := by
  intro P
  apply (identification.represents_iff
    (descent.descentMap P)
    (descentClass descent identification P)).2
  refine ⟨compatibility.descent_matches_kummer P, ?_⟩
  exact identification.integral_implies_local (descent.descentMap P)
    (descent.map_is_integrallySoluble P)

/-- The complete descent map exhausts the abstract 2-Selmer carrier.

This is a cardinality-free statement: it proves surjectivity onto the
Selmer carrier, but it does not identify that carrier with
`MordellWeilGroup E / 2 * MordellWeilGroup E` or infer a Mordell--Weil rank. -/
theorem descentMap_exhausts_abstractSelmer
    {E : WeierstrassCurve ℚ} {rows : List BinaryQuartic}
    {selmer : AbstractTwoSelmer E}
    (descent : CompleteTwoDescent E rows)
    (identification : SelmerLedgerIdentification E rows selmer)
    (compatibility :
      SelmerDescentCompatibility E rows selmer identification descent)
    (exhaustion :
      SelmerExhaustionCertificate E rows selmer identification) :
    ∀ s : selmer.Carrier,
      ∃ P : MordellWeilGroup E, descentClass descent identification P = s := by
  intro s
  obtain ⟨candidate, hRepresents⟩ :=
    identification.every_selmer_class_has_covering s
  have hRepresentation :=
    (identification.represents_iff candidate s).1 hRepresents
  obtain ⟨hClass, hLocal⟩ := hRepresentation
  obtain ⟨P, hCovering⟩ := descent.exhaustive candidate
    (exhaustion.sha_two_class_vanishes candidate hLocal)
  refine ⟨P, ?_⟩
  dsimp [descentClass]
  rw [← compatibility.descent_matches_kummer P, hCovering, hClass]

/-! ## Locally soluble coefficient classes -/

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
      EverywhereLocallySoluble candidate}

def oneSUnit : SUnitRepresentative :=
  ⟨1, by simp [Q_S2_13]⟩

/-! ## Exhaustive coefficient-defined ledger -/

/-- Every relevant squareclass is represented by a coefficient-defined
covering in the recorded ledger.

The ledger is a list of coefficient tuples, so this theorem is proved by
constructing the `LedgerClass` value directly.  It is intentionally about
recorded coverage only: local solubility and the identification with an
abstract 2-Selmer group remain separate propositions. -/
def RecordedLedgerCoverage (rows : List BinaryQuartic) : Prop :=
  ∀ d : SUnitRepresentative,
    ∀ q : BinaryQuartic, q ∈ rows →
      ∃ candidate : CoefficientCovering rows,
        candidate.sUnit = d ∧ candidate.quartic = q

theorem E26a1_recorded_ledger_covers_all_squareclasses :
    RecordedLedgerCoverage E26a1MwrankQuartics := by
  intro d q hq
  exact coefficientCovering_of_row hq d

theorem E26b1_recorded_ledger_covers_all_squareclasses :
    RecordedLedgerCoverage E26b1MwrankQuartics := by
  intro d q hq
  exact coefficientCovering_of_row hq d

/-- The finite ledger gives a disposition for every relevant squareclass:
it is recorded, rather than silently discarded. -/
def SquareclassDisposition (rows : List BinaryQuartic)
    (d : SUnitRepresentative) : Prop :=
  (∀ q : BinaryQuartic, q ∈ rows →
    ∃ candidate : CoefficientCovering rows,
      candidate.sUnit = d ∧ candidate.quartic = q) ∨
  (∀ candidate : CoefficientCovering rows, candidate.sUnit ≠ d)

theorem E26a1_every_squareclass_has_a_formal_disposition :
    ∀ d : SUnitRepresentative,
      SquareclassDisposition E26a1MwrankQuartics d := by
  intro d
  exact Or.inl (E26a1_recorded_ledger_covers_all_squareclasses d)

theorem E26b1_every_squareclass_has_a_formal_disposition :
    ∀ d : SUnitRepresentative,
      SquareclassDisposition E26b1MwrankQuartics d := by
  intro d
  exact Or.inl (E26b1_recorded_ledger_covers_all_squareclasses d)

theorem completeDescent_connects_26a1_ledger_coverage
    (descent : CompleteTwoDescent E26a1W E26a1MwrankQuartics)
    (candidate : CoefficientCovering E26a1MwrankQuartics)
    (hSoluble : IntegrallySoluble candidate) :
    ∃ P : MordellWeilGroup E26a1W,
      descent.descentMap P = candidate :=
  descent.reaches_every_soluble_covering candidate hSoluble

theorem completeDescent_connects_26b1_ledger_coverage
    (descent : CompleteTwoDescent E26b1W E26b1MwrankQuartics)
    (candidate : CoefficientCovering E26b1MwrankQuartics)
    (hSoluble : IntegrallySoluble candidate) :
    ∃ P : MordellWeilGroup E26b1W,
      descent.descentMap P = candidate :=
  descent.reaches_every_soluble_covering candidate hSoluble

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
  selmer_26a1 :
    Selmer2_26a1
  selmer_26b1 :
    Selmer2_26b1
  selmer_identification_26a1 :
    SelmerLedgerIdentification E26a1W E26a1MwrankQuartics selmer_26a1
  selmer_identification_26b1 :
    SelmerLedgerIdentification E26b1W E26b1MwrankQuartics selmer_26b1
  descent_26a1 :
    CompleteTwoDescent E26a1W E26a1MwrankQuartics
  descent_26b1 :
    CompleteTwoDescent E26b1W E26b1MwrankQuartics
  selmer_descent_compatibility_26a1 :
    SelmerDescentCompatibility E26a1W E26a1MwrankQuartics
      selmer_26a1 selmer_identification_26a1 descent_26a1
  selmer_descent_compatibility_26b1 :
    SelmerDescentCompatibility E26b1W E26b1MwrankQuartics
      selmer_26b1 selmer_identification_26b1 descent_26b1
  selmer_exhaustion_26a1 :
    SelmerExhaustionCertificate E26a1W E26a1MwrankQuartics
      selmer_26a1 selmer_identification_26a1
  selmer_exhaustion_26b1 :
    SelmerExhaustionCertificate E26b1W E26b1MwrankQuartics
      selmer_26b1 selmer_identification_26b1
  second_descent_sound_26a1 :
    CurveSecondDescentSoundness E26a1W E26a1MwrankQuartics
  second_descent_sound_26b1 :
    CurveSecondDescentSoundness E26b1W E26b1MwrankQuartics

/-- Both curve-specific descent maps produce primitive points on their actual
twisted coefficient equations. -/
theorem coefficient_coverings_derived_from_secondDescent
    (certificate : SecondDescentCertificate_26) :
    (∀ P : MordellWeilGroup E26a1W,
      Nonempty (TwistedPrimitiveIntegralPoint
        (certificate.descent_26a1.descentMap P))) ∧
    (∀ P : MordellWeilGroup E26b1W,
      Nonempty (TwistedPrimitiveIntegralPoint
        (certificate.descent_26b1.descentMap P))) :=
  ⟨certificate.descent_26a1.descentMap_has_twisted_equation,
    certificate.descent_26b1.descentMap_has_twisted_equation⟩

/-! ## Curve-specific Selmer landing and exhaustion -/

/-- The `26a1` descent map lands in its supplied abstract 2-Selmer carrier. -/
theorem completeDescent_26a1_lands_in_selmer
    (certificate : SecondDescentCertificate_26) :
    ∀ P : MordellWeilGroup E26a1W,
      certificate.selmer_identification_26a1.represents
        (certificate.descent_26a1.descentMap P)
        (descentClass certificate.descent_26a1
          certificate.selmer_identification_26a1 P) :=
  descentMap_lands_in_abstractSelmer certificate.descent_26a1
    certificate.selmer_identification_26a1
    certificate.selmer_descent_compatibility_26a1

/-- The `26b1` descent map lands in its supplied abstract 2-Selmer carrier. -/
theorem completeDescent_26b1_lands_in_selmer
    (certificate : SecondDescentCertificate_26) :
    ∀ P : MordellWeilGroup E26b1W,
      certificate.selmer_identification_26b1.represents
        (certificate.descent_26b1.descentMap P)
        (descentClass certificate.descent_26b1
          certificate.selmer_identification_26b1 P) :=
  descentMap_lands_in_abstractSelmer certificate.descent_26b1
    certificate.selmer_identification_26b1
    certificate.selmer_descent_compatibility_26b1

/-- The `26a1` coefficient descent exhausts the supplied abstract Selmer
carrier. -/
theorem completeDescent_26a1_exhausts_selmer
    (certificate : SecondDescentCertificate_26) :
    ∀ s : certificate.selmer_26a1.Carrier,
      ∃ P : MordellWeilGroup E26a1W,
        descentClass certificate.descent_26a1
          certificate.selmer_identification_26a1 P = s :=
  descentMap_exhausts_abstractSelmer certificate.descent_26a1
    certificate.selmer_identification_26a1
    certificate.selmer_descent_compatibility_26a1
    certificate.selmer_exhaustion_26a1

/-- The `26b1` coefficient descent exhausts the supplied abstract Selmer
carrier. -/
theorem completeDescent_26b1_exhausts_selmer
    (certificate : SecondDescentCertificate_26) :
    ∀ s : certificate.selmer_26b1.Carrier,
      ∃ P : MordellWeilGroup E26b1W,
        descentClass certificate.descent_26b1
          certificate.selmer_identification_26b1 P = s :=
  descentMap_exhausts_abstractSelmer certificate.descent_26b1
    certificate.selmer_identification_26b1
    certificate.selmer_descent_compatibility_26b1
    certificate.selmer_exhaustion_26b1

def SecondDescentHypothesis_26 : Prop :=
  Nonempty SecondDescentCertificate_26

/-- The external soundness boundary for the checked congruences and historical
mwrank report fields.

Lean checks the exact model, quartic, rank, and Selmer-rank fields of the
report in `SecondDescent_Real_26.lean`.  Genuine bad-prime solubility is a
separate proof-relevant input, so the JSON checker is never treated as a Lean
theorem.  The finite coefficient ledger is exhaustive by the theorems above.
This interface retains exactly the remaining curve-specific descent-map
soundness, Selmer-identification, and rank-soundness assertions. -/
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
  "CONDITIONAL: abstract Selmer carriers and exhaustive ledger identification explicit; p-adic proof and Selmer-to-rank soundness explicit"

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
#print axioms E26a1_recorded_ledger_covers_all_squareclasses
#print axioms E26b1_recorded_ledger_covers_all_squareclasses
#print axioms completeDescent_connects_26a1_ledger_coverage
#print axioms completeDescent_connects_26b1_ledger_coverage
#print axioms coefficient_coverings_derived_from_secondDescent
#print axioms descentMap_lands_in_abstractSelmer
#print axioms descentMap_exhausts_abstractSelmer
#print axioms completeDescent_26a1_lands_in_selmer
#print axioms completeDescent_26b1_lands_in_selmer
#print axioms completeDescent_26a1_exhausts_selmer
#print axioms completeDescent_26b1_exhausts_selmer
#print axioms SecondDescentHypothesis_26_real
#print axioms freeRankZero_of_secondDescent

end

end Beal17Mazur.Gates.Descent26RankProof