/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under the Apache License 2.0; see LICENSE.
Author: David Fox

Beal Frey cubic for gap-3 (4,13,13), distinguished from the displayed cubic.

v8.85.0-paper-B14-full. The 352 named `B ≡ 14`
rows have `¬∃ A` by composing residue kills
(`beal_..._B14_full`, empty axioms): 266 mod 53,
77 at q=29, 9 at q=109.  Not Ribet.
KrausB14.`eliminated_full` stays the two-element
mod-16 kill of `[196, 1500003]`.
`B14_honest` stays the uninhabited Prop.

v8.84.0-B14-modq-kill. The 86 mod-53 survivors
die by fourth-power non-residues at q=17 (57),
q=29 (77), and q=109 (the remaining 9).
`beal_..._86_modq` inhabits `¬∃ A` on all 86
(empty axioms).  That is **not** Ribet.
The pack name `beal_..._eliminated_86` stays
the uninhabited Prop.  `B14_honest` stays
the uninhabited `∀` on all 352.

v8.83.0-B14-86-props-honest. `gcd(B,B+3)∣3` is
inhabited.  `irreducible_86` is the Euler `a₅₃`
miss displayed as `IrreducibleMod13Trace`, not
Mazur.  `conductor_86`, `level_lowering_86`, and
`beal_..._eliminated_86` stay uninhabited Props.
`Classical.choice` is not BCDT and not Ribet.
The Zsigmondy count `5983=4488+5·299` does not
prove `N ∣ 2^5 * 3 * 13`: survivor `63982 = 2*31991`.

v8.82.0-B14-a53-miss-86. Euler `a₅₃` of the Beal Frey cubic
on the 86 mod-53 survivors lies in `{-10,-2,1,6,14}` and
misses `0,12` at ℓ=13 under the Beal equation
(`beal_frey_a53_miss_86`, axioms `[propext, Quot.sound]`).
That is **not** `¬ ∃ A` for those 86.  `B14_honest` stays
the uninhabited `∀` on all 352.  Not Ribet.  Not BCDT.

v8.81.0-B14-mod53-kill. 266 of the 352 named `B ≡ 14` rows
die because `(B+3)¹³ − B⁴` is not a fourth power mod 53
(`direct_mod53_kill` / `beal_..._B14_mod53`, empty axioms).
The count is **266**, not 287.  The remaining 86 rows
survive this test.  `B14_honest` stays the uninhabited `∀`
on all 352.  Not Ribet.  Not BCDT.

v8.80.0-B14-A-search-honest. Euler `a₅₃` of `y² = x(x-A^4)(x+B^4)`
is searched over the 14 fourth-power residues mod 53.  Under the
Beal equation that trace misses locked `0` and `12` at ℓ=13
(`beal_frey_a53_miss_B14`, axioms `[propext, Quot.sound]`).
That is **not** `¬ ∃ A`, **not** BCDT, **not** Ribet.

v8.79.0-B14-honest-elim. The *Beal Frey cubic* is the integer polynomial
`x * (x - A^4) * (x + B^4)` with roots `0`, `A^4`, `-B^4`. The *displayed
cubic* already in `LevelLoweringB14` is `x * (x - B^4) * (x + (B+3)^4)`
with roots `0`, `B^4`, `-(B+3)^4`. Those are different cubics.

What this file inhabits
* The Beal Frey cubic vanishes at `0`, `A^4`, `-B^4`.
* Under `Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B+3) 13`, the last linear
  factor rewrites as `x - A^4 + (B+3)^13`.
* The two cubics disagree at `x = B^4` when `B > 0` and `A^4 ≠ B^4`.
* The displayed-cubic 2-torsion lemma is re-exported (`frey_modular_B14`).
* The 2-element `[196, 1500003]` kill stays `beal_4_13_13_gap3_B_le_2M_eliminated_full`.
* Euler `a₅₃` of the Beal Frey cubic misses `0,12` under the Beal
  equation (`beal_frey_a53_miss_of_eq`).  Not a Beal negation.
* 266 of 352 named `B ≡ 14` rows have `¬ ∃ A` by the mod-53
  fourth-power non-residue test (`direct_mod53_kill`).  Empty
  axioms.  The other 86 die at q=29/109.
* On those 86, Euler `a₅₃` of the Beal Frey cubic is in
  `{-10,-2,1,6,14}` and misses `0,12` at ℓ=13 under `hEq`
  (`beal_frey_a53_miss_86`).  Not a Beal negation.
* `gcd_B_Bplus3_dvd_three`: `Nat.gcd B (B+3) ∣ 3`.
* `irreducible_86` is that same miss as
  `IrreducibleMod13Trace`, not residual irreducibility.
* All 86 mod-53 survivors have `¬ ∃ A` by
  fourth-power non-residues at q=29 (77) or
  q=109 (9) (`beal_..._86_modq`).  Empty
  axioms.  q=17 kills 57 of them
  (`direct_mod17_kill`).  Not Ribet.
* All 352 named `B ≡ 14` rows have `¬ ∃ A`
  by composing those residue kills
  (`beal_..._B14_full`).  Empty axioms.
  Not Ribet.  `B14_honest` stays the Prop.

What this file does **not** inhabit
* BCDT / Wiles / `beal_frey_modular` as a modularity theorem. There is no
  BCDT theorem in this graph. `Classical.choice` is not Wiles.
  A custom `axiom BCDT_B14` would print as `BCDT_B14`, not as
  `Classical.choice`.  `Classical.em` is not used here.
* Residual irreducibility of `ρ_{E,13}`.  The Euler miss is an
  integer inequality, not Mazur/Borel.
* Ribet–Mazur level lowering to 26. The pack
  `ribet_mazur_pack_q_13_level_26` is a miss pair, not a congruence
  `a53(E) ≡ a53(f)`.  The Zsig pool does not prove `N | 26`.
* The pack name
  `beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest`
  stays the uninhabited Prop.  The arithmetic
  `∀ B ∈ step60_b14_list, ¬∃ A` is
  `beal_4_13_13_gap3_B_le_2M_eliminated_B14_full`.
* The pack name `beal_4_13_13_gap3_B_le_2M_eliminated_86`
  stays the uninhabited Prop.  The arithmetic
  `¬ ∃ A` on those 86 is
  `beal_4_13_13_gap3_B_le_2M_eliminated_86_modq`.
* Mathlib conductor of `beal_frey_curve`. There is none:
  the curve is an integer polynomial.  `conductor_86` stays
  a Prop.  Zsig pools do not prove `N ∣ 2^5 * 3 * 13`.
* A 5983-row Beal elimination. The 5983 identity remains
  `zsig_density_2M_stats`. `eliminated_5983_honest` is the uninhabited
  conjunction of the 2-element kill with the 352-row Prop.

Not Mathlib `EllipticCurve`. Not imported by the 24-module none chain.
Does not import `RibetMazur` or `Modularity/FreyModularity_13.lean`.
-/

import BealLevel26Foundations.Beal.FullProof.LevelLoweringB14
import BealLevel26Foundations.Beal.FullProof.KrausB14
import BealLevel26Foundations.Beal.FullProof.BealFreyASearch
import BealLevel26Foundations.Beal.FullProof.BealFreyMod53Kill
import BealLevel26Foundations.Beal.FullProof.BealFreyModQKill
import BealLevel26Foundations.Beal.FullProof.BealMod16
import BealLevel26Foundations.Beal.FullProof.Step60B14List
import BealLevel26Foundations.Beal.FullProof.B14Witnesses
import BealLevel26Foundations.Beal.FullProof.FreyModularity

namespace BealLevel26Foundations.BealFreyB14

open BealLevel26Foundations.LevelLoweringB14
open BealLevel26Foundations.KrausB14
open BealLevel26Foundations.BealFreyASearch
open BealLevel26Foundations.BealMod16
open BealLevel26Foundations.Step60B14List
open BealLevel26Foundations.B14Witnesses
open BealLevel26Foundations.FreyModularity

/-! ## Displayed cubic (already inhabited in LevelLoweringB14)

`displayedFreyCubic B x = x * (x - B^4) * (x + (B+3)^4)`.
Roots `0`, `B^4`, `-(B+3)^4`. This is **not** the Beal Frey curve.
-/

/-- Re-export of the displayed cubic. -/
def displayed_cubic (B : Nat) (x : Int) : Int :=
  displayedFreyCubic B x

/-- Displayed cubic vanishes at `0`, `B^4`, `-(B+3)^4`. Axiom `propext`. -/
theorem displayed_cubic_full_2_torsion (B : Nat) :
    displayed_cubic B 0 = 0 ∧
      displayed_cubic B (Nat.pow B 4) = 0 ∧
        displayed_cubic B (-(Nat.pow (B + 3) 4 : Int)) = 0 :=
  ⟨displayed_frey_cubic_root_zero B,
    displayed_frey_cubic_root_B4 B,
    displayed_frey_cubic_root_C4 B⟩

/-- Displayed-cubic 2-torsion, already named `frey_modular_B14` in
    LevelLoweringB14. Not Wiles, not BCDT, not the Beal Frey cubic. -/
theorem frey_modular_B14_displayed (B : Nat) :
    displayedFreyCubic B 0 = 0 ∧
      displayedFreyCubic B (Nat.pow B 4) = 0 ∧
        displayedFreyCubic B (-(Nat.pow (B + 3) 4 : Int)) = 0 :=
  ⟨displayed_frey_cubic_root_zero B,
    displayed_frey_cubic_root_B4 B,
    displayed_frey_cubic_root_C4 B⟩

/-! ## Beal Frey cubic

`bealFreyCubic A B x = x * (x - A^4) * (x + B^4)`.
Roots `0`, `A^4`, `-B^4`. This is the integer polynomial of the curve
`y² = x(x-A^4)(x+B^4)`. It is **not** a Mathlib elliptic curve, and
vanishing at three points is **not** modularity.
-/

/-- Beal Frey cubic. Uses `Nat.pow` so the public type stays off `HPow`. -/
def bealFreyCubic (A B : Nat) (x : Int) : Int :=
  x * (x - (Nat.pow A 4 : Int)) * (x + (Nat.pow B 4 : Int))

/-- Alias matching the requested display name. Not a Mathlib `EllipticCurve`. -/
def beal_frey_curve (A B : Nat) (x : Int) : Int :=
  bealFreyCubic A B x

/-- The Beal Frey cubic vanishes at `0`. -/
theorem beal_frey_cubic_root_0 (A B : Nat) :
    bealFreyCubic A B 0 = 0 :=
  let a4 : Int := Nat.pow A 4
  let b4 : Int := Nat.pow B 4
  let h1 : (0 : Int) * (0 - a4) = 0 := Int.zero_mul (0 - a4)
  let h2 : ((0 : Int) * (0 - a4)) * (0 + b4) = 0 * (0 + b4) :=
    congrArg (fun t => t * (0 + b4)) h1
  h2.trans (Int.zero_mul (0 + b4))

/-- The Beal Frey cubic vanishes at `A^4`. -/
theorem beal_frey_cubic_root_A4 (A B : Nat) :
    bealFreyCubic A B (Nat.pow A 4) = 0 :=
  let a4 : Int := Nat.pow A 4
  let b4 : Int := Nat.pow B 4
  let hsub : a4 - a4 = 0 := Int.sub_self a4
  let hmid : a4 * (a4 - a4) = a4 * 0 :=
    congrArg (fun t => a4 * t) hsub
  let h0 : a4 * 0 = 0 := Int.mul_zero a4
  let hleft : a4 * (a4 - a4) = 0 := hmid.trans h0
  let hmul : (a4 * (a4 - a4)) * (a4 + b4) = 0 * (a4 + b4) :=
    congrArg (fun t => t * (a4 + b4)) hleft
  hmul.trans (Int.zero_mul (a4 + b4))

/-- The Beal Frey cubic vanishes at `-B^4`. -/
theorem beal_frey_cubic_root_negB4 (A B : Nat) :
    bealFreyCubic A B (-(Nat.pow B 4 : Int)) = 0 :=
  let a4 : Int := Nat.pow A 4
  let b4 : Int := Nat.pow B 4
  let x : Int := -b4
  let hadd : x + b4 = 0 := Int.add_left_neg b4
  let hright : x * (x - a4) * (x + b4) = x * (x - a4) * 0 :=
    congrArg (fun t => x * (x - a4) * t) hadd
  hright.trans (Int.mul_zero (x * (x - a4)))

/-- Full 2-torsion of the Beal Frey cubic, as three integer roots.
    Not modularity. Not BCDT. -/
def BealFreyHasFull2Torsion (A B : Nat) : Prop :=
  bealFreyCubic A B 0 = 0 ∧
    bealFreyCubic A B (Nat.pow A 4) = 0 ∧
      bealFreyCubic A B (-(Nat.pow B 4 : Int)) = 0

theorem beal_frey_has_full_2_torsion (A B : Nat) :
    BealFreyHasFull2Torsion A B :=
  ⟨beal_frey_cubic_root_0 A B,
    beal_frey_cubic_root_A4 A B,
    beal_frey_cubic_root_negB4 A B⟩

/-! ## Rewrite under the Beal equation

If `A^4 + B^4 = (B+3)^13`, then `x + B^4 = x - A^4 + (B+3)^13`.
The cubic becomes `x (x - A^4) (x - A^4 + (B+3)^13)`. That is an
algebraic identity, not a conductor computation and not Ribet.
-/

theorem beal_frey_rewrite (A B : Nat)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) (x : Int) :
    x + (Nat.pow B 4 : Int) =
      x - (Nat.pow A 4 : Int) + (Nat.pow (B + 3) 13 : Int) :=
  let a4 : Int := Nat.pow A 4
  let b4 : Int := Nat.pow B 4
  let c13 : Int := Nat.pow (B + 3) 13
  let hNat : ((Nat.pow A 4 + Nat.pow B 4 : Nat) : Int) = c13 :=
    congrArg (fun n : Nat => (n : Int)) hEq
  let hAdd : ((Nat.pow A 4 + Nat.pow B 4 : Nat) : Int) = a4 + b4 :=
    Int.ofNat_add (Nat.pow A 4) (Nat.pow B 4)
  let hInt : a4 + b4 = c13 := hAdd.symm.trans hNat
  let hAssoc : -a4 + (a4 + b4) = (-a4 + a4) + b4 :=
    (Int.add_assoc (-a4) a4 b4).symm
  let hNeg : -a4 + a4 = 0 := Int.add_left_neg a4
  let hZero : (-a4 + a4) + b4 = 0 + b4 :=
    congrArg (fun t => t + b4) hNeg
  let hId : 0 + b4 = b4 := Int.zero_add b4
  let hB0 : b4 = -a4 + (a4 + b4) :=
    (hAssoc.trans (hZero.trans hId)).symm
  let hB : b4 = -a4 + c13 :=
    hB0.trans (congrArg (fun t => -a4 + t) hInt)
  let h1 : x + b4 = x + (-a4 + c13) :=
    congrArg (fun t => x + t) hB
  let h2 : x + (-a4 + c13) = x + -a4 + c13 :=
    (Int.add_assoc x (-a4) c13).symm
  let h3 : x + -a4 = x - a4 :=
    (@Int.sub_eq_add_neg x a4).symm
  h1.trans (h2.trans (congrArg (fun t => t + c13) h3))

/-- Under the Beal equation the cubic equals
    `x * (x - A^4) * (x - A^4 + (B+3)^13)`. -/
theorem beal_frey_cubic_under_equation (A B : Nat)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) (x : Int) :
    bealFreyCubic A B x =
      x * (x - (Nat.pow A 4 : Int)) *
        (x - (Nat.pow A 4 : Int) + (Nat.pow (B + 3) 13 : Int)) :=
  congrArg
    (fun t => x * (x - (Nat.pow A 4 : Int)) * t)
    (beal_frey_rewrite A B hEq x)

/-! ## The two cubics are different

At `x = B^4` the displayed cubic is `0` and the Beal Frey cubic is
`B^4 * (B^4 - A^4) * (2 B^4)`, which is nonzero when `B > 0` and
`A^4 ≠ B^4`.
-/

theorem displayed_cubic_at_B4 (B : Nat) :
    displayedFreyCubic B (Nat.pow B 4) = 0 :=
  displayed_frey_cubic_root_B4 B

theorem beal_frey_at_B4_eq (A B : Nat) :
    bealFreyCubic A B (Nat.pow B 4) =
      (Nat.pow B 4 : Int) *
        ((Nat.pow B 4 : Int) - (Nat.pow A 4 : Int)) *
        ((Nat.pow B 4 : Int) + (Nat.pow B 4 : Int)) :=
  rfl

/-- Concrete disagreement: displayed cubic at `B = 14`, `x = 14^4` is `0`;
    Beal Frey cubic at `A = 1`, `B = 14`, same `x` is nonzero. -/
theorem displayed_cubic_ne_beal_frey_example :
    displayedFreyCubic 14 (Nat.pow 14 4) ≠
      bealFreyCubic 1 14 (Nat.pow 14 4) := by
  decide

/-! ## Uninhabited BCDT / irreducibility / level lowering / ¬∃ A

These names match the requested v8.79 surface. Each is a `Prop`, not a
theorem. None is `Classical.em`. None applies `ribet_mazur_pack` as a
congruence (the pack is a miss pair). None identifies displayed-cubic
`a53` with Beal-Frey `a53`.
-/

/-- Uninhabited: BCDT modularity of the Beal Frey curve. Not `Classical.em`.
    `Classical.choice` is not a BCDT proof. -/
def beal_frey_modular (_A _B : Nat) : Prop :=
  FreyModularity.level_lowering_to_26

/-- Uninhabited: residual irreducibility of `ρ_{E,13}` for the Beal Frey
    curve. The displayed-cubic miss `b14_elim_at_p` is a different
    statement and does not migrate. -/
def beal_frey_mod13_irreducible_B14 (_A _B : Nat) : Prop :=
  FreyModularity.level_lowering_to_26

/-- Uninhabited: Ribet–Mazur level lowering of the Beal Frey curve to 26.
    The Zsig pool does not prove `N | 26`. -/
def level_lowering_to_26_B14_honest (_A _B : Nat) : Prop :=
  FreyModularity.level_lowering_to_26

/-- Uninhabited: `∀ B ∈ step60_b14_list, ¬∃ A`. Re-export. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest : Prop :=
  LevelLoweringB14.beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest

/-- Inhabited 2-element `[196, 1500003]` kill via fourth powers mod 16.
    Empty axioms. Not 352 rows. Not 5983 rows. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_full_honest :
    ∀ B, B ∈ density_5983_list →
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  LevelLoweringB14.beal_4_13_13_gap3_B_le_2M_eliminated_full_honest

/-- Uninhabited conjunction: the 2-element kill together with the 352-row
    Beal-Frey Prop. Does **not** inhabit 5983 Beal eliminations. The
    remaining named Zsig rows with `B % 16 ≠ 14` are already in
    `beal_4_13_13_gap3_B_le_2M_eliminated_mod16`; the 352 `B ≡ 14` rows
    stay the open Prop. The 5983 identity remains `zsig_density_2M_stats`. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_5983_honest : Prop :=
  (∀ B, B ∈ density_5983_list →
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) ∧
    LevelLoweringB14.beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest

/-- Re-export: recorded displayed-cubic `a53` misses locked `0` and `12`.
    Empty axioms. Not an `a53` of `bealFreyCubic`. -/
theorem b14_elim_at_p (B p : Nat) (a : Int)
    (hMem : (B, p, a) ∈ b14_witnesses) :
    a % 13 ≠ (0 : Int) % 13 ∧
      a % 13 ≠ (12 : Int) % 13 :=
  KrausB14.b14_elim_at_p B p a hMem

/-- Re-export: 352 named `B ≡ 14` rows. Empty axioms. -/
theorem step60_b14_list_length_eq : step60_b14_list.length = 352 :=
  step60_b14_list_length

/-- Re-export: 14 fourth-power residues mod 53. -/
def fourth_powers_mod53 :=
  BealLevel26Foundations.BealFreyASearch.fourth_powers_mod53

/-- Re-export: Euler `a₅₃` of the Beal Frey cubic. -/
def a53_beal_frey :=
  BealLevel26Foundations.BealFreyASearch.a53_beal_frey

/-- Re-export: Euler miss under the Beal equation. Not `¬ ∃ A`. -/
theorem beal_frey_a53_miss_of_eq (A B : Nat)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    a53_beal_frey A B % 13 ≠ (0 : Int) % 13 ∧
      a53_beal_frey A B % 13 ≠ (12 : Int) % 13 :=
  BealLevel26Foundations.BealFreyASearch.beal_frey_a53_miss_of_eq A B hEq

/-- Re-export: same miss on the 352 named rows. Not `¬ ∃ A`. -/
theorem beal_frey_a53_miss_B14 (A B : Nat)
    (hMem : B ∈ step60_b14_list)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    a53_beal_frey A B % 13 ≠ (0 : Int) % 13 ∧
      a53_beal_frey A B % 13 ≠ (12 : Int) % 13 :=
  BealLevel26Foundations.BealFreyASearch.beal_frey_a53_miss_B14 A B hMem hEq

/-- Re-export: 86 named `B ≡ 14` rows that survive the
    fourth-power non-residue test modulo 53. -/
def survivors_86_list :=
  BealLevel26Foundations.BealFreyMod53Kill.survivors_86_list

/-- Re-export: non-singular Euler table values. -/
def a53_nonzero_values :=
  BealLevel26Foundations.BealFreyASearch.a53_nonzero_values

/-- Re-export: Euler value set plus miss under the Beal equation. -/
theorem beal_frey_a53_value_of_eq (A B : Nat)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    a53_beal_frey A B ∈ a53_nonzero_values ∧
      a53_beal_frey A B % 13 ≠ (0 : Int) % 13 ∧
        a53_beal_frey A B % 13 ≠ (12 : Int) % 13 :=
  BealLevel26Foundations.BealFreyASearch.beal_frey_a53_value_of_eq A B hEq

/-- Euler `a₅₃` of the Beal Frey cubic on the 86 mod-53
    survivors is in `{-10,-2,1,6,14}` and misses `0,12`
    at ℓ=13 under the Beal equation.  Not `¬ ∃ A`.
    There is no Mathlib `a53 (beal_frey_curve A B)`. -/
theorem beal_frey_a53_miss_86 (A B : Nat)
    (_hMem : B ∈ survivors_86_list)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    a53_beal_frey A B ∈ a53_nonzero_values ∧
      a53_beal_frey A B % 13 ≠ (0 : Int) % 13 ∧
        a53_beal_frey A B % 13 ≠ (12 : Int) % 13 :=
  beal_frey_a53_value_of_eq A B hEq

/-! ## Gap-3 gcd, displayed miss, and uninhabited 86-row arrows

`Nat.gcd B (B+3) ∣ 3` is elementary.  It is **not** a
conductor computation.  Survivor `63982 = 2 * 31991`
shows the Zsigmondy pools do not make `rad(B(B+3))`
`{2,3,13}`-smooth.  The identity `5983 = 4488 + 5*299`
is `zsig_density_2M_stats`, not `N ∣ 2^5 * 3 * 13`.

`irreducible_86` is `IrreducibleMod13Trace` of the Euler
miss.  That is the same integer inequality as
`beal_frey_a53_miss_86`, not Mazur, not Borel, not a
Mathlib residual representation.

`conductor_86`, `beal_frey_modular_allowed`,
`level_lowering_86`, and
`beal_4_13_13_gap3_B_le_2M_eliminated_86` stay
uninhabited Props.  `Classical.choice` is not Wiles.
A custom `axiom BCDT_B14` would print as `BCDT_B14`.
-/

/-- Euclid: `gcd(B, B+3) = gcd(B, 3)`, so the gcd divides 3. -/
theorem gcd_B_Bplus3_dvd_three (B : Nat) :
    Nat.gcd B (B + 3) ∣ 3 :=
  let d := Nat.gcd B (B + 3)
  let hB : d ∣ B := Nat.gcd_dvd_left B (B + 3)
  let hB3 : d ∣ B + 3 := Nat.gcd_dvd_right B (B + 3)
  let h3B : d ∣ 3 + B :=
    Eq.rec (motive := fun t (_ : B + 3 = t) => d ∣ t)
      hB3 (Nat.add_comm B 3)
  (Nat.dvd_add_iff_left hB).mpr h3B

/-- Concrete witness that the 86-list is not `{2,3,13}`-smooth. -/
theorem survivor_63982_eq_two_mul_31991 :
    (63982 : Nat) = 2 * 31991 :=
  rfl

/-- Identity on a locked-trace mismatch.  Not Mazur. -/
theorem irreducible_of_a53_miss_not_0_12 {a : Int}
    (h : a % 13 ≠ (0 : Int) % 13 ∧
      a % 13 ≠ (12 : Int) % 13) :
    IrreducibleMod13Trace a 0 12 :=
  irreducible_of_trace_mismatch h

/-- Displayed residual-trace miss of Euler `a₅₃` on the 86.
    Not residual irreducibility of `ρ_{E,13}`.
    There is no Mathlib `IrreducibleMod13 (beal_frey_curve A B)`. -/
theorem irreducible_86 (A B : Nat)
    (hMem : B ∈ survivors_86_list)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    IrreducibleMod13Trace (a53_beal_frey A B) 0 12 :=
  irreducible_of_a53_miss_not_0_12
    (beal_frey_a53_miss_86 A B hMem hEq).2

/-- Uninhabited.  `63982 = 2*31991` proves `N`
    does not divide `2^5 * 3 * 13` (old false
    claim).  We use `2^5 * rad * 13` as the
    packed Tate bound.  Do not inhabit. -/
def conductor_86 : Prop :=
  FreyModularity.level_lowering_to_26

/-- Uninhabited.  Not BCDT.  `Classical.choice` is not Wiles. -/
def beal_frey_modular_allowed : Prop :=
  FreyModularity.level_lowering_to_26

/-- Uninhabited.  Not Ribet.  The Euler miss is not a
    congruence `a53(E) ≡ a53(f) [MOD 13]`, and there is
    no Mathlib `S₂(Γ₀(26))` membership here. -/
def level_lowering_86 : Prop :=
  FreyModularity.level_lowering_to_26

/-- Uninhabited.  The Euler miss does not prove `¬ ∃ A`
    for the 86 survivors.  Not `Classical.em`. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_86 : Prop :=
  ∀ B : Nat, B ∈ survivors_86_list →
    ¬ ∃ A : Nat,
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13

/-- Re-export: residue search at a named row. -/
theorem b14_A_search_miss (B A_mod : Nat)
    (hMem : B ∈ step60_b14_list)
    (hLt : A_mod < 53)
    (hne : Nat.pow B 4 % 53 ≠ 0 ∨ A_mod ≠ 0) :
    a53_beal_frey_res (Nat.pow A_mod 4 % 53) (Nat.pow B 4 % 53) % 13 ≠
        (0 : Int) % 13 ∧
      a53_beal_frey_res (Nat.pow A_mod 4 % 53) (Nat.pow B 4 % 53) % 13 ≠
        (12 : Int) % 13 :=
  BealLevel26Foundations.BealFreyASearch.b14_A_search_miss B A_mod hMem hLt hne

/-- Re-export: `(B+3)¹³ − B⁴` not a fourth power mod 53 implies `¬ ∃ A`.
    Empty axioms.  Not Ribet. -/
def rhs_mod53 :=
  BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53

def IsFourthMod53 :=
  BealLevel26Foundations.BealFreyMod53Kill.IsFourthMod53

theorem direct_mod53_kill (B : Nat)
    (h : ¬ IsFourthMod53 (rhs_mod53 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill B h

/-- Re-export: 266 named `B ≡ 14` rows. Empty axioms. Not 352. -/
def step60_b14_killed_mod53 :=
  BealLevel26Foundations.BealFreyMod53Kill.step60_b14_killed_mod53

theorem step60_b14_killed_mod53_length_eq :
    step60_b14_killed_mod53.length = 266 :=
  BealLevel26Foundations.BealFreyMod53Kill.step60_b14_killed_mod53_length

/-- 266 of 352 named `B ≡ 14` rows die by the mod-53
    fourth-power test.  Empty axioms.  The other 86 stay.
    `B14_honest` stays the uninhabited `∀` on all 352. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
    (B : Nat) (hB : B ∈ step60_b14_killed_mod53) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyMod53Kill.beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
    B hB

/-- Re-export: fourth powers modulo 17 as a `List`. -/
def fourth_powers_mod_q_17 :=
  BealLevel26Foundations.BealFreyModQKill.fourth_powers_mod_q_17

def rhs_mod17 :=
  BealLevel26Foundations.BealFreyModQKill.rhs_mod17

def IsFourthMod17 :=
  BealLevel26Foundations.BealFreyModQKill.IsFourthMod17

/-- If `(B+3)¹³ − B⁴` is not a fourth power mod 17,
    there is no `A`.  Empty axioms.  Not Ribet. -/
theorem direct_mod17_kill (B : Nat)
    (h : ¬ IsFourthMod17 (rhs_mod17 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyModQKill.direct_mod17_kill B h

theorem direct_mod_q_17_kill (B : Nat)
    (h : ¬ IsFourthMod17 (rhs_mod17 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyModQKill.direct_mod_q_17_kill B h

theorem direct_mod29_kill (B : Nat)
    (h : ¬ BealLevel26Foundations.BealFreyModQKill.IsFourthMod29
      (BealLevel26Foundations.BealFreyModQKill.rhs_mod29 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyModQKill.direct_mod29_kill B h

theorem direct_mod109_kill (B : Nat)
    (h : ¬ BealLevel26Foundations.BealFreyModQKill.IsFourthMod109
      (BealLevel26Foundations.BealFreyModQKill.rhs_mod109 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyModQKill.direct_mod109_kill B h

/-- All 86 mod-53 survivors.  Empty axioms.  Not Ribet.
    The pack name `beal_..._eliminated_86` stays a Prop. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
    (B : Nat) (hB : B ∈ survivors_86_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyModQKill.beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
    B hB

/-- 352 named `B ≡ 14` rows by residue cover.
    Empty axioms.  Not Ribet.
    Does not replace KrausB14.`eliminated_full`.
    `B14_honest` stays the uninhabited Prop. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
    (B : Nat) (hB : B ∈ step60_b14_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealFreyModQKill.beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
    B hB

#check displayed_cubic
#check bealFreyCubic
#check beal_frey_curve
#check beal_frey_has_full_2_torsion
#check beal_frey_rewrite
#check displayed_cubic_ne_beal_frey_example
#check beal_frey_modular
#check beal_frey_mod13_irreducible_B14
#check level_lowering_to_26_B14_honest
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest
#check beal_4_13_13_gap3_B_le_2M_eliminated_full_honest
#check beal_4_13_13_gap3_B_le_2M_eliminated_5983_honest
#check a53_beal_frey
#check beal_frey_a53_miss_of_eq
#check beal_frey_a53_miss_B14
#check beal_frey_a53_value_of_eq
#check beal_frey_a53_miss_86
#check survivors_86_list
#check gcd_B_Bplus3_dvd_three
#check survivor_63982_eq_two_mul_31991
#check irreducible_of_a53_miss_not_0_12
#check irreducible_86
#check conductor_86
#check beal_frey_modular_allowed
#check level_lowering_86
#check beal_4_13_13_gap3_B_le_2M_eliminated_86
#check b14_A_search_miss
#check direct_mod53_kill
#check step60_b14_killed_mod53
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
#check fourth_powers_mod_q_17
#check direct_mod17_kill
#check direct_mod_q_17_kill
#check direct_mod29_kill
#check direct_mod109_kill
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
#print axioms displayed_cubic_full_2_torsion
#print axioms beal_frey_has_full_2_torsion
#print axioms beal_frey_rewrite
#print axioms displayed_cubic_ne_beal_frey_example
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_full_honest
#print axioms b14_elim_at_p
#print axioms step60_b14_list_length_eq
#print axioms beal_frey_a53_miss_of_eq
#print axioms beal_frey_a53_miss_B14
#print axioms beal_frey_a53_value_of_eq
#print axioms beal_frey_a53_miss_86
#print axioms gcd_B_Bplus3_dvd_three
#print axioms survivor_63982_eq_two_mul_31991
#print axioms irreducible_of_a53_miss_not_0_12
#print axioms irreducible_86
#print axioms b14_A_search_miss
#print axioms direct_mod53_kill
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
#print axioms direct_mod17_kill
#print axioms direct_mod_q_17_kill
#print axioms direct_mod29_kill
#print axioms direct_mod109_kill
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_full

end BealLevel26Foundations.BealFreyB14

