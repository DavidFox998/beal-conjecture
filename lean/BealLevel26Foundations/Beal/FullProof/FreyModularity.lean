/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.74.0 — displayed Frey mod-13 trace
miss at `B = 196` and `B = 1500003`.

`frey_mod13_irreducible` is the v8.69.0
Int-mod-13 mismatch
(`-2` vs `0`/`12`, `24` vs `21`/`-39`).
That is **not** a Mathlib residual-image
theorem, **not** Borel image, **not** Mazur,
and **not** Ribet level-lowering.
`irreducible_of_trace_mismatch` is that
same mismatch, not an irreducibility test.

`frey_modular` is `Classical.em` on the
two-witness predicate, not BCDT.
`level_lowering_to_26` stays an uninhabited
`Prop`.  The inhabited pack remains
`ribet_mazur_pack_q_13_level_26` via
`hK.left` / `hK.right` in RibetMazur.

Does **not** import `RibetMazur` (that would
cycle).  Does **not** import
`Mathlib.NumberTheory.ModularForms.Basic`.
Does **not** import the axiom
`frey_modular_13` from
`Modularity/FreyModularity_13.lean`.
Not imported by the 24-module none chain.

Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.  No new Beal `∀`.
-/

import BealLevel26Foundations.Beal.FullProof.Level26_Newforms
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_Density_2M

namespace BealLevel26Foundations.FreyModularity

open BealLevel26Foundations.Level26_Newforms

/-- Displayed residual-trace miss at `ℓ = 13`.
Not a Mathlib Galois representation, not
Borel image, not Mazur. -/
def IrreducibleMod13Trace (aE a1 a2 : Int) : Prop :=
  aE % 13 ≠ a1 % 13 ∧ aE % 13 ≠ a2 % 13

/-- Identity on a locked-trace mismatch.
Not an irreducibility theorem. -/
theorem irreducible_of_trace_mismatch
    {aE a1 a2 : Int}
    (h : aE % 13 ≠ a1 % 13 ∧ aE % 13 ≠ a2 % 13) :
    IrreducibleMod13Trace aE a1 a2 :=
  h

/-- Displayed pack: the two named Frey traces
miss the locked level-26 traces at `ℓ = 13`. -/
def frey_mod13_irreducible_at (B : Nat) : Prop :=
  (B = 196 → IrreducibleMod13Trace (-2) 0 12) ∧
    (B = 1500003 → IrreducibleMod13Trace 24 21 (-39))

/-- Inhabited for the two named witnesses.
`B = 196` uses `level26_a_eliminated_by_53`.
`B = 1500003` uses `level26_b_eliminated_by_443`.
Not residual isomorphism.  Not Ribet. -/
theorem frey_mod13_irreducible (B : Nat)
    (h : B = 196 ∨ B = 1500003) :
    frey_mod13_irreducible_at B := by
  cases h with
  | inl _h196 =>
    constructor
    · intro _hB
      exact irreducible_of_trace_mismatch level26_a_eliminated_by_53
    · intro _hB
      exact irreducible_of_trace_mismatch level26_b_eliminated_by_443
  | inr _h150 =>
    constructor
    · intro _hB
      exact irreducible_of_trace_mismatch level26_a_eliminated_by_53
    · intro _hB
      exact irreducible_of_trace_mismatch level26_b_eliminated_by_443

/-- `Classical.em` on the two-witness predicate.
Not BCDT, not `frey_modular_13`. -/
theorem frey_modular (B : Nat) :
    (B = 196 ∨ B = 1500003) ∨ ¬ (B = 196 ∨ B = 1500003) :=
  Classical.em (B = 196 ∨ B = 1500003)

/-- Uninhabited Ribet arrow.  The inhabited
witness pack is
`ribet_mazur_pack_q_13_level_26` via
`hK.left` / `hK.right`. -/
def level_lowering_to_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.ribet_26_to_2_from_displayed_miss

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    BealLevel26Foundations.Chain.Level2.ExistsNewformLevel2 =
      ((0 : Nat) ≠ 0) :=
  BealLevel26Foundations.Level26_Newforms.ExistsNewformLevel2_eq_zero_ne_zero

#check IrreducibleMod13Trace
#check irreducible_of_trace_mismatch
#check frey_mod13_irreducible
#check frey_modular
#check level_lowering_to_26
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms irreducible_of_trace_mismatch
#print axioms frey_mod13_irreducible
#print axioms frey_modular
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.FreyModularity
