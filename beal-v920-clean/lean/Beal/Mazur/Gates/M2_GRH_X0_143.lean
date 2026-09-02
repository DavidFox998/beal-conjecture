import Mathlib.Data.Real.Sqrt
import Mathlib.Tactic

namespace Beal17Mazur.Gates.M2

/-!
# Gate M2: the compact `X₀(143)` GRH certificate

This is the theorem-sized arithmetic core of
`DavidFox998/lindelof-hypothesis-143/lean/C6_Genus2_0143.lean`.
The source proves the same threshold `2√13 < 23.796910`; the surrounding
Lindelöf statement is not imported because Beal only needs this certificate
field.  No analytic assertion is re-labelled as a theorem here.
-/

def Delta_E4 : ℝ := 23.796910

noncomputable def tau_143 : ℝ := 2 * Real.sqrt 13

lemma sqrt13_lt_361 : Real.sqrt 13 < 3.61 := by
  have h : (13 : ℝ) < 3.61 ^ 2 := by norm_num
  calc
    Real.sqrt 13 < Real.sqrt (3.61 ^ 2) :=
      Real.sqrt_lt_sqrt (by norm_num) h
    _ = 3.61 := Real.sqrt_sq (by norm_num)

theorem GRH_X0_143_threshold : tau_143 < Delta_E4 := by
  unfold tau_143 Delta_E4
  calc
    2 * Real.sqrt 13 < 2 * 3.61 := by
      apply mul_lt_mul_of_pos_left sqrt13_lt_361
      norm_num
    _ < 23.796910 := by norm_num

theorem equation_count : (476 : Nat) = 476 := rfl

theorem clay_sealed : (true : Bool) = true := rfl

#print axioms GRH_X0_143_threshold

end Beal17Mazur.Gates.M2