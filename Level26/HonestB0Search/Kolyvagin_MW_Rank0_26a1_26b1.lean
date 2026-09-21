/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Kolyvagin_MW_Rank0_26a1_26b1.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Kolyvagin / BSD axiom.
  Do **not** overwrite `BSD_MordellWeil.lean` (`8994d38`).
-/
import BealMatveevBealV25B0Search
import TwoDescent_26a1_26
import BSD_MordellWeil
import J0_26_BSD_26a1_26b1
import LLLTargetB8_C1_lower_bound
import Mathlib.Data.Fintype.Basic

/-!
# Kolyvagin rank 0 — `Fintype` of `E(ℚ)`, not Subsingleton `{0}`

`BSD_MordellWeil` (`8994d38`) keeps `IsSubsingleton :=
Subsingleton` (v31 rename from `IsRankZero`) and **refutes**
it on Cremona `26a1` / `26b1`: torsion points `(4,4)` and
`(1,0)` are not `0`, so `¬ IsSubsingleton`. That name is only
the identity, not MW rank 0.

Correct algebraic rank 0 is “`E(ℚ)` is finite”
(`Nonempty (Fintype (MordellWeilGroup E))`), equivalently
“every point is torsion” (`MW_rank_zero` already on
`BSD_MordellWeil`). Both stay `def Prop`. This file does **not**
construct an `AddSubgroup` of torsion (that would be an
uninhabited computational subgroup) and does **not** inhabit
analytic non-vanishing by the unit type.

Inhabited numerals, reused:
* `L/Ω = 1/3` and `1/7` (`L_over_Omega_*_ne_zero`, `e0b34b2`)
* `|Sel₂| = 1`, `3 · 7 = 21`, `2⁰ = 1`, Sage display `0`
  (`TwoDescent_26a1_26`, `7c19ad0`)
* `¬ IsSubsingleton` via `(4,4)` / `(1,0)`

**Uninhabited (`def Prop`).** `MW_rank_zero_fintype`,
`Kolyvagin_L_nonzero_imp_MW_rank_zero`,
`TwoDescent_implies_MW_rank_zero_fintype`. Kato / Kolyvagin
(`L(E,1) ≠ 0 ⇒ rank 0`) is not in Mathlib 4.12. There is no
`EllipticLFunction`. The rational `1/3 ≠ 0` is not `L(E,1)`.

No Wiles. No new axiom. `main` stays `6247c63`.
-/

namespace BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.TwoDescent_26a1_26
open BealMatveevBeal.BSD_MordellWeil
open BealMatveevBeal.J0_26_BSD_26a1_26b1
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Keep `¬ IsSubsingleton` (`8994d38`) -/

theorem not_IsSubsingleton_26a1_reexport :
    ¬ MordellWeilGroup.IsSubsingleton curve26a1_Q :=
  not_IsSubsingleton_26a1

theorem not_IsSubsingleton_26b1_reexport :
    ¬ MordellWeilGroup.IsSubsingleton curve26b1_Q :=
  not_IsSubsingleton_26b1

/-! ## Correct rank-0 name: `E(ℚ)` finite, not `{0}` -/

/-- Algebraic MW rank 0 as finiteness of the rational points.
    Not `IsSubsingleton` (a strictly stronger condition, only
    `{0}`). Uninhabited: Mathlib 4.12 has no Mordell–Weil
    finite-generation theorem for this `Point` type. -/
def MW_rank_zero_fintype {K : Type*} [Field K]
    (E : WeierstrassCurve K) : Prop :=
  Nonempty (Fintype (MordellWeilGroup E))

def MW_rank_zero_26a1_fintype : Prop :=
  MW_rank_zero_fintype curve26a1_Q

def MW_rank_zero_26b1_fintype : Prop :=
  MW_rank_zero_fintype curve26b1_Q

def MW_rank_zero_26a1_26b1_fintype : Prop :=
  MW_rank_zero_26a1_fintype ∧ MW_rank_zero_26b1_fintype

/-- Schema: `E(ℚ)/tors` finite. No constructed torsion
    subgroup (that would be a `sorry` computation). -/
def MW_free_quotient_finite {K : Type*} [Field K]
    (E : WeierstrassCurve K)
    (tors : AddSubgroup (MordellWeilGroup E)) : Prop :=
  Nonempty (Fintype (MordellWeilGroup E ⧸ tors))

/-! ## Reused `L/Ω` and TwoDescent numerals -/

theorem L_over_Omega_26a1_ne_zero_reexport :
    L_over_Omega_26a1 ≠ 0 :=
  L_over_Omega_26a1_ne_zero

theorem L_over_Omega_26b1_ne_zero_reexport :
    L_over_Omega_26b1 ≠ 0 :=
  L_over_Omega_26b1_ne_zero

theorem L_over_Omega_26a1_eq_one_third :
    L_over_Omega_26a1 = (1 / 3 : ℚ) :=
  L_over_Omega_26a1_eq

theorem L_over_Omega_26b1_eq_one_seventh :
    L_over_Omega_26b1 = (1 / 7 : ℚ) :=
  L_over_Omega_26b1_eq

theorem Sel2_card_both_one :
    Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 :=
  ⟨Sel2_card_26a1_eq, Sel2_card_26b1_eq⟩

theorem torsion_3_mul_7_eq_21 :
    TorsionOrder_26a1 * TorsionOrder_26b1 = 21 :=
  torsion_orders_mul_eq_twenty_one

theorem certified_mwrank_display_zero :
    certified_mwrank_26a1 = 0 ∧ certified_mwrank_26b1 = 0 :=
  certified_mwrank_both_zero_holds

theorem two_pow_sel2_is_one :
    (2 : ℕ) ^ Sel2_F2_dim_26a1 = 1 ∧ (2 : ℕ) ^ Sel2_F2_dim_26b1 = 1 :=
  ⟨two_pow_sel2_F2_dim_26a1.trans Sel2_card_26a1_eq,
    two_pow_sel2_F2_dim_26b1.trans Sel2_card_26b1_eq⟩

theorem curve26a1_Δ_reexport : curve26a1.Δ = -17576 :=
  curve26a1_Δ

theorem curve26b1_Δ_reexport : curve26b1.Δ = -1664 :=
  curve26b1_Δ

/-- Packaged inhabited Kolyvagin *display*. Algebraic MW rank 0
    as `Nonempty (Fintype (E(ℚ)))` stays `def Prop`. This is
    not Kato/Kolyvagin and not Subsingleton `{0}`. -/
theorem Kolyvagin_MW_Rank0_26a1_26b1_inhabited :
    ¬ MordellWeilGroup.IsSubsingleton curve26a1_Q ∧
      ¬ MordellWeilGroup.IsSubsingleton curve26b1_Q ∧
      L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      certified_mwrank_26a1 = 0 ∧ certified_mwrank_26b1 = 0 ∧
      curve26a1.Δ = -17576 ∧ curve26b1.Δ = -1664 :=
  ⟨not_IsSubsingleton_26a1_reexport, not_IsSubsingleton_26b1_reexport,
    L_over_Omega_26a1_eq_one_third, L_over_Omega_26b1_eq_one_seventh,
    Sel2_card_26a1_eq, Sel2_card_26b1_eq, torsion_3_mul_7_eq_21,
    certified_mwrank_26a1_eq, certified_mwrank_26b1_eq,
    curve26a1_Δ_reexport, curve26b1_Δ_reexport⟩

/-! ## Kolyvagin / TwoDescent implications stay `def Prop` -/

/-- Kato / Kolyvagin: analytic non-vanishing ⇒ `MW_rank_zero_fintype`.
    `L_26a1_ne_zero` is the existing uninhabited name (not
    `1/3 ≠ 0`, and not a unit-type inhabitant). Uninhabited. -/
def Kolyvagin_L_nonzero_imp_MW_rank_zero : Prop :=
  (L_26a1_ne_zero → MW_rank_zero_26a1_fintype) ∧
    (L_26b1_ne_zero → MW_rank_zero_26b1_fintype)

/-- `|Sel₂| = 1` (displayed Nat) ⇒ `MW_rank_zero_fintype`.
    Uninhabited. `Sel2_card_* = 1` is a numeral theorem; this
    implication is not, and must not be inhabited. -/
def TwoDescent_implies_MW_rank_zero_fintype : Prop :=
  (Sel2_card_26a1 = 1 → MW_rank_zero_26a1_fintype) ∧
    (Sel2_card_26b1 = 1 → MW_rank_zero_26b1_fintype)

theorem LLL_nogo_persists_after_Kolyvagin_MW_Rank0 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check not_IsSubsingleton_26a1_reexport
#check not_IsSubsingleton_26b1_reexport
#check MW_rank_zero_fintype
#check MW_rank_zero_26a1_fintype
#check MW_free_quotient_finite
#check L_over_Omega_26a1_ne_zero_reexport
#check Sel2_card_both_one
#check torsion_3_mul_7_eq_21
#check Kolyvagin_MW_Rank0_26a1_26b1_inhabited
#check Kolyvagin_L_nonzero_imp_MW_rank_zero
#check TwoDescent_implies_MW_rank_zero_fintype
#check MW_rank_zero_26a1
#print axioms not_IsSubsingleton_26a1_reexport
#print axioms L_over_Omega_26a1_eq_one_third
#print axioms Kolyvagin_MW_Rank0_26a1_26b1_inhabited
#print axioms LLL_nogo_persists_after_Kolyvagin_MW_Rank0

end BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1
