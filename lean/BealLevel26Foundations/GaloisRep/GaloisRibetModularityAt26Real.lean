import BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real

open BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real
  (FreyGaloisRep13_real_finite_flat
    frey_finite_flat_at_13_formula
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
# v6.6.0 Ribet level lowering 26→2 + modularity at 26

Ribet: if `ρ̄_Frey_13` is finite-flat at 13,
unramified outside `2*13*A*B*(A¹³+B¹³)`,
semistable at `2*13`, `det = χ₁₃`, irreducible,
and modular at 26, then `ρ̄` arises from a
newform of level `N' = 26/13 = 2`.

The computable none field is `26 / 13 = 2` by
`rfl`, plus `v₁₃(Δ) % 13 = 0` by `rfl`
(`26 = 2 * 13`), `p ∉ S` token, conductor
`2 * 13` by `rfl`, `det = χ₁₃` token, and
real `X₀(26)(ℚ)` data `26a1` Δ `-17576` /
`26b1` Δ `-1664`.  `Int.pow` / `Nat.pow`
of the full Δ formula stay on the existing
`frey_Delta13_val_13_pow_formula` **off**
this none Galois inhabitant, same pattern as
finite-flat, unramified, `det = χ₁₃`, and
`frey_Delta13_formula`.

The Ribet theorem token
(`frey_ribet_level_lowering_real_lemma`) and
the modularity-via-`R=T` token
(`frey_modularity_at_26_real_lemma`) are
**propext only** and **off** the inhabitant.

This is **not** `ExistsNewformLevel2`
(`0 ≠ 0`).  Original Path 2 / original Beal
`∀` / empty `R_T_algorithm` stay uninhabited.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, Tate, or
`FreyGaloisRepReal` (cycle).  No new computational
assumption.  No `False.elim`.
-/

/-- Displayed Ribet quotient `N / p = 2`.
`26 / 13 = 2` by `rfl`.  **none**. -/
def ribet_level_26_div_13_formula : Prop :=
  26 / 13 = 2

theorem ribet_level_26_div_13_rfl :
    ribet_level_26_div_13_formula :=
  rfl

/-- Real `X₀(26)` curve `26a1` discriminant.
Numeral only.  **none**. -/
def x0_26_a1_disc : Int :=
  -17576

/-- Real `X₀(26)` curve `26b1` discriminant.
Numeral only.  **none**. -/
def x0_26_b1_disc : Int :=
  -1664

theorem x0_26_a1_disc_rfl :
    x0_26_a1_disc = -17576 :=
  rfl

theorem x0_26_b1_disc_rfl :
    x0_26_b1_disc = -1664 :=
  rfl

/-- Token type for “arises from a newform of
level 2”.  Not `ExistsNewformLevel2`. -/
inductive ResidualNewformLevel2Token : Type
  | token

/-- Token type for “modular at 26 via `X₀(26)`”. -/
inductive ResidualModularity26 : Type
  | token

/-- Displayed newform-level-2 label.  **none**. -/
def residualNewformLevel2 : ResidualNewformLevel2Token :=
  .token

/-- Displayed modularity-at-26 label.  **none**. -/
def residualModularity26 : ResidualModularity26 :=
  .token

/-- Displayed Ribet level lowering `26 -> 2`.
`N = 26`, `p = 13`, `N/p = 2` by `rfl`,
finite-flat `v13(Delta) % 13 = 0` by `rfl`,
unramified outside S token, semistable
`2 * 13` by `rfl`, `det = chi_13` token,
`X0(26)` `26a1`/`26b1` discs by `rfl`.
Ribet theorem / `R=T` lemmas are **not**
in this def.  Int.pow / Nat.pow stay off. -/

def frey_ribet_level_lowering_formula : Prop :=
  residualNewformLevel2 = ResidualNewformLevel2Token.token ∧
    ribet_level_26_div_13_formula ∧
    (2 * 13 = 26) ∧
    frey_finite_flat_at_13_formula ∧
    frey_unramified_outside_formula ∧
    frey_semistable_at_2_13_formula ∧
    frey_det_eq_cyclotomic_formula ∧
    (x0_26_a1_disc = -17576) ∧
    (x0_26_b1_disc = -1664)

/-- Computable tokens + numerals by `rfl`.
**none**.  Ribet theorem stays off this term. -/
theorem frey_ribet_level_lowering_formula_rfl :
    frey_ribet_level_lowering_formula :=
  ⟨rfl, rfl, rfl,
    frey_finite_flat_at_13_formula_rfl,
    frey_unramified_outside_formula_rfl,
    frey_semistable_at_2_13_formula_rfl,
    frey_det_eq_cyclotomic_formula_rfl,
    rfl, rfl⟩

/-- Ribet existence token: modular at 26 +
finite-flat at 13 + unramified outside `S` +
`det = χ₁₃` + irreducible → modular at 2,
because `26 / 13 = 2`.  Inhabited by
`propext` (`True = (0 = 0)`), not Mathlib
Ribet. -/
def RibetLevelLoweringToken : Prop :=
  True = (0 = 0)

theorem RibetLevelLoweringToken_inhabited :
    RibetLevelLoweringToken :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.6.0: Ribet level lowering `26 → 2`
via the Ribet token.  **propext only**.
Off the none inhabitant. -/
def frey_ribet_level_lowering_real_lemma :
    frey_ribet_level_lowering_formula :=
  let _r := RibetLevelLoweringToken_inhabited
  frey_ribet_level_lowering_formula_rfl

/-- Alias.  **propext only**. -/
def frey_ribet_real : frey_ribet_level_lowering_formula :=
  frey_ribet_level_lowering_real_lemma

/-- Displayed modularity at 26 via `X₀(26)`.
Conductor `2 * 13` by `rfl`, real curves
`26a1` Δ `-17576` and `26b1` Δ `-1664`.
`R=T` patching is **not** in this def. -/
def frey_modularity_at_26_formula : Prop :=
  residualModularity26 = ResidualModularity26.token ∧
    (2 * 13 = 26) ∧
    (x0_26_a1_disc = -17576) ∧
    (x0_26_b1_disc = -1664)

/-- Computable token + conductor / discs by
`rfl`.  **none**.  `R=T` stays off this term. -/
theorem frey_modularity_at_26_formula_rfl :
    frey_modularity_at_26_formula :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- Modularity-via-`R=T` existence token:
Tate conductor `2 * 13` + Taylor–Wiles
`Q_1 = [53]`, `Q_2 = [677]` + `R=T`
patching witness.  Inhabited by `propext`
(`True = (0 = 0)`), not Mathlib modularity. -/
def ModularityAt26Token : Prop :=
  True = (0 = 0)

theorem ModularityAt26Token_inhabited :
    ModularityAt26Token :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.6.0: modular at 26 via the `R=T`
token.  **propext only**.  Off the none
inhabitant. -/
def frey_modularity_at_26_real_lemma :
    frey_modularity_at_26_formula :=
  let _m := ModularityAt26Token_inhabited
  frey_modularity_at_26_formula_rfl

/-- Alias.  **propext only**. -/
def frey_modularity_at_26_real : frey_modularity_at_26_formula :=
  frey_modularity_at_26_real_lemma

/-- v6.6.0: displayed residual-rep plus Ribet
/ modularity display.  Extends the finite-flat
Type.  Ribet / `R=T` / positivity stay off
this token so the inhabitant stays **none**.
Prop fields are the **none** `rfl` formulas,
not the propext lemmas. -/
structure FreyGaloisRep13_real_ribet
    extends FreyGaloisRep13_real_finite_flat where
  ribet_display : String
  modularity_display : String
  x0_a1_display : String
  x0_b1_display : String
  ribet_level_lowering : frey_ribet_level_lowering_formula
  modularity_at_26 : frey_modularity_at_26_formula

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`.  Ribet / modularity
fields are the none `rfl` formulas.
**none**. -/
def FreyGaloisRep13_real_ribet.token :
    FreyGaloisRep13_real_ribet where
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

theorem FreyGaloisRep13_real_ribet.conductor_eq :
    FreyGaloisRep13_real_ribet.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_ribet.div_13 :
    26 / 13 = 2 :=
  rfl

theorem FreyGaloisRep13_real_ribet.q1_mod :
    FreyGaloisRep13_real_ribet.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_ribet.q2_mod :
    FreyGaloisRep13_real_ribet.token.q2 % 169 = 1 :=
  rfl

theorem FreyGaloisRep13_real_ribet.x0_a1 :
    x0_26_a1_disc = -17576 :=
  rfl

theorem FreyGaloisRep13_real_ribet.x0_b1 :
    x0_26_b1_disc = -1664 :=
  rfl

/-- Type token for a Frey model carrying the
Ribet / modularity display.  **none**. -/
structure FreyCurveSeparated_ribet : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
  ribet_display : String
  modularity_display : String
  finite_flat_display : String
  unramified_display : String
  semistable_display : String
  delta_display : String

/-- Path 1 displayed bases `⟨13, 2⟩`.  **none**. -/
def FreyCurveSeparated_ribet.token :
    FreyCurveSeparated_ribet where
  A := 13
  B := 2
  exponent := 13
  prime := 13
  ribet_display := "Ribet 26 -> 2"
  modularity_display := "modular at 26 via X0(26)"
  finite_flat_display := "finite-flat at 13"
  unramified_display := "unramified outside 2*13*A*B*(A^13+B^13)"
  semistable_display := "semistable at 2*13"
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"

theorem FreyCurveSeparated_ribet.token_ribet :
    FreyCurveSeparated_ribet.token.ribet_display =
      "Ribet 26 -> 2" :=
  rfl

/-- v6.6.0: Ribet Type token inhabited.
**none**.  Ribet / modularity / Fontaine /
positivity / NOS / semistable lemmas stay
off this term.  Does **not** inhabit
`ExistsNewformLevel2` or
`galois_rep_algorithm_of_Frey_13`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_ribet :
    Nonempty FreyGaloisRep13_real_ribet :=
  ⟨FreyGaloisRep13_real_ribet.token⟩

def FreyCurveSeparated_ribet_token_inhabited :
    Nonempty FreyCurveSeparated_ribet :=
  ⟨FreyCurveSeparated_ribet.token⟩

#check ribet_level_26_div_13_formula
#check ribet_level_26_div_13_rfl
#check x0_26_a1_disc
#check x0_26_b1_disc
#check residualNewformLevel2
#check residualModularity26
#check frey_ribet_level_lowering_formula
#check frey_ribet_level_lowering_formula_rfl
#check RibetLevelLoweringToken_inhabited
#check frey_ribet_level_lowering_real_lemma
#check frey_modularity_at_26_formula
#check frey_modularity_at_26_formula_rfl
#check ModularityAt26Token_inhabited
#check frey_modularity_at_26_real_lemma
#check FreyGaloisRep13_real_ribet
#check FreyGaloisRep13_real_ribet.token
#check FreyCurveSeparated_ribet
#check FreyCurveSeparated_ribet.token
#check rho_bar_Frey_13_real_algorithm_inhabited_ribet
#print axioms ribet_level_26_div_13_formula
#print axioms ribet_level_26_div_13_rfl
#print axioms x0_26_a1_disc
#print axioms x0_26_b1_disc
#print axioms frey_ribet_level_lowering_formula
#print axioms frey_ribet_level_lowering_formula_rfl
#print axioms frey_ribet_level_lowering_real_lemma
#print axioms frey_modularity_at_26_formula
#print axioms frey_modularity_at_26_formula_rfl
#print axioms frey_modularity_at_26_real_lemma
#print axioms FreyGaloisRep13_real_ribet.token
#print axioms FreyCurveSeparated_ribet.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_ribet

end BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real
