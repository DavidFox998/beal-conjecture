/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Ribet_Level32.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add modularity / Ribet axioms on
  this target or on default `BealTrueV25`.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import Level928Table
import Tate_I29_Inertia
import SerreImageFull
import LLLTargetB8_C1_lower_bound

/-!
# Gap 3: Wiles modularity + Ribet `29·32 → 32`

Both stay `def Prop`. Mathlib 4.12 has no Wiles modularity of
the semistable Frey curve and no Ribet level-lowering. No
`axiom ribet_level_lowering_29_to_32` and no new axiom on
`BealTrueV25`. `main` stays `6247c63`.

**Inhabited numerals.** `13 ∣ 26` so primes in `C` are
lowering candidates; `13 ∤ 8` so primes in `A` need not drop.
Displayed residual after a putative drop of `29` is `32` when
`29 ∤ AB` and `928` when `29 ∣ AB`; `928 / 29 = 32` and
`928 ≠ 32`. That is the `29`-split of
`level_after_ribet_29`, **not** Néron `N_E` and not a Galois
isomorphism `ρ_E,13 ≅ ρ_{E',13}`.

**Still `def Prop`.** Abstract Ribet (“modular `E`, `13 ∣ v_p(Δ)`,
trivial inertia mod `13` ⇒ a form of level `N_E / p`”) has no
Wiles in the **statement**, but Mathlib has no Galois
representation of a `WeierstrassCurve`, so it is not a theorem.
Applying it to Frey needs Wiles (`modular_Frey`) and still does
not put every gap-3 solution at residual `32` (`13 ∤ 8`). No
`EllipticCurve` functor, no `LevelMod13`, no `sorry`.

Does **not** mint v25. 0 sorry. 0 new axioms.
-/

namespace BealMatveevBeal.Ribet_Level32

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Level928Table
open BealMatveevBeal.Tate_I29_Inertia
open BealMatveevBeal.SerreImageFull
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-- Wiles: Frey is modular. Alias of displayed
    `modularity_Frey_semistable`. **Not** an axiom. -/
def modular_Frey : Prop :=
  modularity_Frey_semistable

/-- Ribet: unramified at `29` mod `13` ⇒ residual level `32`.
    Uninhabited. **Not** an axiom. -/
def ribet_level_lowering_29_to_32 : Prop :=
  inertia_trivial_mod13_when_13_dvd_v → ribet_lowers_Frey_to_level_32

def modularity_and_ribet_to_32 : Prop :=
  modular_Frey ∧ ribet_level_lowering_29_to_32

/-! ## Abstract Ribet (statement has no Wiles; still `def Prop`) -/

/-- Literature Ribet: if `E` is modular, `13 ∣ v_p(Δ_E)`, and
    `ρ_{E,13}` is unramified at `p`, the residual arises at
    level `N_E / p`. The statement does not mention Wiles.
    Mathlib 4.12 has `ModularForm` spaces but no Galois
    representation of an elliptic curve, so this is the
    `29`-specialization already named
    `ribet_level_lowering_29_to_32`. Uninhabited. **Not** an
    axiom. -/
def Ribet_level_lowering_abstract : Prop :=
  ribet_level_lowering_29_to_32

/-- Wiles is what would apply abstract Ribet to the displayed
    Frey curve. Even as a hypothesis chain this does not
    inhabit residual `32` for every gap-3 solution: primes in
    `A` need not lower (`13 ∤ 8`). Uninhabited. **Not** an
    axiom. -/
def level_Frey_eq_32_needs_Wiles : Prop :=
  modular_Frey → Ribet_level_lowering_abstract →
    ribet_lowers_Frey_to_level_32

/-! ## Displayed `928 / 29 = 32` (not Néron, not Galois) -/

theorem thirteen_dvd_twenty_six_reexport : 13 ∣ 26 :=
  thirteen_dvd_twenty_six

theorem not_thirteen_dvd_eight_reexport : ¬ 13 ∣ 8 :=
  not_thirteen_dvd_eight

theorem two_pow_five_reexport : (2 : ℕ) ^ 5 = 32 :=
  two_pow_five

theorem thirty_two_mul_twenty_nine_reexport : (32 : ℕ) * 29 = 928 :=
  thirty_two_mul_twenty_nine

theorem nine_twenty_eight_div_twenty_nine : 928 / 29 = 32 := by
  decide

theorem nine_twenty_eight_ne_thirty_two : (928 : ℕ) ≠ 32 := by
  decide

theorem twenty_nine_nmid_thirty_two : ¬ 29 ∣ 32 := by
  decide

/-- Displayed residual after dropping `29` when `29 ∤ AB`.
    Numeral of `level_after_ribet_29`, not Ribet. -/
theorem level_after_ribet_29_eq_32_of_nmid_AB {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    level_after_ribet_29 A B = 32 := by
  simp [level_after_ribet_29, hA, hB]

/-- Displayed residual keeps `29` when `29 ∣ AB`. -/
theorem level_after_ribet_29_eq_928_of_dvd_AB {A B : ℕ}
    (h : 29 ∣ A ∨ 29 ∣ B) :
    level_after_ribet_29 A B = 928 := by
  simp [level_after_ribet_29, h]

/-- An unlowered odd prime in `A` blocks residual `32`.
    `13 ∤ 8`, so this is the displayed obstruction, not a
    Galois counterexample. -/
theorem residual_nmid_32_of_29_dvd_A {A B : ℕ}
    (hA : A ≠ 0) (hB : B ≠ 0) (hpA : 29 ∣ A) :
    ¬ residualLevelEstimate A B ∣ 32 := by
  intro h
  have hpR : 29 ∣ residualLevelEstimate A B :=
    unlowered_prime_dvd_residual twenty_nine_prime hA hB hpA
  exact twenty_nine_nmid_thirty_two (hpR.trans h)

theorem S2_Gamma0_32_dim_eq_one_reexport : S2_Gamma0_32_dim = 1 :=
  S2_Gamma0_32_dim_eq_one

/-- Abstract Ribet plus inertia would give residual `32`.
    Does **not** inhabit either hypothesis. Wiles
    (`modular_Frey`) is a separate gap. -/
theorem ribet_lowers_of_abstract_and_inertia
    (hR : Ribet_level_lowering_abstract)
    (hI : inertia_trivial_mod13_when_13_dvd_v) :
    ribet_lowers_Frey_to_level_32 :=
  hR hI

theorem LLL_nogo_persists_after_Ribet_Level32 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check modular_Frey
#check ribet_level_lowering_29_to_32
#check Ribet_level_lowering_abstract
#check level_Frey_eq_32_needs_Wiles
#check nine_twenty_eight_div_twenty_nine
#check nine_twenty_eight_ne_thirty_two
#check level_after_ribet_29_eq_32_of_nmid_AB
#check residual_nmid_32_of_29_dvd_A
#check ribet_lowers_of_abstract_and_inertia
#print axioms nine_twenty_eight_div_twenty_nine
#print axioms residual_nmid_32_of_29_dvd_A
#print axioms LLL_nogo_persists_after_Ribet_Level32

end BealMatveevBeal.Ribet_Level32
