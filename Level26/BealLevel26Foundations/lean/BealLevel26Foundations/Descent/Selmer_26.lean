import BealLevel26Foundations.Descent.TwoDescent_26a1_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Descent.Selmer26

open BealLevel26Foundations.Descent.TwoDescent26

/-!
# v4.1.1 Selmer / Sha *names* on displayed `|Sel₂| = 1`

Blueprint: `Sel₂(E/ℚ)` sits in `H¹(G_ℚ, E[2])`, with exact sequence
`0 → E(ℚ)/2E(ℚ) → Sel₂ → Sha[2] → 0`.  Rank `0`, odd torsion, and
`|Sel₂| = 1` would give `Sha[2] = 0`.

This file does not construct that sequence.  Mathlib 4.12 has no
`SelmerGroup`.  Not a Selmer group.  Not Sha[2] triviality.  Not a
Mordell--Weil theorem.

`Sha2_*_trivial` is `SelmerBound_* = 1`, i.e. `1 = 1`, matching the
JSON `sha2_trivial` field from `Descent_26.json` (SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`).
That is computational PARI evidence, not a Sha theorem.
`RankZero_*_from_Selmer` aliases those equalities and does not
replace `J0_26_Q_RankZero26.of_qExpansion.rankZero`.

The frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`
is unchanged.
-/

/-- `1 = 1` on the displayed `|Sel₂|` Nat.  Not Sha[2] triviality. -/
def Sha2_26a1_trivial : Prop := SelmerBound_26a1 = 1

/-- `1 = 1` on the displayed `|Sel₂|` Nat.  Not Sha[2] triviality. -/
def Sha2_26b1_trivial : Prop := SelmerBound_26b1 = 1

/-- Alias of `Sha2_26a1_trivial` (`1 = 1`).  Not a Mordell--Weil theorem. -/
def RankZero_26a1_from_Selmer : Prop := Sha2_26a1_trivial

/-- Alias of `Sha2_26b1_trivial` (`1 = 1`).  Not a Mordell--Weil theorem. -/
def RankZero_26b1_from_Selmer : Prop := Sha2_26b1_trivial

theorem RankZero_26a1_from_Selmer.certified : RankZero_26a1_from_Selmer :=
  rfl

theorem RankZero_26b1_from_Selmer.certified : RankZero_26b1_from_Selmer :=
  rfl

theorem Sha2_26a1_trivial_is_one_eq_one : Sha2_26a1_trivial = (1 = 1) :=
  rfl

theorem Sha2_26b1_trivial_is_one_eq_one : Sha2_26b1_trivial = (1 = 1) :=
  rfl

#print axioms RankZero_26a1_from_Selmer.certified
#print axioms RankZero_26b1_from_Selmer.certified

end BealLevel26Foundations.Descent.Selmer26
