/- B15_X0_10_Wrapper — Frey coordinates, valuations, and the Table 30
   boundary.  The source audit remains explicit: graph placement and the
   local j-valuation certificate are hypotheses supplied by the relevant
   arithmetic-geometry argument, not consequences of the source tables. -/

import Beal.B15_X0_10_Core
import Mathlib.Data.Rat.Defs
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

namespace BealX0_10

/-- The `E₁` endpoint j-coordinate displayed in supplementary §17.1. -/
def R4_10_j_E1 (t : ℚ) : ℚ :=
  (t ^ 6 - 4 * t ^ 5 + 16 * t + 16) ^ 3 /
    ((t - 4) * t ^ 5 * (t + 1) ^ 2)

/-- The `E₁₀` endpoint j-coordinate displayed in supplementary §17.1. -/
def R4_10_j_E10 (t : ℚ) : ℚ :=
  (t ^ 6 + 236 * t ^ 5 + 1440 * t ^ 4 + 1920 * t ^ 3 +
      3840 * t ^ 2 + 256 * t + 256) ^ 3 /
    ((t - 4) ^ 10 * t ^ 2 * (t + 1) ^ 5)

/-- The j-invariant of `Y² = X(X - Aˣ)(X + Bʸ)`. -/
def frey_j (A B x y : Nat) : ℚ :=
  256 *
      (((A : ℚ) ^ x) ^ 2 + (A : ℚ) ^ x * (B : ℚ) ^ y +
        ((B : ℚ) ^ y) ^ 2) ^ 3 /
    ((A : ℚ) ^ (2 * x) * (B : ℚ) ^ (2 * y) *
      ((A : ℚ) ^ x + (B : ℚ) ^ y) ^ 2)

/-- The j-coordinate of the quotient by the rational point `(0,0)`.
    This is the standard 2-isogeny formula for the displayed Frey cubic. -/
def frey_zero_quotient_j (A B C x y z : Nat) : ℚ :=
  -16 *
    (((A : ℚ) ^ x) ^ 2 - 14 * (A : ℚ) ^ x * (B : ℚ) ^ y +
      ((B : ℚ) ^ y) ^ 2) ^ 3 /
    ((A : ℚ) ^ x * (B : ℚ) ^ y * ((C : ℚ) ^ z) ^ 4)

/-- Regression check for the standard quotient
    `y² = x³ + 4x`, whose j-invariant is 1728. -/
theorem frey_zero_quotient_j_one_one :
    frey_zero_quotient_j 1 1 2 1 1 1 = 1728 := by
  norm_num [frey_zero_quotient_j]

/-- Algebraic form of the corrected quotient numerator. -/
theorem zero_quotient_numerator_identity (a b : ℚ) :
    a ^ 2 - 14 * a * b + b ^ 2 = (a + b) ^ 2 - 16 * a * b := by
  ring

/-- A graph placement identifies both relevant j-coordinates.  The two
    equalities to the displayed parameterization are deliberately visible:
    they are the missing Frey-to-`R₄(10)` input, not a Table 30 axiom. -/
structure FreyR4_10GraphPlacement (A B C x y z : Nat) where
  parameter : ℚ
  jE1 : ℚ
  jE10 : ℚ
  jE1_eq_frey : jE1 = frey_j A B x y
  jE10_eq_quotient : jE10 = frey_zero_quotient_j A B C x y z
  jE1_eq_parameterization : jE1 = R4_10_j_E1 parameter
  jE10_eq_parameterization : jE10 = R4_10_j_E10 parameter

/-- The individual powers' valuations are derived from the Frey bases.
    Pairwise coprimality is explicit because the older common-gcd predicate
    does not imply pairwise coprimality by itself. -/
structure FreyTwoAdicLocalData
    (A B C x y z : Nat) where
  pairwise_coprime : Nat.Coprime A B ∧ Nat.Coprime A C ∧ Nat.Coprime B C
  A_pos : 0 < A
  B_pos : 0 < B
  C_pos : 0 < C
  v2_Ax : Int
  v2_By : Int
  v2_Cz : Int
  v2_Ax_eq : v2_Ax = padicValRat 2 (((A : ℚ) ^ x))
  v2_By_eq : v2_By = padicValRat 2 (((B : ℚ) ^ y))
  v2_Cz_eq : v2_Cz = padicValRat 2 (((C : ℚ) ^ z))

theorem frey_power_valuation_A
    {A x : Nat} (hA : 0 < A) :
    padicValRat 2 (((A : ℚ) ^ x)) =
      (x * padicValNat 2 A : Int) := by
  rw [padicValRat.pow (Nat.cast_ne_zero.mpr (Nat.ne_of_gt hA))]
  rw [padicValRat.of_nat]

theorem frey_power_valuation_B
    {B y : Nat} (hB : 0 < B) :
    padicValRat 2 (((B : ℚ) ^ y)) =
      (y * padicValNat 2 B : Int) := by
  rw [padicValRat.pow (Nat.cast_ne_zero.mpr (Nat.ne_of_gt hB))]
  rw [padicValRat.of_nat]

theorem frey_power_valuation_C
    {C z : Nat} (hC : 0 < C) :
    padicValRat 2 (((C : ℚ) ^ z)) =
      (z * padicValNat 2 C : Int) := by
  rw [padicValRat.pow (Nat.cast_ne_zero.mpr (Nat.ne_of_gt hC))]
  rw [padicValRat.of_nat]

/-- Build the local valuation record from the actual Frey model, with
    pairwise coprimality supplied as a named hypothesis. -/
def freyTwoAdicLocalDataOf
    {A B C x y z : Nat}
    (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hPair : Nat.Coprime A B ∧ Nat.Coprime A C ∧ Nat.Coprime B C) :
    FreyTwoAdicLocalData A B C x y z where
  pairwise_coprime := hPair
  A_pos := hA
  B_pos := hB
  C_pos := hC
  v2_Ax := (x * padicValNat 2 A : Int)
  v2_By := (y * padicValNat 2 B : Int)
  v2_Cz := (z * padicValNat 2 C : Int)
  v2_Ax_eq := (frey_power_valuation_A hA).symm
  v2_By_eq := (frey_power_valuation_B hB).symm
  v2_Cz_eq := (frey_power_valuation_C hC).symm

/-- The elementary valuation profiles of the Frey j and its zero-point
    quotient.  The equalities to the actual rational valuations are a local
    certificate: proving the quotient's numerator valuation in the `C`-even
    case is precisely the missing 2-adic calculation, so it is not hidden
    behind a theorem name. -/
structure FreyR4_10JValuationCertificate
    (A B C x y z : Nat) where
  localData : FreyTwoAdicLocalData A B C x y z
  profile : FreyR4_10ValuationCase15Core
  vE1 : Int
  vE10 : Int
  vE1_eq_actual :
    vE1 = padicValRat 2 (frey_j A B x y)
  vE10_eq_actual :
    vE10 = padicValRat 2 (frey_zero_quotient_j A B C x y z)
  vE1_eq_profile :
    vE1 = frey_j_E1_v2_15Core profile
  vE10_eq_profile :
    vE10 = frey_j_E10_v2_15Core profile
  profile_constraints :
    frey_r4_10_case_constraints15_core profile

/-- Table 30 data for a concrete placement, including the applicable row
    range and the possible exchange of graph endpoints. -/
structure FreyR4_10Table30Certificate
    {A B C x y z : Nat}
    (placement : FreyR4_10GraphPlacement A B C x y z)
    (certificate : FreyR4_10JValuationCertificate A B C x y z) where
  tableCase : R4_10TwoAdicCase15Core
  table_constraints : R4_10_table_case_constraints15Core tableCase
  endpoint_values :
    (certificate.vE1 = R4_10_j_E1_v2_15Core tableCase ∧
      certificate.vE10 = R4_10_j_E10_v2_15Core tableCase) ∨
    (certificate.vE1 = R4_10_j_E10_v2_15Core tableCase ∧
      certificate.vE10 = R4_10_j_E1_v2_15Core tableCase)

/-- Once both concrete endpoint coordinates and their local certificates
    place a Frey curve in an applicable Table 30 row, the row arithmetic is
    contradictory. -/
theorem no_frey_realization_of_r4_10
    {A B C x y z : Nat}
    (placement : FreyR4_10GraphPlacement A B C x y z)
    (certificate : FreyR4_10JValuationCertificate A B C x y z)
    (table : FreyR4_10Table30Certificate placement certificate) :
    False := by
  rcases table.endpoint_values with h | h
  · exact no_frey_table30_match15Core
      (freyCase := certificate.profile)
      (tableCase := table.tableCase)
      (order := .e1ThenE10)
      (hFrey := certificate.profile_constraints)
      (hTable := table.table_constraints)
      (hE1 := certificate.vE1_eq_profile.symm.trans h.1)
      (hE10 := certificate.vE10_eq_profile.symm.trans h.2)
  · exact no_frey_table30_match15Core
      (freyCase := certificate.profile)
      (tableCase := table.tableCase)
      (order := .e10ThenE1)
      (hFrey := certificate.profile_constraints)
      (hTable := table.table_constraints)
      (hE1 := certificate.vE1_eq_profile.symm.trans h.1)
      (hE10 := certificate.vE10_eq_profile.symm.trans h.2)

#print axioms frey_power_valuation_A
#print axioms frey_power_valuation_B
#print axioms frey_power_valuation_C
#print axioms frey_zero_quotient_j_one_one
#print axioms zero_quotient_numerator_identity
#print axioms no_frey_realization_of_r4_10

end BealX0_10