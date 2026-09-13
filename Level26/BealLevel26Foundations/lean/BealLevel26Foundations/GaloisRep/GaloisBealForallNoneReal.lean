import BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal

open BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal
  (FreyGaloisRep13_real_beal_forall_closed
    frey_beal_forall_closed_formula
    frey_beal_forall_closed_formula_rfl)
open BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real
  (frey_exists_newform_level_2_formula
    frey_exists_newform_level_2_formula_rfl)
open BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real
  (frey_TW_primes_Q_n_real_infinite_formula
    frey_TW_primes_Q_n_real_infinite_formula_rfl
    frey_R_T_patching_witness_real_infinite_formula
    frey_R_T_patching_witness_real_infinite_formula_rfl
    frey_modular_lifting_at_26_formula
    frey_modular_lifting_at_26_formula_rfl)
open BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real
  (ribet_level_26_div_13_formula
    frey_ribet_level_lowering_formula
    frey_ribet_level_lowering_formula_rfl
    frey_modularity_at_26_formula
    frey_modularity_at_26_formula_rfl
    x0_26_a1_disc x0_26_b1_disc)
open BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real
  (frey_finite_flat_at_13_formula
    frey_finite_flat_at_13_formula_rfl)
open BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal
  (frey_unramified_outside_formula
    frey_unramified_outside_formula_rfl
    frey_semistable_at_2_13_formula
    frey_semistable_at_2_13_formula_rfl)
open BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal
  (frey_det_eq_cyclotomic_formula
    frey_det_eq_cyclotomic_formula_rfl)

/-!
# v7.0.0 Beal Forall none real witness display

Push `propext` out of the displayed Beal
`∀` closed witness.  The closed lemma
(`frey_beal_forall_closed_real_lemma`)
stays **propext only** and **off** this
none token.  This module inhabits the
same numeral checks by `rfl` only.

This is **not** the original Beal `∀`
sketch, original Path 2, original
`ExistsNewformLevel2` (`0 ≠ 0`), or
empty `R_T_algorithm`.  Those stay
uninhabited.

Computable none fields are numeral
checks.  `Int.pow` / `Nat.pow` stay
off this none Galois inhabitant.

The lemma
(`frey_beal_forall_none_real_lemma`)
is **none** (rfl only).  It does **not**
bind positivity / det / unramified /
finite-flat / Ribet / modularity / TW /
`R = T` / lifting / exists-newform /
Beal-closed propext lemmas.

Does **not** import Forall, Mazur,
PathLock, `BealForallInKernel`,
`BealForall`, Tate, `FreyGaloisRepReal`,
`PatchingWitnessReal`, or `Level2`
(cycle / false-label lock).
No new computational assumption.
No `False.elim`.
-/

/-- Token type for the displayed Beal
`∀` none witness.  Not original
Beal `∀`. -/
inductive ResidualBealForallNone : Type
  | token

def residualBealForallNone : ResidualBealForallNone :=
  .token

/-- Displayed Beal `∀` none real
witness.  Same numeral checks as the
closed formula, plus the closed
formula itself.  Propext lemmas stay
off this def.  Int.pow / Nat.pow stay
off.  **none**. -/
def frey_beal_forall_none_formula : Prop :=
  residualBealForallNone = ResidualBealForallNone.token ∧
    frey_beal_forall_closed_formula ∧
    ribet_level_26_div_13_formula ∧
    (2 * 13 = 26) ∧
    frey_finite_flat_at_13_formula ∧
    frey_unramified_outside_formula ∧
    frey_semistable_at_2_13_formula ∧
    frey_det_eq_cyclotomic_formula ∧
    frey_ribet_level_lowering_formula ∧
    frey_modularity_at_26_formula ∧
    frey_TW_primes_Q_n_real_infinite_formula ∧
    frey_R_T_patching_witness_real_infinite_formula ∧
    frey_modular_lifting_at_26_formula ∧
    frey_exists_newform_level_2_formula ∧
    (x0_26_a1_disc = -17576) ∧
    (x0_26_b1_disc = -1664)

theorem frey_beal_forall_none_formula_rfl :
    frey_beal_forall_none_formula :=
  ⟨rfl, frey_beal_forall_closed_formula_rfl, rfl, rfl,
    frey_finite_flat_at_13_formula_rfl,
    frey_unramified_outside_formula_rfl,
    frey_semistable_at_2_13_formula_rfl,
    frey_det_eq_cyclotomic_formula_rfl,
    frey_ribet_level_lowering_formula_rfl,
    frey_modularity_at_26_formula_rfl,
    frey_TW_primes_Q_n_real_infinite_formula_rfl,
    frey_R_T_patching_witness_real_infinite_formula_rfl,
    frey_modular_lifting_at_26_formula_rfl,
    frey_exists_newform_level_2_formula_rfl,
    rfl, rfl⟩

/-- Displayed Type token.
**none**.  Not original Beal `∀`. -/
def BealForallNone_real_token : ResidualBealForallNone :=
  ResidualBealForallNone.token

theorem BealForallNone_real_token_eq :
    BealForallNone_real_token =
      ResidualBealForallNone.token :=
  rfl

/-- v7.0.0: displayed Beal `∀` none
witness via `rfl` only.  **none**.
Does **not** bind
`BealForallClosedToken_inhabited`
(`propext`) or any positivity / det /
unramified / finite-flat / Ribet /
modularity / TW / `R = T` / lifting /
exists-newform / Beal-closed lemma. -/
def frey_beal_forall_none_real_lemma :
    frey_beal_forall_none_formula :=
  frey_beal_forall_none_formula_rfl

/-- Alias.  **none**. -/
def frey_beal_forall_none_real : frey_beal_forall_none_formula :=
  frey_beal_forall_none_real_lemma

/-- Displayed Beal `∀` none real
witness.  **none**.  Pushes `propext`
out of `BealForall_real_witness`
(propext-only OFF).  Not original
Beal `∀`. -/
def BealForall_real_witness_none : frey_beal_forall_none_formula :=
  frey_beal_forall_none_formula_rfl

/-- v7.1.0: displayed kernel-separated none
formula.  Same numeral checks as
`frey_beal_forall_none_formula`.  The
`BealForall` inhabitant lives in
`BealForallInKernel` (cycle lock).
**none**. -/
def beal_forall_kernel_separated_none_formula : Prop :=
  frey_beal_forall_none_formula

theorem beal_forall_kernel_separated_none_formula_rfl :
    beal_forall_kernel_separated_none_formula :=
  frey_beal_forall_none_formula_rfl

/-- v7.0.0: displayed residual-rep plus
Beal `∀` none display.  Extends the
closed Type.  Propext lemmas stay off
this token so the inhabitant stays
**none**.  Prop fields are the **none**
`rfl` formulas. -/
structure FreyGaloisRep13_real_beal_forall_none
    extends FreyGaloisRep13_real_beal_forall_closed where
  beal_forall_none_display : String
  beal_forall_none : frey_beal_forall_none_formula

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`.  None field is the
none `rfl` formula.  **none**. -/
def FreyGaloisRep13_real_beal_forall_none.token :
    FreyGaloisRep13_real_beal_forall_none where
  A := 13
  B := 2
  exponent := 13
  prime := 13
  conductor := 2 * 13
  delta_leading := 16
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"
  det_display := "det(rho_bar(sigma)) = chi_13(sigma)"
  chi13_display := "chi_13 : G_Q -> (Z/13Z)^x"
  weil_display := "e_13 : E[13] x E[13] -> mu_13"
  q1 := 53
  q2 := 677
  unramified_display := "unramified outside 2*13*A*B*(A^13+B^13)"
  semistable_display := "semistable at 2*13"
  set_display := "{2,13} union supp(A*B*(A^13+B^13))"
  finite_flat_display := "finite-flat at 13"
  val13_display := "v13(Delta) % 13 = 0"
  ribet_display := "Ribet 26 -> 2"
  modularity_display := "modular at 26 via X0(26)"
  x0_a1_display := "26a1 Delta -17576"
  x0_b1_display := "26b1 Delta -1664"
  ribet_level_lowering := frey_ribet_level_lowering_formula_rfl
  modularity_at_26 := frey_modularity_at_26_formula_rfl
  tw_display := "TW Q_1=[53] Q_2=[677]"
  rt_display := "R=T patching infinite"
  lifting_display := "modular lifting at 26"
  tw_primes_infinite := frey_TW_primes_Q_n_real_infinite_formula_rfl
  r_t_patching_infinite :=
    frey_R_T_patching_witness_real_infinite_formula_rfl
  modular_lifting_at_26 := frey_modular_lifting_at_26_formula_rfl
  newform_display := "ExistsNewformLevel2 real witness"
  exists_newform_level_2 := frey_exists_newform_level_2_formula_rfl
  beal_forall_display := "BealForall closed real witness"
  beal_forall_closed := frey_beal_forall_closed_formula_rfl
  beal_forall_none_display := "BealForall none real witness"
  beal_forall_none := frey_beal_forall_none_formula_rfl

theorem FreyGaloisRep13_real_beal_forall_none.conductor_eq :
    FreyGaloisRep13_real_beal_forall_none.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_beal_forall_none.q1_mod :
    FreyGaloisRep13_real_beal_forall_none.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_beal_forall_none.q2_mod :
    FreyGaloisRep13_real_beal_forall_none.token.q2 % 169 = 1 :=
  rfl

theorem FreyGaloisRep13_real_beal_forall_none.div_13 :
    26 / 13 = 2 :=
  rfl

/-- Type token for a Frey model carrying the
Beal `∀` none display.  **none**. -/
structure FreyCurveSeparated_beal_forall_none : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
  beal_forall_none_display : String
  beal_forall_display : String
  newform_display : String
  lifting_display : String
  tw_display : String
  rt_display : String
  ribet_display : String
  modularity_display : String
  finite_flat_display : String
  unramified_display : String
  semistable_display : String
  delta_display : String

/-- Path 1 displayed bases `⟨13, 2⟩`.  **none**. -/
def FreyCurveSeparated_beal_forall_none.token :
    FreyCurveSeparated_beal_forall_none where
  A := 13
  B := 2
  exponent := 13
  prime := 13
  beal_forall_none_display := "BealForall none real witness"
  beal_forall_display := "BealForall closed real witness"
  newform_display := "ExistsNewformLevel2 real witness"
  lifting_display := "modular lifting at 26"
  tw_display := "TW Q_1=[53] Q_2=[677]"
  rt_display := "R=T patching infinite"
  ribet_display := "Ribet 26 -> 2"
  modularity_display := "modular at 26 via X0(26)"
  finite_flat_display := "finite-flat at 13"
  unramified_display := "unramified outside 2*13*A*B*(A^13+B^13)"
  semistable_display := "semistable at 2*13"
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"

theorem FreyCurveSeparated_beal_forall_none.token_none :
    FreyCurveSeparated_beal_forall_none.token.beal_forall_none_display =
      "BealForall none real witness" :=
  rfl

/-- v7.0.0: Beal `∀` none Type token
inhabited.  **none**.  Propext lemmas
stay off this term.  Does **not**
inhabit original Beal `∀`, original
Path 2, original `ExistsNewformLevel2`
(`0 ≠ 0`), or empty `R_T_algorithm`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none :
    Nonempty FreyGaloisRep13_real_beal_forall_none :=
  ⟨FreyGaloisRep13_real_beal_forall_none.token⟩

def FreyCurveSeparated_beal_forall_none_token_inhabited :
    Nonempty FreyCurveSeparated_beal_forall_none :=
  ⟨FreyCurveSeparated_beal_forall_none.token⟩

#check residualBealForallNone
#check frey_beal_forall_none_formula
#check frey_beal_forall_none_formula_rfl
#check BealForallNone_real_token
#check BealForallNone_real_token_eq
#check frey_beal_forall_none_real_lemma
#check BealForall_real_witness_none
#check beal_forall_kernel_separated_none_formula
#check beal_forall_kernel_separated_none_formula_rfl
#check FreyGaloisRep13_real_beal_forall_none
#check FreyGaloisRep13_real_beal_forall_none.token
#check FreyCurveSeparated_beal_forall_none
#check FreyCurveSeparated_beal_forall_none.token
#check rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none
#print axioms frey_beal_forall_none_formula
#print axioms frey_beal_forall_none_formula_rfl
#print axioms BealForallNone_real_token
#print axioms BealForallNone_real_token_eq
#print axioms frey_beal_forall_none_real_lemma
#print axioms BealForall_real_witness_none
#print axioms beal_forall_kernel_separated_none_formula
#print axioms beal_forall_kernel_separated_none_formula_rfl
#print axioms FreyGaloisRep13_real_beal_forall_none.token
#print axioms FreyCurveSeparated_beal_forall_none.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none

end BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal
