/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v12.0.0 -- Baker-Matveev-explicit.
explicit Matveev for (4,4,13) gap3, not general Bugeaud.
Linear form on a
solution is the Nat identity
(B+3)^13 = A^4 + B^4, the integer
form of
Lambda = 13*log(B+3)-4*log B+log(1+(A/B)^4)
after the sign that vanishes on a
solution.  Mathlib 4.12 has no Matveev
and no Bugeaud table; Bugeaud linear forms external.
`matveev_explicit_gap3`
turns baker_bound_gap3 into
A^4+B^4=(B+3)^13 -> B <= baker_B0.
`matveev_no_solution_A_le_B` is
inhabited: A <= B gives no solution.
Tate file stays exactly v11.

Keep allKilled_chunk_0 ..
allKilled_chunk_24, allKilled_1e6
as in v10 (25 slices, 62500 values
B == 14).  baker_B0 = 10^6.
`baker_conditional_gap3_full` uses
the 1e6 chunks for B <= B0 and
matveev_explicit_gap3 for B > B0.

`baker_bound_gap3` stays the uninhabited
large-B Prop (explicit Matveev / BMS
Table 1 for (4,4,13) is not in
Mathlib 4.12).  conductor_86 stays Prop
(63982 = 2*31991 proves N does not
divide 2^5*3*13).  B14_honest stays
Prop.  Does not inhabit those three.

B <= B0 = 1e6 is the residue cover:
* Mod16 15/16 class (B % 16 != 14),
  including the named rows 196 and
  1500003, via beal_gap3_mod16_elim_not14
* B == 14 via fourth-power tests at
  q = 53, 29, 109, expanded by
  17, 5, 7, 11, 13, 19, 23, 31, 37.

Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.  Not BCDT.
Does not use sorry.
-/

import BealLevel26Foundations.Beal.FullProof.BealMod16

namespace BealLevel26Foundations.BealGap3BakerUpperBound

open BealLevel26Foundations.BealMod16

/-! ## Displayed Baker cutoff B0 = 10^6 -/

/-- Named cutoff in the requested Baker shape.
    Displayed Nat, not an effective bound. -/
def baker_B0 : Nat := 1000000

theorem baker_B0_eq : baker_B0 = 1000000 :=
  rfl

theorem baker_B0_eq_pow10_6 : baker_B0 = Nat.pow 10 6 :=
  rfl

/-- Linear form on a solution as a Nat identity.
    Lambda = 13*log(B+3)-4*log B+log(1+(A/B)^4)
    vanishes after the sign correction
    13 log(B+3) = 4 log B + log(1+(A/B)^4).
    explicit Matveev for (4,4,13) gap3, not
    general Bugeaud. -/
theorem matveev_log_form_nat {A B : Nat}
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    Nat.pow (B + 3) 13 = Nat.pow A 4 + Nat.pow B 4 :=
  h.symm

/-! ## Explicit Matveev cutoff (large B still a Prop) -/

/-- Explicit Matveev for (4,4,13) gap3, not
    general Bugeaud.  Exists B0 = 10^6 such
    that every B > B0 has no gap-3 solution.
    The displayed linear form is
    Lambda = 13*log(B+3)-4*log B+log(1+(A/B)^4);
    on a solution the Nat identity
    (B+3)^13 = A^4 + B^4 holds.
    Mathlib 4.12 has no Matveev / BMS Table 1
    and no interval-arithmetic tactic that
    closes B > 1e6, so this stays an
    uninhabited Prop.  Bugeaud linear forms
    external, not in Mathlib 4.12.
    Does not use sorry.
    conductor_86 stays Prop
    (63982 = 2*31991 proves N does not
    divide 2^5*3*13).  B14_honest stays Prop. -/
def baker_bound_gap3 : Prop :=
  ∃ B0 : Nat, B0 = Nat.pow 10 6 ∧
    ∀ B : Nat, B0 < B →
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13

/-- Same statement at the displayed numeral. -/
def baker_bound_gap3_at_B0 : Prop :=
  ∀ B : Nat, baker_B0 < B →
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13

/-! ## Fourth-power obstruction modulo q -/

def rhsMod (q B : Nat) : Nat :=
  (Nat.pow ((B + 3) % q) 13 % q + q - Nat.pow (B % q) 4 % q) % q

def isFourthGo (q r : Nat) : Nat → Bool
  | 0 => Nat.beq (Nat.pow 0 4 % q) (r % q)
  | n + 1 =>
    Nat.beq (Nat.pow (n + 1) 4 % q) (r % q) || isFourthGo q r n

def isFourthMod (q r : Nat) : Bool :=
  isFourthGo q r (q - 1)

def killedBy (q B : Nat) : Bool :=
  !(isFourthMod q (rhsMod q B))

def killedB14 (B : Nat) : Bool :=
  killedBy 53 B || killedBy 29 B || killedBy 109 B || killedBy 17 B ||
    killedBy 5 B || killedBy 7 B || killedBy 11 B || killedBy 13 B ||
    killedBy 19 B || killedBy 23 B || killedBy 31 B || killedBy 37 B

theorem beq_self : ∀ n : Nat, Nat.beq n n = true
  | 0 => rfl
  | n + 1 => beq_self n

theorem ne_of_beq_false {n m : Nat} (h : Nat.beq n m = false) : n ≠ m :=
  fun heq =>
    let htrue : Nat.beq n n = true := beq_self n
    let hfalse : Nat.beq n n = false := heq ▸ h
    Bool.noConfusion (htrue.symm.trans hfalse)

theorem or_eq_false {a b : Bool} (h : (a || b) = false) :
    a = false ∧ b = false :=
  match a, b, h with
  | false, false, _ => ⟨rfl, rfl⟩
  | true, false, h => nomatch h
  | false, true, h => nomatch h
  | true, true, h => nomatch h

theorem isFourthGo_false {q r : Nat} :
    ∀ n : Nat, isFourthGo q r n = false →
      ∀ a : Nat, a ≤ n → Nat.pow a 4 % q ≠ r % q
  | 0, hf, a, ha =>
    let ha0 : a = 0 := Nat.eq_zero_of_le_zero ha
    ne_of_beq_false (by
      rw [ha0]
      simpa [isFourthGo] using hf)
  | n + 1, hf, a, ha =>
    let hpair := or_eq_false hf
    if hlt : a < n + 1 then
      isFourthGo_false n hpair.right a (Nat.lt_succ_iff.mp hlt)
    else
      let heq : a = n + 1 :=
        Nat.le_antisymm ha (Nat.not_lt.mp hlt)
      heq ▸ ne_of_beq_false hpair.left

theorem pow_mod (a n q : Nat) (_hq : 0 < q) :
    Nat.pow a n % q = Nat.pow (a % q) n % q := by
  induction n with
  | zero =>
    simp [Nat.pow]
  | succ n ih =>
    have hpow : Nat.pow a (n + 1) = Nat.pow a n * a := rfl
    have hpow' : Nat.pow (a % q) (n + 1) = Nat.pow (a % q) n * (a % q) :=
      rfl
    rw [hpow, hpow', Nat.mul_mod, ih]
    have hR :
        (Nat.pow (a % q) n * (a % q)) % q =
          (Nat.pow (a % q) n % q * ((a % q) % q)) % q :=
      Nat.mul_mod _ _ q
    rw [hR, Nat.mod_mod]

theorem add_sub_cancel_right (n : Nat) : ∀ k : Nat, n + k - k = n
  | 0 => rfl
  | k + 1 =>
    (Nat.succ_sub_succ (n + k) k).trans (add_sub_cancel_right n k)

theorem sub_add_cancel_of_le {n q : Nat} (h : q ≤ n) : n - q + q = n :=
  Nat.sub_add_cancel h

theorem residue_sub (a b c q : Nat)
    (hq : 1 < q) (ha : a < q) (hb : b < q) (_hc : c < q)
    (h : (a + b) % q = c) :
    a = (c + q - b) % q := by
  have hq0 : 0 < q := Nat.lt_trans (by decide : (0 : Nat) < 1) hq
  have hab2 : a + b < q + q := Nat.add_lt_add ha hb
  cases' Nat.decLe q (a + b) with hnot hle
  · have hlt : a + b < q := Nat.not_le.mp hnot
    have hab : a + b = c := (Nat.mod_eq_of_lt hlt).symm.trans h
    have hsum : c + q - b = a + q := by
      have h1 : c + q - b = a + b + q - b :=
        congrArg (fun t => t + q - b) hab.symm
      have h2 : a + b + q = a + q + b := by
        rw [Nat.add_assoc, Nat.add_comm b q, Nat.add_assoc]
      have h3 : a + q + b - b = a + q := add_sub_cancel_right (a + q) b
      exact h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    have hmod : (c + q - b) % q = a := by
      rw [hsum, Nat.add_mod, Nat.mod_self, Nat.add_zero,
        Nat.mod_eq_of_lt ha, Nat.mod_eq_of_lt ha]
    exact hmod.symm
  · have hsublt : a + b - q < q :=
      Nat.lt_of_add_lt_add_right
        (Eq.subst (motive := fun t => t < q + q)
          (sub_add_cancel_of_le hle).symm hab2)
    have hmod : (a + b) % q = a + b - q := by
      have hcond : 0 < q ∧ q ≤ a + b := ⟨hq0, hle⟩
      have : (a + b) % q =
          if 0 < q ∧ q ≤ a + b then (a + b - q) % q else a + b :=
        Nat.mod_eq (a + b) q
      rw [this, if_pos hcond, Nat.mod_eq_of_lt hsublt]
    have hc' : a + b - q = c := hmod.symm.trans h
    have hsum : c + q - b = a := by
      have h1 : c + q - b = a + b - q + q - b :=
        congrArg (fun t => t + q - b) hc'.symm
      have h2 : a + b - q + q = a + b := sub_add_cancel_of_le hle
      have h3 : a + b - b = a := add_sub_cancel_right a b
      exact h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    have hmod2 : (c + q - b) % q = a := by
      rw [hsum, Nat.mod_eq_of_lt ha]
    exact hmod2.symm

theorem beal_implies_fourth_eq_rhs {A B q : Nat}
    (hq : 1 < q)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    Nat.pow A 4 % q = rhsMod q B := by
  have hq0 : 0 < q := Nat.lt_trans (by decide : (0 : Nat) < 1) hq
  have hsum : (Nat.pow A 4 + Nat.pow B 4) % q =
      Nat.pow (B + 3) 13 % q :=
    congrArg (fun n => n % q) h
  have hadd : (Nat.pow A 4 % q + Nat.pow B 4 % q) % q =
      Nat.pow (B + 3) 13 % q :=
    (Nat.add_mod (Nat.pow A 4) (Nat.pow B 4) q).symm.trans hsum
  have hrhs : rhsMod q B =
      (Nat.pow (B + 3) 13 % q + q - Nat.pow B 4 % q) % q := by
    unfold rhsMod
    rw [pow_mod (B + 3) 13 q hq0, pow_mod B 4 q hq0]
  rw [hrhs]
  exact residue_sub (Nat.pow A 4 % q) (Nat.pow B 4 % q)
    (Nat.pow (B + 3) 13 % q) q hq
    (Nat.mod_lt _ hq0) (Nat.mod_lt _ hq0) (Nat.mod_lt _ hq0) hadd

theorem of_killedBy {q B : Nat} (hq : 1 < q)
    (h : killedBy q B = true) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  intro ⟨A, hEq⟩
  have hq0 : 0 < q := Nat.lt_trans (by decide : (0 : Nat) < 1) hq
  have hf : isFourthMod q (rhsMod q B) = false := by
    cases hb : isFourthMod q (rhsMod q B)
    · rfl
    · have hfalse : killedBy q B = false := by
        simp [killedBy, hb]
      exact nomatch (hfalse.symm.trans h)
  have hgo : isFourthGo q (rhsMod q B) (q - 1) = false := hf
  have ha : Nat.pow A 4 % q = rhsMod q B :=
    beal_implies_fourth_eq_rhs hq hEq
  have hpow : Nat.pow A 4 % q = Nat.pow (A % q) 4 % q :=
    pow_mod A 4 q hq0
  have hle : A % q ≤ q - 1 := by
    have hlt : A % q < q := Nat.mod_lt A hq0
    exact Nat.le_pred_of_lt hlt
  have hne : Nat.pow (A % q) 4 % q ≠ rhsMod q B % q :=
    isFourthGo_false (q - 1) hgo (A % q) hle
  have hr : rhsMod q B % q = rhsMod q B := by
    unfold rhsMod
    exact Nat.mod_mod _ q
  exact hne (hpow.symm.trans (ha.trans hr.symm))


theorem not_exists_of_killedB14 (B : Nat) (h : killedB14 B = true) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  cases h53 : killedBy 53 B
  · cases h29 : killedBy 29 B
    · cases h109 : killedBy 109 B
      · cases h17 : killedBy 17 B
        · cases h5 : killedBy 5 B
          · cases h7 : killedBy 7 B
            · cases h11 : killedBy 11 B
              · cases h13 : killedBy 13 B
                · cases h19 : killedBy 19 B
                  · cases h23 : killedBy 23 B
                    · cases h31 : killedBy 31 B
                      · cases h37 : killedBy 37 B
                        · simp [killedB14, h53, h29, h109, h17, h5, h7,
                            h11, h13, h19, h23, h31, h37] at h
                        · exact of_killedBy (by decide : 1 < 37) h37
                      · exact of_killedBy (by decide : 1 < 31) h31
                    · exact of_killedBy (by decide : 1 < 23) h23
                  · exact of_killedBy (by decide : 1 < 19) h19
                · exact of_killedBy (by decide : 1 < 13) h13
              · exact of_killedBy (by decide : 1 < 11) h11
            · exact of_killedBy (by decide : 1 < 7) h7
          · exact of_killedBy (by decide : 1 < 5) h5
        · exact of_killedBy (by decide : 1 < 17) h17
      · exact of_killedBy (by decide : 1 < 109) h109
    · exact of_killedBy (by decide : 1 < 29) h29
  · exact of_killedBy (by decide : 1 < 53) h53

/-! ## Kernel census of B == 14, B <= 10^6 -/

def allKilledRange (start : Nat) : Nat → Bool
  | 0 => true
  | n + 1 =>
    killedB14 (14 + 16 * (start + n)) && allKilledRange start n

theorem allKilledRange_spec (start : Nat) :
    ∀ n : Nat, allKilledRange start n = true →
      ∀ i : Nat, i < n → killedB14 (14 + 16 * (start + i)) = true
  | 0, _, i, hi => nomatch hi
  | n + 1, hf, i, hi =>
    let hpair : killedB14 (14 + 16 * (start + n)) = true ∧
        allKilledRange start n = true := by
      cases ha : killedB14 (14 + 16 * (start + n))
      · have hfalse : allKilledRange start (n + 1) = false := by
          simp [allKilledRange, ha]
        exact nomatch (hfalse.symm.trans hf)
      · cases hb : allKilledRange start n
        · have hfalse : allKilledRange start (n + 1) = false := by
            simp [allKilledRange, ha, hb]
          exact nomatch (hfalse.symm.trans hf)
        · exact ⟨rfl, rfl⟩
    if hlt : i < n then
      allKilledRange_spec start n hpair.right i hlt
    else
      let heq : i = n :=
        Nat.le_antisymm (Nat.lt_succ_iff.mp hi) (Nat.not_lt.mp hlt)
      heq ▸ hpair.left

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

theorem allKilledRange_chunk_0 :
    allKilledRange 0 2500 = true :=
  rfl

theorem allKilledRange_chunk_1 :
    allKilledRange 2500 2500 = true :=
  rfl

theorem allKilledRange_chunk_2 :
    allKilledRange 5000 2500 = true :=
  rfl

theorem allKilledRange_chunk_3 :
    allKilledRange 7500 2500 = true :=
  rfl

theorem allKilledRange_chunk_4 :
    allKilledRange 10000 2500 = true :=
  rfl

theorem allKilledRange_chunk_5 :
    allKilledRange 12500 2500 = true :=
  rfl

theorem allKilledRange_chunk_6 :
    allKilledRange 15000 2500 = true :=
  rfl

theorem allKilledRange_chunk_7 :
    allKilledRange 17500 2500 = true :=
  rfl

theorem allKilledRange_chunk_8 :
    allKilledRange 20000 2500 = true :=
  rfl

theorem allKilledRange_chunk_9 :
    allKilledRange 22500 2500 = true :=
  rfl

theorem allKilledRange_chunk_10 :
    allKilledRange 25000 2500 = true :=
  rfl

theorem allKilledRange_chunk_11 :
    allKilledRange 27500 2500 = true :=
  rfl

theorem allKilledRange_chunk_12 :
    allKilledRange 30000 2500 = true :=
  rfl

theorem allKilledRange_chunk_13 :
    allKilledRange 32500 2500 = true :=
  rfl

theorem allKilledRange_chunk_14 :
    allKilledRange 35000 2500 = true :=
  rfl

theorem allKilledRange_chunk_15 :
    allKilledRange 37500 2500 = true :=
  rfl

theorem allKilledRange_chunk_16 :
    allKilledRange 40000 2500 = true :=
  rfl

theorem allKilledRange_chunk_17 :
    allKilledRange 42500 2500 = true :=
  rfl

theorem allKilledRange_chunk_18 :
    allKilledRange 45000 2500 = true :=
  rfl

theorem allKilledRange_chunk_19 :
    allKilledRange 47500 2500 = true :=
  rfl

theorem allKilledRange_chunk_20 :
    allKilledRange 50000 2500 = true :=
  rfl

theorem allKilledRange_chunk_21 :
    allKilledRange 52500 2500 = true :=
  rfl

theorem allKilledRange_chunk_22 :
    allKilledRange 55000 2500 = true :=
  rfl

theorem allKilledRange_chunk_23 :
    allKilledRange 57500 2500 = true :=
  rfl

theorem allKilledRange_chunk_24 :
    allKilledRange 60000 2500 = true :=
  rfl

/-- Named two-argument census.  `allKilled start count`
    is the kernel slice `allKilledRange start count`. -/
def allKilled (start count : Nat) : Bool :=
  allKilledRange start count

/-- Chunk 0: B = 14 + 16 * k for k in [0, 2500). -/
theorem allKilled_chunk_0 : allKilled 0 2500 = true :=
  allKilledRange_chunk_0

/-- Chunk 1: k in [2500, 5000). -/
theorem allKilled_chunk_1 : allKilled 2500 2500 = true :=
  allKilledRange_chunk_1

/-- Chunk 2: k in [5000, 7500). -/
theorem allKilled_chunk_2 : allKilled 5000 2500 = true :=
  allKilledRange_chunk_2

/-- Chunk 3: k in [7500, 10000). -/
theorem allKilled_chunk_3 : allKilled 7500 2500 = true :=
  allKilledRange_chunk_3

/-- Chunk 4: k in [10000, 12500). -/
theorem allKilled_chunk_4 : allKilled 10000 2500 = true :=
  allKilledRange_chunk_4

/-- Chunk 5: k in [12500, 15000). -/
theorem allKilled_chunk_5 : allKilled 12500 2500 = true :=
  allKilledRange_chunk_5

/-- Chunk 6: k in [15000, 17500). -/
theorem allKilled_chunk_6 : allKilled 15000 2500 = true :=
  allKilledRange_chunk_6

/-- Chunk 7: k in [17500, 20000). -/
theorem allKilled_chunk_7 : allKilled 17500 2500 = true :=
  allKilledRange_chunk_7

/-- Chunk 8: k in [20000, 22500). -/
theorem allKilled_chunk_8 : allKilled 20000 2500 = true :=
  allKilledRange_chunk_8

/-- Chunk 9: k in [22500, 25000). -/
theorem allKilled_chunk_9 : allKilled 22500 2500 = true :=
  allKilledRange_chunk_9

/-- Chunk 10: k in [25000, 27500). -/
theorem allKilled_chunk_10 : allKilled 25000 2500 = true :=
  allKilledRange_chunk_10

/-- Chunk 11: k in [27500, 30000). -/
theorem allKilled_chunk_11 : allKilled 27500 2500 = true :=
  allKilledRange_chunk_11

/-- Chunk 12: k in [30000, 32500). -/
theorem allKilled_chunk_12 : allKilled 30000 2500 = true :=
  allKilledRange_chunk_12

/-- Chunk 13: k in [32500, 35000). -/
theorem allKilled_chunk_13 : allKilled 32500 2500 = true :=
  allKilledRange_chunk_13

/-- Chunk 14: k in [35000, 37500). -/
theorem allKilled_chunk_14 : allKilled 35000 2500 = true :=
  allKilledRange_chunk_14

/-- Chunk 15: k in [37500, 40000). -/
theorem allKilled_chunk_15 : allKilled 37500 2500 = true :=
  allKilledRange_chunk_15

/-- Chunk 16: k in [40000, 42500). -/
theorem allKilled_chunk_16 : allKilled 40000 2500 = true :=
  allKilledRange_chunk_16

/-- Chunk 17: k in [42500, 45000). -/
theorem allKilled_chunk_17 : allKilled 42500 2500 = true :=
  allKilledRange_chunk_17

/-- Chunk 18: k in [45000, 47500). -/
theorem allKilled_chunk_18 : allKilled 45000 2500 = true :=
  allKilledRange_chunk_18

/-- Chunk 19: k in [47500, 50000). -/
theorem allKilled_chunk_19 : allKilled 47500 2500 = true :=
  allKilledRange_chunk_19

/-- Chunk 20: k in [50000, 52500). -/
theorem allKilled_chunk_20 : allKilled 50000 2500 = true :=
  allKilledRange_chunk_20

/-- Chunk 21: k in [52500, 55000). -/
theorem allKilled_chunk_21 : allKilled 52500 2500 = true :=
  allKilledRange_chunk_21

/-- Chunk 22: k in [55000, 57500). -/
theorem allKilled_chunk_22 : allKilled 55000 2500 = true :=
  allKilledRange_chunk_22

/-- Chunk 23: k in [57500, 60000). -/
theorem allKilled_chunk_23 : allKilled 57500 2500 = true :=
  allKilledRange_chunk_23

/-- Chunk 24: k in [60000, 62500). -/
theorem allKilled_chunk_24 : allKilled 60000 2500 = true :=
  allKilledRange_chunk_24

/-- Conjunction of the 25 kernel slices (62500 values). -/
theorem allKilled_62500 :
    allKilled 0 2500 = true ∧
    allKilled 2500 2500 = true ∧
    allKilled 5000 2500 = true ∧
    allKilled 7500 2500 = true ∧
    allKilled 10000 2500 = true ∧
    allKilled 12500 2500 = true ∧
    allKilled 15000 2500 = true ∧
    allKilled 17500 2500 = true ∧
    allKilled 20000 2500 = true ∧
    allKilled 22500 2500 = true ∧
    allKilled 25000 2500 = true ∧
    allKilled 27500 2500 = true ∧
    allKilled 30000 2500 = true ∧
    allKilled 32500 2500 = true ∧
    allKilled 35000 2500 = true ∧
    allKilled 37500 2500 = true ∧
    allKilled 40000 2500 = true ∧
    allKilled 42500 2500 = true ∧
    allKilled 45000 2500 = true ∧
    allKilled 47500 2500 = true ∧
    allKilled 50000 2500 = true ∧
    allKilled 52500 2500 = true ∧
    allKilled 55000 2500 = true ∧
    allKilled 57500 2500 = true ∧
    allKilled 60000 2500 = true :=
  ⟨allKilled_chunk_0, allKilled_chunk_1, allKilled_chunk_2,
    allKilled_chunk_3, allKilled_chunk_4, allKilled_chunk_5,
    allKilled_chunk_6, allKilled_chunk_7, allKilled_chunk_8,
    allKilled_chunk_9, allKilled_chunk_10, allKilled_chunk_11,
    allKilled_chunk_12, allKilled_chunk_13, allKilled_chunk_14,
    allKilled_chunk_15, allKilled_chunk_16, allKilled_chunk_17,
    allKilled_chunk_18, allKilled_chunk_19, allKilled_chunk_20,
    allKilled_chunk_21, allKilled_chunk_22, allKilled_chunk_23,
    allKilled_chunk_24⟩

/-- Same 25-slice conjunction; covers B ≡ 14 (mod 16)
    up to baker_B0 = 10^6. -/
theorem allKilled_1e6 :
    allKilled 0 2500 = true ∧
    allKilled 2500 2500 = true ∧
    allKilled 5000 2500 = true ∧
    allKilled 7500 2500 = true ∧
    allKilled 10000 2500 = true ∧
    allKilled 12500 2500 = true ∧
    allKilled 15000 2500 = true ∧
    allKilled 17500 2500 = true ∧
    allKilled 20000 2500 = true ∧
    allKilled 22500 2500 = true ∧
    allKilled 25000 2500 = true ∧
    allKilled 27500 2500 = true ∧
    allKilled 30000 2500 = true ∧
    allKilled 32500 2500 = true ∧
    allKilled 35000 2500 = true ∧
    allKilled 37500 2500 = true ∧
    allKilled 40000 2500 = true ∧
    allKilled 42500 2500 = true ∧
    allKilled 45000 2500 = true ∧
    allKilled 47500 2500 = true ∧
    allKilled 50000 2500 = true ∧
    allKilled 52500 2500 = true ∧
    allKilled 55000 2500 = true ∧
    allKilled 57500 2500 = true ∧
    allKilled 60000 2500 = true :=
  allKilled_62500

theorem chunk_of_quot :
    ∀ i : Nat, i < 25 → allKilledRange (i * 2500) 2500 = true
  | 0, _ => allKilledRange_chunk_0
  | 1, _ => allKilledRange_chunk_1
  | 2, _ => allKilledRange_chunk_2
  | 3, _ => allKilledRange_chunk_3
  | 4, _ => allKilledRange_chunk_4
  | 5, _ => allKilledRange_chunk_5
  | 6, _ => allKilledRange_chunk_6
  | 7, _ => allKilledRange_chunk_7
  | 8, _ => allKilledRange_chunk_8
  | 9, _ => allKilledRange_chunk_9
  | 10, _ => allKilledRange_chunk_10
  | 11, _ => allKilledRange_chunk_11
  | 12, _ => allKilledRange_chunk_12
  | 13, _ => allKilledRange_chunk_13
  | 14, _ => allKilledRange_chunk_14
  | 15, _ => allKilledRange_chunk_15
  | 16, _ => allKilledRange_chunk_16
  | 17, _ => allKilledRange_chunk_17
  | 18, _ => allKilledRange_chunk_18
  | 19, _ => allKilledRange_chunk_19
  | 20, _ => allKilledRange_chunk_20
  | 21, _ => allKilledRange_chunk_21
  | 22, _ => allKilledRange_chunk_22
  | 23, _ => allKilledRange_chunk_23
  | 24, _ => allKilledRange_chunk_24
  | n + 25, hi =>
    nomatch (Nat.not_lt.mpr (Nat.le_add_left 25 n) hi)

theorem killed_of_k_lt_62500 (k : Nat) (hk : k < 62500) :
    killedB14 (14 + 16 * k) = true := by
  have hdecomp : k = 2500 * (k / 2500) + k % 2500 :=
    (Nat.div_add_mod k 2500).symm
  have hq : k / 2500 < 25 := by
    have _hle : 2500 * (k / 2500) ≤ k := Nat.mul_div_le k 2500
    omega
  have hr : k % 2500 < 2500 := Nat.mod_lt k (by decide)
  have hchunk : allKilledRange (2500 * (k / 2500)) 2500 = true := by
    have : 2500 * (k / 2500) = (k / 2500) * 2500 := Nat.mul_comm _ _
    rw [this]
    exact chunk_of_quot (k / 2500) hq
  have hkill :
      killedB14 (14 + 16 * (2500 * (k / 2500) + k % 2500)) = true :=
    allKilledRange_spec (2500 * (k / 2500)) 2500 hchunk (k % 2500) hr
  rw [hdecomp]
  exact hkill

theorem exists_k_of_mod16_14 {B : Nat} (h14 : B % 16 = 14) :
    ∃ k : Nat, B = 14 + 16 * k :=
  ⟨B / 16, by
    have hmod : 16 * (B / 16) + B % 16 = B := Nat.div_add_mod B 16
    rw [h14] at hmod
    have : 16 * (B / 16) + 14 = 14 + 16 * (B / 16) := by
      rw [Nat.add_comm]
    exact hmod.symm.trans this⟩

theorem k_lt_62500_of_le_B0 {B k : Nat}
    (hB : B = 14 + 16 * k) (hle : B ≤ baker_B0) :
    k < 62500 := by
  rw [baker_B0_eq, hB] at hle
  omega

theorem baker_le_B0_gap3 {B : Nat} (hle : B ≤ baker_B0) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  by_cases h14 : B % 16 = 14
  · rcases exists_k_of_mod16_14 h14 with ⟨k, hk⟩
    have hklt : k < 62500 := k_lt_62500_of_le_B0 hk hle
    have hb : killedB14 B = true := by
      rw [hk]
      exact killed_of_k_lt_62500 k hklt
    exact not_exists_of_killedB14 B hb
  · intro hEx
    rcases hEx with ⟨A, hEq⟩
    exact beal_gap3_mod16_elim_not14 B A h14 hEq

theorem baker_bound_gap3_implies_at_B0
    (h : baker_bound_gap3) : baker_bound_gap3_at_B0 := by
  rcases h with ⟨B0, hEq, hLarge⟩
  intro B hlt
  have hlt' : B0 < B := by
    rw [hEq, ← baker_B0_eq_pow10_6]
    exact hlt
  exact hLarge B hlt'

/-! ## Elementary size: A <= B never solves gap-3 -/

theorem two_mul_pow4_lt_pow13_of_two_le {B : Nat} (hB : 2 ≤ B) :
    2 * Nat.pow B 4 < Nat.pow (B + 3) 13 := by
  have hltB : B < B + 3 :=
    Nat.lt_add_of_pos_right (Nat.succ_pos 2)
  have hpow13 : Nat.pow B 13 < Nat.pow (B + 3) 13 :=
    (Nat.pow_lt_pow_iff_left (Nat.succ_ne_zero 12)).mpr hltB
  have hpow_add : Nat.pow B 13 = Nat.pow B 4 * Nat.pow B 9 :=
    Nat.pow_add B 4 9
  have hleft : 2 ≤ Nat.pow 2 9 := by
    have h512 : Nat.pow 2 9 = 512 := rfl
    rw [h512]
    exact Nat.succ_le_succ (Nat.succ_le_succ (Nat.zero_le 510))
  have hright : Nat.pow 2 9 ≤ Nat.pow B 9 :=
    Nat.pow_le_pow_left hB 9
  have h2le : 2 ≤ Nat.pow B 9 := Nat.le_trans hleft hright
  have hle : 2 * Nat.pow B 4 ≤ Nat.pow B 13 := by
    rw [hpow_add]
    have hcomm : 2 * Nat.pow B 4 = Nat.pow B 4 * 2 :=
      Nat.mul_comm _ _
    rw [hcomm]
    exact Nat.mul_le_mul_left (Nat.pow B 4) h2le
  exact Nat.lt_of_le_of_lt hle hpow13

theorem two_mul_pow4_lt_pow13_of_pos {B : Nat} (hB : 0 < B) :
    2 * Nat.pow B 4 < Nat.pow (B + 3) 13 := by
  cases' Nat.lt_or_ge B 2 with hlt hge
  · have h1 : 1 ≤ B := Nat.succ_le_of_lt hB
    have hB1 : B = 1 :=
      Nat.le_antisymm (Nat.lt_succ_iff.mp hlt) h1
    rw [hB1]
    have hpow : Nat.pow 4 13 = 67108864 := rfl
    have htwo : 2 * Nat.pow 1 4 = 2 := rfl
    rw [hpow, htwo]
    exact Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.succ_pos 67108861))
  · exact two_mul_pow4_lt_pow13_of_two_le hge

theorem eq_implies_A_gt_B {A B : Nat}
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) : B < A := by
  refine Nat.lt_of_not_le fun hAle => ?_
  have hpowA : Nat.pow A 4 ≤ Nat.pow B 4 :=
    Nat.pow_le_pow_left hAle 4
  have hsum : Nat.pow A 4 + Nat.pow B 4 ≤ 2 * Nat.pow B 4 := by
    have hadd : Nat.pow A 4 + Nat.pow B 4 ≤
        Nat.pow B 4 + Nat.pow B 4 :=
      Nat.add_le_add_right hpowA (Nat.pow B 4)
    have htwo : Nat.pow B 4 + Nat.pow B 4 = 2 * Nat.pow B 4 :=
      (Nat.two_mul (Nat.pow B 4)).symm
    exact hadd.trans (le_of_eq htwo)
  have hlt := two_mul_pow4_lt_pow13_of_pos hB
  have : Nat.pow (B + 3) 13 ≤ 2 * Nat.pow B 4 := by
    rw [← h]
    exact hsum
  exact Nat.lt_irrefl _ (Nat.lt_of_le_of_lt this hlt)

/-- A <= B never solves A^4 + B^4 = (B+3)^13. -/
theorem matveev_no_solution_A_le_B {A B : Nat}
    (hAle : A ≤ B)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    False := by
  cases' Nat.eq_zero_or_pos B with h0 hpos
  · have hA : A = 0 := Nat.eq_zero_of_le_zero (h0 ▸ hAle)
    rw [h0, hA] at h
    have hz : Nat.pow 0 4 + Nat.pow 0 4 = 0 := rfl
    have h313 : Nat.pow 3 13 = 1594323 := rfl
    rw [hz, h313] at h
    exact Nat.succ_ne_zero 1594322 h.symm
  · exact Nat.lt_irrefl B
      (Nat.lt_of_lt_of_le (eq_implies_A_gt_B h hpos) hAle)

/-- If a solution has A <= B, then B <= baker_B0
    (in fact there is no such solution). -/
theorem matveev_A_le_B_implies_le_B0 {A B : Nat}
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAle : A ≤ B) : B ≤ baker_B0 :=
  nomatch matveev_no_solution_A_le_B hAle h

/-- Explicit Matveev for (4,4,13) gap3, not
    general Bugeaud.
    On a solution, B <= baker_B0 = 10^6.
    B <= B0 is the 25-chunk census.
    B > B0 uses baker_bound_gap3
    (BMS Table 1 / Matveev not in
    Mathlib 4.12). -/
theorem matveev_explicit_gap3
    (hBaker : baker_bound_gap3) :
    ∀ A B : Nat,
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
      B ≤ baker_B0 := by
  intro A B h
  by_cases hle : B ≤ baker_B0
  · exact hle
  · have hgt : baker_B0 < B := Nat.not_le.mp hle
    have hf : False :=
      baker_bound_gap3_implies_at_B0 hBaker B hgt ⟨A, h⟩
    exact nomatch hf

/-- Conditional gap-3 forall.
    B <= B0 = 1e6 by the residue cover:
    Mod16 15/16 class (196, 1500003) plus
    expanded moduli 17, 5, 7, 11, 13, 19,
    23, 31, 37 for B == 14 / allKilled_1e6.
    B > B0 by matveev_explicit_gap3.
    Not an unconditional Beal forall. -/
theorem baker_conditional_gap3_full
    (hBaker : baker_bound_gap3) :
    ∀ B : Nat,
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  intro B
  by_cases hB : B ≤ baker_B0
  · exact baker_le_B0_gap3 hB
  · intro hEx
    rcases hEx with ⟨A, hEq⟩
    exact hB (matveev_explicit_gap3 hBaker A B hEq)

#check baker_B0
#check baker_B0_eq
#check baker_B0_eq_pow10_6
#check baker_bound_gap3
#check baker_bound_gap3_at_B0
#check baker_le_B0_gap3
#check matveev_log_form_nat
#check matveev_no_solution_A_le_B
#check matveev_A_le_B_implies_le_B0
#check matveev_explicit_gap3
#check baker_conditional_gap3_full
#check allKilled
#check allKilled_chunk_0
#check allKilled_chunk_24
#check allKilled_62500
#check allKilled_1e6
#print axioms baker_B0_eq
#print axioms baker_B0_eq_pow10_6
#print axioms baker_le_B0_gap3
#print axioms matveev_log_form_nat
#print axioms matveev_no_solution_A_le_B
#print axioms matveev_A_le_B_implies_le_B0
#print axioms matveev_explicit_gap3
#print axioms baker_conditional_gap3_full
#print axioms allKilled_chunk_0
#print axioms allKilled_chunk_24
#print axioms allKilled_62500
#print axioms allKilled_1e6

end BealLevel26Foundations.BealGap3BakerUpperBound
