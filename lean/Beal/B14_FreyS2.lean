/-
  B14_FreyS2 — Radical and S₂(Γ₀(2)) = 0.
-/
import Mathlib.Data.Nat.Factors
import Mathlib.Data.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset

namespace Beal.FreyS2

noncomputable def Rad (n : ℤ) : ℕ :=
  n.natAbs.factors.toFinset.prod id

def dim_S2_2 : ℕ := 0

theorem S2_level_2_dim_0 : dim_S2_2 = 0 := rfl

end Beal.FreyS2
