/- B15_X0_10_Core — the elementary Frey/Table 30 incompatibility.

   The source tables classify the five possible 2-adic signatures of an
   R₄(10) graph.  This file records that transcription and the candidate
   valuation profiles whose equality to the actual Frey invariants is an
   explicit certificate in the wrapper.
-/

import Lean.Elab.Tactic.Omega

/-- The five 2-adic parameter cases in González-Jiménez--Lario Table 30. -/
inductive R4_10TwoAdicCase15Core where
  | gtTwo (m : Nat)
  | eqTwo (m : Nat)
  | eqOne
  | eqZero (m : Nat)
  | neg (m : Nat)
  deriving DecidableEq

/-- The Table 30 value of `v₂(j(E₁))`. -/
def R4_10_j_E1_v2_15Core : R4_10TwoAdicCase15Core → Int
  | .gtTwo m => 10 - 5 * (m : Int)
  | .eqTwo m => 2 - (m : Int)
  | .eqOne => 6
  | .eqZero m => -2 * (m : Int)
  | .neg m => -10 * (m : Int)

/-- The Table 30 value of `v₂(j(E₁₀))`. -/
def R4_10_j_E10_v2_15Core : R4_10TwoAdicCase15Core → Int
  | .gtTwo m => 4 - 2 * (m : Int)
  | .eqTwo m => 20 - 10 * (m : Int)
  | .eqOne => 6
  | .eqZero m => -5 * (m : Int)
  | .neg m => -(m : Int)

/-- The ranges attached to the five mutually exclusive Table 30 rows. -/
def R4_10_table_case_constraints15Core :
    R4_10TwoAdicCase15Core → Prop
  | .gtTwo m => 3 ≤ m
  | .eqTwo m => 3 ≤ m
  | .eqOne => True
  | .eqZero m => 1 ≤ m
  | .neg m => 1 ≤ m

/-- The three mutually exclusive parity locations for a primitive Frey
    equation.  `r` is the valuation of the even powered term. -/
inductive FreyR4_10ValuationCase15Core where
  | aEven (r : Nat)
  | bEven (r : Nat)
  | cEven (r : Nat) (z : Nat)

/-- The certified endpoint valuation profiles for the Frey cubic and its
    zero-point quotient.  Equality with the actual rational valuations is
    deliberately required by `FreyR4_10JValuationCertificate`. -/
def frey_j_E1_v2_15Core :
    FreyR4_10ValuationCase15Core → Int
  | .aEven r => 8 - 2 * (r : Int)
  | .bEven r => 8 - 2 * (r : Int)
  | .cEven r _ => 8 - 2 * (r : Int)

def frey_j_E10_v2_15Core :
    FreyR4_10ValuationCase15Core → Int
  | .aEven r => 4 - (r : Int)
  | .bEven r => 4 - (r : Int)
  | .cEven r _ => 16 - 4 * (r : Int)

/-- The exponent of the even base divides the valuation of its powered term. -/
def frey_r4_10_case_constraints15_core :
    FreyR4_10ValuationCase15Core → Prop
  | .aEven r => 3 ≤ r
  | .bEven r => 3 ≤ r
  | .cEven r z => 3 ≤ r ∧ 3 ≤ z ∧ ∃ k, r = z * k

/-- The linear part of the Frey constraints used by the Table 30 comparison. -/
def frey_r4_10_lower_bound15Core :
    FreyR4_10ValuationCase15Core → Prop
  | .aEven r => 3 ≤ r
  | .bEven r => 3 ≤ r
  | .cEven r _ => 3 ≤ r

/-- A placement may exchange the two endpoints of the displayed graph. -/
inductive R4_10EndpointOrder15Core where
  | e1ThenE10
  | e10ThenE1
  deriving DecidableEq

/- The source's finite case exhaustion. -/
theorem r4_10_table30_finite_case_analysis15_core
    (c : R4_10TwoAdicCase15Core) :
    (∃ m, c = .gtTwo m ∧
        R4_10_j_E1_v2_15Core c = 10 - 5 * (m : Int) ∧
        R4_10_j_E10_v2_15Core c = 4 - 2 * (m : Int)) ∨
    (∃ m, c = .eqTwo m ∧
        R4_10_j_E1_v2_15Core c = 2 - (m : Int) ∧
        R4_10_j_E10_v2_15Core c = 20 - 10 * (m : Int)) ∨
    (c = .eqOne ∧
        R4_10_j_E1_v2_15Core c = 6 ∧
        R4_10_j_E10_v2_15Core c = 6) ∨
    (∃ m, c = .eqZero m ∧
        R4_10_j_E1_v2_15Core c = -2 * (m : Int) ∧
        R4_10_j_E10_v2_15Core c = -5 * (m : Int)) ∨
    (∃ m, c = .neg m ∧
        R4_10_j_E1_v2_15Core c = -10 * (m : Int) ∧
        R4_10_j_E10_v2_15Core c = -(m : Int)) := by
  cases c with
  | gtTwo m => exact Or.inl ⟨m, rfl, rfl, rfl⟩
  | eqTwo m => exact Or.inr (Or.inl ⟨m, rfl, rfl, rfl⟩)
  | eqOne => exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl, rfl⟩))
  | eqZero m => exact Or.inr (Or.inr (Or.inr (Or.inl ⟨m, rfl, rfl, rfl⟩)))
  | neg m => exact Or.inr (Or.inr (Or.inr (Or.inr ⟨m, rfl, rfl, rfl⟩)))

/-- Every applicable Table 30 row is incompatible with every admissible
    Frey valuation profile, in either endpoint orientation. -/
theorem no_frey_table30_match15Core
    (freyCase : FreyR4_10ValuationCase15Core)
    (tableCase : R4_10TwoAdicCase15Core)
    (order : R4_10EndpointOrder15Core)
    (hFrey : frey_r4_10_case_constraints15_core freyCase)
    (hTable : R4_10_table_case_constraints15Core tableCase)
    (hE1 :
      frey_j_E1_v2_15Core freyCase =
        match order with
        | .e1ThenE10 => R4_10_j_E1_v2_15Core tableCase
        | .e10ThenE1 => R4_10_j_E10_v2_15Core tableCase)
    (hE10 :
      frey_j_E10_v2_15Core freyCase =
        match order with
        | .e1ThenE10 => R4_10_j_E10_v2_15Core tableCase
        | .e10ThenE1 => R4_10_j_E1_v2_15Core tableCase) :
    False := by
  have hLower : frey_r4_10_lower_bound15Core freyCase := by
    cases freyCase <;>
      simp_all [frey_r4_10_case_constraints15_core,
        frey_r4_10_lower_bound15Core]
  clear hFrey
  cases order <;>
    simp only at hE1 hE10 <;>
    cases freyCase <;>
    cases tableCase <;>
    simp_all [frey_r4_10_lower_bound15Core,
      R4_10_table_case_constraints15Core, frey_j_E1_v2_15Core,
      frey_j_E10_v2_15Core, R4_10_j_E1_v2_15Core,
      R4_10_j_E10_v2_15Core] <;>
    omega

#print axioms r4_10_table30_finite_case_analysis15_core
#print axioms no_frey_table30_match15Core