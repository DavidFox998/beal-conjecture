/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.82.0 — Euler `a₅₃` of the Beal Frey
cubic lies in `{-10,-2,1,6,14}` under the Beal
equation (the `(0,0)` cell is excluded because
both residues cannot be `0`).  That inhabits
the value set, not `¬ ∃ A`.  Axioms
`[propext, Quot.sound]`.  The 86-row pack
`beal_frey_a53_miss_86` lives in BealFreyB14.
Track B v8.80.0 — A-mod-53 Euler search on the
Beal Frey cubic `y² = x(x − A⁴)(x + B⁴)`.

Fourth powers modulo 53 are the 14 residues
`[0, 1, 10, 13, 15, 16, 24, 28, 36, 42, 44, 46, 47, 49]`,
not the 13-element set `{0,1,3,5,6,11,16,28,33,36,42,48,49}`.
The Euler trace is `a₅₃ = −∑ χ(x(x−A⁴)(x+B⁴))` on
`𝔽₅₃`, the same convention as `a53_E_196`.
The user's `1 + Σ (2 if square)` count is a
different formula and is not used.

Computed 14×14 table: values lie in
`{-10,-2,0,1,6,14}`.  The value `0` occurs
only at `(A⁴,B⁴) ≡ (0,0) (mod 53)`.  The
other five miss locked `a₅₃(26a1)=0` and
`a₅₃(26b1)=12` at ℓ=13.

Under `A⁴+B⁴=(B+3)¹³` both residues cannot
be `0` (that would force `53 ∣ 3`).  So a
Beal solution would have Euler `a₅₃` in
`{-10,-2,1,6,14}` and would miss `0,12`.

That is **not** BCDT, **not** residual
irreducibility, **not** Ribet, and **not**
`¬ ∃ A`.  A custom `axiom BCDT_B14` would
print as `BCDT_B14`, not as
`Classical.choice`.  `Classical.choice` is
not Wiles.  No `Classical.em`.  No `sorry`.

`beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest`
stays the uninhabited `∀`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.

Does **not** import `RibetMazur`.
Does **not** import `frey_modular_13`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.Step60B14List

namespace BealLevel26Foundations.BealFreyASearch

open BealLevel26Foundations.Step60B14List

/-! ## Fourth powers modulo 53 -/

/-- The 14 fourth-power residues in `𝔽₅₃`.
`0` plus `13 = 52/4` nonzero residues. -/
def fourth_powers_mod53 : List Nat :=
  [0, 1, 10, 13, 15, 16, 24, 28, 36, 42, 44, 46, 47, 49]

theorem fourth_powers_mod53_length :
    fourth_powers_mod53.length = 14 :=
  rfl

set_option maxRecDepth 4096
set_option maxHeartbeats 400000

/-- Every `r < 53` has `r^4 % 53` in the 14-list. -/
theorem fourth_pow_mod53_of_lt :
    ∀ r : Nat, r < 53 →
      Nat.pow r 4 % 53 ∈ fourth_powers_mod53 := by
  decide

/-! ## Euler trace of the Beal Frey cubic over `𝔽₅₃`

`eulerChi53Nat` is Euler's criterion via `Nat.pow`,
not `HPow`.  `cub53` is `x(x − A⁴)(x + B⁴)` reduced
mod 53 using `Nat` subtraction as `x + 53 − (A⁴ % 53)`.
-/

def eulerChi53Nat (a : Nat) : Int :=
  let r := a % 53
  if r = 0 then (0 : Int)
  else if Nat.pow r 26 % 53 = 1 then (1 : Int)
  else (-1 : Int)

def cub53 (A4 B4 x : Nat) : Nat :=
  let a := A4 % 53
  let b := B4 % 53
  let xx := x % 53
  xx * ((xx + 53 - a) % 53) * ((xx + b) % 53)

/-- `a₅₃` of `y² = x(x − A4)(x + B4)` over `𝔽₅₃`.
Not a Mathlib elliptic-curve trace. -/
def a53_beal_frey_res (A4 B4 : Nat) : Int :=
  -((List.range 53).foldl
      (fun s x => s + eulerChi53Nat (cub53 A4 B4 x))
      (0 : Int))

/-- Reduced residues: `a₅₃` of the Beal Frey cubic
depends only on `A^4 % 53` and `B^4 % 53`. -/
def a53_beal_frey (A B : Nat) : Int :=
  a53_beal_frey_res (Nat.pow A 4 % 53) (Nat.pow B 4 % 53)

set_option maxRecDepth 8192
set_option maxHeartbeats 800000

/-- Sample cell: `A⁴ ≡ 1`, `B⁴ ≡ 1` gives `14`. -/
theorem a53_beal_frey_res_1_1 :
    a53_beal_frey_res 1 1 = (14 : Int) := by
  decide

set_option maxRecDepth 8192
set_option maxHeartbeats 800000

/-- Sample cell: `A⁴ ≡ 0`, `B⁴ ≡ 1` gives `1`. -/
theorem a53_beal_frey_res_0_1 :
    a53_beal_frey_res 0 1 = (1 : Int) := by
  decide

set_option maxRecDepth 8192
set_option maxHeartbeats 800000

/-- Singular cell: `A⁴ ≡ B⁴ ≡ 0` gives `0`. -/
theorem a53_beal_frey_res_0_0 :
    a53_beal_frey_res 0 0 = (0 : Int) := by
  decide

/-! ## Finite pair list and Euler miss -/

def fourth_power_pairs : List (Nat × Nat) :=
  fourth_powers_mod53.bind fun A4 =>
    fourth_powers_mod53.map fun B4 => (A4, B4)

theorem mem_fourth_power_pairs {A4 B4 : Nat}
    (hA : A4 ∈ fourth_powers_mod53)
    (hB : B4 ∈ fourth_powers_mod53) :
    (A4, B4) ∈ fourth_power_pairs :=
  List.mem_bind_of_mem hA (List.mem_map_of_mem (fun B => (A4, B)) hB)

set_option maxRecDepth 16384
set_option maxHeartbeats 4000000

/-- Finite search: every fourth-power pair except `(0,0)`
misses locked `0` and `12` at ℓ=13.  The `(0,0)` cell
is the singular cubic `y² = x³`. -/
theorem a53_res_miss_or_zero :
    ∀ p : Nat × Nat, p ∈ fourth_power_pairs →
      p.1 = 0 ∧ p.2 = 0 ∧ a53_beal_frey_res p.1 p.2 = 0 ∨
        a53_beal_frey_res p.1 p.2 % 13 ≠ (0 : Int) % 13 ∧
          a53_beal_frey_res p.1 p.2 % 13 ≠ (12 : Int) % 13 := by
  decide

/-- Computed 14×14 table of Euler traces. -/
def a53_table_values : List Int :=
  [-10, -2, 0, 1, 6, 14]

/-- Non-singular cells: `0` only at `(A⁴,B⁴)≡(0,0)`. -/
def a53_nonzero_values : List Int :=
  [-10, -2, 1, 6, 14]

set_option maxRecDepth 16384
set_option maxHeartbeats 4000000

/-- Finite search: every fourth-power pair has Euler
`a₅₃` in the six-element table.  Empty on `decide`
like `a53_res_miss_or_zero`. -/
theorem a53_res_in_table :
    ∀ p : Nat × Nat, p ∈ fourth_power_pairs →
      a53_beal_frey_res p.1 p.2 ∈ a53_table_values := by
  decide

theorem a53_nonzero_neg10 :
    (-10 : Int) ∈ a53_nonzero_values :=
  List.Mem.head _

theorem a53_nonzero_neg2 :
    (-2 : Int) ∈ a53_nonzero_values :=
  List.Mem.tail _ (List.Mem.head _)

theorem a53_nonzero_1 :
    (1 : Int) ∈ a53_nonzero_values :=
  List.Mem.tail _ (List.Mem.tail _ (List.Mem.head _))

theorem a53_nonzero_6 :
    (6 : Int) ∈ a53_nonzero_values :=
  List.Mem.tail _ (List.Mem.tail _ (List.Mem.tail _ (List.Mem.head _)))

theorem a53_nonzero_14 :
    (14 : Int) ∈ a53_nonzero_values :=
  List.Mem.tail _
    (List.Mem.tail _ (List.Mem.tail _ (List.Mem.tail _ (List.Mem.head _))))

/-- `Mem` does not refine the element parameter; split cons instead. -/
theorem mem_cons_or {α : Type} (x y : α) (ys : List α) :
    x ∈ (y :: ys) → x = y ∨ x ∈ ys
  | List.Mem.head _ => Or.inl rfl
  | List.Mem.tail _ h => Or.inr h

theorem subst_mem_nonzero {a b : Int}
    (h : a = b) (hb : b ∈ a53_nonzero_values) :
    a ∈ a53_nonzero_values :=
  Eq.rec (motive := fun t (_ : b = t) => t ∈ a53_nonzero_values) hb h.symm

/-- Drop the singular `0` cell using the ℓ=13 miss. -/
theorem mem_nonzero_of_miss (a : Int)
    (hMem : a ∈ a53_table_values)
    (hMiss0 : a % 13 ≠ (0 : Int) % 13) :
    a ∈ a53_nonzero_values :=
  let h0 : a ∈ ([-10, -2, 0, 1, 6, 14] : List Int) := hMem
  match mem_cons_or a (-10) [-2, 0, 1, 6, 14] h0 with
  | Or.inl heq => subst_mem_nonzero heq a53_nonzero_neg10
  | Or.inr h1 =>
    match mem_cons_or a (-2) [0, 1, 6, 14] h1 with
    | Or.inl heq => subst_mem_nonzero heq a53_nonzero_neg2
    | Or.inr h2 =>
      match mem_cons_or a (0 : Int) [1, 6, 14] h2 with
      | Or.inl heq =>
          let hMiss00 : (0 : Int) % 13 ≠ (0 : Int) % 13 :=
            Eq.rec (motive := fun t (_ : a = t) =>
                t % 13 ≠ (0 : Int) % 13) hMiss0 heq
          absurd (rfl : (0 : Int) % 13 = (0 : Int) % 13) hMiss00
      | Or.inr h3 =>
        match mem_cons_or a (1 : Int) [6, 14] h3 with
        | Or.inl heq => subst_mem_nonzero heq a53_nonzero_1
        | Or.inr h4 =>
          match mem_cons_or a (6 : Int) [14] h4 with
          | Or.inl heq => subst_mem_nonzero heq a53_nonzero_6
          | Or.inr h5 =>
            match mem_cons_or a (14 : Int) [] h5 with
            | Or.inl heq => subst_mem_nonzero heq a53_nonzero_14
            | Or.inr hempty => nomatch hempty

/-! ## `Nat.pow` reduction modulo 53 -/

theorem pow_mod53 (n : Nat) :
    ∀ k : Nat, Nat.pow n k % 53 = Nat.pow (n % 53) k % 53
  | 0 => rfl
  | k + 1 =>
    let hs : Nat.pow n (k + 1) = Nat.pow n k * n := Nat.pow_succ n k
    let hs' : Nat.pow (n % 53) (k + 1) =
        Nat.pow (n % 53) k * (n % 53) :=
      Nat.pow_succ (n % 53) k
    let hmodmod : (n % 53) % 53 = n % 53 :=
      Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos 52))
    let h1 : (Nat.pow n k * n) % 53 =
        (Nat.pow n k % 53 * (n % 53)) % 53 :=
      Nat.mul_mod (Nat.pow n k) n 53
    let h2 : (Nat.pow n k % 53 * (n % 53)) % 53 =
        (Nat.pow (n % 53) k % 53 * (n % 53)) % 53 :=
      congrArg (fun t => (t * (n % 53)) % 53) (pow_mod53 n k)
    let h3 : (Nat.pow (n % 53) k * (n % 53)) % 53 =
        (Nat.pow (n % 53) k % 53 * ((n % 53) % 53)) % 53 :=
      Nat.mul_mod (Nat.pow (n % 53) k) (n % 53) 53
    let h4 : (Nat.pow (n % 53) k % 53 * (n % 53)) % 53 =
        (Nat.pow (n % 53) k * (n % 53)) % 53 :=
      (congrArg (fun t => (Nat.pow (n % 53) k % 53 * t) % 53)
          hmodmod.symm).trans h3.symm
    (congrArg (fun t => t % 53) hs).trans
      (h1.trans (h2.trans (h4.trans
        (congrArg (fun t => t % 53) hs'.symm))))

theorem fourth_pow_mod53_mem (A : Nat) :
    Nat.pow A 4 % 53 ∈ fourth_powers_mod53 :=
  let hr : A % 53 < 53 := Nat.mod_lt A (Nat.succ_pos 52)
  let hpow : Nat.pow A 4 % 53 = Nat.pow (A % 53) 4 % 53 :=
    pow_mod53 A 4
  hpow ▸ fourth_pow_mod53_of_lt (A % 53) hr

set_option maxRecDepth 4096
set_option maxHeartbeats 400000

theorem pow4_mod53_eq_zero_of_lt :
    ∀ r : Nat, r < 53 → Nat.pow r 4 % 53 = 0 → r = 0 := by
  decide

set_option maxRecDepth 4096
set_option maxHeartbeats 400000

theorem pow13_mod53_ne_zero_of_ne_zero :
    ∀ r : Nat, r < 53 → r ≠ 0 → Nat.pow r 13 % 53 ≠ 0 := by
  decide

theorem three_pow13_mod53_ne_zero :
    Nat.pow 3 13 % 53 ≠ 0 := by
  decide

/-- Under the Beal equation both `A` and `B` cannot be
`0` mod 53: that would force `53 ∣ 3`. -/
theorem beal_not_both_fourth_zero_mod53 (A B : Nat)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    Nat.pow A 4 % 53 ≠ 0 ∨ Nat.pow B 4 % 53 ≠ 0 :=
  match Nat.decEq (Nat.pow A 4 % 53) 0 with
  | isFalse hA => Or.inl hA
  | isTrue hA =>
    match Nat.decEq (Nat.pow B 4 % 53) 0 with
    | isFalse hB => Or.inr hB
    | isTrue hB =>
      let hBlt : B % 53 < 53 := Nat.mod_lt B (Nat.succ_pos 52)
      let hBpow : Nat.pow (B % 53) 4 % 53 = 0 :=
        (pow_mod53 B 4).symm.trans hB
      let hB0 : B % 53 = 0 :=
        pow4_mod53_eq_zero_of_lt (B % 53) hBlt hBpow
      let hB3 : (B + 3) % 53 = 3 :=
        let hadd : (B + 3) % 53 = (B % 53 + 3 % 53) % 53 :=
          Nat.add_mod B 3 53
        let h3 : 3 % 53 = 3 := rfl
        let hsum : (B % 53 + 3 % 53) % 53 = (0 + 3) % 53 :=
          congrArg (fun t => (t + 3 % 53) % 53) hB0
        hadd.trans (hsum.trans (congrArg (fun t => (0 + t) % 53) h3))
      let hCmod : Nat.pow (B + 3) 13 % 53 =
          Nat.pow ((B + 3) % 53) 13 % 53 :=
        pow_mod53 (B + 3) 13
      let hC3 : Nat.pow (B + 3) 13 % 53 = Nat.pow 3 13 % 53 :=
        hCmod.trans (congrArg (fun t => Nat.pow t 13 % 53) hB3)
      let hsum0 : (Nat.pow A 4 + Nat.pow B 4) % 53 = 0 :=
        let hadd := Nat.add_mod (Nat.pow A 4) (Nat.pow B 4) 53
        let hz : (0 + 0) % 53 = 0 := rfl
        hadd.trans
          ((congrArg (fun t => (t + Nat.pow B 4 % 53) % 53) hA).trans
            ((congrArg (fun t => (0 + t) % 53) hB).trans hz))
      let hC0 : Nat.pow (B + 3) 13 % 53 = 0 :=
        (congrArg (fun t => t % 53) hEq).symm.trans hsum0
      let hEq3 : Nat.pow 3 13 % 53 = 0 :=
        hC3.symm.trans hC0
      absurd hEq3 three_pow13_mod53_ne_zero

/-- Euler `a₅₃` of the Beal Frey cubic misses `0` and `12`
at ℓ=13 whenever the Beal equation holds.  Not Ribet. -/
theorem beal_frey_a53_miss_of_eq (A B : Nat)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    a53_beal_frey A B % 13 ≠ (0 : Int) % 13 ∧
      a53_beal_frey A B % 13 ≠ (12 : Int) % 13 :=
  let A4 := Nat.pow A 4 % 53
  let B4 := Nat.pow B 4 % 53
  let hA : A4 ∈ fourth_powers_mod53 := fourth_pow_mod53_mem A
  let hB : B4 ∈ fourth_powers_mod53 := fourth_pow_mod53_mem B
  match a53_res_miss_or_zero (A4, B4) (mem_fourth_power_pairs hA hB) with
  | Or.inr hmiss => hmiss
  | Or.inl ⟨hA0, hB0, _⟩ =>
    match beal_not_both_fourth_zero_mod53 A B hEq with
    | Or.inl hAne => absurd hA0 hAne
    | Or.inr hBne => absurd hB0 hBne

/-- Under the Beal equation, Euler `a₅₃` of the Beal
Frey cubic lies in `{-10,-2,1,6,14}` and misses
locked `0` and `12` at ℓ=13.  Not `¬ ∃ A`.  There
is no Mathlib `a53 (beal_frey_curve A B)`. -/
theorem beal_frey_a53_value_of_eq (A B : Nat)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    a53_beal_frey A B ∈ a53_nonzero_values ∧
      a53_beal_frey A B % 13 ≠ (0 : Int) % 13 ∧
        a53_beal_frey A B % 13 ≠ (12 : Int) % 13 :=
  let hMiss := beal_frey_a53_miss_of_eq A B hEq
  let hTab : a53_beal_frey A B ∈ a53_table_values :=
    a53_res_in_table
      (Nat.pow A 4 % 53, Nat.pow B 4 % 53)
      (mem_fourth_power_pairs (fourth_pow_mod53_mem A) (fourth_pow_mod53_mem B))
  ⟨mem_nonzero_of_miss (a53_beal_frey A B) hTab hMiss.1, hMiss⟩

/-- Same miss, restricted to the 352 named `B ≡ 14` rows.
Still not `¬ ∃ A`. -/
theorem beal_frey_a53_miss_B14 (A B : Nat)
    (_hMem : B ∈ step60_b14_list)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    a53_beal_frey A B % 13 ≠ (0 : Int) % 13 ∧
      a53_beal_frey A B % 13 ≠ (12 : Int) % 13 :=
  beal_frey_a53_miss_of_eq A B hEq

/-- Residue search at a named row, for `A_mod < 53`.
Requires `B^4 ≢ 0` or `A_mod ≠ 0`; the cell `(0,0)` is
singular and hits `a₅₃ = 0`. -/
theorem b14_A_search_miss (B A_mod : Nat)
    (_hMem : B ∈ step60_b14_list)
    (hLt : A_mod < 53)
    (hne : Nat.pow B 4 % 53 ≠ 0 ∨ A_mod ≠ 0) :
    a53_beal_frey_res (Nat.pow A_mod 4 % 53) (Nat.pow B 4 % 53) % 13 ≠
        (0 : Int) % 13 ∧
      a53_beal_frey_res (Nat.pow A_mod 4 % 53) (Nat.pow B 4 % 53) % 13 ≠
        (12 : Int) % 13 :=
  let A4 := Nat.pow A_mod 4 % 53
  let B4 := Nat.pow B 4 % 53
  let hA : A4 ∈ fourth_powers_mod53 :=
    fourth_pow_mod53_of_lt A_mod hLt
  let hB : B4 ∈ fourth_powers_mod53 := fourth_pow_mod53_mem B
  match a53_res_miss_or_zero (A4, B4) (mem_fourth_power_pairs hA hB) with
  | Or.inr hmiss => hmiss
  | Or.inl ⟨hA0, hB0, _⟩ =>
    match hne with
    | Or.inl hBne => absurd hB0 hBne
    | Or.inr hAne =>
      let hAmod0 : A_mod = 0 :=
        pow4_mod53_eq_zero_of_lt A_mod hLt hA0
      absurd hAmod0 hAne

#check fourth_powers_mod53
#check a53_beal_frey
#check a53_res_miss_or_zero
#check fourth_pow_mod53_mem
#check beal_not_both_fourth_zero_mod53
#check a53_table_values
#check a53_nonzero_values
#check a53_res_in_table
#check beal_frey_a53_miss_of_eq
#check beal_frey_a53_value_of_eq
#check beal_frey_a53_miss_B14
#check b14_A_search_miss
#print axioms fourth_pow_mod53_of_lt
#print axioms a53_beal_frey_res_1_1
#print axioms a53_res_miss_or_zero
#print axioms a53_res_in_table
#print axioms mem_nonzero_of_miss
#print axioms fourth_pow_mod53_mem
#print axioms beal_not_both_fourth_zero_mod53
#print axioms beal_frey_a53_miss_of_eq
#print axioms beal_frey_a53_value_of_eq
#print axioms beal_frey_a53_miss_B14
#print axioms b14_A_search_miss

end BealLevel26Foundations.BealFreyASearch
