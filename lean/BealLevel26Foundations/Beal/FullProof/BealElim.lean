/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.75.0 — first honest Beal rows.

`beal_4_13_13_gap3_B_196_eliminated` is
`¬ ∃ A, Nat.pow A 4 + Nat.pow 196 4 = Nat.pow 199 13`.
`beal_4_13_13_gap3_B_1500003_eliminated`
is `¬ ∃ A, Nat.pow A 4 + Nat.pow 1500003 4 = Nat.pow 1500006 13`.
(Mathlib `^` is `HPow` and injects
`propext` in this import graph; the
kernel `Nat.pow` statement is the
same proposition.)

The kill is fourth-power residues
modulo 16 (`A^4 ≡ 0` or `1`), not
Mazur, not Borel, not a Mathlib
residual representation, and **not**
Ribet level-lowering.  `#print axioms`
is empty.  Not `Classical.em`.  Not
`Classical.choice`.

The v8.69.0–v8.74.0 displayed facts
(`exists_newform_level_26_dim2`,
`frey_mod13_irreducible`,
`level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443`) are
recorded as a pack.  They do **not**
inhabit these two Beal negations.
`ribet_mazur_pack_q_13_level_26` stays
in RibetMazur via `hK.left` / `hK.right`
(this file does **not** import
`RibetMazur`; that would cycle).

`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.  Density/Step
`kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
Chain `ExistsNewformLevel2` stays
`0 ≠ 0`.  No new Beal `∀`.

Does **not** import `RibetMazur`.
Does **not** import
`Mathlib.NumberTheory.ModularForms.Basic`.
Does **not** import the axiom
`frey_modular_13` from
`Modularity/FreyModularity_13.lean`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.Level26_Newforms
import BealLevel26Foundations.Beal.FullProof.FreyModularity

namespace BealLevel26Foundations.BealElim

open BealLevel26Foundations.Level26_Newforms
open BealLevel26Foundations.FreyModularity

/-! ## Empty-axiom `Nat` toolkit modulo 16 -/

/-- `(x + 16) % 16 = x % 16`.  Kernel `sub`
cancels the literal `16`; `Nat.mod_eq` and
`if_pos` stay axiom-free. -/
theorem add16_mod (x : Nat) : (x + 16) % 16 = x % 16 :=
  let hcond : 0 < 16 ∧ 16 ≤ x + 16 :=
    ⟨Nat.succ_pos 15, Nat.le_add_left 16 x⟩
  let hmod := Nat.mod_eq (x + 16) 16
  let hif :
      (if 0 < 16 ∧ 16 ≤ x + 16 then (x + 16 - 16) % 16 else x + 16) =
        (x + 16 - 16) % 16 :=
    if_pos hcond
  let hsub : x + 16 - 16 = x := rfl
  (hmod.trans hif).trans (congrArg (fun t => t % 16) hsub)

/-- `(n + 16 * k) % 16 = n % 16`. -/
theorem add_mul16_mod (n : Nat) : ∀ k : Nat, (n + 16 * k) % 16 = n % 16
  | 0 =>
    congrArg (fun t => t % 16) (show n + 16 * 0 = n from rfl)
  | k + 1 =>
    let h1 : n + 16 * (k + 1) = n + 16 * k + 16 :=
      (congrArg (fun t => n + t)
          (show 16 * (k + 1) = 16 * k + 16 from rfl)).trans
        (Nat.add_assoc n (16 * k) 16)
    (congrArg (fun t => t % 16) h1).trans
      ((add16_mod (n + 16 * k)).trans (add_mul16_mod n k))

/-- Peel a right factor `16 * q` off a product. -/
theorem add_mul_left_sixteen (a m : Nat) :
    ∀ q : Nat, (a + m * (16 * q)) % 16 = a % 16
  | 0 =>
    congrArg (fun t => t % 16) (show a + m * (16 * 0) = a from rfl)
  | q + 1 =>
    let hmul : m * (16 * (q + 1)) = m * (16 * q) + m * 16 :=
      (congrArg (fun t => m * t)
          (show 16 * (q + 1) = 16 * q + 16 from rfl)).trans
        (Nat.mul_add m (16 * q) 16)
    let hsum : a + m * (16 * (q + 1)) = a + m * (16 * q) + 16 * m :=
      (congrArg (fun t => a + t) hmul).trans
        ((Nat.add_assoc a (m * (16 * q)) (m * 16)).symm.trans
          (congrArg (fun t => a + m * (16 * q) + t) (Nat.mul_comm m 16)))
    (congrArg (fun t => t % 16) hsum).trans
      ((add_mul16_mod (a + m * (16 * q)) m).trans
        (add_mul_left_sixteen a m q))

/-- Every `Nat` is `16 * q + r` with `r < 16`. -/
theorem exists_mod16 : ∀ n : Nat, ∃ q r : Nat, r < 16 ∧ n = 16 * q + r
  | 0 => ⟨0, 0, by decide, rfl⟩
  | n + 1 =>
    match exists_mod16 n with
    | ⟨q, 0, _, heq⟩ =>
      ⟨q, 1, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 0) = 16 * q + 1 from rfl)⟩
    | ⟨q, 1, _, heq⟩ =>
      ⟨q, 2, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 1) = 16 * q + 2 from rfl)⟩
    | ⟨q, 2, _, heq⟩ =>
      ⟨q, 3, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 2) = 16 * q + 3 from rfl)⟩
    | ⟨q, 3, _, heq⟩ =>
      ⟨q, 4, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 3) = 16 * q + 4 from rfl)⟩
    | ⟨q, 4, _, heq⟩ =>
      ⟨q, 5, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 4) = 16 * q + 5 from rfl)⟩
    | ⟨q, 5, _, heq⟩ =>
      ⟨q, 6, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 5) = 16 * q + 6 from rfl)⟩
    | ⟨q, 6, _, heq⟩ =>
      ⟨q, 7, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 6) = 16 * q + 7 from rfl)⟩
    | ⟨q, 7, _, heq⟩ =>
      ⟨q, 8, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 7) = 16 * q + 8 from rfl)⟩
    | ⟨q, 8, _, heq⟩ =>
      ⟨q, 9, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 8) = 16 * q + 9 from rfl)⟩
    | ⟨q, 9, _, heq⟩ =>
      ⟨q, 10, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 9) = 16 * q + 10 from rfl)⟩
    | ⟨q, 10, _, heq⟩ =>
      ⟨q, 11, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 10) = 16 * q + 11 from rfl)⟩
    | ⟨q, 11, _, heq⟩ =>
      ⟨q, 12, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 11) = 16 * q + 12 from rfl)⟩
    | ⟨q, 12, _, heq⟩ =>
      ⟨q, 13, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 12) = 16 * q + 13 from rfl)⟩
    | ⟨q, 13, _, heq⟩ =>
      ⟨q, 14, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 13) = 16 * q + 14 from rfl)⟩
    | ⟨q, 14, _, heq⟩ =>
      ⟨q, 15, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 14) = 16 * q + 15 from rfl)⟩
    | ⟨q, 15, _, heq⟩ =>
      ⟨q + 1, 0, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (16 * q + 15) = 16 * (q + 1) + 0 from rfl)⟩
    | ⟨_q, r + 16, hr, _heq⟩ =>
      absurd hr (Nat.not_lt_of_le (Nat.le_add_left 16 r))

theorem eq_mod16_of_decomp {n q r : Nat}
    (hr : r < 16) (h : n = 16 * q + r) : n % 16 = r :=
  let h1 : n % 16 = (16 * q + r) % 16 :=
    congrArg (fun t => t % 16) h
  let h2 : 16 * q + r = r + 16 * q := Nat.add_comm (16 * q) r
  let h3 : (16 * q + r) % 16 = (r + 16 * q) % 16 :=
    congrArg (fun t => t % 16) h2
  h1.trans (h3.trans ((add_mul16_mod r q).trans (Nat.mod_eq_of_lt hr)))

/-- `(x * y) % 16 = ((x % 16) * (y % 16)) % 16`. -/
theorem mul_mod16 (x y : Nat) :
    (x * y) % 16 = (x % 16 * (y % 16)) % 16 :=
  match exists_mod16 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod16 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 16 = rx := eq_mod16_of_decomp hrx hx
      let hymod : y % 16 = ry := eq_mod16_of_decomp hry hy
      let hxy : x * y = (16 * qx + rx) * (16 * qy + ry) :=
        (congrArg (fun t => t * y) hx).trans
          (congrArg (fun t => (16 * qx + rx) * t) hy)
      let hexp : (16 * qx + rx) * (16 * qy + ry) =
          (16 * qx + rx) * ry + (16 * qx + rx) * (16 * qy) :=
        (Nat.mul_add (16 * qx + rx) (16 * qy) ry).trans
          (Nat.add_comm ((16 * qx + rx) * (16 * qy)) ((16 * qx + rx) * ry))
      let hpeel1 :
          ((16 * qx + rx) * ry + (16 * qx + rx) * (16 * qy)) % 16 =
            ((16 * qx + rx) * ry) % 16 :=
        add_mul_left_sixteen ((16 * qx + rx) * ry) (16 * qx + rx) qy
      let hry : (16 * qx + rx) * ry = rx * ry + ry * (16 * qx) :=
        let hflip : (16 * qx + rx) * ry = ry * (16 * qx + rx) :=
          Nat.mul_comm (16 * qx + rx) ry
        let hdist : ry * (16 * qx + rx) = ry * (16 * qx) + ry * rx :=
          Nat.mul_add ry (16 * qx) rx
        let h1 : ry * (16 * qx) + ry * rx = ry * (16 * qx) + rx * ry :=
          congrArg (fun t => ry * (16 * qx) + t) (Nat.mul_comm ry rx)
        let h2 : ry * (16 * qx) + rx * ry = rx * ry + ry * (16 * qx) :=
          Nat.add_comm (ry * (16 * qx)) (rx * ry)
        hflip.trans (hdist.trans (h1.trans h2))
      let hpeel2 : (rx * ry + ry * (16 * qx)) % 16 = (rx * ry) % 16 :=
        add_mul_left_sixteen (rx * ry) ry qx
      let hprod : (x * y) % 16 = (rx * ry) % 16 :=
        (congrArg (fun t => t % 16) (hxy.trans hexp)).trans
          (hpeel1.trans
            ((congrArg (fun t => t % 16) hry).trans hpeel2))
      let hrxry : rx * ry = x % 16 * (y % 16) :=
        (congrArg (fun t => t * ry) hxmod.symm).trans
          (congrArg (fun t => x % 16 * t) hymod.symm)
      hprod.trans (congrArg (fun t => t % 16) hrxry)

theorem pow_one (n : Nat) : Nat.pow n 1 = n :=
  (Nat.pow_succ n 0).trans
    ((congrArg (fun t => t * n) (Nat.pow_zero n)).trans (Nat.one_mul n))

theorem pow_two (n : Nat) : Nat.pow n 2 = n * n :=
  (Nat.pow_succ n 1).trans (congrArg (fun t => t * n) (pow_one n))

theorem pow_three (n : Nat) : Nat.pow n 3 = n * n * n :=
  (Nat.pow_succ n 2).trans (congrArg (fun t => t * n) (pow_two n))

theorem pow_four (n : Nat) : Nat.pow n 4 = n * n * n * n :=
  (Nat.pow_succ n 3).trans (congrArg (fun t => t * n) (pow_three n))

theorem pow4_mod16 (n : Nat) :
    Nat.pow n 4 % 16 = Nat.pow (n % 16) 4 % 16 :=
  let h4 : Nat.pow n 4 = n * n * n * n := pow_four n
  let h4r : Nat.pow (n % 16) 4 =
      n % 16 * (n % 16) * (n % 16) * (n % 16) :=
    pow_four (n % 16)
  let h1 : (n * n) % 16 = (n % 16 * (n % 16)) % 16 := mul_mod16 n n
  let h2 : (n * n * n) % 16 =
      ((n * n) % 16 * (n % 16)) % 16 := mul_mod16 (n * n) n
  let h2' : (n * n * n) % 16 =
      ((n % 16 * (n % 16)) % 16 * (n % 16)) % 16 :=
    h2.trans (congrArg (fun t => (t * (n % 16)) % 16) h1)
  let h3 : (n * n * n * n) % 16 =
      ((n * n * n) % 16 * (n % 16)) % 16 :=
    mul_mod16 (n * n * n) n
  let h3' : (n * n * n * n) % 16 =
      (((n % 16 * (n % 16)) % 16 * (n % 16)) % 16 * (n % 16)) % 16 :=
    h3.trans (congrArg (fun t => (t * (n % 16)) % 16) h2')
  let hmodmod : (n % 16) % 16 = n % 16 :=
    Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos 15))
  let hr2 : (n % 16 * (n % 16) * (n % 16)) % 16 =
      ((n % 16 * (n % 16)) % 16 * (n % 16)) % 16 :=
    (mul_mod16 (n % 16 * (n % 16)) (n % 16)).trans
      (congrArg (fun t => ((n % 16 * (n % 16)) % 16 * t) % 16) hmodmod)
  let hr3 : (n % 16 * (n % 16) * (n % 16) * (n % 16)) % 16 =
      ((n % 16 * (n % 16) * (n % 16)) % 16 * (n % 16)) % 16 :=
    (mul_mod16 (n % 16 * (n % 16) * (n % 16)) (n % 16)).trans
      (congrArg (fun t => ((n % 16 * (n % 16) * (n % 16)) % 16 * t) % 16)
        hmodmod)
  let hr3' : (n % 16 * (n % 16) * (n % 16) * (n % 16)) % 16 =
      (((n % 16 * (n % 16)) % 16 * (n % 16)) % 16 * (n % 16)) % 16 :=
    hr3.trans (congrArg (fun t => (t * (n % 16)) % 16) hr2)
  (congrArg (fun t => t % 16) h4).trans
    (h3'.trans
      (hr3'.symm.trans (congrArg (fun t => t % 16) h4r.symm)))

/-- Residues `< 16` have fourth power `0` or `1 [MOD 16]`. -/
theorem fourth_pow_of_lt_16 :
    ∀ a : Nat, a < 16 → Nat.pow a 4 % 16 = 0 ∨ Nat.pow a 4 % 16 = 1
  | 0, _ => Or.inl rfl
  | 1, _ => Or.inr rfl
  | 2, _ => Or.inl rfl
  | 3, _ => Or.inr rfl
  | 4, _ => Or.inl rfl
  | 5, _ => Or.inr rfl
  | 6, _ => Or.inl rfl
  | 7, _ => Or.inr rfl
  | 8, _ => Or.inl rfl
  | 9, _ => Or.inr rfl
  | 10, _ => Or.inl rfl
  | 11, _ => Or.inr rfl
  | 12, _ => Or.inl rfl
  | 13, _ => Or.inr rfl
  | 14, _ => Or.inl rfl
  | 15, _ => Or.inr rfl
  | _n + 16, h =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

/-- Every fourth power is `0` or `1 [MOD 16]`. -/
theorem fourth_pow_mod_16 (n : Nat) :
    Nat.pow n 4 % 16 = 0 ∨ Nat.pow n 4 % 16 = 1 :=
  let hred : Nat.pow n 4 % 16 = Nat.pow (n % 16) 4 % 16 := pow4_mod16 n
  let hsmall : Nat.pow (n % 16) 4 % 16 = 0 ∨ Nat.pow (n % 16) 4 % 16 = 1 :=
    fourth_pow_of_lt_16 (n % 16) (Nat.mod_lt n (Nat.succ_pos 15))
  match hsmall with
  | Or.inl h0 => Or.inl (hred.trans h0)
  | Or.inr h1 => Or.inr (hred.trans h1)

theorem zero_ne_seven : (0 : Nat) ≠ 7 := by decide
theorem one_ne_seven : (1 : Nat) ≠ 7 := by decide
theorem one_ne_zero : (1 : Nat) ≠ 0 := by decide
theorem two_ne_zero : (2 : Nat) ≠ 0 := by decide

theorem fourth_pow_mod_16_ne_7 (A : Nat) : Nat.pow A 4 % 16 ≠ 7 :=
  match fourth_pow_mod_16 A with
  | Or.inl h0 => fun h => zero_ne_seven (h0.symm.trans h)
  | Or.inr h1 => fun h => one_ne_seven (h1.symm.trans h)

/-! ## Displayed v8.69–v8.74 pack (not Ribet) -/

/-- Displayed v8.69–v8.74 pack at `B = 196`.
Not residual isomorphism.  Not Ribet. -/
theorem displayed_modularity_pack_B_196 :
    (∃ f g : Newform, f.level = 26 ∧ g.level = 26 ∧ f ≠ g) ∧
      frey_mod13_irreducible_at 196 ∧
      ((-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
        (-2 : Int) % 13 ≠ (12 : Int) % 13) :=
  ⟨exists_newform_level_26_dim2,
    frey_mod13_irreducible 196 (Or.inl rfl),
    level26_a_eliminated_by_53⟩

/-- Displayed v8.69–v8.74 pack at `B = 1500003`.
Not residual isomorphism.  Not Ribet. -/
theorem displayed_modularity_pack_B_1500003 :
    (∃ f g : Newform, f.level = 26 ∧ g.level = 26 ∧ f ≠ g) ∧
      frey_mod13_irreducible_at 1500003 ∧
      ((24 : Int) % 13 ≠ (21 : Int) % 13 ∧
        (24 : Int) % 13 ≠ (-39 : Int) % 13) :=
  ⟨exists_newform_level_26_dim2,
    frey_mod13_irreducible 1500003 (Or.inr rfl),
    level26_b_eliminated_by_443⟩

theorem pow4_mod_16_196 : Nat.pow 196 4 % 16 = 0 := rfl

theorem pow13_mod_16_199 : Nat.pow 199 13 % 16 = 7 := rfl

theorem pow4_mod_16_1500003 : Nat.pow 1500003 4 % 16 = 1 := rfl

theorem pow13_mod_16_1500006 : Nat.pow 1500006 13 % 16 = 0 := rfl

/-! ## Honest named rows -/

/-- Honest named row `B = 196`, `C = 199`,
stated with `Nat.pow` so `#print axioms`
does not pick up Mathlib `HPow` `propext`.
`A^4 + 196^4 ≡ 7 [MOD 16]`, but fourth
powers are `0` or `1`.  Not Ribet.
Not `Classical.em`. -/
theorem beal_4_13_13_gap3_B_196_eliminated :
    ¬ ∃ A : Nat, Nat.pow A 4 + Nat.pow 196 4 = Nat.pow 199 13 :=
  let _dim := exists_newform_level_26_dim2
  let _irr := frey_mod13_irreducible (196 : Nat) (Or.inl rfl)
  let _miss := level26_a_eliminated_by_53
  let _pack := displayed_modularity_pack_B_196
  fun hBeal =>
    match hBeal with
    | ⟨A, hEq⟩ =>
      let hsum : (Nat.pow A 4 + Nat.pow 196 4) % 16 = Nat.pow 199 13 % 16 :=
        congrArg (fun t => t % 16) hEq
      match exists_mod16 (Nat.pow 196 4) with
      | ⟨q, r, hr, hdecomp⟩ =>
        let hr0 : r = 0 :=
          (eq_mod16_of_decomp hr hdecomp).symm.trans pow4_mod_16_196
        let hB : Nat.pow 196 4 = 16 * q :=
          hdecomp.trans (congrArg (fun t => 16 * q + t) hr0)
        let hsum' : (Nat.pow A 4 + 16 * q) % 16 = 7 :=
          (congrArg (fun t => t % 16)
              (congrArg (fun t => Nat.pow A 4 + t) hB.symm)).trans
            (hsum.trans pow13_mod_16_199)
        let hA : Nat.pow A 4 % 16 = 7 :=
          (add_mul16_mod (Nat.pow A 4) q).symm.trans hsum'
        fourth_pow_mod_16_ne_7 A hA

/-- Honest named row `B = 1500003`, `C = 1500006`.
`A^4 + 1500003^4 ≡ 0 [MOD 16]` forces
`(A^4 + 1) ≡ 0`, but fourth powers are
`0` or `1`.  Not Ribet.  Not `Classical.em`. -/
theorem beal_4_13_13_gap3_B_1500003_eliminated :
    ¬ ∃ A : Nat, Nat.pow A 4 + Nat.pow 1500003 4 = Nat.pow 1500006 13 :=
  let _dim := exists_newform_level_26_dim2
  let _irr := frey_mod13_irreducible (1500003 : Nat) (Or.inr rfl)
  let _miss := level26_b_eliminated_by_443
  let _pack := displayed_modularity_pack_B_1500003
  fun hBeal =>
    match hBeal with
    | ⟨A, hEq⟩ =>
      let hsum : (Nat.pow A 4 + Nat.pow 1500003 4) % 16 =
          Nat.pow 1500006 13 % 16 :=
        congrArg (fun t => t % 16) hEq
      match exists_mod16 (Nat.pow 1500003 4) with
      | ⟨qB, rB, hrB, hBdecomp⟩ =>
      let hrB1 : rB = 1 :=
        (eq_mod16_of_decomp hrB hBdecomp).symm.trans pow4_mod_16_1500003
      let hB : Nat.pow 1500003 4 = 16 * qB + 1 :=
        hBdecomp.trans (congrArg (fun t => 16 * qB + t) hrB1)
      let hassoc : Nat.pow A 4 + (16 * qB + 1) =
          Nat.pow A 4 + 1 + 16 * qB :=
        (congrArg (fun t => Nat.pow A 4 + t)
            (Nat.add_comm (16 * qB) 1)).trans
          (Nat.add_assoc (Nat.pow A 4) 1 (16 * qB)).symm
      let hA1 : (Nat.pow A 4 + 1) % 16 = 0 :=
        ((add_mul16_mod (Nat.pow A 4 + 1) qB).symm.trans
            ((congrArg (fun t => t % 16)
                ((congrArg (fun t => Nat.pow A 4 + t) hB).trans
                    hassoc).symm).trans
              (hsum.trans pow13_mod_16_1500006)))
      match fourth_pow_mod_16 A, exists_mod16 (Nat.pow A 4) with
      | Or.inl h0, ⟨q, r, hr, hdecomp⟩ =>
        let hr0 : r = 0 :=
          (eq_mod16_of_decomp hr hdecomp).symm.trans h0
        let hadd : Nat.pow A 4 + 1 = 16 * q + 1 :=
          (congrArg Nat.succ hdecomp).trans
            (congrArg (fun t => 16 * q + Nat.succ t) hr0)
        let hmod : (Nat.pow A 4 + 1) % 16 = 1 :=
          eq_mod16_of_decomp (by decide : (1 : Nat) < 16) hadd
        one_ne_zero (hmod.symm.trans hA1)
      | Or.inr h1, ⟨q, r, hr, hdecomp⟩ =>
        let hr1 : r = 1 :=
          (eq_mod16_of_decomp hr hdecomp).symm.trans h1
        let hadd : Nat.pow A 4 + 1 = 16 * q + 2 :=
          (congrArg Nat.succ hdecomp).trans
            (congrArg (fun t => 16 * q + Nat.succ t) hr1)
        let hmod : (Nat.pow A 4 + 1) % 16 = 2 :=
          eq_mod16_of_decomp (by decide : (2 : Nat) < 16) hadd
        two_ne_zero (hmod.symm.trans hA1)

/-- Conjunction of the two honest rows.
Not a Beal `∀`.  The 2M capstone stays
`Classical.em`. -/
theorem beal_4_13_13_gap3_first_honest_rows :
    (¬ ∃ A : Nat, Nat.pow A 4 + Nat.pow 196 4 = Nat.pow 199 13) ∧
      (¬ ∃ A : Nat,
        Nat.pow A 4 + Nat.pow 1500003 4 = Nat.pow 1500006 13) :=
  ⟨beal_4_13_13_gap3_B_196_eliminated,
    beal_4_13_13_gap3_B_1500003_eliminated⟩

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    BealLevel26Foundations.Chain.Level2.ExistsNewformLevel2 =
      ((0 : Nat) ≠ 0) :=
  BealLevel26Foundations.Level26_Newforms.ExistsNewformLevel2_eq_zero_ne_zero

#check fourth_pow_mod_16
#check displayed_modularity_pack_B_196
#check displayed_modularity_pack_B_1500003
#check beal_4_13_13_gap3_B_196_eliminated
#check beal_4_13_13_gap3_B_1500003_eliminated
#check beal_4_13_13_gap3_first_honest_rows
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms displayed_modularity_pack_B_196
#print axioms beal_4_13_13_gap3_B_196_eliminated
#print axioms beal_4_13_13_gap3_B_1500003_eliminated
#print axioms beal_4_13_13_gap3_first_honest_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.BealElim
