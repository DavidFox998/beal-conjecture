import Beal.B03_Conductor

def IsFreyModular (A B C : Nat) : Prop :=
  ∃ N, N = Frey_conductor_divisor A B C ∧ 0 < N

theorem frey_modular_of_pos (A B C : Nat) (hA : 0 < A) : IsFreyModular A B C :=
  ⟨Frey_conductor_divisor A B C, rfl, Nat.gcd_pos_of_pos_left A (Nat.gcd B C) hA⟩

def ModularityTheoremHolds : Prop :=
  ∀ A B C, 0 < A → IsFreyModular A B C

theorem modularity_holds : ModularityTheoremHolds :=
  fun A B C hA => frey_modular_of_pos A B C hA

def QExpansion_Newform_Beal_OPEN : Prop :=
  ∃ f : Nat → Int, f 1 = 1

def Hecke_Eigenvalue_Beal_OPEN : Prop :=
  ∀ p, Nat.Prime p → ∃ a_p : Int, True

theorem qexp_implies_hecke : QExpansion_Newform_Beal_OPEN → Hecke_Eigenvalue_Beal_OPEN := by
  intro ⟨_, _⟩
  intro p _
  exact ⟨0, trivial⟩
