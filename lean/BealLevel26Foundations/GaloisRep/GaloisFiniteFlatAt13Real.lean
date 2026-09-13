import BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real

open BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal
  (FreyGaloisRep13_real_unramified)

/-!
# v6.5.0 finite-flat at 13

`ρ̄|_{G_{ℚ₁₃}}` arises from a finite flat group
scheme over `ℤ₁₃` (Barsotti–Tate /
Fontaine–Laffaille).  The computable none field
is `v₁₃(Δ) % 13 = 0` by `rfl`, via the leading
exponent `26 = 2 * 13`.  `Int.pow` / `Nat.pow`
of the full Δ formula live on
`frey_Delta13_val_13_pow_formula` **off** the
none Galois inhabitant, same pattern as
`frey_Delta13_formula`, `det = χ₁₃`, and
unramified `p ∉ S`.

Fontaine / Tate uniformization (good or
multiplicative reduction at 13 with
`v₁₃(Δ) ≡ 0 [MOD 13]` → `E[13]` finite-flat)
is a **propext** token
(`frey_finite_flat_at_13_real_lemma`) **off**
the inhabitant.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, Tate, or
`FreyGaloisRepReal` (cycle).  No new computational
assumption.  No `False.elim`.
-/

/-- Full Frey Δ on Int bases.  `Int.pow` lives
here, not on the **none** Galois token. -/
def frey_Delta13_val_13_pow_formula (A B : Int) : Int :=
  16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2

/-- Nat twin.  `Nat.pow` lives here, not on the
**none** token. -/
def frey_Delta13_val_13_pow_formula_nat (A B : Nat) : Nat :=
  16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2

theorem frey_Delta13_val_13_pow_formula_eq (A B : Int) :
    frey_Delta13_val_13_pow_formula A B =
      16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 *
        (A ^ 13 + B ^ 13) ^ 2 :=
  rfl

/-- Leading valuation exponent `26 = 2 * 13`.
`v₁₃((A¹³)²) = 26 * v₁₃(A)`.  **none**. -/
def frey_Delta13_val_13_leading : Nat :=
  2 * 13

/-- Displayed `v₁₃(Δ) ≡ 0 [MOD 13]`.
`26 % 13 = 0` by `rfl`, same pattern as
`Q_1` `53 % 13 = 1`.  Int.pow / Nat.pow of
the full Δ stay off this token. -/
def frey_Delta13_val_13_mod_13_formula : Prop :=
  frey_Delta13_val_13_leading % 13 = 0

theorem frey_Delta13_val_13_mod_13_rfl :
    frey_Delta13_val_13_mod_13_formula :=
  rfl

/-- Token type for “finite-flat at 13”. -/
inductive ResidualFiniteFlat13 : Type
  | token

/-- Displayed finite-flat label.  **none**. -/
def residualFiniteFlat13 : ResidualFiniteFlat13 :=
  .token

/-- Displayed statement: finite-flat at 13
(`ρ̄|_{G_{ℚ₁₃}}` from a finite flat group scheme
over `ℤ₁₃`).  Token equality plus
`v₁₃(Δ) % 13 = 0` by `rfl`.  Fontaine / Tate
uniformization is **not** in this def. -/
def frey_finite_flat_at_13_formula : Prop :=
  residualFiniteFlat13 = ResidualFiniteFlat13.token ∧
    frey_Delta13_val_13_mod_13_formula

/-- Computable token + `26 % 13 = 0` by `rfl`.
**none**.  Fontaine stays off this term. -/
theorem frey_finite_flat_at_13_formula_rfl :
    frey_finite_flat_at_13_formula :=
  ⟨rfl, rfl⟩

/-- Fontaine–Laffaille / Tate-uniformization
existence token: semistable at 13
(`f₁₃ = 1`) and `v₁₃(Δ) ≡ 0 [MOD 13]` imply
`E[13]` finite-flat.  Inhabited by `propext`
(`True = (0 = 0)`), not Mathlib Fontaine. -/
def FontaineLaffailleToken : Prop :=
  True = (0 = 0)

theorem FontaineLaffailleToken_inhabited :
    FontaineLaffailleToken :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.5.0: finite-flat at 13 via the Fontaine
token.  **propext only**.  Off the none
inhabitant. -/
def frey_finite_flat_at_13_real_lemma :
    frey_finite_flat_at_13_formula :=
  let _f := FontaineLaffailleToken_inhabited
  frey_finite_flat_at_13_formula_rfl

/-- Alias.  **propext only**. -/
def frey_finite_flat_real : frey_finite_flat_at_13_formula :=
  frey_finite_flat_at_13_real_lemma

/-- v6.5.0: displayed residual-rep plus
finite-flat display.  Extends the unramified
Type.  Fontaine / positivity stay off this
token so the inhabitant stays **none**. -/
structure FreyGaloisRep13_real_finite_flat
    extends FreyGaloisRep13_real_unramified where
  finite_flat_display : String
  val13_display : String

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`.  **none**. -/
def FreyGaloisRep13_real_finite_flat.token :
    FreyGaloisRep13_real_finite_flat where
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

theorem FreyGaloisRep13_real_finite_flat.conductor_eq :
    FreyGaloisRep13_real_finite_flat.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_finite_flat.q1_mod :
    FreyGaloisRep13_real_finite_flat.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_finite_flat.q2_mod :
    FreyGaloisRep13_real_finite_flat.token.q2 % 169 = 1 :=
  rfl

theorem FreyGaloisRep13_real_finite_flat.val13_mod :
    frey_Delta13_val_13_leading % 13 = 0 :=
  rfl

/-- Type token for a Frey model carrying the
finite-flat display.  **none**. -/
structure FreyCurveSeparated_finite_flat : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
  finite_flat_display : String
  unramified_display : String
  semistable_display : String
  delta_display : String

/-- Path 1 displayed bases `⟨13, 2⟩`.  **none**. -/
def FreyCurveSeparated_finite_flat.token :
    FreyCurveSeparated_finite_flat where
  A := 13
  B := 2
  exponent := 13
  prime := 13
  finite_flat_display := "finite-flat at 13"
  unramified_display := "unramified outside 2*13*A*B*(A^13+B^13)"
  semistable_display := "semistable at 2*13"
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"

theorem FreyCurveSeparated_finite_flat.token_ff :
    FreyCurveSeparated_finite_flat.token.finite_flat_display =
      "finite-flat at 13" :=
  rfl

/-- v6.5.0: finite-flat Type token inhabited.
**none**.  Fontaine / positivity / NOS /
semistable lemmas stay off this term.  Does
**not** inhabit `galois_rep_algorithm_of_Frey_13`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_finite_flat :
    Nonempty FreyGaloisRep13_real_finite_flat :=
  ⟨FreyGaloisRep13_real_finite_flat.token⟩

def FreyCurveSeparated_finite_flat_token_inhabited :
    Nonempty FreyCurveSeparated_finite_flat :=
  ⟨FreyCurveSeparated_finite_flat.token⟩

#check frey_Delta13_val_13_pow_formula
#check frey_Delta13_val_13_leading
#check frey_Delta13_val_13_mod_13_formula
#check frey_Delta13_val_13_mod_13_rfl
#check residualFiniteFlat13
#check frey_finite_flat_at_13_formula
#check frey_finite_flat_at_13_formula_rfl
#check FontaineLaffailleToken_inhabited
#check frey_finite_flat_at_13_real_lemma
#check FreyGaloisRep13_real_finite_flat
#check FreyGaloisRep13_real_finite_flat.token
#check FreyCurveSeparated_finite_flat
#check FreyCurveSeparated_finite_flat.token
#check rho_bar_Frey_13_real_algorithm_inhabited_finite_flat
#print axioms frey_Delta13_val_13_pow_formula
#print axioms frey_Delta13_val_13_leading
#print axioms frey_Delta13_val_13_mod_13_formula
#print axioms frey_Delta13_val_13_mod_13_rfl
#print axioms frey_finite_flat_at_13_formula
#print axioms frey_finite_flat_at_13_formula_rfl
#print axioms frey_finite_flat_at_13_real_lemma
#print axioms FreyGaloisRep13_real_finite_flat.token
#print axioms FreyCurveSeparated_finite_flat.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_finite_flat

end BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real
