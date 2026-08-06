-- SelfSymmetry/TwinWormhole.lean
-- Twin-prime product wormhole injectivity
import Family.Brothers1419
import Family.TwinPrimes

namespace SelfSymmetry

open Eutheos

/-! ## Twin-prime wormholes -/

def W1 : Nat := 11 * 13    -- 143
def W2 : Nat := 17 * 19    -- 323
def W3 : Nat := 191 * 193  -- 36863  (desert twin)

-- No brother divisible by the upper twin pair
theorem twin_191_193_clean :
    (brothers_35.filter (fun b => b % 191 = 0)).length = 0 ∧
    (brothers_35.filter (fun b => b % 193 = 0)).length = 0 :=
  brothers_avoid_twin_191_193

-- Injectivity mod individual upper twins
theorem wormhole_mod191_Nodup : (brothers_mod 191).Nodup := mod_191_Nodup
theorem wormhole_mod193_Nodup : (brothers_mod 193).Nodup := mod_193_Nodup

-- Injectivity mod twin products
theorem wormhole_product_11_13 : (brothers_35.map (· % (11 * 13))).Nodup   := by native_decide
theorem wormhole_product_17_19 : (brothers_35.map (· % (17 * 19))).Nodup   := by native_decide
theorem wormhole_product_W3    : (brothers_35.map (· % W3)).Nodup           := by native_decide

-- Wormhole arithmetic
theorem wormhole_W1_W2 : W1 * W2 = 46189  := by native_decide
theorem wormhole_W3    : W3 = 36863        := by native_decide

/-! ## Wormhole certificate -/
theorem twin_wormhole_clean :
    W1 * W2 = 46189 ∧
    W3 = 36863 ∧
    (brothers_mod 191).Nodup ∧
    (brothers_mod 193).Nodup :=
  ⟨by native_decide, by native_decide, by native_decide, by native_decide⟩

end SelfSymmetry
