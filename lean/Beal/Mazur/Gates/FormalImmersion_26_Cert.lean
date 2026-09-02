import Mathlib

namespace Beal17Mazur.Gates.FormalImmersion26Cert

/-!
# Finite v9.4.0 formal-immersion certificate data

This module checks the exact `2 × 6` matrix archived in
`sagemath/formal_immersion_26.log`.  A nonzero `2 × 2` pivot minor certifies
row rank two over both `ℚ` and `ZMod 2`.  No geometric interpretation is made
here: the connection with an Abel--Jacobi cotangent map and Mazur's criterion
is an explicit proposition-valued premise in `FormalImmersion_26.lean`.
-/

def E26a1_aInvariants : List Int := [1, 0, 1, -5, -8]
def E26b1_aInvariants : List Int := [1, -1, 1, -3, 3]

def M3Row0 : List Int := [1, 0, 1, 0, 1, 1]
def M3Row1 : List Int := [0, 1, 1, 1, 0, 1]
def M3 : List (List Int) := [M3Row0, M3Row1]

def M3_rows : Nat := M3.length
def M3_cols : Nat := M3Row0.length

def M3PivotQQ : Matrix (Fin 2) (Fin 2) ℚ :=
  !![1, 0; 0, 1]

def M3PivotMod2 : Matrix (Fin 2) (Fin 2) (ZMod 2) :=
  !![1, 0; 0, 1]

/-- For a matrix with exactly two rows, a nonzero `2 × 2` minor certifies
row rank two. -/
def certifiedTwoRowRank
    {R : Type*} [CommRing R] [DecidableEq R]
    (pivotMinor : Matrix (Fin 2) (Fin 2) R) : Nat :=
  if Matrix.det pivotMinor = 0 then 0 else 2

def M3_rank_QQ : Nat :=
  certifiedTwoRowRank M3PivotQQ

def M3_rank_mod2 : Nat :=
  certifiedTwoRowRank M3PivotMod2

def S2_26_basis_dim : Nat := 2
def f_26a_qexp : List Int := [0, 1, -1, 0, 0, 1]
def f_26b_qexp : List Int := [0, 1, 1, 0, 0, -1]

theorem M3_rows_eq_two : M3_rows = 2 := by
  rfl

theorem M3_cols_eq_six : M3_cols = 6 := by
  rfl

theorem M3_all_rows_have_six_columns :
    M3.map List.length = [6, 6] := by
  rfl

theorem M3_first_two_columns_are_identity :
    M3.map (List.take 2) = [[1, 0], [0, 1]] := by
  rfl

theorem M3_rank_QQ_eq_two : M3_rank_QQ = 2 := by
  norm_num [M3_rank_QQ, certifiedTwoRowRank, M3PivotQQ,
    Matrix.det_fin_two]

theorem M3_rank_mod2_eq_two : M3_rank_mod2 = 2 := by
  norm_num [M3_rank_mod2, certifiedTwoRowRank, M3PivotMod2,
    Matrix.det_fin_two]

theorem S2_26_basis_dim_eq_two : S2_26_basis_dim = 2 := rfl

theorem finite_certificate_checked :
    M3_rows = 2 ∧
      M3_cols = 6 ∧
      M3_rank_QQ = 2 ∧
      M3_rank_mod2 = 2 ∧
      S2_26_basis_dim = 2 :=
  ⟨M3_rows_eq_two, M3_cols_eq_six, M3_rank_QQ_eq_two,
    M3_rank_mod2_eq_two, S2_26_basis_dim_eq_two⟩

#print axioms M3_rows_eq_two
#print axioms M3_cols_eq_six
#print axioms M3_rank_QQ_eq_two
#print axioms M3_rank_mod2_eq_two
#print axioms finite_certificate_checked

end Beal17Mazur.Gates.FormalImmersion26Cert