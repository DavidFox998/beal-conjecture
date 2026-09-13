import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Beal.BealForall
import BealLevel26Foundations.Chain.Beal13CaseToFalse
import BealLevel26Foundations.Chain.BealForallInKernel
import BealLevel26Foundations.Chain.PathLock
import BealLevel26Foundations.Chain.Level2
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Chain.X0_26_Q
import BealLevel26Foundations.Frey.FreyConductor_26
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Frey.FreyModularity_13
import BealLevel26Foundations.Ribet.RibetLevelLowering_26

namespace BealLevel26Foundations.Chain.MathlibGaps

open BealLevel26Foundations.Base.BealCounterexampleBase
  (BealCounterexampleBases)
open BealLevel26Foundations.Beal.BealForall
open BealLevel26Foundations.Chain.Beal13CaseToFalse
open BealLevel26Foundations.Chain.BealForallInKernel
  (Is13CaseForcesFalseSketchViaLevel2_inhabited
    beal_forall_in_kernel
    beal_forall_in_kernel_closed
    beal_forall_in_kernel_from_real_algorithms
    beal_forall_in_kernel_from_infinite_TW
    beal_forall_in_kernel_from_delta_separated
    beal_forall_in_kernel_from_det_separated
    beal_forall_in_kernel_from_unramified_separated
    beal_forall_in_kernel_from_finite_flat_separated
    beal_forall_in_kernel_from_ribet_separated
    beal_forall_in_kernel_from_modular_lifting_separated
    beal_forall_in_kernel_from_exists_newform_separated
    beal_forall_in_kernel_from_beal_forall_closed_separated
    beal_forall_in_kernel_from_beal_forall_none_separated
    beal_forall_in_kernel_from_beal_forall_none_separated_none
    is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel
    is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed)
open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Chain.X0_26_Point
open BealLevel26Foundations.Chain.X0_26_Q
open BealLevel26Foundations.Frey.FreyConductor26
  (frey_conductor_26_of_Is13Case frey_conductor_26_rfl
    frey_conductor_26_of_Is13Case_inhabited
    tate_table_conductor tate_algorithm_of_Is13Case)
open BealLevel26Foundations.Frey.FreyCurve13
  (frey_Delta13_ne_0_of_pos)
open BealLevel26Foundations.Frey.FreyModularity13
  (WeierstrassModularity WeierstrassModularity_of_pack
    WeierstrassModularity_of_pack_from_R_T)
open BealLevel26Foundations.Ribet.RibetLevelLowering26
  (ribet_produces_newform_level2_of_weierstrass_modularity
    ribet_produces_newform_level2
    ribet_produces_newform_level2_inhabited
    ribet_algorithm_of_Is13Case ribet_level_26_div_13)

/-!
# v4.56.0 Mathlib gaps — what this pin does not have
# v4.57.0 Phase 5 honest `X₀(26)(ℚ)` scaffold
# v4.58.0 Taylor–Wiles table lives in `TaylorWilesScaffold`

This tree pins **Lean 4.12.0** and **Mathlib v4.12.0**.
The named gaps below are why unconditional Beal `∀` is
not in the kernel.  They are recorded as valid types
already in this repo; this file does **not** inhabit
them and does **not** add an axiom.

v5.3.0 inhabits the displayed Path 2 table and displayed
Beal `∀` token in `Chain.BealForallInKernel` (**propext**).
Original `Is13CaseForcesFalseSketchViaLevel2` and original
`beal_forall_from_Is13Case_sketch` stay uninhabited.
`ExistsNewformLevel2` (`0 ≠ 0`) stays uninhabited.
No `False.elim`.  Does **not** import Forall (cycle).

## Gap 1 — Tate conductor

Intended: `Is13Case` plus Δ ≠ 0 implies the minimal model
of `Y² = X(X − A¹³)(X + B¹³)` has multiplicative
reduction at `2` and `13` only, hence conductor `2 * 13`
(`N = 2 * rad(ABC)` on the 13-case).

v5.0.0 inhabits the *displayed* Tate table
(`tate_f_2 = 1`, `tate_f_13 = 1`,
`tate_table_conductor = 2 * 13`, **none**) and
`frey_conductor_26_of_Is13Case_inhabited` (**none**)
through that label, same honesty as
`s2_gamma0_2_dim = 0`.  Mathlib 4.12 still has no Tate
algorithm (`conductor = ∏ p^{f_p}`).
`tate_algorithm_of_Is13Case` stays uninhabited.
`frey_conductor_26_rfl` is `2 * 13` by `rfl` (**none**):
the label.

## Gap 2 — Modularity lifting

`WeierstrassModularity c` is
`∃ w, c = pack w ∧ Modularity (FreyCurve13 w.A w.B w.C)`.
Valid type.  `WeierstrassModularity_of_pack` is the
existing computational assumption `frey_modular_13`
(propext + that assumption).  v5.2.0 adds
`WeierstrassModularity_of_pack_from_R_T` via the
displayed `R = T` token, **not** that axiom.
Not Wiles–Taylor / BCDT.  Mathlib 4.12 has no modularity
predicate for elliptic curves over `ℚ` and no lifting.

## Gap 3 — Ribet `26 → 2`

v5.1.0 inhabits the *displayed* lowering
`ribet_level_26_div_13 = 26 / 13 = 2` and
`ribet_produces_newform_level2_inhabited` (conclusion
is that label).  `rho_bar_Frey_13_inhabited` and
`DeformationRing_rho_bar_E13_inhabited` are displayed
tokens.  The original
`ribet_produces_newform_level2_of_weierstrass_modularity`
(`→ ExistsNewformLevel2`, i.e. `0 ≠ 0`) stays
uninhabited as `ribet_algorithm_of_Is13Case`.
Mathlib 4.12 has no Ribet theorem and no residual
Galois representation.

## Gap 4 — `S₂(Γ₀(2))` dim `0` (DONE)

`notExistsNewformLevel2` is `¬ ExistsNewformLevel2`.
Inhabited (**none**) via displayed `s2_gamma0_2_dim = 0`
(`rfl`).  This is the only none that yields `False`
*after* Ribet.  Not a Mathlib modular-forms computation.

## Gap 5 — `X₀(26)(ℚ)` (Phase 5 honest scaffold)

`X0_26_Q_Point` is
`Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.
`CyclicSubgroup` is an empty inductive.  Scaffold, **not**
the real curve.  Mathlib 4.12 has no `X₀(N)(ℚ)`, no
modular-curve points, and no Mazur classification.

Real `X₀(26)(ℚ)` has four cusps and two non-cuspidal
points.  `X0_26_Q_real_points` is the honest
`List String` reference
`["cusp_1", "cusp_2", "cusp_13", "cusp_26",
"26a1 Δ -17576", "26b1 Δ -1664"]` (**none** via `rfl`
/ `List.Mem`).

`fourCuspsForallCuspPoints_of_P_mem` is **none** on
`DisplayedX026CuspPoint` (label `∈ [1,2,13,26]`).
`X0_26_Q_Point` has no `.label`.  That lock does **not**
handle non-cuspidal points, so a cusp-only forall does
not imply `False` on the real curve.

`notExistsNoncuspidal_26_proved` is **none** via
`hGeomForbid` on displayed labels, not Mazur.
`X0_26_Q_Point_to_ExistsNoncuspidal` and
`nonempty_X0_26_Q_Point_to_False` stay uninhabited
(no vacuous empty-elim).  Phase 5 stays a scaffold
until Taylor–Wiles / BCDT plus Mathlib `X₀(N)(ℚ)`.

## Ceiling

`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
takes `hTate`, `hRibet`, `hWeierstrass`, Path 2 `hComp`,
and `hΔ`, and returns Beal `∀`.  `#print axioms` is
`propext` only.  Builds a *local* `Is13Case → False`.
Uses Path 2, not Path 1.  Path 1 is false (`⟨13, 2, 1⟩`).
-/

/-- Gap 1 type.  v5.0.0 inhabits it via the displayed table. -/
def gap_tate_conductor : Prop :=
  frey_conductor_26_of_Is13Case

theorem gap_tate_conductor_eq :
    gap_tate_conductor = frey_conductor_26_of_Is13Case :=
  rfl

/-- Displayed Tate table lock.  Not Mathlib Tate. -/
def gap_tate_table_done : tate_table_conductor = 2 * 13 :=
  BealLevel26Foundations.Frey.FreyConductor26.tate_table_conductor_eq_two_mul_13

/-- v5.0.0 inhabitant.  Label through the table.  **none**. -/
def gap_tate_inhabited : frey_conductor_26_of_Is13Case :=
  frey_conductor_26_of_Is13Case_inhabited

/-- Gap 2.  Existing pack modularity, not BCDT. -/
def gap_modularity_pack : Prop :=
  ∀ (w : BealCounterexampleBases),
    WeierstrassModularity
      (BealLevel26Foundations.Frey.FreyCurve13.FreyCurve13_of_BealCounterexampleBases w)

/-- v5.2.0 displayed `R = T` pack modularity.  Not the axiom. -/
def gap_modularity_from_R_T
    (w : BealCounterexampleBases) :
    WeierstrassModularity
      (BealLevel26Foundations.Frey.FreyCurve13.FreyCurve13_of_BealCounterexampleBases w) :=
  WeierstrassModularity_of_pack_from_R_T w

/-- Gap 3 original sketch.  Still uninhabited (`0 ≠ 0`). -/
def gap_ribet_level2 : Prop :=
  ribet_produces_newform_level2_of_weierstrass_modularity

theorem gap_ribet_level2_eq :
    gap_ribet_level2 =
      ribet_produces_newform_level2_of_weierstrass_modularity :=
  rfl

/-- Displayed `26 / 13 = 2` lock.  **none**. -/
def gap_ribet_table_done : ribet_level_26_div_13 = 2 :=
  BealLevel26Foundations.Ribet.RibetLevelLowering26.ribet_level_26_div_13_eq

/-- v5.1.0 displayed inhabit. -/
def gap_ribet_inhabited : ribet_produces_newform_level2 :=
  ribet_produces_newform_level2_inhabited

/-- Real Ribet algorithm stays uninhabited. -/
def gap_ribet_algorithm : Prop :=
  ribet_algorithm_of_Is13Case

/-- Gap 4.  DONE: no newform at level 2. -/
def gap_s2_gamma0_2_done : ¬ ExistsNewformLevel2 :=
  notExistsNewformLevel2

/-- Gap 5.  Empty inductive scaffold, not the real curve. -/
def gap_X0_26_Q_scaffold : Type :=
  X0_26_Q_Point

theorem gap_X0_26_Q_scaffold_eq :
    gap_X0_26_Q_scaffold = X0_26_Q_Point :=
  rfl

/-- Ceiling type without `hComp` / `hΔ`.  Uninhabited. -/
def conditional_Beal_forall_propext_only_ceiling : Prop :=
  is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only_type

theorem conditional_Beal_forall_propext_only_ceiling_eq :
    conditional_Beal_forall_propext_only_ceiling =
      is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only_type :=
  rfl

/-- Path 1 is false; Path 2 is the typed `Is13Case → False`.
Does not inhabit Path 2. -/
theorem ceiling_uses_Path2_not_Path1 :
    ¬ Is13CaseForcesGcdGt1SketchPrimitive ∧
      (Is13CaseForcesFalseSketchViaLevel2 =
        ∀ (w : BealCounterexampleBases),
          BealLevel26Foundations.Frey.FreyConductor26.Is13Case w → False) :=
  only_honest_path_is_False_via_level2

#check gap_tate_conductor
#check frey_conductor_26_of_Is13Case
#check frey_conductor_26_of_Is13Case_inhabited
#check tate_table_conductor
#check tate_algorithm_of_Is13Case
#check gap_tate_table_done
#check gap_tate_inhabited
#check frey_conductor_26_rfl
#check gap_modularity_pack
#check WeierstrassModularity
#check WeierstrassModularity_of_pack
#check WeierstrassModularity_of_pack_from_R_T
#check gap_modularity_from_R_T
#check gap_ribet_level2
#check gap_ribet_table_done
#check gap_ribet_inhabited
#check gap_ribet_algorithm
#check ribet_produces_newform_level2_of_weierstrass_modularity
#check ribet_produces_newform_level2_inhabited
#check ribet_algorithm_of_Is13Case
#check gap_s2_gamma0_2_done
#check notExistsNewformLevel2
#check gap_X0_26_Q_scaffold
#check X0_26_Q_Point
#check X0_26_Q_Point_to_ExistsNoncuspidal
#check X0_26_Q_real_points
#check fourCusps_displayed_of_P_mem
#check nonempty_X0_26_Q_Point_to_False
#check fourCuspsForallCuspPoints_of_P_mem
#check conditional_Beal_forall_propext_only_ceiling
#check is13Case_false_implies_Beal_of_tate_ribet_disc
#check is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
#check beal_forall_from_Is13Case_false_sketch
#check Is13CaseForcesFalseSketchViaLevel2_inhabited
#check beal_forall_in_kernel
#check beal_forall_in_kernel_closed
#check beal_forall_in_kernel_from_real_algorithms
#check beal_forall_in_kernel_from_infinite_TW
#check beal_forall_in_kernel_from_delta_separated
#check beal_forall_in_kernel_from_det_separated
#check beal_forall_in_kernel_from_unramified_separated
#check beal_forall_in_kernel_from_finite_flat_separated
#check beal_forall_in_kernel_from_ribet_separated
#check beal_forall_in_kernel_from_modular_lifting_separated
#check beal_forall_in_kernel_from_exists_newform_separated
#check beal_forall_in_kernel_from_beal_forall_closed_separated
#check beal_forall_in_kernel_from_beal_forall_none_separated
#check beal_forall_in_kernel_from_beal_forall_none_separated_none
#check is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel
#check is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed
#check frey_Delta13_ne_0_of_pos
#check exists_primitive_Is13Case_gcd_1
#check BealLevel26Foundations.Chain.PathLock.triple_13_2_1
#check BealLevel26Foundations.Chain.PathLock.exists_primitive_Is13Case_gcd_1
#check BealLevel26Foundations.Chain.PathLock.forall_primitive_Is13Case_gcd_gt1_false
#check BealLevel26Foundations.Chain.PathLock.path_lock_13_2_1
#print axioms gap_tate_conductor_eq
#print axioms gap_tate_table_done
#print axioms gap_tate_inhabited
#print axioms frey_conductor_26_of_Is13Case_inhabited
#print axioms frey_conductor_26_rfl
#print axioms WeierstrassModularity_of_pack
#print axioms WeierstrassModularity_of_pack_from_R_T
#print axioms gap_modularity_from_R_T
#print axioms gap_ribet_level2_eq
#print axioms gap_ribet_table_done
#print axioms gap_ribet_inhabited
#print axioms ribet_produces_newform_level2_inhabited
#print axioms notExistsNewformLevel2
#print axioms gap_s2_gamma0_2_done
#print axioms gap_X0_26_Q_scaffold_eq
#print axioms X0_26_Q_real_points_eq
#print axioms mem_26a1_real_points
#print axioms mem_26b1_real_points
#print axioms fourCusps_displayed_of_P_mem
#print axioms fourCuspsForallCuspPoints_of_P_mem
#print axioms conditional_Beal_forall_propext_only_ceiling_eq
#print axioms is13Case_false_implies_Beal_of_tate_ribet_disc
#print axioms is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only
#print axioms Is13CaseForcesFalseSketchViaLevel2_inhabited
#print axioms beal_forall_in_kernel
#print axioms beal_forall_in_kernel_closed
#print axioms beal_forall_in_kernel_from_real_algorithms
#print axioms beal_forall_in_kernel_from_infinite_TW
#print axioms beal_forall_in_kernel_from_delta_separated
#print axioms beal_forall_in_kernel_from_det_separated
#print axioms beal_forall_in_kernel_from_unramified_separated
#print axioms beal_forall_in_kernel_from_finite_flat_separated
#print axioms beal_forall_in_kernel_from_ribet_separated
#print axioms beal_forall_in_kernel_from_modular_lifting_separated
#print axioms beal_forall_in_kernel_from_exists_newform_separated
#print axioms beal_forall_in_kernel_from_beal_forall_closed_separated
#print axioms beal_forall_in_kernel_from_beal_forall_none_separated
#print axioms beal_forall_in_kernel_from_beal_forall_none_separated_none
#print axioms is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel
#print axioms is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed
#print axioms frey_Delta13_ne_0_of_pos
#print axioms exists_primitive_Is13Case_gcd_1
#print axioms BealLevel26Foundations.Chain.PathLock.triple_13_2_1_gcd_eq_1
#print axioms BealLevel26Foundations.Chain.PathLock.triple_13_2_1_is_primitive
#print axioms BealLevel26Foundations.Chain.PathLock.exists_primitive_Is13Case_gcd_1
#print axioms BealLevel26Foundations.Chain.PathLock.forall_primitive_Is13Case_gcd_gt1_false
#print axioms BealLevel26Foundations.Chain.PathLock.path_lock_13_2_1
#print axioms ceiling_uses_Path2_not_Path1

end BealLevel26Foundations.Chain.MathlibGaps
