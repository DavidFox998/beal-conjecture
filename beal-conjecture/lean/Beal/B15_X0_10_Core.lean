-- B15_X0_10_Core — import-free data for auditing the X₀(10) boundary.

/--
The five 2-adic parameter cases appearing in González-Jiménez--Lario,
supplementary Table 30, for an `R₄(10)` graph.

The natural parameter in `gtTwo`, `eqTwo`, `eqZero`, and `neg` is the
positive integer denoted `m` in the corresponding row of the source.
-/
inductive R4_10TwoAdicCase15Core where
  | gtTwo (m : Nat)
  | eqTwo (m : Nat)
  | eqOne
  | eqZero (m : Nat)
  | neg (m : Nat)
  deriving DecidableEq

/--
The source's value of `v₂(j(E₁))`, obtained from
`v₂(j) = 3 v₂(c₄) - v₂(Δ)` and Table 30's signatures.
-/
def R4_10_j_E1_v2_15Core : R4_10TwoAdicCase15Core → Int
  | .gtTwo m => 10 - 5 * (m : Int)
  | .eqTwo m => 2 - (m : Int)
  | .eqOne => 6
  | .eqZero m => -2 * (m : Int)
  | .neg m => -10 * (m : Int)

/--
The source's value of `v₂(j(E₁₀))`, obtained from the same Table 30
signatures.
-/
def R4_10_j_E10_v2_15Core : R4_10TwoAdicCase15Core → Int
  | .gtTwo m => 4 - 2 * (m : Int)
  | .eqTwo m => 20 - 10 * (m : Int)
  | .eqOne => 6
  | .eqZero m => -5 * (m : Int)
  | .neg m => -(m : Int)

/--
Finite case analysis for the two endpoint j-valuations transcribed from
Table 30. This theorem proves exactly the five-row exhaustion represented by
the source data; it makes no no-Frey claim.
-/
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

#print axioms R4_10TwoAdicCase15Core
#print axioms R4_10_j_E1_v2_15Core
#print axioms R4_10_j_E10_v2_15Core
#print axioms r4_10_table30_finite_case_analysis15_core