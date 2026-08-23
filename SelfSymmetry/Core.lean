-- SelfSymmetry/Core.lean
-- Foundation: import certified brothers from eutheos-property
import Family.Brothers1419
import Family.BrothersAnalysis
import Family.GapHamming

namespace SelfSymmetry

open Eutheos

/-! ## Verified brother properties (re-exported from eutheos-property) -/

-- 35 distinct brothers ≥ 193, popcount = 6, all ≡ 153 mod 211
theorem core_brothers_35   : brothers_35.length = 35         := by native_decide
theorem core_brothers_Nodup: brothers_35.Nodup               := by native_decide
theorem core_brothers_desert: brothers_35.all (· ≥ 193) = true := by native_decide
theorem core_brothers_mod211: brothers_35.all (fun b => b % 211 = 153) = true := by native_decide
theorem core_brothers_pop6 : brothers_35.all (fun b => (Nat.bits b).count true = 6) = true := by
  native_decide

-- Leader
theorem core_leader : brothers_35.min? = some 1419           := by native_decide
theorem core_leader_factor : 3 * 11 * 43 = 1419              := by native_decide

-- Hamming separation ≥ 2
theorem core_hamming_ge2 : 2 ≤ min_hamming                  := by native_decide

/-! ## Self-symmetry certificate -/
theorem self_symmetry_clean :
    brothers_35.length = 35 ∧
    brothers_35.Nodup ∧
    brothers_35.all (· ≥ 193) = true ∧
    brothers_35.all (fun b => b % 211 = 153) = true ∧
    brothers_35.all (fun b => (Nat.bits b).count true = 6) = true ∧
    2 ≤ min_hamming :=
  ⟨by native_decide, by native_decide, by native_decide,
   by native_decide, by native_decide, by native_decide⟩

end SelfSymmetry
