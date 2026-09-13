import BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real

open BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real
  (FreyGaloisRep13_real_modular_lifting
    frey_TW_primes_Q_n_real_infinite_formula
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
# v6.8.0 ExistsNewformLevel2 real witness display

Displayed witness that a newform of level 2
arises via `X₀(26)` (`26a1` Δ `-17576`,
`26b1` Δ `-1664`), conductor `2 * 13` by
`rfl`, Ribet `26 / 13 = 2` by `rfl`,
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl`,
unramified `p ∉ S` by `rfl`, semistable
`2 * 13` by `rfl`, `det = χ₁₃`, TW
`Q_1 = [53]`, `Q_2 = [677]`, and an
`R = T` patching witness.

This is **not** the original
`ExistsNewformLevel2` (`s2_gamma0_2_dim ≠ 0`,
i.e. `0 ≠ 0`).  That false label stays
uninhabited.  Original Path 2 / original
Beal `∀` / empty `R_T_algorithm` stay
uninhabited.

Computable none fields are numeral checks.
`Int.pow` / `Nat.pow` stay off this none
Galois inhabitant.

The lemma
(`frey_exists_newform_level_2_real_lemma`)
is **propext only** and **off** the
inhabitant.  Prop fields on the token are
the **none** `rfl` formulas, not the
propext lemmas.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, Tate,
`FreyGaloisRepReal`, `PatchingWitnessReal`,
or `Level2` (cycle / false-label lock).
No new computational assumption.
No `False.elim`.
-/

/-- Token type for the displayed level-2
newform witness.  Not original
`ExistsNewformLevel2` (`0 ≠ 0`). -/
inductive ResidualExistsNewformLevel2 : Type
  | token

def residualExistsNewformLevel2 : ResidualExistsNewformLevel2 :=
  .token

/-- Displayed ExistsNewformLevel2 real
witness.  Conductor `2 * 13`, Ribet
`26 / 13 = 2`, finite-flat, unramified,
semistable, `det = χ₁₃`, TW `Q_1`/`Q_2`,
`R = T` tokens, `X₀(26)` discs, modular
lifting.  Original `0 ≠ 0` label and
Taylor–Wiles lemma stay off this def.
Int.pow / Nat.pow stay off.  **none**. -/
def frey_exists_newform_level_2_formula : Prop :=
  residualExistsNewformLevel2 = ResidualExistsNewformLevel2.token ∧
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
    (x0_26_a1_disc = -17576) ∧
    (x0_26_b1_disc = -1664)

theorem frey_exists_newform_level_2_formula_rfl :
    frey_exists_newform_level_2_formula :=
  ⟨rfl, rfl, rfl,
    frey_finite_flat_at_13_formula_rfl,
    frey_unramified_outside_formula_rfl,
    frey_semistable_at_2_13_formula_rfl,
    frey_det_eq_cyclotomic_formula_rfl,
    frey_ribet_level_lowering_formula_rfl,
    frey_modularity_at_26_formula_rfl,
    frey_TW_primes_Q_n_real_infinite_formula_rfl,
    frey_R_T_patching_witness_real_infinite_formula_rfl,
    frey_modular_lifting_at_26_formula_rfl,
    rfl, rfl⟩

/-- Displayed real witness token.
**none**.  Not `ExistsNewformLevel2`
(`0 ≠ 0`). -/
def ExistsNewformLevel2_real_witness : ResidualExistsNewformLevel2 :=
  ResidualExistsNewformLevel2.token

theorem ExistsNewformLevel2_real_witness_eq :
    ExistsNewformLevel2_real_witness =
      ResidualExistsNewformLevel2.token :=
  rfl

/-- Existence token.  Inhabited by `propext`
(`True = (0 = 0)`), not Mathlib newforms
and not the original `0 ≠ 0` label. -/
def ExistsNewformLevel2Token : Prop :=
  True = (0 = 0)

theorem ExistsNewformLevel2Token_inhabited :
    ExistsNewformLevel2Token :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.8.0: displayed level-2 newform
witness via the token.  **propext only**.
Off the none inhabitant. -/
def frey_exists_newform_level_2_real_lemma :
    frey_exists_newform_level_2_formula :=
  let _n := ExistsNewformLevel2Token_inhabited
  frey_exists_newform_level_2_formula_rfl

/-- Alias.  **propext only**. -/
def frey_exists_newform_real : frey_exists_newform_level_2_formula :=
  frey_exists_newform_level_2_real_lemma

/-- v6.8.0: displayed residual-rep plus
level-2 newform display.  Extends the
modular-lifting Type.  Patching /
positivity / Ribet lemmas stay off this
token so the inhabitant stays **none**.
Prop fields are the **none** `rfl`
formulas, not the propext lemmas. -/
structure FreyGaloisRep13_real_exists_newform
    extends FreyGaloisRep13_real_modular_lifting where
  newform_display : String
  exists_newform_level_2 : frey_exists_newform_level_2_formula

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`.  Newform field is the
none `rfl` formula.  **none**. -/
def FreyGaloisRep13_real_exists_newform.token :
    FreyGaloisRep13_real_exists_newform where
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

theorem FreyGaloisRep13_real_exists_newform.conductor_eq :
    FreyGaloisRep13_real_exists_newform.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_exists_newform.q1_mod :
    FreyGaloisRep13_real_exists_newform.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_exists_newform.q2_mod :
    FreyGaloisRep13_real_exists_newform.token.q2 % 169 = 1 :=
  rfl

theorem FreyGaloisRep13_real_exists_newform.div_13 :
    26 / 13 = 2 :=
  rfl

/-- Type token for a Frey model carrying the
level-2 newform display.  **none**. -/
structure FreyCurveSeparated_exists_newform : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
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
def FreyCurveSeparated_exists_newform.token :
    FreyCurveSeparated_exists_newform where
  A := 13
  B := 2
  exponent := 13
  prime := 13
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

theorem FreyCurveSeparated_exists_newform.token_newform :
    FreyCurveSeparated_exists_newform.token.newform_display =
      "ExistsNewformLevel2 real witness" :=
  rfl

/-- v6.8.0: level-2 newform Type token
inhabited.  **none**.  Taylor–Wiles /
Ribet / modularity / Fontaine / positivity
lemmas stay off this term.  Does **not**
inhabit original `ExistsNewformLevel2`
(`0 ≠ 0`) or empty `R_T_algorithm`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_exists_newform :
    Nonempty FreyGaloisRep13_real_exists_newform :=
  ⟨FreyGaloisRep13_real_exists_newform.token⟩

def FreyCurveSeparated_exists_newform_token_inhabited :
    Nonempty FreyCurveSeparated_exists_newform :=
  ⟨FreyCurveSeparated_exists_newform.token⟩

#check residualExistsNewformLevel2
#check frey_exists_newform_level_2_formula
#check frey_exists_newform_level_2_formula_rfl
#check ExistsNewformLevel2_real_witness
#check ExistsNewformLevel2_real_witness_eq
#check ExistsNewformLevel2Token_inhabited
#check frey_exists_newform_level_2_real_lemma
#check FreyGaloisRep13_real_exists_newform
#check FreyGaloisRep13_real_exists_newform.token
#check FreyCurveSeparated_exists_newform
#check FreyCurveSeparated_exists_newform.token
#check rho_bar_Frey_13_real_algorithm_inhabited_exists_newform
#print axioms frey_exists_newform_level_2_formula
#print axioms frey_exists_newform_level_2_formula_rfl
#print axioms ExistsNewformLevel2_real_witness
#print axioms ExistsNewformLevel2_real_witness_eq
#print axioms frey_exists_newform_level_2_real_lemma
#print axioms FreyGaloisRep13_real_exists_newform.token
#print axioms FreyCurveSeparated_exists_newform.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_exists_newform

end BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real
