import Beal.B01_Def

def Frey_a2 (A B x y : Nat) : Int := - (A : Int) ^ x + (B : Int) ^ y

def Frey_discriminant_factor (A B C x y z : Nat) : Nat :=
  (A ^ x * B ^ y * C ^ z) ^ 2

theorem frey_disc_factor_pos (A B C x y z : Nat)
  (hA : 0 < A) (hB : 0 < B) (hC : 0 < C) :
  0 < Frey_discriminant_factor A B C x y z := by
  unfold Frey_discriminant_factor
  exact Nat.pow_pos (Nat.mul_pos (Nat.mul_pos (Nat.pow_pos hA) (Nat.pow_pos hB)) (Nat.pow_pos hC))

theorem frey_symm (h : IsBealSolution A B C x y z) :
  Frey_discriminant_factor A B C x y z = Frey_discriminant_factor B A C y x z := by
  unfold Frey_discriminant_factor
  have : A ^ x * B ^ y = B ^ y * A ^ x := Nat.mul_comm _ _
  rw [this]

def IsFreySemistable (A B C x y z : Nat) : Prop :=
  Nat.Coprime A B ∧ Nat.Coprime B C ∧ Nat.Coprime A C

theorem beal_implies_frey_semistable (h : IsBealSolution A B C x y z) :
  IsFreySemistable A B C x y z := by
  obtain ⟨_, _, _, _, _, _, _, hAB, hBC, hAC⟩ := h
  exact ⟨hAB, hBC, hAC⟩
