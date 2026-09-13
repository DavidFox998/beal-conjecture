import BealLevel26Foundations.Chain.TaylorWilesScaffold
import BealLevel26Foundations.Frey.FreyConductor_26
import BealLevel26Foundations.Ribet.RibetLevelLowering_26

namespace BealLevel26Foundations.Chain.RibetLevel2

open BealLevel26Foundations.Chain.TaylorWilesScaffold
  (rho_bar_Frey_13_inhabited
    DeformationRing_rho_bar_E13_inhabited
    galois_rep_algorithm_of_Frey_13
    R_T_scaffold R_T_scaffold_inhabited R_T_algorithm
    HeckeAlgebra_26_inhabited
    modularity_lifting_of_R_T modularity_lifting_of_R_T_inhabited
    TW_primes_Q_n TW_primes_Q_n_inhabited)
open BealLevel26Foundations.Frey.FreyConductor26
  (frey_conductor_26_of_Is13Case_inhabited
    tate_table_conductor tate_algorithm_of_Is13Case)
open BealLevel26Foundations.Ribet.RibetLevelLowering26
  (ribet_produces_newform_level2
    ribet_produces_newform_level2_inhabited
    ribet_produces_newform_level2_of_weierstrass_modularity
    ribet_level_26_div_13 ribet_algorithm_of_Is13Case)

/-!
# v5.1.0 Ribet `26 → 2` displayed inhabit

11th official module.  Aggregates the displayed residual
rep, deformation token, and `26 / 13 = 2` label.

Does **not** import Forall or Mazur BealTheorem (cycle).
Does **not** add an axiom.  Does **not** inhabit
`ribet_produces_newform_level2_of_weierstrass_modularity`
(`ExistsNewformLevel2` is `0 ≠ 0`).  v5.2.0 inhabits displayed `R = T`.
v5.3.0 inhabits the displayed Path 2 / Beal `∀` tokens
in `Chain.BealForallInKernel` without inhabiting this
false label.  `R_T_algorithm` stays uninhabited.
No `False.elim`.

Not Mathlib Ribet / Galois representations.
-/

/-- Displayed `26 / 13 = 2` lock.  **none**. -/
def ribet_table_done : ribet_level_26_div_13 = 2 :=
  BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_level_26_div_13_eq

/-- Displayed ρ̄ token. -/
def rho_bar_done : BealLevel26Foundations.Chain.TaylorWilesScaffold.rho_bar_Frey_13 :=
  rho_bar_Frey_13_inhabited

/-- Displayed deformation token. -/
def deformation_done :
    BealLevel26Foundations.Chain.TaylorWilesScaffold.DeformationRing_rho_bar_E13 :=
  DeformationRing_rho_bar_E13_inhabited

/-- Displayed lowering inhabit. -/
def ribet_label_done : ribet_produces_newform_level2 :=
  ribet_produces_newform_level2_inhabited

/-- Displayed `R = T` Equiv. -/
def R_T_done : BealLevel26Foundations.Chain.TaylorWilesScaffold.R_T_scaffold :=
  R_T_scaffold_inhabited

#check rho_bar_Frey_13_inhabited
#check DeformationRing_rho_bar_E13_inhabited
#check ribet_produces_newform_level2_inhabited
#check ribet_produces_newform_level2_of_weierstrass_modularity
#check ribet_algorithm_of_Is13Case
#check galois_rep_algorithm_of_Frey_13
#check frey_conductor_26_of_Is13Case_inhabited
#check tate_table_conductor
#check tate_algorithm_of_Is13Case
#check R_T_scaffold
#check R_T_scaffold_inhabited
#check R_T_algorithm
#check HeckeAlgebra_26_inhabited
#check modularity_lifting_of_R_T
#check modularity_lifting_of_R_T_inhabited
#check TW_primes_Q_n
#check TW_primes_Q_n_inhabited
#check ribet_table_done
#check rho_bar_done
#check deformation_done
#check ribet_label_done
#check R_T_done
#print axioms rho_bar_Frey_13_inhabited
#print axioms DeformationRing_rho_bar_E13_inhabited
#print axioms ribet_produces_newform_level2_inhabited
#print axioms ribet_table_done
#print axioms frey_conductor_26_of_Is13Case_inhabited
#print axioms HeckeAlgebra_26_inhabited
#print axioms R_T_scaffold_inhabited
#print axioms modularity_lifting_of_R_T_inhabited
#print axioms TW_primes_Q_n_inhabited

end BealLevel26Foundations.Chain.RibetLevel2
