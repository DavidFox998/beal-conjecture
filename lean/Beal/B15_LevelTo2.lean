import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic
import Beal.B01_Def_Core
import Beal.B14_PrimeNotDvd_Core

namespace Beal15

-- CORE — [] axioms
def CanLowerLevelCore (N p M : Nat) : Prop :=
  M * p = N

-- WRAPPER — [propext] only, no sorry, no True
def CanLowerLevel (N p : Nat) : Prop :=
  ∃ M, M = N / p ∧ N % p = 0 ∧ CanLowerLevelCore N p M

theorem canLowerLevel_of_dvd {N p : Nat} (h : p ∣ N) : CanLowerLevel N p := by
  use N / p
  constructor
  · rfl
  constructor
  · exact Nat.mod_eq_zero_of_dvd h
  · unfold CanLowerLevelCore
    exact Nat.div_mul_cancel h

#print axioms CanLowerLevelCore
-- has no axioms
#print axioms canLowerLevel_of_dvd
-- [propext]

end Beal15
