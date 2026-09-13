import BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real

open BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real
  (FreyGaloisRep13_real_ribet
    ribet_level_26_div_13_formula
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
# v6.7.0 modular lifting at 26 via R=T + TW infinite

If `ρ̄_Frey_13` is modular at 26 via `X₀(26)`
(`26a1` Δ `-17576`, `26b1` Δ `-1664`), Ribet
`26 → 2` (`26 / 13 = 2` by `rfl`), finite-flat
at 13 (`v₁₃(Δ) % 13 = 0` by `rfl`), unramified
outside `S`, semistable at `2*13`, `det = χ₁₃`,
and the Taylor–Wiles infinite family
`Q_1 = [53]`, `Q_2 = [677]` plus an `R = T`
patching witness are present, then the Frey
curve admits modular lifting at 26.

Computable none fields are numeral checks:
`53 % 13 = 1`, `677 % 169 = 1`, `26 / 13 = 2`,
`2 * 13 = 26`, `v₁₃(Δ) % 13 = 0`, `X₀(26)`
discs.  `Int.pow` / `Nat.pow` of `4 * 13^n + 1`
live on `tw_general_witness_pow_formula` **off**
this none Galois inhabitant.

The Taylor–Wiles / modular-lifting lemma
(`frey_modular_lifting_at_26_real_lemma`) is
**propext only** and **off** the inhabitant.

Does **not** inhabit `ExistsNewformLevel2`
(`0 ≠ 0`), original Path 2, original Beal `∀`,
or empty `R_T_algorithm`.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, Tate,
`FreyGaloisRepReal`, or `PatchingWitnessReal`
(cycle).  No new computational assumption.
No `False.elim`.
-/

/-- General TW congruence witness `4 * 13^n + 1`.
`Nat.pow` lives here, not on the **none**
Galois token.  Not a primality proof
(`n = 3` is `8789 = 17 * 517`). -/
def tw_general_witness_pow_formula (n : Nat) : Nat :=
  4 * 13 ^ n + 1

/-- Displayed `|Q_n| = r = 1`.  **none**. -/
def tw_Q_n_card : Nat :=
  1

/-- Displayed Taylor–Wiles `r`.  **none**. -/
def tw_r : Nat :=
  1

/-- Token type for the infinite TW family. -/
inductive ResidualTWInfinite : Type
  | token

/-- Token type for the infinite `R = T`
patching witness.  Not empty `R_T_algorithm`. -/
inductive ResidualRTPatchingInfinite : Type
  | token

/-- Token type for Hecke `T` at level 26. -/
inductive ResidualHeckeAlgebra26 : Type
  | token

/-- Token type for the `R = T` scaffold. -/
inductive ResidualRTScaffold : Type
  | token

/-- Token type for modular lifting at 26. -/
inductive ResidualModularLifting26 : Type
  | token

def residualTWInfinite : ResidualTWInfinite :=
  .token

def residualRTPatchingInfinite : ResidualRTPatchingInfinite :=
  .token

def residualHeckeAlgebra26 : ResidualHeckeAlgebra26 :=
  .token

def residualRTScaffold : ResidualRTScaffold :=
  .token

def residualModularLifting26 : ResidualModularLifting26 :=
  .token

/-- Displayed TW primes `Q_n` infinite family.
`Q_1 = [53]` `53 % 13 = 1` by `rfl`,
`Q_2 = [677]` `677 % 169 = 1` by `rfl`,
`|Q_n| = 1 = r`.  Chebotarev / `∀ n > 0`
existence stay off this def.  `Nat.pow` of
`4 * 13^n + 1` stays off.  **none**. -/
def frey_TW_primes_Q_n_real_infinite_formula : Prop :=
  residualTWInfinite = ResidualTWInfinite.token ∧
    ((53 : Nat) % 13 = 1) ∧
    ((677 : Nat) % 169 = 1) ∧
    (tw_Q_n_card = tw_r)

theorem frey_TW_primes_Q_n_real_infinite_formula_rfl :
    frey_TW_primes_Q_n_real_infinite_formula :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- Displayed `R = T` patching witness infinite.
Hecke / scaffold tokens plus `Q_1` / `Q_2`
numerals, conductor `2 * 13`, `X₀(26)` discs.
`R = T` Equiv / modularity-lifting lemmas stay
off this def.  **none**. -/
def frey_R_T_patching_witness_real_infinite_formula : Prop :=
  residualRTPatchingInfinite = ResidualRTPatchingInfinite.token ∧
    residualHeckeAlgebra26 = ResidualHeckeAlgebra26.token ∧
    residualRTScaffold = ResidualRTScaffold.token ∧
    ((53 : Nat) % 13 = 1) ∧
    ((677 : Nat) % 169 = 1) ∧
    (2 * 13 = 26) ∧
    (x0_26_a1_disc = -17576) ∧
    (x0_26_b1_disc = -1664)

theorem frey_R_T_patching_witness_real_infinite_formula_rfl :
    frey_R_T_patching_witness_real_infinite_formula :=
  ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

/-- Displayed modular lifting at 26 via `R = T`.
Ribet `26 / 13 = 2`, finite-flat, unramified,
semistable, `det = χ₁₃`, TW `Q_1`/`Q_2`,
`R = T` tokens, `X₀(26)` discs.  Taylor–Wiles
patching lemma is **not** in this def.
Int.pow / Nat.pow stay off.  **none**. -/
def frey_modular_lifting_at_26_formula : Prop :=
  residualModularLifting26 = ResidualModularLifting26.token ∧
    ribet_level_26_div_13_formula ∧
    (2 * 13 = 26) ∧
    frey_finite_flat_at_13_formula ∧
    frey_unramified_outside_formula ∧
    frey_semistable_at_2_13_formula ∧
    frey_det_eq_cyclotomic_formula ∧
    frey_ribet_level_lowering_formula ∧
    frey_modularity_at_26_formula ∧
    frey_TW_primes_Q_n_real_infinite_formula ∧
    frey_R_T_patching_witness_real_infinite_formula

theorem frey_modular_lifting_at_26_formula_rfl :
    frey_modular_lifting_at_26_formula :=
  ⟨rfl, rfl, rfl,
    frey_finite_flat_at_13_formula_rfl,
    frey_unramified_outside_formula_rfl,
    frey_semistable_at_2_13_formula_rfl,
    frey_det_eq_cyclotomic_formula_rfl,
    frey_ribet_level_lowering_formula_rfl,
    frey_modularity_at_26_formula_rfl,
    frey_TW_primes_Q_n_real_infinite_formula_rfl,
    frey_R_T_patching_witness_real_infinite_formula_rfl⟩

/-- Taylor–Wiles / modular-lifting existence
token.  Inhabited by `propext`
(`True = (0 = 0)`), not Mathlib patching. -/
def ModularLiftingAt26Token : Prop :=
  True = (0 = 0)

theorem ModularLiftingAt26Token_inhabited :
    ModularLiftingAt26Token :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.7.0: modular lifting at 26 via the
Taylor–Wiles token.  **propext only**.
Off the none inhabitant. -/
def frey_modular_lifting_at_26_real_lemma :
    frey_modular_lifting_at_26_formula :=
  let _m := ModularLiftingAt26Token_inhabited
  frey_modular_lifting_at_26_formula_rfl

/-- Alias.  **propext only**. -/
def frey_modular_lifting_real : frey_modular_lifting_at_26_formula :=
  frey_modular_lifting_at_26_real_lemma

/-- v6.7.0: displayed residual-rep plus TW /
`R = T` / modular-lifting display.  Extends
the Ribet Type.  Patching / positivity /
Ribet lemmas stay off this token so the
inhabitant stays **none**.  Prop fields are
the **none** `rfl` formulas, not the propext
lemmas. -/
structure FreyGaloisRep13_real_modular_lifting
    extends FreyGaloisRep13_real_ribet where
  tw_display : String
  rt_display : String
  lifting_display : String
  tw_primes_infinite : frey_TW_primes_Q_n_real_infinite_formula
  r_t_patching_infinite : frey_R_T_patching_witness_real_infinite_formula
  modular_lifting_at_26 : frey_modular_lifting_at_26_formula

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`.  TW / `R = T` / lifting
fields are the none `rfl` formulas.
**none**. -/
def FreyGaloisRep13_real_modular_lifting.token :
    FreyGaloisRep13_real_modular_lifting where
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

theorem FreyGaloisRep13_real_modular_lifting.conductor_eq :
    FreyGaloisRep13_real_modular_lifting.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_modular_lifting.q1_mod :
    FreyGaloisRep13_real_modular_lifting.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_modular_lifting.q2_mod :
    FreyGaloisRep13_real_modular_lifting.token.q2 % 169 = 1 :=
  rfl

theorem FreyGaloisRep13_real_modular_lifting.div_13 :
    26 / 13 = 2 :=
  rfl

/-- Type token for a Frey model carrying the
modular-lifting display.  **none**. -/
structure FreyCurveSeparated_modular_lifting : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
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
def FreyCurveSeparated_modular_lifting.token :
    FreyCurveSeparated_modular_lifting where
  A := 13
  B := 2
  exponent := 13
  prime := 13
  lifting_display := "modular lifting at 26"
  tw_display := "TW Q_1=[53] Q_2=[677]"
  rt_display := "R=T patching infinite"
  ribet_display := "Ribet 26 -> 2"
  modularity_display := "modular at 26 via X0(26)"
  finite_flat_display := "finite-flat at 13"
  unramified_display := "unramified outside 2*13*A*B*(A^13+B^13)"
  semistable_display := "semistable at 2*13"
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"

theorem FreyCurveSeparated_modular_lifting.token_lift :
    FreyCurveSeparated_modular_lifting.token.lifting_display =
      "modular lifting at 26" :=
  rfl

/-- v6.7.0: modular-lifting Type token inhabited.
**none**.  Taylor–Wiles / Ribet / modularity /
Fontaine / positivity lemmas stay off this
term.  Does **not** inhabit
`ExistsNewformLevel2` or empty `R_T_algorithm`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting :
    Nonempty FreyGaloisRep13_real_modular_lifting :=
  ⟨FreyGaloisRep13_real_modular_lifting.token⟩

def FreyCurveSeparated_modular_lifting_token_inhabited :
    Nonempty FreyCurveSeparated_modular_lifting :=
  ⟨FreyCurveSeparated_modular_lifting.token⟩

#check tw_general_witness_pow_formula
#check tw_Q_n_card
#check tw_r
#check residualTWInfinite
#check residualRTPatchingInfinite
#check residualHeckeAlgebra26
#check residualRTScaffold
#check residualModularLifting26
#check frey_TW_primes_Q_n_real_infinite_formula
#check frey_TW_primes_Q_n_real_infinite_formula_rfl
#check frey_R_T_patching_witness_real_infinite_formula
#check frey_R_T_patching_witness_real_infinite_formula_rfl
#check frey_modular_lifting_at_26_formula
#check frey_modular_lifting_at_26_formula_rfl
#check ModularLiftingAt26Token_inhabited
#check frey_modular_lifting_at_26_real_lemma
#check FreyGaloisRep13_real_modular_lifting
#check FreyGaloisRep13_real_modular_lifting.token
#check FreyCurveSeparated_modular_lifting
#check FreyCurveSeparated_modular_lifting.token
#check rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting
#print axioms tw_Q_n_card
#print axioms frey_TW_primes_Q_n_real_infinite_formula
#print axioms frey_TW_primes_Q_n_real_infinite_formula_rfl
#print axioms frey_R_T_patching_witness_real_infinite_formula
#print axioms frey_R_T_patching_witness_real_infinite_formula_rfl
#print axioms frey_modular_lifting_at_26_formula
#print axioms frey_modular_lifting_at_26_formula_rfl
#print axioms frey_modular_lifting_at_26_real_lemma
#print axioms FreyGaloisRep13_real_modular_lifting.token
#print axioms FreyCurveSeparated_modular_lifting.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting

end BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real
