import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Lindelof.Sieve

-- S₄={2,3,19,191} 4 primes only — N=143=11*13
def P_mod11 : Finset ℕ := {23, 67, 89}
def P_mod13 : Finset ℕ := {53, 79, 131}

theorem mod11_ok : ∀ p ∈ P_mod11, p % 11 = 1 := by decide
theorem mod13_ok : ∀ p ∈ P_mod13, p % 13 = 1 := by decide

-- 859 = 6*143+1 minimal prime 1 mod 143
theorem prime_859 : Nat.Prime 859 := by native_decide
theorem mod_859_11 : 859 % 11 = 1 := by norm_num
theorem mod_859_13 : 859 % 13 = 1 := by norm_num

theorem witness_exists : ∃ p, Nat.Prime p ∧ p % 11 = 1 ∧ p % 13 = 1 :=
  ⟨859, prime_859, mod_859_11, mod_859_13⟩

end Lindelof.Sieve
