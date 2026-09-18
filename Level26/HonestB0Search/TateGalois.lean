/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/TateGalois.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Tate/inertia axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import MazurIrreducibility13
import Inertia29Unramified
import LLLTargetB8_C1_lower_bound

/-!
# Gap 2 of 4: Galois `I₂₉` via the Tate curve

Closing `B ≥ B0` is four theorems, not a point-count sieve.
`953a174` proved that `l = 7,11,23` cannot kill the whole
`(1,6) (mod 7)` class.

**Inhabited (`9030063`):** `v₂₉(c₄)=0`, `v₂₉(Δ)=26 v₂₉(C)`,
`13 ∣ v₂₉(Δ)`, `displayed_minimal_at_29` when `29 ∣ C` and
`29 ∤ AB`. Uses `padicValInt` / `padicValNat`, not a
`factorization` stub and not `native_decide` of an `Int`.

**Not in Mathlib 4.12 (stay `def Prop`):** Tate curve
`E(ℚ̄_ℓ) ≅ ℚ̄_ℓˣ / q^ℤ` with `v_ℓ(q)=v_ℓ(Δ)`, inertia acting
by `χ_cyc^{v(q)}`, hence trivial mod `13` if `13 ∣ v(Δ)`.
No `InertiaGroup`, no `axiom inertia_via_cyclotomic`.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.TateGalois

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.MazurIrreducibility13
open BealMatveevBeal.Inertia29Unramified
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Re-export: Tate numerics (`padicVal*`, not `factorization`) -/

theorem v29_c4_zero_when_29_nmid_AB {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValInt 29 (frey_c4 A B) = 0 :=
  v29_c4_eq_0 hA hB

theorem v29_Delta_eq_26_vC {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValNat 29 (freyDiscNat A B) =
      26 * padicValNat 29 (B + 3) :=
  v29_Delta_eq_26_mul_vC hsol hBpos hA hB

theorem displayed_minimal_at_29_theorem {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    displayed_minimal_at_29 A B :=
  displayed_minimal_at_29_of_29_dvd_C hsol hBpos hA hB hC

theorem thirteen_dvd_v29_Delta_reexport {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    13 ∣ padicValNat 29 (freyDiscNat A B) :=
  (thirteen_dvd_v29_Delta_of_displayed hsol hBpos hA hB hC).1

/-! ## Gap 2 stays `def Prop` (no Tate Galois module) -/

/-- Intended Mathlib object: Tate curve `E_q` with
    `v_ℓ(q)=v_ℓ(Δ)`. Not a stub `ℓ=29 ∧ factorization`. -/
def tate_curve_at_29 : Prop :=
  tate_Kodaira_I_at_29

/-- Inertia acts by `χ_cyc^{v(q)}`. Not in Mathlib 4.12.
    **Not** an axiom. -/
def inertia_via_cyclotomic : Prop :=
  tate_curve_at_29 → inertia_at_29_trivial_mod13

/-- `13 ∣ v(q)` ⇒ inertia trivial on `E[13]`. Uninhabited. -/
def unramified_mod13_of_13_dvd_v : Prop :=
  inertia_via_cyclotomic → inertia_at_29_trivial_mod13

/-- Full Galois statement of `ρ_{E,13}(I_{29})=1`. Uninhabited. -/
def inertia_at_29_trivial_mod13_full : Prop :=
  inertia_at_29_trivial_mod13

/-- Ribet unramified-at-`29` criterion from inertia. Uninhabited. -/
def ribet_unramified_at_29_full : Prop :=
  inertia_at_29_trivial_mod13_full →
    ribet_unramified_at_l_if_13_dvd_vDelta

theorem LLL_nogo_persists_after_TateGalois :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check v29_c4_zero_when_29_nmid_AB
#check v29_Delta_eq_26_vC
#check displayed_minimal_at_29_theorem
#check thirteen_dvd_v29_Delta_reexport
#check tate_curve_at_29
#check inertia_via_cyclotomic
#check inertia_at_29_trivial_mod13_full
#check ribet_unramified_at_29_full
#print axioms v29_c4_zero_when_29_nmid_AB
#print axioms displayed_minimal_at_29_theorem
#print axioms LLL_nogo_persists_after_TateGalois

end BealMatveevBeal.TateGalois
