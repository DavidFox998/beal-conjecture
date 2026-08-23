-- SelfSymmetry/Desert.lean
-- Desert structure: exceptional set S4 = {2,3,19,191}, p5 boundary
import Family.Brothers1419
import Family.ExceptionalPrimes
import Family.PrimesInPi

namespace SelfSymmetry

open Eutheos

/-! ## Exceptional set -/

-- Only {2,3,19,191} are exceptional primes up to 1000
theorem desert_exceptional_eq :
    exceptional_upto_1000 = [2, 3, 19, 191] := by native_decide

-- Desert 192…999: no exceptional primes
theorem desert_empty_192_1000 :
    desert_192_1000 = [] := by native_decide

-- mod-191 injectivity: 35 distinct residues at the desert boundary
theorem desert_mod191_Nodup :
    (brothers_35.map (· % 191)).Nodup := by native_decide

-- Note: desert_mod193_Nodup and desert_twin_clean removed.
-- Family.ExceptionalPrimes and Family.TwinPrimes both define brothers_mod
-- and cannot be imported together.  The canonical proofs of those facts live in
-- TwinWormhole.lean (which imports Family.TwinPrimes without ExceptionalPrimes).

-- Product injectivity: also distinct mod 191×193 = 36863
theorem desert_product_Nodup :
    (brothers_35.map (· % (191 * 193))).Nodup := by native_decide



/-! ## Desert certificate -/
theorem desert_clean :
    exceptional_upto_1000 = [2, 3, 19, 191] ∧
    desert_192_1000 = [] ∧
    (brothers_35.map (· % 191)).Nodup :=
  ⟨by native_decide, by native_decide, by native_decide⟩

end SelfSymmetry
