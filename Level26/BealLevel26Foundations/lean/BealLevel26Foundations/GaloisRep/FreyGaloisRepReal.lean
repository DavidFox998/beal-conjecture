import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.GaloisRep.FreyDeltaSeparated
import BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal
import BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal
import BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real
import BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real
import BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real
import BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real
import BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal
import BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal
import BealLevel26Foundations.Real.FreyWeierstrass

namespace BealLevel26Foundations.GaloisRep.FreyGaloisRepReal

open BealLevel26Foundations.Base.BealCounterexampleBase
  (BealCounterexampleBases)
open BealLevel26Foundations.Frey.FreyCurve13
  (frey_Delta13_ne_0_of_pos FreyCurve13_of_BealCounterexampleBases)
open BealLevel26Foundations.GaloisRep.FreyDeltaSeparated
  (FreyCurveSeparated FreyGaloisRep13_real_algorithm_inhabited_separated)
open BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal
  (FreyGaloisRep13_real_separated_det FreyCurveSeparated_det
    rho_bar_Frey_13_real_algorithm_inhabited_det
    cyclotomicCharacter13 frey_det_eq_cyclotomic_formula)
open BealLevel26Foundations.GaloisRep.GaloisUnramifiedSemistableReal
  (FreyGaloisRep13_real_unramified FreyCurveSeparated_unramified
    rho_bar_Frey_13_real_algorithm_inhabited_unramified
    frey_unramified_outside_formula
    frey_semistable_at_2_13_formula)
open BealLevel26Foundations.GaloisRep.GaloisFiniteFlatAt13Real
  (FreyGaloisRep13_real_finite_flat FreyCurveSeparated_finite_flat
    rho_bar_Frey_13_real_algorithm_inhabited_finite_flat
    frey_finite_flat_at_13_formula)
open BealLevel26Foundations.GaloisRep.GaloisRibetModularityAt26Real
  (FreyGaloisRep13_real_ribet FreyCurveSeparated_ribet
    rho_bar_Frey_13_real_algorithm_inhabited_ribet
    ribet_level_26_div_13_formula
    frey_ribet_level_lowering_formula
    frey_modularity_at_26_formula)
open BealLevel26Foundations.GaloisRep.GaloisModularLiftingAt26Real
  (FreyGaloisRep13_real_modular_lifting FreyCurveSeparated_modular_lifting
    rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting
    frey_TW_primes_Q_n_real_infinite_formula
    frey_R_T_patching_witness_real_infinite_formula
    frey_modular_lifting_at_26_formula)
open BealLevel26Foundations.GaloisRep.GaloisExistsNewformLevel2Real
  (FreyGaloisRep13_real_exists_newform FreyCurveSeparated_exists_newform
    rho_bar_Frey_13_real_algorithm_inhabited_exists_newform
    ExistsNewformLevel2_real_witness
    frey_exists_newform_level_2_formula)
open BealLevel26Foundations.GaloisRep.GaloisBealForallClosedReal
  (FreyGaloisRep13_real_beal_forall_closed
    FreyCurveSeparated_beal_forall_closed
    rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed
    BealForall_real_witness
    frey_beal_forall_closed_formula)
open BealLevel26Foundations.GaloisRep.GaloisBealForallNoneReal
  (FreyGaloisRep13_real_beal_forall_none
    FreyCurveSeparated_beal_forall_none
    rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none
    BealForall_real_witness_none
    frey_beal_forall_none_formula)
open BealLevel26Foundations.Real.FreyWeierstrass

/-!
# v6.0.0 real algorithm — G_ℚ → GL₂(𝔽₁₃)

First step from the displayed residual-rep token to a
*structure* with explicit fields: Δ formula, conductor
`2 * 13`, determinant / unramified / semistable /
irreducible / finite-flat labels.

Mathlib 4.12 has `WeierstrassCurve` coefficients and Δ,
and no `Gal(ℚ̄/ℚ)` / `GL₂(𝔽₁₃)` API.  The Galois and
GL₂ fields below are token Types, not Mathlib
homomorphisms.  This is **not** a verified residual
representation.  The old displayed
`rho_bar_Frey_13_inhabited` stays in
`Chain.TaylorWilesScaffold`.  The empty
`galois_rep_algorithm_of_Frey_13` stays uninhabited.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, or `BealForall` (cycle).
No new computational assumption.  No `False.elim`.
-/

/-- Working-prime Frey model
`Y² = X (X − A¹³) (X + B¹³)`. -/
def FreyCurve (A B : Int) : WeierstrassCurve Int :=
  freyCurve A B 13 13

theorem FreyCurve_Delta (A B : Int) :
    (FreyCurve A B).Δ =
      16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2 :=
  freyCurve_discriminant A B 13 13

/-- Re-export of the existing positivity lemma.
Same axioms as `frey_Delta13_ne_0_of_pos`
(propext + `Classical.choice` + `Quot.sound`).
Not used by the **none** inhabitant below. -/
theorem frey_Delta13_ne_0_of_pos_real
    (w : BealCounterexampleBases)
    (hA : 0 < w.A) (hB : 0 < w.B) :
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 :=
  frey_Delta13_ne_0_of_pos w hA hB

/-- Token type for `Gal(ℚ̄/ℚ)`.  Mathlib 4.12 has no
absolute Galois group API here. -/
inductive GaloisGroupQ : Type
  | token

/-- Token type for `GL₂(𝔽₁₃)`.  Mathlib 4.12 has no
`GL₂` over `𝔽₁₃` API here. -/
inductive GL2F13 : Type
  | token

/-- Token type for the residual map `ρ̄`. -/
inductive ResidualRep13 : Type
  | token

/-- Token type for the cyclotomic character `χ₁₃`. -/
inductive CyclotomicChi13 : Type
  | token

/-- Label: unramified outside `2 * 13 * A * B * (A¹³ + B¹³)`. -/
inductive UnramifiedOutsideLabel : Type
  | token

/-- Label: semistable at `2` and `13`. -/
inductive SemistableAt213Label : Type
  | token

/-- Label: `ρ̄` irreducible. -/
inductive IrreducibleLabel : Type
  | token

/-- Label: finite flat at `13`. -/
inductive FiniteFlatAt13Label : Type
  | token

/-- Real algorithm *structure* for Frey residual Galois
representation at 13.  A Type with explicit Δ and
conductor fields, not a Prop token.  Bases are Nat
fields (not the Prop `Is13Case`). -/
structure FreyGaloisRep13 : Type where
  A : Nat
  B : Nat
  exponent : Nat
  delta_leading : Nat
  conductor : Nat
  delta_display : String
  GQ : GaloisGroupQ
  GL2 : GL2F13
  rho_bar : ResidualRep13
  determinant : CyclotomicChi13
  unramified_outside_2_13_A_B_sum : UnramifiedOutsideLabel
  semistable_at_2_13 : SemistableAt213Label
  irreducible : IrreducibleLabel
  finite_flat_at_13 : FiniteFlatAt13Label

/-- Closed token on the Path 1 bases `⟨13, 2⟩`.
Δ formula is the displayed string
`16*(A^13)^2*(B^13)^2*(A^13+B^13)^2` with leading
coefficient `16` and exponent `13`.  Conductor is
`2 * 13`.  Galois / GL₂ fields are tokens.  **none**.
`Nat.pow` of the formula is `frey_Delta13_formula`,
kept off this token so the inhabitant stays **none**.
v6.2.0: the Int formula and `A > 0`, `B > 0`,
`A¹³+B¹³ ≠ 0` positivity live in
`FreyDeltaSeparated` and are not unfolded here.
v6.3.0: `det ρ̄ = χ₁₃` / Weil pairing live in
`GaloisDetCyclotomicReal` and are not unfolded here.
v6.4.0: unramified-outside / semistable-at-`2*13`
live in `GaloisUnramifiedSemistableReal` and are
not unfolded here.
v6.5.0: finite-flat-at-13 / `v₁₃(Δ) % 13 = 0`
live in `GaloisFiniteFlatAt13Real` and are
not unfolded here.
v6.6.0: Ribet `26 → 2` / modularity at 26
via `X₀(26)` live in
`GaloisRibetModularityAt26Real` and are
not unfolded here.
v6.7.0: modular lifting at 26 via `R = T`
/ TW infinite live in
`GaloisModularLiftingAt26Real` and are
not unfolded here.
v6.8.0: displayed ExistsNewformLevel2
real witness lives in
`GaloisExistsNewformLevel2Real` and is
not unfolded here.  Original
`ExistsNewformLevel2` (`0 ≠ 0`) stays
uninhabited.
v6.9.0: displayed Beal `∀` closed
real witness lives in
`GaloisBealForallClosedReal` and is
not unfolded here.  Original Beal `∀`
/ original Path 2 stay uninhabited.
v7.0.0: displayed Beal `∀` none
real witness lives in
`GaloisBealForallNoneReal` and is
not unfolded here.  The none lemma
pushes `propext` out of the closed
witness.  Original Beal `∀` /
original Path 2 stay uninhabited. -/
def FreyGaloisRep13.token : FreyGaloisRep13 where
  A := 13
  B := 2
  exponent := 13
  delta_leading := 16
  conductor := 2 * 13
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"
  GQ := .token
  GL2 := .token
  rho_bar := .token
  determinant := .token
  unramified_outside_2_13_A_B_sum := .token
  semistable_at_2_13 := .token
  irreducible := .token
  finite_flat_at_13 := .token

/-- Displayed Δ formula on Nat bases.  `Nat.pow` lives
here, not on the **none** token. -/
def frey_Delta13_formula (A B : Nat) : Nat :=
  16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2

theorem FreyGaloisRep13.conductor_eq :
    FreyGaloisRep13.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13.bases_eq :
    FreyGaloisRep13.token.A = 13 ∧ FreyGaloisRep13.token.B = 2 :=
  ⟨rfl, rfl⟩

theorem FreyGaloisRep13.delta_display_eq :
    FreyGaloisRep13.token.delta_display =
      "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2" :=
  rfl

theorem FreyGaloisRep13.delta_leading_eq :
    FreyGaloisRep13.token.delta_leading = 16 :=
  rfl

theorem FreyGaloisRep13.exponent_eq :
    FreyGaloisRep13.token.exponent = 13 :=
  rfl

/-- v6.0.0: real `G_ℚ → GL₂(𝔽₁₃)` algorithm structure
inhabited.  **none**.  Not Mathlib Galois theory.
Does **not** inhabit `galois_rep_algorithm_of_Frey_13`. -/
def rho_bar_Frey_13_real_algorithm_inhabited :
    Nonempty FreyGaloisRep13 :=
  ⟨FreyGaloisRep13.token⟩

/-- v6.2.0 alias: same **none** token.  Separated Δ
formula / positivity stay off this term. -/
def rho_bar_Frey_13_real_algorithm_inhabited_separated :
    Nonempty FreyGaloisRep13 :=
  rho_bar_Frey_13_real_algorithm_inhabited

/-- v6.3.0 alias of the det token.  Same **none**
as `GaloisDetCyclotomicReal.rho_bar_Frey_13_real_algorithm_inhabited_det`.
Weil pairing / `det = χ₁₃` lemma stay off this
Galois inhabitant. -/
def rho_bar_Frey_13_real_algorithm_inhabited_det_alias :
    Nonempty FreyGaloisRep13_real_separated_det :=
  rho_bar_Frey_13_real_algorithm_inhabited_det

/-- v6.4.0 alias of the unramified token.  Same
**none** as
`GaloisUnramifiedSemistableReal.rho_bar_Frey_13_real_algorithm_inhabited_unramified`.
NOS / semistable lemmas stay off this inhabitant. -/
def rho_bar_Frey_13_real_algorithm_inhabited_unramified_alias :
    Nonempty FreyGaloisRep13_real_unramified :=
  rho_bar_Frey_13_real_algorithm_inhabited_unramified

/-- v6.5.0 alias of the finite-flat token.  Same
**none** as
`GaloisFiniteFlatAt13Real.rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`.
Fontaine / Tate-uniformization lemmas stay off
this inhabitant. -/
def rho_bar_Frey_13_real_algorithm_inhabited_finite_flat_alias :
    Nonempty FreyGaloisRep13_real_finite_flat :=
  rho_bar_Frey_13_real_algorithm_inhabited_finite_flat

/-- v6.6.0 alias of the Ribet token.  Same
**none** as
`GaloisRibetModularityAt26Real.rho_bar_Frey_13_real_algorithm_inhabited_ribet`.
Ribet / modularity lemmas stay off this
inhabitant. -/
def rho_bar_Frey_13_real_algorithm_inhabited_ribet_alias :
    Nonempty FreyGaloisRep13_real_ribet :=
  rho_bar_Frey_13_real_algorithm_inhabited_ribet

/-- v6.7.0 alias of the modular-lifting token.
Same **none** as
`GaloisModularLiftingAt26Real.rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting`.
Taylor–Wiles / `R = T` lemmas stay off this
inhabitant. -/
def rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting_alias :
    Nonempty FreyGaloisRep13_real_modular_lifting :=
  rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting

/-- v6.8.0 alias of the displayed level-2
newform token.  Same **none** as
`GaloisExistsNewformLevel2Real.rho_bar_Frey_13_real_algorithm_inhabited_exists_newform`.
Does **not** inhabit original
`ExistsNewformLevel2` (`0 ≠ 0`). -/
def rho_bar_Frey_13_real_algorithm_inhabited_exists_newform_alias :
    Nonempty FreyGaloisRep13_real_exists_newform :=
  rho_bar_Frey_13_real_algorithm_inhabited_exists_newform

/-- v6.9.0 alias of the displayed Beal
`∀` closed token.  Same **none** as
`GaloisBealForallClosedReal.rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`.
Does **not** inhabit original Beal `∀`
or original Path 2. -/
def rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed_alias :
    Nonempty FreyGaloisRep13_real_beal_forall_closed :=
  rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed

/-- v7.0.0 alias of the displayed Beal
`∀` none token.  Same **none** as
`GaloisBealForallNoneReal.rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`.
Pushes `propext` out of the closed
witness.  Does **not** inhabit original
Beal `∀` or original Path 2. -/
def rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none_alias :
    Nonempty FreyGaloisRep13_real_beal_forall_none :=
  rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none

#check FreyCurve
#check FreyCurve_Delta
#check FreyGaloisRep13
#check FreyGaloisRep13.token
#check FreyGaloisRep13.conductor_eq
#check rho_bar_Frey_13_real_algorithm_inhabited
#check rho_bar_Frey_13_real_algorithm_inhabited_separated
#check rho_bar_Frey_13_real_algorithm_inhabited_det
#check rho_bar_Frey_13_real_algorithm_inhabited_det_alias
#check rho_bar_Frey_13_real_algorithm_inhabited_unramified
#check rho_bar_Frey_13_real_algorithm_inhabited_unramified_alias
#check rho_bar_Frey_13_real_algorithm_inhabited_finite_flat
#check rho_bar_Frey_13_real_algorithm_inhabited_finite_flat_alias
#check rho_bar_Frey_13_real_algorithm_inhabited_ribet
#check rho_bar_Frey_13_real_algorithm_inhabited_ribet_alias
#check rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting
#check rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting_alias
#check rho_bar_Frey_13_real_algorithm_inhabited_exists_newform
#check rho_bar_Frey_13_real_algorithm_inhabited_exists_newform_alias
#check rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed
#check rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed_alias
#check BealForall_real_witness
#check frey_beal_forall_closed_formula
#check FreyGaloisRep13_real_beal_forall_closed
#check FreyCurveSeparated_beal_forall_closed
#check rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none
#check rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none_alias
#check BealForall_real_witness_none
#check frey_beal_forall_none_formula
#check FreyGaloisRep13_real_beal_forall_none
#check FreyCurveSeparated_beal_forall_none
#check ExistsNewformLevel2_real_witness
#check frey_exists_newform_level_2_formula
#check FreyGaloisRep13_real_exists_newform
#check FreyCurveSeparated_exists_newform
#check frey_TW_primes_Q_n_real_infinite_formula
#check frey_R_T_patching_witness_real_infinite_formula
#check frey_modular_lifting_at_26_formula
#check FreyGaloisRep13_real_modular_lifting
#check FreyCurveSeparated_modular_lifting
#check ribet_level_26_div_13_formula
#check frey_ribet_level_lowering_formula
#check frey_modularity_at_26_formula
#check FreyGaloisRep13_real_ribet
#check FreyCurveSeparated_ribet
#check frey_finite_flat_at_13_formula
#check FreyGaloisRep13_real_finite_flat
#check FreyCurveSeparated_finite_flat
#check frey_unramified_outside_formula
#check frey_semistable_at_2_13_formula
#check FreyGaloisRep13_real_unramified
#check FreyCurveSeparated_unramified
#check cyclotomicCharacter13
#check frey_det_eq_cyclotomic_formula
#check FreyGaloisRep13_real_separated_det
#check FreyCurveSeparated_det
#check frey_Delta13_ne_0_of_pos_real
#check FreyGaloisRep13_real_algorithm_inhabited_separated
#check FreyCurveSeparated
#print axioms FreyGaloisRep13.conductor_eq
#print axioms FreyGaloisRep13.delta_display_eq
#print axioms FreyGaloisRep13.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_separated
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_det
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_det_alias
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_unramified
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_unramified_alias
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_finite_flat
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_finite_flat_alias
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_ribet
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_ribet_alias
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting_alias
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_exists_newform
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_exists_newform_alias
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed_alias
#print axioms BealForall_real_witness
#print axioms frey_beal_forall_closed_formula
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none_alias
#print axioms BealForall_real_witness_none
#print axioms frey_beal_forall_none_formula
#print axioms ExistsNewformLevel2_real_witness
#print axioms frey_exists_newform_level_2_formula

end BealLevel26Foundations.GaloisRep.FreyGaloisRepReal
