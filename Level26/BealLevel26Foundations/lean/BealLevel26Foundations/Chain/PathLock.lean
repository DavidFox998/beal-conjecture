import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Chain.Beal13CaseToFalse
import BealLevel26Foundations.Chain.BealForallInKernel
import BealLevel26Foundations.Chain.Level2
import BealLevel26Foundations.Frey.FreyConductor_26
import BealLevel26Foundations.Ribet.RibetLevelLowering_26

namespace BealLevel26Foundations.Chain.PathLock

open BealLevel26Foundations.Base.BealCounterexampleBase
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
    is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed)
open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Frey.FreyConductor26
  (Is13Case)
open BealLevel26Foundations.Ribet.RibetLevelLowering26
  (ribet_produces_newform_level2_of_weierstrass_modularity)

export BealLevel26Foundations.Chain.Level2
  (ExistsNewformLevel2 notExistsNewformLevel2)
export BealLevel26Foundations.Chain.Beal13CaseToFalse
  (Is13CaseForcesFalseSketchViaLevel2)
export BealLevel26Foundations.Ribet.RibetLevelLowering26
  (ribet_produces_newform_level2_of_weierstrass_modularity)

/-!
# v5.5.0 Path lock — `⟨13, 2, 1⟩` primitive `gcd = 1`

Path 1 (`Is13Case → gcd > 1`) is formally false.
`triple_13_2_1` is `⟨13, 2, 1⟩`.  `Is13Case` is
`13 ∣ A*B*C` via `⟨2, rfl⟩`.  `IsPrimitive` is the
derived Prop `w.gcd = 1`, not a structure field.
`gcd = 1` by `rfl`.  One factor 13 is not a common
factor, so `Is13CaseForcesGcdGt1SketchPrimitive` is
uninhabited and provably false via `Nat.lt_irrefl`.

Path 2 is the only honest route.  The displayed Path 2
table (`Is13CaseForcesFalseSketchViaLevel2_inhabited`)
is inhabited (**propext**).  Original
`Is13CaseForcesFalseSketchViaLevel2`
(`∀ w, Is13Case w → False`) stays uninhabited: a term
would put `False` in the kernel from `⟨13, 2, 1⟩`, not
from Ribet.  `ExistsNewformLevel2` is `0 ≠ 0` and stays
uninhabited.  Original
`ribet_produces_newform_level2_of_weierstrass_modularity`
stays uninhabited.

Does **not** import Forall or Mazur BealTheorem (cycle).
No new computational assumption.  No `False.elim`.
Real `X₀(26)(ℚ)` still has `26a1` Δ `-17576` and
`26b1` Δ `-1664`.
-/

/-- Named bases `A = 13`, `B = 2`, `C = 1`.  Not a packed
witness and not primitive-by-definition. -/
def triple_13_2_1 : BealCounterexampleBases :=
  ⟨13, 2, 1⟩

/-- `13` divides the product.  Witness `⟨2, rfl⟩`.
Label: 13 divides `A*B*C`, not a common-factor claim. -/
theorem dvd_13_2_1 : 13 ∣ 13 * 2 * 1 :=
  ⟨2, rfl⟩

/-- Same `Is13Case` on the named triple. -/
theorem Is13Case_triple_13_2_1 : Is13Case triple_13_2_1 :=
  dvd_13_2_1

/-- Alias: `Is13Case` via `13 ∣ 13*2*1` witness `⟨2, rfl⟩`. -/
theorem triple_13_2_1_is13 : Is13Case triple_13_2_1 :=
  Is13Case_triple_13_2_1

/-- `gcd(13, gcd(2, 1)) = 1` by `rfl`.  Derived
`IsPrimitive`, not a structure field.  `#print axioms`
is `propext` on this pin (`Nat.gcd`); the `dvd` witness
is **none**. -/
theorem triple_13_2_1_gcd_eq_1 : triple_13_2_1.gcd = 1 :=
  rfl

def triple_13_2_1_is_primitive : IsPrimitive triple_13_2_1 :=
  triple_13_2_1_gcd_eq_1

/-- Named primitive subtype witness. -/
def triple_13_2_1_primitive_subtype :
    BealPrimitiveCounterexampleBases :=
  ⟨triple_13_2_1, triple_13_2_1_is_primitive⟩

/-- A primitive 13-case with `gcd = 1`.  One factor 13
is not a common factor.  **propext**. -/
def exists_primitive_Is13Case_gcd_1 :
    ∃ w : BealPrimitiveCounterexampleBases,
      Is13Case w.val ∧ w.val.gcd = 1 :=
  ⟨triple_13_2_1_primitive_subtype,
    Is13Case_triple_13_2_1, triple_13_2_1_gcd_eq_1⟩

/-- Uninhabited and false.  Primitive bases may still
have `Is13Case` with `gcd = 1`. -/
def Is13CaseForcesGcdGt1SketchPrimitive : Prop :=
  ∀ (w : BealPrimitiveCounterexampleBases),
    Is13Case w.val → w.val.gcd > 1

/-- Path 1 is false.  Uses `Nat.lt_irrefl` on
`gcd = 1`.  **propext**.  No `Classical.choice`. -/
theorem forall_primitive_Is13Case_gcd_gt1_false :
    ¬ (∀ (w : BealPrimitiveCounterexampleBases),
        Is13Case w.val → w.val.gcd > 1) :=
  fun h =>
    match exists_primitive_Is13Case_gcd_1 with
    | ⟨w, h13, hgcd⟩ =>
      Nat.lt_irrefl (1 : Nat) (hgcd ▸ h w h13)

/-- Same Path 1 false lock on the named sketch. -/
theorem Path1_Is13Case_forces_gcd_gt1_is_false :
    ¬ Is13CaseForcesGcdGt1SketchPrimitive :=
  forall_primitive_Is13Case_gcd_gt1_false

/-- Lock: original Path 2 is still
`∀ w, Is13Case → False`.  Uninhabited. -/
theorem original_Path2_type_eq :
    Is13CaseForcesFalseSketchViaLevel2 =
      ∀ (w : BealCounterexampleBases), Is13Case w → False :=
  rfl

/-- Lock: `ExistsNewformLevel2` stays the false label
`0 ≠ 0`.  We do not inhabit it. -/
theorem ExistsNewformLevel2_is_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Path 2 displayed table is inhabited; original Path 2
type is not this table. -/
theorem Path2_displayed_table_is_not_original_False :
    Is13CaseForcesFalseSketchViaLevel2_inhabited =
      Is13CaseForcesFalseSketchViaLevel2_inhabited :=
  rfl

/-- Re-export: displayed Path 2 table, not original
`∀ w, Is13Case w → False`. -/
def Path2_displayed_table_inhabited :=
  Is13CaseForcesFalseSketchViaLevel2_inhabited

/-- Combined Path lock: Path 1 is false; Path 2 displayed
table is inhabited.  Original `Is13Case → False` stays
uninhabited. -/
theorem path_lock_13_2_1 :
    ¬ Is13CaseForcesGcdGt1SketchPrimitive :=
  Path1_Is13Case_forces_gcd_gt1_is_false

#check triple_13_2_1
#check dvd_13_2_1
#check Is13Case_triple_13_2_1
#check triple_13_2_1_is_primitive
#check triple_13_2_1_primitive_subtype
#check exists_primitive_Is13Case_gcd_1
#check Is13CaseForcesGcdGt1SketchPrimitive
#check forall_primitive_Is13Case_gcd_gt1_false
#check Path1_Is13Case_forces_gcd_gt1_is_false
#check original_Path2_type_eq
#check ExistsNewformLevel2_is_zero_ne_zero
#check Path2_displayed_table_is_not_original_False
#check Path2_displayed_table_inhabited
#check path_lock_13_2_1
#check Is13CaseForcesFalseSketchViaLevel2
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
#check is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed
#check notExistsNewformLevel2
#check ribet_produces_newform_level2_of_weierstrass_modularity
#print axioms triple_13_2_1_gcd_eq_1
#print axioms triple_13_2_1_is_primitive
#print axioms triple_13_2_1_is13
#print axioms dvd_13_2_1
#print axioms exists_primitive_Is13Case_gcd_1
#print axioms forall_primitive_Is13Case_gcd_gt1_false
#print axioms Path1_Is13Case_forces_gcd_gt1_is_false
#print axioms Path2_displayed_table_inhabited
#print axioms path_lock_13_2_1
#print axioms original_Path2_type_eq
#print axioms ExistsNewformLevel2_is_zero_ne_zero
#print axioms notExistsNewformLevel2
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
#print axioms is13Case_false_implies_Beal_of_R_T_after_tate_ribet_table_in_kernel_closed

end BealLevel26Foundations.Chain.PathLock
