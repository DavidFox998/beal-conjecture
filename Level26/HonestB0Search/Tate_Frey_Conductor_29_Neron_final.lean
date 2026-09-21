/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest v29 *final* Tate / Néron display. Lake targets
  `HonestB0Search` and `Level26` (`srcDir` this folder).
  Do **not** add `Beal/Matveev/`. Do **not** import
  `Beal.Matveev.MatveevThm14General` or `BealTrueV25`.
  Do **not** add a Tate / Néron axiom. Do **not** convert
  the parent `def Prop` names on `Tate_Frey_Conductor_29.lean`.
-/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Tate_Frey_Conductor_29
import Tate_Frey_Conductor_29_Neron_inhabited
import LLLTargetB8
import LLLTargetB8_C1_lower_bound

/-!
# Tate algorithm / Néron conductor final display (v29)

v31 rename: the three former re-export *names*
`Tate_algorithm_at_29`, `Frey_Neron_conductor`,
`Frey_conductor_29_is_Neron`, and the former packaged
`Tate_Frey_Conductor_29_Neron_final`, are removed. All four
had the identical type — the inhabited conjunction from
`Tate_Frey_Conductor_29_Neron_inhabited` (`6f67889` /
`a93402e`): `c₄`/`c₆`, `v₂(Δ)=6` (`I₀*`),
`v₂₉(Δ(29,1))=8` (`I₈`), displayed numeral
`928 = 2⁵ · 29` — but their names suggested Tate's algorithm,
a Néron conductor, or an identification with one, none of
which this file computes. The single canonical name for that
conjunction is now
`displayed_frey_specialization_data_at_2_and_29`. There is no
compatibility alias for the old names: they were exactly the
problem being corrected, so none is kept.

The parent file `Tate_Frey_Conductor_29.lean` is unchanged and
keeps its own, differently-scoped names
`Tate_algorithm_at_29`, `Frey_Neron_conductor`,
`Frey_conductor_29_is_Neron` as `def Prop` (aliases of
`Tate_uniformization`, `Tate_q`,
`inertia_trivial_mod13_when_13_dvd_v`). This file does not
convert them, and the rename above is local to this
namespace; it does not touch the parent.

**`final_N_E_eq_928`** is the displayed numeral. Mathlib
4.12 has no `KodairaType` and no `NeronModel`. This is
not Tate’s algorithm as a function on integral models and
is not `N_E` of a Néron model.

Displayed Frey

```
y² = x(x − A⁴)(x + B⁴)
   = [0, B⁴−A⁴, 0, −A⁴ B⁴, 0]
```

The short model `[0, −(A⁴+B⁴), 0, 0, 0]` is a different
curve. SAGE witness `sagemath/tate_nero_29.sage` is
unchanged from v28.

No `def Prop`. No `sorry`. No new axiom. No Wiles.
-/

namespace BealMatveevBeal.Tate_Frey_Conductor_29_Neron_final

set_option linter.dupNamespace false

open Nat Finset Classical
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Tate_Frey_Conductor_29_Neron_inhabited
open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8

/-! ## Explicit Lean 4.12 numeral types — `decide`, not `native_decide` -/

/-- Displayed final conductor numeral. Not Mathlib `N_E`. -/
theorem displayed_Neron_conductor : (2 : ℕ) ^ 5 * 29 = 928 := by decide

theorem displayed_928_div_29 : 928 / 29 = 32 := by decide

theorem displayed_32_mul_29 : (32 : ℕ) * 29 = 928 := by decide

theorem two_pow_five_eq_32 : (2 : ℕ) ^ 5 = 32 := by decide

theorem twenty_nine_nmid_32 : ¬ 29 ∣ (32 : ℕ) := by decide

theorem displayed_c4_poly : frey_c4 1 1 = 48 :=
  frey_c4_1_1

theorem displayed_Delta_1_1 : freyDiscNat 1 1 = 64 := by
  unfold freyDiscNat
  decide

theorem displayed_v2_I0_star : padicValNat 2 (freyDiscNat 1 1) = 6 :=
  v2_Delta_1_1

theorem displayed_v29_I8 : padicValNat 29 (freyDiscNat 29 1) = 8 :=
  v29_Delta_29_1

/-- Displayed residual split `{32, 928}`. Card `2` is a Finset
    numeral, not two Néron models. -/
theorem displayed_residual_levels_card :
    (({32, 928} : Finset ℕ).card) = 2 := by decide

/-- Canonical v31 name for the packaged displayed data at
    the two named specializations `(A,B)=(1,1)` and
    `(A,B)=(29,1)`: numerals, `c₄`/`c₆`, and `p`-adic
    valuations of the discriminant. Re-export of
    `Tate_algorithm_at_2_and_29` (`6f67889`). Not Mathlib
    `KodairaType`, not a Néron conductor, and not Tate's
    algorithm as a function on integral models. Replaces the
    removed aliases `Tate_algorithm_at_29`,
    `Frey_Neron_conductor`, `Frey_conductor_29_is_Neron`, and
    the removed packaged `Tate_Frey_Conductor_29_Neron_final`
    (v29 and earlier), all of which had this exact type. -/
theorem displayed_frey_specialization_data_at_2_and_29 :
    (2 : ℕ) ^ 5 * 29 = 928 ∧
      (32 : ℕ) * 29 = 928 ∧
      928 / 29 = 32 ∧
      (freyWeierstrass 1 1).c₄ = 48 ∧
      (freyWeierstrass 1 1).c₆ = 0 ∧
      padicValInt 29 (frey_c4 1 1) = 0 ∧
      padicValNat 2 (freyDiscNat 1 1) = 6 ∧
      padicValNat 2 (freyDiscNat 29 1) = 6 ∧
      padicValNat 29 (freyDiscNat 29 1) = 8 ∧
      padicValInt 29 (frey_c4 29 1) = 0 :=
  Tate_algorithm_at_2_and_29

/-- Displayed final conductor numeral. Not Mathlib `N_E`. -/
theorem final_N_E_eq_928 : (2 : ℕ) ^ 5 * 29 = 928 :=
  displayed_Neron_conductor

theorem LLL_nogo_persists_after_Tate_Neron_v29 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_nogo_persists_after_Tate_Neron_v28

#check displayed_Neron_conductor
#check displayed_928_div_29
#check displayed_Delta_1_1
#check displayed_residual_levels_card
#check displayed_frey_specialization_data_at_2_and_29
#check final_N_E_eq_928
#check BealMatveevBeal.Tate_Frey_Conductor_29.Tate_algorithm_at_29
#check BealMatveevBeal.Tate_Frey_Conductor_29.Frey_Neron_conductor
#check BealMatveevBeal.Tate_Frey_Conductor_29.Frey_conductor_29_is_Neron
#print axioms displayed_Neron_conductor
#print axioms displayed_frey_specialization_data_at_2_and_29
#print axioms final_N_E_eq_928
#print axioms LLL_nogo_persists_after_Tate_Neron_v29

end BealMatveevBeal.Tate_Frey_Conductor_29_Neron_final
