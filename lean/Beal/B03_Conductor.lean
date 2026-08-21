import Beal.B03_Conductor_Core
import Mathlib.Data.Nat.Prime.Basic

namespace BealConductor

theorem exactDivides_of_dvd_not_sq {N p : Nat} (hp : Nat.Prime p) (h1 : p ∣ N) (h2 : ¬ p * p ∣ N) : ExactDividesCore p N :=
  ⟨h1, h2⟩

theorem divideOut_of_exact {N p : Nat} (h : ExactDividesCore p N) : ∃ M, CanDivideOutCore N p M ∧ ¬ p ∣ M := by
  rcases h with ⟨hdvd, hnsq⟩
  rcases hdvd with ⟨k, hk⟩
  use k
  constructor
  · unfold CanDivideOutCore
    calc k * p = p * k := Nat.mul_comm k p
    _ = N := hk.symm
  · intro hpk
    apply hnsq
    rcases hpk with ⟨j, hj⟩
    use j
    calc N = p * k := hk
    _ = p * (p * j) := by rw [hj]
    _ = p * p * j := by rw [Nat.mul_assoc]

theorem squarefree_of_primitive_gcd {A B : Nat} (hcop : Nat.gcd A B = 1) (p : Nat) (hp : Nat.Prime p) : ¬ (p ∣ A ∧ p ∣ B) := by
  intro ⟨hpa, hpb⟩
  have hpdvd : p ∣ Nat.gcd A B := Nat.dvd_gcd hpa hpb
  rw [hcop] at hpdvd
  have hle : p ≤ 1 := Nat.le_of_dvd (by decide) hpdvd
  have hge : 2 ≤ p := hp.two_le
  omega

#print axioms exactDivides_of_dvd_not_sq
#print axioms divideOut_of_exact
#print axioms squarefree_of_primitive_gcd

end BealConductor
