-- SelfSymmetry/TwinWormhole.lean
-- Twin-prime product wormhole injectivity — GREEN minimal
import Family.Brothers1419
import Family.TwinPrimes

namespace SelfSymmetry

open Eutheos

/-! ## Twin-prime wormholes -/

def W1 : Nat := 11 * 13    -- 143
def W2 : Nat := 17 * 19    -- 323
def W3 : Nat := 191 * 193  -- 36863  (desert twin)

-- Actual data from Family.TwinPrimes: 1 brother divisible by 191, 0 by 193
theorem twin_191_193_clean :
    (brothers_35.filter (fun b => b % 191 = 0)).length = 1 ∧
    (brothers_35.filter (fun b => b % 193 = 0)).length = 0 :=
  brothers_avoid_twin_191_193

-- Only keep the Nodup that are actually true — check with native_decide
theorem wormhole_mod191_Nodup : (brothers_mod 191).Nodup := by native_decide
-- 193 collides, so we prove ¬ Nodup, not Nodup
theorem wormhole_mod193_not_Nodup : ¬ (brothers_mod 193).Nodup := by native_decide

-- Product mod facts — 143 collides, W3 is clean
theorem wormhole_product_11_13_not_Nodup : ¬ (brothers_35.map (· % (11 * 13))).Nodup := by native_decide
theorem wormhole_product_W3_Nodup : (brothers_35.map (· % W3)).Nodup := by native_decide

-- Wormhole arithmetic
theorem wormhole_W1_W2 : W1 * W2 = 46189  := by native_decide
theorem wormhole_W3_eq : W3 = 36863        := by native_decide

/-! ## Wormhole certificate -/
theorem twin_wormhole_clean :
    W1 * W2 = 46189 ∧
    W3 = 36863 ∧
    (brothers_mod 191).Nodup :=
  ⟨by native_decide, by native_decide, by native_decide⟩

end SelfSymmetry
