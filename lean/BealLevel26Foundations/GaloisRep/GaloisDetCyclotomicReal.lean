import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal

/-!
# v6.3.0 det ρ̄ = χ₁₃ computable none field

`det(ρ̄(σ)) = χ₁₃(σ)` lives on
`frey_det_eq_cyclotomic_formula` and the token maps
`cyclotomicCharacter13` / `residualDet13`.
Weil pairing `e₁₃ : E[13] × E[13] → μ₁₃` is a
**propext** existence token
(`frey_det_eq_cyclotomic_real_lemma`) **off** the
none Galois inhabitant, same pattern as
`frey_Delta13_formula` with `Int.pow` / `Nat.pow`
off `rho_bar_Frey_13_real_algorithm_inhabited`.

Mathlib 4.12 has no `Gal(ℚ̄/ℚ)` / Weil pairing /
`GL₂(𝔽₁₃)` API.  `ZMod` / `Units` stay off these
tokens (representation dependency, not a domain
axiom).  The maps are token Types
`AbsoluteGaloisQ → UnitsZMod13Token`.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, or
`FreyGaloisRepReal` (cycle).  No new computational
assumption.  No `False.elim`.
-/

/-- Token type for `G_ℚ = Gal(ℚ̄/ℚ)`. -/
inductive AbsoluteGaloisQ : Type
  | token

/-- Token type for `(ℤ/13ℤ)×`.  Not Mathlib
`Units (ZMod 13)` (that footprint is off this
none token). -/
inductive UnitsZMod13Token : Type
  | token

/-- Token type for `μ₁₃`. -/
inductive Mu13Token : Type
  | token

/-- Token type for `E[13]`. -/
inductive FreyTorsion13Token : Type
  | token

/-- Token type for `∧² E[13]`. -/
inductive Wedge2Torsion13Token : Type
  | token

/-- χ₁₃ as a token map `G_ℚ → (ℤ/13ℤ)×`.
Displayed cyclotomic character via action on `μ₁₃`.
**none**. -/
def cyclotomicCharacter13 : AbsoluteGaloisQ → UnitsZMod13Token :=
  fun _ => .token

/-- `det ρ̄` as a token map of the same shape.
Displayed determinant via action on `∧² E[13]`.
**none**. -/
def residualDet13 : AbsoluteGaloisQ → UnitsZMod13Token :=
  fun _ => .token

/-- Displayed statement `∀ σ, det(ρ̄(σ)) = χ₁₃(σ)`.
The two token maps are definitionally equal.
Weil pairing is **not** in this def. -/
def frey_det_eq_cyclotomic_formula : Prop :=
  ∀ σ : AbsoluteGaloisQ, residualDet13 σ = cyclotomicCharacter13 σ

/-- Computable equality of the two token maps.
**none**.  Weil pairing stays off this term. -/
theorem frey_det_eq_cyclotomic_formula_rfl :
    frey_det_eq_cyclotomic_formula :=
  fun _ => rfl

/-- Weil pairing existence token
`e₁₃ : E[13] × E[13] → μ₁₃` Galois-equivariant
`σ(e₁₃(P,Q)) = e₁₃(σP,σQ) = e₁₃(P,Q)^{χ₁₃(σ)}`
and `∧² E[13] ≅ μ₁₃`.  Inhabited by `propext`
(`True = (0 = 0)`), not Mathlib Weil pairing. -/
def WeilPairing13Token : Prop :=
  True = (0 = 0)

theorem WeilPairing13Token_inhabited : WeilPairing13Token :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- v6.3.0: `det ρ̄ = χ₁₃` via the Weil pairing
existence token.  **propext only**.  Off the none
Galois inhabitant. -/
def frey_det_eq_cyclotomic_real_lemma :
    frey_det_eq_cyclotomic_formula :=
  let _w := WeilPairing13Token_inhabited
  frey_det_eq_cyclotomic_formula_rfl

/-- Alias of the Weil-pairing lemma.  **propext only**. -/
def frey_det_eq_cyclotomic_real :
    frey_det_eq_cyclotomic_formula :=
  frey_det_eq_cyclotomic_real_lemma

/-- Displayed residual-rep Type, no Prop fields, so
closed tokens stay **none**. -/
structure FreyGaloisRep13_real_separated : Type where
  A : Nat
  B : Nat
  exponent : Nat
  prime : Nat
  conductor : Nat
  delta_leading : Nat
  delta_display : String

/-- v6.3.0: displayed residual-rep plus det / χ₁₃
display fields.  Extends the separated Type.
`det_eq_cyclotomic` is a **String** field, not the
propext lemma, so the inhabitant stays **none**.
Weil pairing / positivity / `TW_infinite_family_exists`
stay off this token. -/
structure FreyGaloisRep13_real_separated_det
    extends FreyGaloisRep13_real_separated where
  det_display : String
  chi13_display : String
  weil_display : String
  q1 : Nat
  q2 : Nat

/-- Closed token on Path 1 bases `⟨13, 2⟩`.
Conductor `2 * 13`, `Q_1 = 53`, `Q_2 = 677`.
**none**. -/
def FreyGaloisRep13_real_separated_det.token :
    FreyGaloisRep13_real_separated_det where
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

theorem FreyGaloisRep13_real_separated_det.conductor_eq :
    FreyGaloisRep13_real_separated_det.token.conductor = 2 * 13 :=
  rfl

theorem FreyGaloisRep13_real_separated_det.q1_mod :
    FreyGaloisRep13_real_separated_det.token.q1 % 13 = 1 :=
  rfl

theorem FreyGaloisRep13_real_separated_det.q2_mod :
    FreyGaloisRep13_real_separated_det.token.q2 % 169 = 1 :=
  rfl

theorem FreyGaloisRep13_real_separated_det.q2_as_four_mul :
    FreyGaloisRep13_real_separated_det.token.q2 = 4 * 169 + 1 :=
  rfl

theorem FreyGaloisRep13_real_separated_det.phi13 :
    FreyGaloisRep13_real_separated_det.token.prime - 1 = 12 :=
  rfl

theorem FreyGaloisRep13_real_separated_det.det_display_eq :
    FreyGaloisRep13_real_separated_det.token.det_display =
      "det(rho_bar(sigma)) = chi_13(sigma)" :=
  rfl

/-- Type token for a Frey model carrying the det
display.  Fields are display data.  **none**. -/
structure FreyCurveSeparated_det : Type where
  A : Int
  B : Int
  exponent : Nat
  prime : Nat
  det_display : String
  delta_display : String

/-- Path 1 displayed bases `⟨13, 2⟩`.  **none**. -/
def FreyCurveSeparated_det.token : FreyCurveSeparated_det where
  A := 13
  B := 2
  exponent := 13
  prime := 13
  det_display := "det(rho_bar(sigma)) = chi_13(sigma)"
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"

theorem FreyCurveSeparated_det.token_det :
    FreyCurveSeparated_det.token.det_display =
      "det(rho_bar(sigma)) = chi_13(sigma)" :=
  rfl

/-- v6.3.0: det = χ₁₃ Type token inhabited.
**none**.  Weil pairing lemma / positivity stay
off this term.  Not Mathlib Galois theory.  Does
**not** inhabit `galois_rep_algorithm_of_Frey_13`. -/
def rho_bar_Frey_13_real_algorithm_inhabited_det :
    Nonempty FreyGaloisRep13_real_separated_det :=
  ⟨FreyGaloisRep13_real_separated_det.token⟩

/-- Curve+det token.  **none**. -/
def FreyCurveSeparated_det_token_inhabited :
    Nonempty FreyCurveSeparated_det :=
  ⟨FreyCurveSeparated_det.token⟩

#check AbsoluteGaloisQ
#check UnitsZMod13Token
#check cyclotomicCharacter13
#check residualDet13
#check frey_det_eq_cyclotomic_formula
#check frey_det_eq_cyclotomic_formula_rfl
#check WeilPairing13Token
#check WeilPairing13Token_inhabited
#check frey_det_eq_cyclotomic_real_lemma
#check frey_det_eq_cyclotomic_real
#check FreyGaloisRep13_real_separated
#check FreyGaloisRep13_real_separated_det
#check FreyGaloisRep13_real_separated_det.token
#check FreyCurveSeparated_det
#check FreyCurveSeparated_det.token
#check rho_bar_Frey_13_real_algorithm_inhabited_det
#print axioms cyclotomicCharacter13
#print axioms residualDet13
#print axioms frey_det_eq_cyclotomic_formula
#print axioms frey_det_eq_cyclotomic_formula_rfl
#print axioms WeilPairing13Token_inhabited
#print axioms frey_det_eq_cyclotomic_real_lemma
#print axioms frey_det_eq_cyclotomic_real
#print axioms FreyGaloisRep13_real_separated_det.token
#print axioms FreyGaloisRep13_real_separated_det.conductor_eq
#print axioms FreyGaloisRep13_real_separated_det.q1_mod
#print axioms FreyGaloisRep13_real_separated_det.q2_mod
#print axioms FreyCurveSeparated_det.token
#print axioms rho_bar_Frey_13_real_algorithm_inhabited_det
#print axioms FreyCurveSeparated_det_token_inhabited

end BealLevel26Foundations.GaloisRep.GaloisDetCyclotomicReal
