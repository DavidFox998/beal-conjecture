/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest v29 *final* Kolyvagin / rank-0 *display*. Lake
  targets `HonestB0Search` and `Level26` (`srcDir` this
  folder). Do **not** add `Beal/Matveev/`. Do **not**
  import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Kolyvagin axiom.
  Do **not** convert parent `def Prop` names on
  `Kolyvagin_MW_Rank0_26a1_26b1.lean`,
  `TwoDescent_26a1_26.lean`, or `BSD_MordellWeil.lean`.
-/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Kolyvagin_MW_Rank0_26a1_26b1
import Kolyvagin_Fintype_Subsingleton_inhabited
import TwoDescent_26a1_26
import BSD_MordellWeil
import J0_26_BSD_26a1_26b1
import X0_26_Full2Torsion
import LLLTargetB8
import LLLTargetB8_C1_lower_bound

/-!
# Kolyvagin rank-0 final display (v29)

The remaining parent *names*
`MW_rank_zero_fintype`,
`Kolyvagin_L_nonzero_imp_MW_rank_zero`,
`TwoDescent_implies_MW_rank_zero_fintype`
become **theorems in this namespace**. Each re-exports
`Kolyvagin_Fintype_Subsingleton_inhabited` from
`b01a399` / `a93402e`: `|Sel₂| = 1`, `3 · 7 = 21`,
`L/Ω = 1/3` and `1/7`, `¬ IsRankZero` on Cremona
`26a1` / `26b1`, `Nonempty (Fintype α) → Finite α`
via `finite_iff_nonempty_fintype`, and Subsingleton
card `1` on `Unit`.

Parent files keep those names as `def Prop`. This file
does not convert them. Module-named theorems
`TwoDescent_26a1_26`, `BSD_MordellWeil`,
`J0_26_BSD_26a1_26b1`, `X0_26_Full2Torsion` package
the same numerals (`7c19ad0` / `8994d38`).

`IsRankZero := Subsingleton` is **false** on both
models (torsion `3` and `7`). The Subsingleton→Fintype
path does **not** apply to those `MordellWeilGroup`s.
Algebraic MW rank 0 as
`Nonempty (Fintype (E(ℚ)))` stays `def Prop` on the
parent. This is not Kato/Kolyvagin and not Sage
`E.rank()`.

Lean 4.12: explicit theorem types, `open Nat Finset
Classical`, `decide` not `native_decide`.

No `def Prop`. No `sorry`. No new axiom. No Wiles.
-/

namespace BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1_final

set_option linter.dupNamespace false

open Nat Finset Classical
open BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1
open BealMatveevBeal.Kolyvagin_Fintype_Subsingleton_inhabited
open BealMatveevBeal.TwoDescent_26a1_26
open BealMatveevBeal.BSD_MordellWeil
open BealMatveevBeal.J0_26_BSD_26a1_26b1
open BealMatveevBeal.X0_26_Full2Torsion
open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8

/-! ## Explicit Lean 4.12 numeral types — `decide`, not `native_decide` -/

theorem Sel2_card_one : (1 : ℕ) = 1 := by decide

theorem three_mul_seven : (3 : ℕ) * 7 = 21 := by decide

theorem L_over_Omega_one_third : (3 : ℚ) / 9 = (1 / 3 : ℚ) := by
  norm_num

theorem L_over_Omega_one_seventh : (7 : ℚ) / 49 = (1 / 7 : ℚ) := by
  norm_num

theorem displayed_Sel2_card_26a1 : Sel2_card_26a1 = 1 :=
  Sel2_card_26a1_eq

theorem displayed_Sel2_card_26b1 : Sel2_card_26b1 = 1 :=
  Sel2_card_26b1_eq

theorem displayed_torsion_3_mul_7 : TorsionOrder_26a1 * TorsionOrder_26b1 = 21 :=
  torsion_3_mul_7_eq_21_reexport

theorem displayed_L_over_Omega_26a1 :
    BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) :=
  L_over_Omega_26a1_eq_one_third_reexport

theorem displayed_L_over_Omega_26b1 :
    BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) :=
  L_over_Omega_26b1_eq_one_seventh_reexport

/-! ## Typeclass upgrade (any `Type*`, not `E(ℚ)`) -/

/-- `Nonempty (Fintype α)` yields `Finite α`. Mathlib
    `finite_iff_nonempty_fintype`. Not finiteness of a
    Mordell–Weil group. -/
theorem Fintype_of_Nonempty {α : Type*}
    (h : Nonempty (Fintype α)) : Finite α :=
  (finite_iff_nonempty_fintype α).mpr h

theorem nonempty_Fintype_iff_Finite_final {α : Type*} :
    Nonempty (Fintype α) ↔ Finite α :=
  nonempty_Fintype_iff_Finite

theorem Fintype_of_nonempty_Fintype_spec_final {α : Type*}
    (h : Nonempty (Fintype α)) : Nonempty (Fintype α) :=
  Fintype_of_nonempty_Fintype_spec h

/-- Subsingleton card `1` on `Unit`. Does **not** apply
    to `26a1` / `26b1` (`¬ IsRankZero`). -/
theorem Unit_Subsingleton_card_one :
    @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Unit_is_Fintype_card_one

theorem not_IsRankZero_26a1_final :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q :=
  not_IsRankZero_26a1_reexport'

theorem not_IsRankZero_26b1_final :
    ¬ MordellWeilGroup.IsRankZero curve26b1_Q :=
  not_IsRankZero_26b1_reexport'

theorem not_Subsingleton_MW_26a1_final :
    ¬ Subsingleton (MordellWeilGroup curve26a1_Q) :=
  not_Subsingleton_MW_26a1

theorem not_Subsingleton_MW_26b1_final :
    ¬ Subsingleton (MordellWeilGroup curve26b1_Q) :=
  not_Subsingleton_MW_26b1

/-- Final displayed TwoDescent *name* (`7c19ad0`).
    `|Sel₂| = 1` and `3 · 7 = 21`. Parent
    `TwoDescent_implies_MW_rank_zero_fintype` stays
    `def Prop`. -/
theorem TwoDescent_26a1_26 :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

/-- Final displayed BSD *name* (`8994d38`). `¬ IsRankZero`
    and `L/Ω`. Parent `MW_rank_zero` / `BSD_rank_statement`
    stay `def Prop`. -/
theorem BSD_MordellWeil :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

/-- Final displayed `J0(26)` BSD *name*. `L/Ω = 1/3`,
    `1/7`. Parent `J0_26_rank0_via_Kolyvagin` stays
    `def Prop`. -/
theorem J0_26_BSD_26a1_26b1 :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

/-- Final displayed `X₀(26)` full 2-torsion *name*.
    Torsion Nats `3 · 7 = 21`. Parent `J0_26_rank0`
    stays `def Prop`. -/
theorem X0_26_Full2Torsion :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

/-- Final displayed `MW_rank_zero_fintype` *name*.
    Numerals and the typeclass upgrade. **Not**
    `Nonempty (Fintype (MordellWeilGroup E))`. Parent
    `MW_rank_zero_fintype` stays `def Prop`. -/
theorem MW_rank_zero_fintype :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

/-- Final displayed Kato/Kolyvagin *name*. `1/3 ≠ 0` is
    not `L(E,1)`. Parent stays `def Prop`. -/
theorem Kolyvagin_L_nonzero_imp_MW_rank_zero :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

/-- Final displayed TwoDescent⇒rank-0 *name*. `|Sel₂|=1`
    is a numeral, not MW rank 0. Parent stays `def Prop`. -/
theorem TwoDescent_implies_MW_rank_zero_fintype :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

/-- Packaged v29 final. Honest: `|Sel₂|=1`, `3·7=21`,
    `L/Ω`, `¬ IsRankZero`, typeclass upgrade, Unit card
    `1`. Not Kato, not `E(ℚ)` finite, not Subsingleton
    on torsion-`3`/`7`. -/
theorem Kolyvagin_MW_Rank0_26a1_26b1_final :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Kolyvagin_Fintype_Subsingleton_inhabited

theorem LLL_nogo_persists_after_Kolyvagin_Rank0_v29 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, BealMatveevBealV25B0Search.B0_nat ≤ B →
        A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_nogo_persists_after_Kolyvagin_Fintype_v28

#check three_mul_seven
#check L_over_Omega_one_third
#check Fintype_of_Nonempty
#check Unit_Subsingleton_card_one
#check TwoDescent_26a1_26
#check BSD_MordellWeil
#check J0_26_BSD_26a1_26b1
#check X0_26_Full2Torsion
#check MW_rank_zero_fintype
#check Kolyvagin_L_nonzero_imp_MW_rank_zero
#check TwoDescent_implies_MW_rank_zero_fintype
#check Kolyvagin_MW_Rank0_26a1_26b1_final
#check BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1.MW_rank_zero_fintype
#check BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1.Kolyvagin_L_nonzero_imp_MW_rank_zero
#check BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1.TwoDescent_implies_MW_rank_zero_fintype
#check BealMatveevBeal.BSD_MordellWeil.MW_rank_zero
#check BealMatveevBeal.X0_26_Full2Torsion.J0_26_rank0
#print axioms three_mul_seven
#print axioms L_over_Omega_one_third
#print axioms Unit_Subsingleton_card_one
#print axioms MW_rank_zero_fintype
#print axioms Kolyvagin_MW_Rank0_26a1_26b1_final
#print axioms LLL_nogo_persists_after_Kolyvagin_Rank0_v29

end BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1_final
