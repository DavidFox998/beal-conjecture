-- B15_X0_10_Wrapper — verified formulas and explicit missing Frey inputs.

import Beal.B05_Modularity_Core
import Beal.B15_X0_10_Core
import Mathlib.Data.Rat.Defs
import Mathlib.NumberTheory.Padics.PadicVal.Basic

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

/--
The individual local facts that a future no-Frey argument would have to
derive from its Frey model. The old product-valuation predicate lost this
information and did not state the pairwise coprimality used by such an
argument.
-/
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

/--
The exact endpoint valuation pair transcribed from supplementary Table 30.
This is data, not a certificate that the graph cannot occur.
-/
def R4_10Table30EndpointValuations
    (c : R4_10TwoAdicCase15Core) (vE1 vE10 : Int) : Prop :=
  vE1 = R4_10_j_E1_v2_15Core c ∧
  vE10 = R4_10_j_E10_v2_15Core c

theorem r4_10_table30_endpoint_cases
    {c : R4_10TwoAdicCase15Core} {vE1 vE10 : Int}
    (h : R4_10Table30EndpointValuations c vE1 vE10) :
    vE1 = R4_10_j_E1_v2_15Core c ∧
    vE10 = R4_10_j_E10_v2_15Core c :=
  h

/-!
`Faltings_types.pdf`, Proposition 17 and Table 31 classify which vertex in
each quadratic twist of an `R₄(10)` graph has minimal Faltings height. They do
not state that a Frey curve is absent from `X₀(10)`, and Tables 28--30 list
local invariants of existing graph members rather than forbidden valuation
pairs. Consequently this module intentionally declares no theorem named
`X0_10_no_Frey`: the cited source does not supply that conclusion.
-/

#print axioms R4_10_j_E1
#print axioms R4_10_j_E10
#print axioms frey_j
#print axioms FreyTwoAdicLocalData
#print axioms R4_10Table30EndpointValuations
#print axioms r4_10_table30_endpoint_cases

end BealX0_10