import Beal.«Beal.Odd».FullReduction
import Beal.«Beal.General».Frey

/-!
# v36 modular starter

This module does not prove Beal's conjecture, and it does not prove
modularity or Ribet level lowering.

Mathlib v4.12.0 has `WeierstrassCurve` and `ModularForm`, and no
theorem that every elliptic curve over `ℚ` is modular (Wiles for
the semistable case, Breuil–Conrad–Diamond–Taylor in general). It
also has no Ribet level-lowering theorem for a Frey representation.
Those two statements are recorded below as uninhabited `Prop`s.
They are not Lean `axiom`s. A Lean `axiom` would be a fourth
dependency beyond `propext`, `Classical.choice`, and `Quot.sound`,
and it could be applied as a proof. `Ribet_Level32.lean` already
keeps the same statements uninhabited for that reason.

What v34 and v35 actually block, before modularity is relevant:

* degree-one or nonzero `overline{2t}` is excluded, so
  `odd_branch_chart` (`2 ∤ x` and `2 ∤ y`) stays uninhabited;
* `UniversallyClosed` and `IsProperMap` are not proved for the
  Rees `Proj`;
* `E ≅ ℙ¹` is not an open claim: the chart equation is the node
  `V(V + U) = 0`, not a projective line;
* the actual special-fibre pullback is not identified with the
  quotient `Proj`.

`odd_exponents_avoid_two_chart` is re-exported and not applied to
a Frey curve. `I[1/2] = ⊤` is not applied either.
-/

namespace Beal.Modular

open Beal.Even
open Beal.Odd
open Beal.General

/-! ## The Frey model, without semistability

The integral model is the existing
`Y² = X (X - x^p) (X + y^q)`. The identity below matches that
product with the Weierstrass coefficients. It does not say the
curve is semistable, minimal, or modular. -/

theorem frey_product_eq_weierstrass (a b p q : ℕ) (X : ℤ) :
    X * (X - (a : ℤ) ^ p) * (X + (b : ℤ) ^ q) =
      X ^ 3 + ((b : ℤ) ^ q - (a : ℤ) ^ p) * X ^ 2
        - ((a : ℤ) ^ p * (b : ℤ) ^ q) * X := by
  ring

theorem frey_a2_gap (x y z p q r : ℕ) :
    (freyWeierstrassGeneral x y z p q r).a₂ =
      (y : ℤ) ^ q - (x : ℤ) ^ p :=
  rfl

theorem frey_a4_product (x y z p q r : ℕ) :
    (freyWeierstrassGeneral x y z p q r).a₄ =
      -((x : ℤ) ^ p * (y : ℤ) ^ q) :=
  rfl

/-! ## Coprimeness versus the even chart

An even coprime solution is not shown to have even bases. The
target of that missing implication is already incompatible with
`Nat.Coprime`: both bases even means `2` divides the gcd. -/

theorem coprime_not_both_even {x y : ℕ} (h : Nat.Coprime x y) :
    ¬ (2 ∣ x ∧ 2 ∣ y) := by
  rintro ⟨hx, hy⟩
  have h2 : 2 ∣ Nat.gcd x y := Nat.dvd_gcd hx hy
  rw [h] at h2
  have : (2 : ℕ) = 1 := Nat.dvd_one.mp h2
  omega

/-- Coprimeness does not force both bases odd. -/
theorem coprime_allows_one_even :
    Nat.Coprime 2 3 ∧ 2 ∣ 2 ∧ ¬ 2 ∣ 3 := by
  decide

theorem reused_odd_exponents_avoid_two_chart
    {x p : ℕ} (hx : Odd x) (hp : Odd p) : ¬ 2 ∣ x ^ p :=
  odd_exponents_avoid_two_chart hx hp

/-! ## Open inputs

`frey_two_adic_input` is the divisibility v34 and v35 did not
prove. The even conjunct asks for both bases even, which
`coprime_not_both_even` forbids once it is derived. The odd
conjunct is `odd_branch_chart`. The comment on that `def` in v35
stands: odd → `2 ∤ X, Y` needs degree-one `overline{2t}`. -/

def frey_two_adic_input : Prop :=
  even_solution_implies_two_divides ∧ odd_branch_chart

/-- Open. Semistability of the Frey model is not a Kodaira
symbol here. It is blocked by `frey_two_adic_input`. -/
def frey_semistable : Prop :=
  frey_two_adic_input

/-- Open. Wiles / Breuil–Conrad–Diamond–Taylor for the Frey
model. `IsModular` is a parameter because Mathlib v4.12.0 has
no such predicate on `WeierstrassCurve`. The trivial predicate
`fun _ => True` fits the shape and is not modularity; this
file gives no instance. Not a Lean `axiom`. -/
def wilesBCDT_modularity (IsModular : WeierstrassCurve ℤ → Prop) : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    frey_semistable →
    IsModular (freyWeierstrassGeneral x y z p q r)

/-- Open. Ribet level lowering to level `2`, after modularity.
Same parameter discipline as `wilesBCDT_modularity`. Not a Lean
`axiom`. Not applied to a representation. -/
def ribet_level_lowering
    (IsModular : WeierstrassCurve ℤ → Prop)
    (LowersTo : WeierstrassCurve ℤ → ℕ → Prop) : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    wilesBCDT_modularity IsModular →
    LowersTo (freyWeierstrassGeneral x y z p q r) 2

/-! ## Level 2, numeral genus only

`μ = 3`, `ν₂ = 1`, `ν₃ = 0`, `ν∞ = 2` give genus numeral `0`.
That arithmetic is not `dim S₂(Γ₀(2)) = 0` and not the
non-existence of a weight-2 level-2 newform. -/

theorem x0_2_genus_numerals :
    (1 : ℚ) + (3 : ℚ) / 12 - (1 : ℚ) / 4 - (0 : ℚ) / 3 - (2 : ℚ) / 2 = 0 := by
  norm_num

/-- Open. The classical input is `dim S₂(Γ₀(2)) = 0`, hence no
weight-2 newform of level 2. This file proves only the genus
numerals. It does not identify them with a cusp-form dimension,
and the zero function `fun _ _ => 0` is not that dimension.
Not a Lean `axiom`. -/
def no_weight_two_level_two_newform (dimS2 : ℕ → ℕ → ℕ) : Prop :=
  dimS2 2 2 = 0 ∧ frey_two_adic_input

/-- The packaged gap. Uninhabited. This conjunction does not
prove any conjunct, and it does not apply `wilesBCDT_modularity`
or `ribet_level_lowering`. -/
def RibetAxiom : Prop :=
  frey_two_adic_input ∧ odd_Beal ∧ even_Beal

/-- Same package, named as the blocker in front of a modular
lift. Not a proof that the lift is impossible for a reason
other than these missing inputs. -/
def modular_lift_blocked_by_v34_v35 : Prop :=
  RibetAxiom

end Beal.Modular

#print axioms Beal.Modular.frey_product_eq_weierstrass
#print axioms Beal.Modular.frey_a2_gap
#print axioms Beal.Modular.frey_a4_product
#print axioms Beal.Modular.coprime_not_both_even
#print axioms Beal.Modular.coprime_allows_one_even
#print axioms Beal.Modular.reused_odd_exponents_avoid_two_chart
#print axioms Beal.Modular.x0_2_genus_numerals
