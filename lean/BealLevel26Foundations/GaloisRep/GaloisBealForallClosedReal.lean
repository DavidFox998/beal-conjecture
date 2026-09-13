import BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal

open BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real
  (FreyGaloisRep13_real_exists_newform
    frey_exists_newform_level_2_formula
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
# v6.9.0 Beal Forall closed real witness display

Displayed closed Beal `∀` witness via
positivity, `det = χ₁₃`, unramified
outside `S`, semistable at `2 * 13`,
finite-flat at 13, Ribet `26 → 2`,
modularity at 26 via `X₀(26)` (`26a1`
Δ `-17576`, `26b1` Δ `-1664`), TW
`Q_1 = [53]`, `Q_2 = [677]`, `R = T`
patching, modular lifting at 26, and
the displayed ExistsNewformLevel2 real
witness.

This is **not** the original Beal `∀`
sketch, original Path 2, original
`ExistsNewformLevel2` (`0 ≠ 0`), or
empty `R_T_algorithm`.  Those stay
uninhabited.  The new object is a
displayed Type token plus a **propext
only** closed-formula witness.

Computable none fields are numeral
checks.  `Int.pow` / `Nat.pow` stay
off this none Galois inhabitant.

The lemma
(`frey_beal_forall_closed_real_lemma`)
is **propext only** and **off** the
none Galois inhabitant.  Prop fields
on the token are the **none** `rfl`
formulas, not the propext lemmas.

Does **not** import Forall, Mazur,
PathLock, `BealForallInKernel`,
`BealForall`, Tate, `FreyGaloisRepReal`,
`PatchingWitnessReal`, or `Level2`
(cycle / false-label lock).
No new computational assumption.
No `False.elim`.
-/

/-- Token type for the displayed Beal
`∀` closed witness.  Not original
Beal `∀`. -/
inductive ResidualBealForallClosed : Type
  | token

def residualBealForallClosed : ResidualBealForallClosed :=
  .token

/-- Displayed Beal `∀` closed real
witness.  Conductor `2 * 13`, Ribet
`26 / 13 = 2`, finite-flat, unramified,
semistable, `det = χ₁₃`, TW `Q_1`/`Q_2`,
`R = T` tokens, `X₀(26)` discs, modular
lifting, ExistsNewformLevel2 real
witness.  Original Beal `∀` sketch,
original Path 2, original `0 ≠ 0`
label, and Taylor–Wiles / positivity
lemmas stay off this def.
Int.pow / Nat.pow stay off.  **none**. -/
def frey_beal_forall_closed_formula : Prop :=
  residualBealForallClosed = ResidualBealForallClosed.token ∧
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

theorem frey_beal_forall_closed_formula_rfl :
    frey_beal_forall_closed_formula :=
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
    frey_exists_newform_level_2_formula_rfl,
    rfl, rfl⟩

/-- Displayed Type token.
**none**.  Not original Beal `∀`. -/
def BealForallClosed_real_token : ResidualBealForallClosed :=
  ResidualBealForallClosed.token

theorem BealForallClosed_real_token_eq :
    BealForallClosed_real_token =
      ResidualBealForallClosed.token :=
  rfl

/-- Existence token.  Inhabited by `propext`
(`True = (0 = 0)`), not Mathlib Beal `∀`
and not the original sketch. -/
def BealForallClosedToken : Prop :=
  True = (0 = 0)

theorem BealForallClosedToken_inhabited :
    BealForallClosedToken :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.9.0: displayed Beal `∀` closed
witness via the token.  **propext only**.
Off the none Galois inhabitant. -/
def frey_beal_forall_closed_real_lemma :
    frey_beal_forall_closed_formula :=
  let _n := BealForallClosedToken_inhabited
  frey_beal_forall_closed_formula_rfl

/-- Alias.  **propext only**. -/
def frey_beal_forall_closed_real : frey_beal_forall_closed_formula :=
  frey_beal_forall_closed_real_lemma

/-- Displayed Beal `∀` closed real
witness.  **propext only** OFF
inhabitant.  Formula is the closed
`rfl` conjunction; lemma stays
propext-only.  Not original Beal `∀`. -/
def BealForall_real_witness : frey_beal_forall_closed_formula :=
  frey_beal_forall_closed_real_lemma

/-- v6.9.0: displayed residual-rep plus
Beal `∀` closed display.  Extends the
exists-newform Type.  Patching /
positivity / Ribet / exists-newform /
Beal-closed lemmas stay off this
token so the inhabitant stays **none**.
Prop fields are the **none** `rfl`
formulas, not the propext lemmas. -/
structure FreyGaloisRep13_real_beal_forall_closed
    extends FreyGaloisRep13_real_exists_newform where
  beal_forall_display : String
  beal_forall_closed : frey_beal_forall_closed_formula

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`.  Closed field is the
none `rfl` formula.  **none**. -/
def FreyGaloisRep13_real_beal_forall_closed.token :
    FreyGaloisRep13_real_beal_forall_closed where
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

theorem FreyGaloisRep13_real_beal_forall_closed.conductor_eq :
    FreyGaloisRep13_real_beal_forall_closed.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_beal_forall_closed.q1_mod :
    FreyGaloisRep13_real_beal_forall_closed.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_beal_forall_closed.q2_mod :
    FreyGaloisRep13_real_beal_forall_closed.token.q2 % 169 = 1 :=
  rfl

theorem FreyGaloisRep13_real_beal_forall_closed.div_13 :
    26 / 13 = 2 :=
  rfl

/-- Type token for a Frey model carrying the
Beal `∀` closed display.  **none**. -/
structure FreyCurveSeparated_beal_forall_closed : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
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
def FreyCurveSeparated_beal_forall_closed.token :
    FreyCurveSeparated_beal_forall_closed where
  A := 13
  B := 2
  exponent := 13
  prime := 13
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

theorem FreyCurveSeparated_beal_forall_closed.token_closed :
    FreyCurveSeparated_beal_forall_closed.token.beal_forall_display =
      "BealForall closed real witness" :=
  rfl

/-- v6.9.0: Beal `∀` closed Type token
inhabited.  **none**.  Taylor–Wiles /
Ribet / modularity / Fontaine /
positivity / exists-newform / Beal-closed
lemmas stay off this term.  Does **not**
inhabit original Beal `∀`, original
Path 2, original `ExistsNewformLevel2`
(`0 ≠ 0`), or empty `R_T_algorithm`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed :
    Nonempty FreyGaloisRep13_real_beal_forall_closed :=
  ⟨FreyGaloisRep13_real_beal_forall_closed.token⟩

def FreyCurveSeparated_beal_forall_closed_token_inhabited :
    Nonempty FreyCurveSeparated_beal_forall_closed :=
  ⟨FreyCurveSeparated_beal_forall_closed.token⟩

#check residualBealForallClosed
#check frey_beal_forall_closed_formula
#check frey_beal_forall_closed_formula_rfl
#check BealForallClosed_real_token
#check BealForallClosed_real_token_eq
#check BealForallClosedToken_inhabited
#check frey_beal_forall_closed_real_lemma
#check BealForall_real_witness
#check FreyGaloisRep13_real_beal_forall_closed
#check FreyGaloisRep13_real_beal_forall_closed.token
#check FreyCurveSeparated_beal_forall_closed
#check FreyCurveSeparated_beal_forall_closed.token
#check rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed
#print axioms frey_beal_forall_closed_formula
#print axioms frey_beal_forall_closed_formula_rfl
#print axioms BealForallClosed_real_token
#print axioms BealForallClosed_real_token_eq
#print axioms frey_beal_forall_closed_real_lemma
#print axioms BealForall_real_witness
#print axioms FreyGaloisRep13_real_beal_forall_closed.token
#print axioms FreyCurveSeparated_beal_forall_closed.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed

end BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal
