import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Jacobian.ResidueDisks26

open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26
open BealLevel26Foundations.Mazur.EndgameScaffold

/-!
# v4.0.11 residue-disk *input* from `M₃` (not a residue disk)

Mazur's formal-immersion criterion at 2 uses the already-checked
matrix `M₃ = [[1, 1], [0, 2]]` over `ZMod 3`, with `det = 2 ≠ 0`.
That matrix is involutive (`certifiedM3_mul_self`).  Mathlib 4.12
has no formal neighborhood of a cusp and no residue-disk API.

`ResidueDiskAt2ContainsOnlyCusp` is that finite matrix package:
`input = M₃` and `det ≠ 0`.  It is not a theorem that a residue
disk contains only a cusp.

`Chabauty0DiskEquality` is the product rank-zero package together
with that same `M₃` input.  It is not equality of rational points
in a mod-2 disk.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
No new certificate.  This file does not add `theorem BealTheorem`.
-/

/-- Finite `M₃` package used as residue-disk *input*.
Not a residue-disk theorem. -/
def ResidueDiskAt2ContainsOnlyCusp : Prop :=
  FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2] ∧
    FormalImmersionAtTwo26.of_qExpansion.input.det ≠ 0

theorem ResidueDiskAt2ContainsOnlyCusp.certified :
    ResidueDiskAt2ContainsOnlyCusp :=
  ⟨FormalImmersionAtTwo26.of_qExpansion.input_eq, by
    rw [FormalImmersionAtTwo26.of_qExpansion.input_det]
    decide⟩

/-- Rank-zero product plus `M₃` input.  Not disk equality of
rational points. -/
def Chabauty0DiskEquality
    (rank : J0_26_Q_RankZero26)
    (imm : FormalImmersionAtTwo26) : Prop :=
  rank.rankZero ∧ imm.input = !![1, 1; 0, 2]

theorem Chabauty0DiskEquality.of_qExpansion :
    Chabauty0DiskEquality
      J0_26_Q_RankZero26.of_qExpansion
      FormalImmersionAtTwo26.of_qExpansion :=
  ⟨J0_26_Q_RankZero26.of_qExpansion_replaces_premise,
    FormalImmersionAtTwo26.of_qExpansion.input_eq⟩

#print axioms ResidueDiskAt2ContainsOnlyCusp.certified
#print axioms Chabauty0DiskEquality.of_qExpansion

end BealLevel26Foundations.Jacobian.ResidueDisks26
