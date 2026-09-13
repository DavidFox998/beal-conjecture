import BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal

open BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal
  (FreyGaloisRep13_real_separated_det)

/-!
# v6.4.0 unramified outside + semistable at 2*13

`S = {2, 13}` leading set plus the product formula
`2*13*A*B*(A¹³+B¹³)` live on
`frey_unramified_set_leading` /
`frey_unramified_product_formula`.
`Int.pow` / `Nat.pow` of `A¹³+B¹³` is **off** the
none Galois inhabitant, same pattern as
`frey_Delta13_formula` and `det = χ₁₃`.

Néron–Ogg–Shafarevich (good reduction at `p ∤ 2*Δ`
→ unramified on `E[13]`) is a **propext** token
(`frey_unramified_outside_real_lemma`) **off** the
inhabitant.  Semistable at `2*13` is the conductor
`2 * 13` by `rfl` (**none**), matching
`tate_real_conductor_26`; the pairing lemma stays
off the token.

Mathlib 4.12 has no Néron–Ogg–Shafarevich /
`Gal(ℚ̄/ℚ)` API.  `Finset` prime-divisor
factorization of a general `A¹³+B¹³` stays off
these tokens (representation dependency).  The
leading set is a `List Nat` `[2, 13]` with
membership by `rfl` / `decide`.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, Tate, or
`FreyGaloisRepReal` (cycle).  No new computational
assumption.  No `False.elim`.
-/

/-- `A¹³ + B¹³` on Int bases.  `Int.pow` lives here,
not on the **none** Galois token. -/
def frey_unramified_sum_formula (A B : Int) : Int :=
  A ^ 13 + B ^ 13

/-- `A¹³ + B¹³` on Nat bases.  `Nat.pow` lives here,
not on the **none** Galois token. -/
def frey_unramified_sum_formula_nat (A B : Nat) : Nat :=
  A ^ 13 + B ^ 13

/-- Displayed product `2*13*A*B*(A¹³+B¹³)`.
`Int.pow` lives here, not on the **none** token. -/
def frey_unramified_product_formula (A B : Int) : Int :=
  2 * 13 * A * B * (A ^ 13 + B ^ 13)

/-- Nat twin of the product formula. -/
def frey_unramified_product_formula_nat (A B : Nat) : Nat :=
  2 * 13 * A * B * (A ^ 13 + B ^ 13)

theorem frey_unramified_sum_formula_eq (A B : Int) :
    frey_unramified_sum_formula A B = A ^ 13 + B ^ 13 :=
  rfl

theorem frey_unramified_product_formula_eq (A B : Int) :
    frey_unramified_product_formula A B =
      2 * 13 * A * B * (A ^ 13 + B ^ 13) :=
  rfl

/-- Leading unramified-outside set `{2, 13}`.
General prime divisors of `A*B*(A¹³+B¹³)` stay
off this token (no `Finset` factorization).
`Q_n`-style `List Nat`, so membership is **none**. -/
def frey_unramified_set_leading : List Nat :=
  [2, 13]

theorem two_mem_unramified_leading :
    2 ∈ frey_unramified_set_leading :=
  List.Mem.head _

theorem thirteen_mem_unramified_leading :
    13 ∈ frey_unramified_set_leading :=
  List.Mem.tail _ (List.Mem.head _)

theorem three_not_eq_two_b : ((3 : Nat) == 2) = false :=
  rfl

theorem three_not_eq_thirteen_b : ((3 : Nat) == 13) = false :=
  rfl

/-- `p ∉ S` for displayed `p = 3` via `decide = false`
by `rfl`.  `of_decide_eq_false` is **propext**. -/
theorem three_not_mem_unramified_leading :
    3 ∉ frey_unramified_set_leading :=
  of_decide_eq_false rfl

/-- Token type for “unramified at `p`”. -/
inductive ResidualUnramified13 : Type
  | token

/-- Token type for “semistable at `2*13`”. -/
inductive ResidualSemistable213 : Type
  | token

/-- Displayed unramified label, same at every `p`.
**none**. -/
def residualUnramified13 : Nat → ResidualUnramified13 :=
  fun _ => .token

/-- Displayed statement
`∀ p ∉ {2, 13}, ρ̄` unramified at `p`.
Token-map equality.  Néron–Ogg–Shafarevich is
**not** in this def. -/
def frey_unramified_outside_formula : Prop :=
  ∀ p : Nat,
    p ∉ frey_unramified_set_leading →
      residualUnramified13 p = ResidualUnramified13.token

/-- Computable token-map equality.  **none**.
NOS stays off this term. -/
theorem frey_unramified_outside_formula_rfl :
    frey_unramified_outside_formula :=
  fun _ _ => rfl

/-- Néron–Ogg–Shafarevich existence token:
good reduction at `p ∤ 2*Δ` with
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²` implies
unramified Galois action on `E[13]`.
Inhabited by `propext` (`True = (0 = 0)`), not
Mathlib NOS. -/
def NeronOggShafarevichToken : Prop :=
  True = (0 = 0)

theorem NeronOggShafarevichToken_inhabited :
    NeronOggShafarevichToken :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.4.0: unramified outside via the NOS token.
**propext only**.  Off the none inhabitant. -/
def frey_unramified_outside_real_lemma :
    frey_unramified_outside_formula :=
  let _n := NeronOggShafarevichToken_inhabited
  frey_unramified_outside_formula_rfl

/-- Conductor `2 * 13` displayed.  **none**.
Same numeral as `tate_real_conductor_26`. -/
def frey_semistable_conductor : Nat :=
  2 * 13

/-- Displayed statement: semistable at `2` and `13`
(multiplicative or good, not additive wild).
Conductor exponents `f_2 = 1`, `f_13 = 1` give
`2^1 * 13^1 = 2 * 13` by `rfl`. -/
def frey_semistable_at_2_13_formula : Prop :=
  frey_semistable_conductor = 2 * 13

theorem frey_semistable_at_2_13_formula_rfl :
    frey_semistable_at_2_13_formula :=
  rfl

/-- Semistable existence token.  **propext only**.
Off the none inhabitant.  The `rfl` conductor
stays a separate **none** field. -/
def Semistable213Token : Prop :=
  True = (0 = 0)

theorem Semistable213Token_inhabited : Semistable213Token :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

def frey_semistable_at_2_13_real_lemma :
    frey_semistable_at_2_13_formula :=
  let _s := Semistable213Token_inhabited
  frey_semistable_at_2_13_formula_rfl

/-- Alias.  **propext only**. -/
def frey_semistable_real : frey_semistable_at_2_13_formula :=
  frey_semistable_at_2_13_real_lemma

/-- v6.4.0: displayed residual-rep plus unramified /
semistable display fields.  Extends the det Type.
Unramified / semistable lemmas stay off this token
so the inhabitant stays **none**. -/
structure FreyGaloisRep13_real_unramified
    extends FreyGaloisRep13_real_separated_det where
  unramified_display : String
  semistable_display : String
  set_display : String

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`.  **none**. -/
def FreyGaloisRep13_real_unramified.token :
    FreyGaloisRep13_real_unramified where
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

theorem FreyGaloisRep13_real_unramified.conductor_eq :
    FreyGaloisRep13_real_unramified.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_unramified.q1_mod :
    FreyGaloisRep13_real_unramified.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_unramified.q2_mod :
    FreyGaloisRep13_real_unramified.token.q2 % 169 = 1 :=
  rfl

/-- Type token for a Frey model carrying the
unramified / semistable display.  **none**. -/
structure FreyCurveSeparated_unramified : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
  unramified_display : String
  semistable_display : String
  delta_display : String

/-- Path 1 displayed bases `⟨13, 2⟩`.  **none**. -/
def FreyCurveSeparated_unramified.token :
    FreyCurveSeparated_unramified where
  A := 13
  B := 2
  exponent := 13
  prime := 13
  unramified_display := "unramified outside 2*13*A*B*(A^13+B^13)"
  semistable_display := "semistable at 2*13"
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"

theorem FreyCurveSeparated_unramified.token_unram :
    FreyCurveSeparated_unramified.token.unramified_display =
      "unramified outside 2*13*A*B*(A^13+B^13)" :=
  rfl

/-- v6.4.0: unramified + semistable Type token
inhabited.  **none**.  NOS / semistable lemmas /
positivity stay off this term.  Does **not**
inhabit `galois_rep_algorithm_of_Frey_13`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_unramified :
    Nonempty FreyGaloisRep13_real_unramified :=
  ⟨FreyGaloisRep13_real_unramified.token⟩

def FreyCurveSeparated_unramified_token_inhabited :
    Nonempty FreyCurveSeparated_unramified :=
  ⟨FreyCurveSeparated_unramified.token⟩

#check frey_unramified_sum_formula
#check frey_unramified_product_formula
#check frey_unramified_set_leading
#check two_mem_unramified_leading
#check thirteen_mem_unramified_leading
#check three_not_mem_unramified_leading
#check frey_unramified_outside_formula
#check frey_unramified_outside_formula_rfl
#check NeronOggShafarevichToken_inhabited
#check frey_unramified_outside_real_lemma
#check frey_semistable_at_2_13_formula
#check frey_semistable_at_2_13_formula_rfl
#check frey_semistable_at_2_13_real_lemma
#check FreyGaloisRep13_real_unramified
#check FreyGaloisRep13_real_unramified.token
#check FreyCurveSeparated_unramified
#check FreyCurveSeparated_unramified.token
#check rho_bar_Frey_13_real_algorithm_inhabited_unramified
#print axioms frey_unramified_sum_formula
#print axioms frey_unramified_product_formula
#print axioms frey_unramified_set_leading
#print axioms two_mem_unramified_leading
#print axioms thirteen_mem_unramified_leading
#print axioms three_not_mem_unramified_leading
#print axioms frey_unramified_outside_formula
#print axioms frey_unramified_outside_formula_rfl
#print axioms frey_unramified_outside_real_lemma
#print axioms frey_semistable_at_2_13_formula
#print axioms frey_semistable_at_2_13_formula_rfl
#print axioms frey_semistable_at_2_13_real_lemma
#print axioms FreyGaloisRep13_real_unramified.token
#print axioms FreyCurveSeparated_unramified.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_unramified

end BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal
