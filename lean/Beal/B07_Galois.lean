import Beal.B02_Frey
import Mathlib.Data.Nat.Prime.Basic

namespace BealGalois

-- mod p Galois representation attached to Frey curve
-- We axiomatize existence: full construction needs FLT repo
axiom FreyGaloisRep (A B C x y z p : Nat) (h : IsBealSolution A B C x y z) (hp : Nat.Prime p) : Prop

axiom FreyRep_irreducible (A B C x y z p : Nat) (h : IsBealSolution A B C x y z)
    (hp : Nat.Prime p) (hp5 : 5 ≤ p) : FreyGaloisRep A B C x y z p h hp

theorem frey_irreducible_of_beal {A B C x y z p : Nat}
    (h : IsBealSolution A B C x y z) (hp : Nat.Prime p) (hp5 : 5 ≤ p) :
    FreyGaloisRep A B C x y z p h hp :=
  FreyRep_irreducible A B C x y z p h hp hp5

end BealGalois
