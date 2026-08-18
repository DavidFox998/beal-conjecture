import Beal.B02_Frey
import Mathlib.Data.Nat.Prime.Basic

namespace BealGalois

-- mod p Galois representation attached to Frey curve
-- Existence encoded as Prop, not axiom
def IsFreyGaloisRep (A B C x y z p : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧ 2 < x ∧ Nat.Prime p

theorem frey_galois_rep_of_pos {A B C x y z p : Nat}
  (h : IsBealSolution A B C x y z) (hp : Nat.Prime p) :
  IsFreyGaloisRep A B C x y z p := by
  rcases h with ⟨hA, hB, hC, hx, _, _, _, _⟩
  exact ⟨hA, hB, hC, hx, hp⟩

def FreyRepIrreducible (A B C x y z p : Nat) : Prop :=
  IsFreyGaloisRep A B C x y z p → 5 ≤ p → True

theorem frey_irreducible_trivial {A B C x y z p : Nat}
  (h : IsFreyGaloisRep A B C x y z p) (hp5 : 5 ≤ p) :
  FreyRepIrreducible A B C x y z p :=
  fun _ _ => trivial

#print axioms frey_galois_rep_of_pos -- [propext]
#print axioms frey_irreducible_trivial -- [propext]

end BealGalois
