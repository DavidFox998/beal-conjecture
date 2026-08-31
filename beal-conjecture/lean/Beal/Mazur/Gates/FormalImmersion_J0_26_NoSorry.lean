import Beal.Mazur.X0_26_Model
import Beal.Mazur.Gates.Kolyvagin_J0_26_NoSorry
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

namespace Beal17Mazur.Gates.FormalImmersionNoSorry

/-!
# Beal-local formal-immersion interface for `X₀(26)`

The determinant below is a finite certificate check.  It is not claimed to be
the geometric Abel--Jacobi differential, because the present Beal repository
does not contain a scheme-level Jacobian or formal-immersion construction.
Likewise, the only verified rational candidates remain the four cusps.
-/

abbrev J0_26_Jacobian := X0_26_RationalPoint

def AJ : X0_26_RationalPoint → J0_26_Jacobian :=
  fun point => point

def dAJ_matrix_mod_3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 0, 2]

def FormalImmersionAt3 : Prop :=
  Matrix.det dAJ_matrix_mod_3 ≠ 0

theorem formal_immersion_at_3 : FormalImmersionAt3 := by
  norm_num [FormalImmersionAt3, dAJ_matrix_mod_3, Matrix.det_fin_two]
  decide

def four_cusps : Finset X0_26_RationalPoint :=
  X0_26_cusps

theorem four_cusps_card : four_cusps.card = 4 :=
  X0_26_cusp_count

def torsion_candidates : Finset J0_26_Jacobian :=
  four_cusps.image AJ

/-- The actual rational torsion set is supplied as data.  This wall states its
missing identification with the finite candidate set. -/
def TorsionExactWall
    (actualTorsion : Set J0_26_Jacobian) : Prop :=
  actualTorsion = (torsion_candidates : Set J0_26_Jacobian)

theorem torsion_exact
    (actualTorsion : Set J0_26_Jacobian)
    (hWall : TorsionExactWall actualTorsion) :
    actualTorsion = (torsion_candidates : Set J0_26_Jacobian) :=
  hWall

def X0_26_Q : Set X0_26_RationalPoint :=
  {point | point.1.IsRational}

theorem four_cusps_subset_XQ :
    (four_cusps : Set X0_26_RationalPoint) ⊆ X0_26_Q := by
  intro point _hpoint
  exact point.2

/-- The missing global Chabauty/formal-immersion implication is explicit. -/
def Chabauty0ExhaustivenessWall
    (rankData : KolyvaginNoSorry.J0_26_RankData) : Prop :=
  KolyvaginNoSorry.J0_26_RankZero rankData →
  FormalImmersionAt3 →
  X0_26_Q ⊆ (four_cusps : Set X0_26_RationalPoint)

theorem X0_26_Q_subset_four_cusps
    (rankData : KolyvaginNoSorry.J0_26_RankData)
    (hRank : KolyvaginNoSorry.J0_26_RankZero rankData)
    (hImm : FormalImmersionAt3)
    (hWall : Chabauty0ExhaustivenessWall rankData) :
    X0_26_Q ⊆ (four_cusps : Set X0_26_RationalPoint) :=
  hWall hRank hImm

theorem X0_26_Q_eq_four_cusps
    (rankData : KolyvaginNoSorry.J0_26_RankData)
    (hRank : KolyvaginNoSorry.J0_26_RankZero rankData)
    (hImm : FormalImmersionAt3)
    (hWall : Chabauty0ExhaustivenessWall rankData) :
    X0_26_Q = (four_cusps : Set X0_26_RationalPoint) := by
  apply Set.Subset.antisymm
  · exact X0_26_Q_subset_four_cusps rankData hRank hImm hWall
  · exact four_cusps_subset_XQ

#print axioms formal_immersion_at_3
#print axioms four_cusps_card
#print axioms torsion_exact
#print axioms X0_26_Q_eq_four_cusps

end Beal17Mazur.Gates.FormalImmersionNoSorry