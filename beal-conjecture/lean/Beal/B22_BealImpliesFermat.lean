-- B22_BealImpliesFermat — unrestricted Fermat by infinite descent.
--
-- This file imports only the import-free B01 statement.  The proof itself
-- uses Lean's primitive natural-number arithmetic; its sole foundational
-- dependency is `propext`, inherited from `Nat.gcd`.

import Beal.B01_Def_Core

/-- Fermat's Last Theorem for positive natural-number bases and exponent > 2. -/
def FermatLastTheoremCore : Prop :=
  ∀ A B C n : Nat,
    0 < A → 0 < B → 0 < C → 2 < n →
    A ^ n + B ^ n = C ^ n → False

/--
Beal's conjecture implies Fermat's Last Theorem.

Given a Fermat solution, its three-way gcd cannot be one: otherwise it is a
primitive Beal solution with equal exponents.  Dividing all three bases by
that nontrivial gcd preserves the Fermat equation and strictly decreases the
sum of the bases.  Strong induction on that sum rules out every positive
solution.
-/
theorem beal_implies_fermat_core :
    BealConjectureCore → FermatLastTheoremCore := by
  intro hBeal A B C n hA hB hC hn hEq
  have descent : ∀ m : Nat, ∀ A B C n : Nat,
      A + B + C = m →
      0 < A → 0 < B → 0 < C → 2 < n →
      A ^ n + B ^ n = C ^ n → False := by
    intro m
    refine Nat.strongRecOn m ?_
    intro m ih A B C n hsum hA hB hC hn hEq
    let g := Nat.gcd A (Nat.gcd B C)
    have hgA : DividesCore g A := by
      rcases Nat.gcd_dvd_left A (Nat.gcd B C) with ⟨q, hq⟩
      exact ⟨q, hq⟩
    have hgB : DividesCore g B := by
      rcases Nat.dvd_trans (Nat.gcd_dvd_right A (Nat.gcd B C))
          (Nat.gcd_dvd_left B C) with ⟨q, hq⟩
      exact ⟨q, hq⟩
    have hgC : DividesCore g C := by
      rcases Nat.dvd_trans (Nat.gcd_dvd_right A (Nat.gcd B C))
          (Nat.gcd_dvd_right B C) with ⟨q, hq⟩
      exact ⟨q, hq⟩
    have hg_ne_one : g ≠ 1 := by
      intro hg_one
      apply hBeal A B C n n n
      refine ⟨hA, hB, hC, hn, hn, hn, hEq, ?_⟩
      intro d hdA hdB hdC
      rcases hdA with ⟨qA, hqA⟩
      rcases hdB with ⟨qB, hqB⟩
      rcases hdC with ⟨qC, hqC⟩
      have hd_g : d ∣ Nat.gcd A (Nat.gcd B C) :=
        Nat.dvd_gcd ⟨qA, hqA⟩
          (Nat.dvd_gcd ⟨qB, hqB⟩ ⟨qC, hqC⟩)
      have hd_one : d ∣ 1 := by
        change d ∣ g at hd_g
        rw [hg_one] at hd_g
        exact hd_g
      exact Nat.dvd_one.mp hd_one
    have hg_ne_zero : g ≠ 0 := by
      intro hg_zero
      rcases hgA with ⟨q, hq⟩
      have : A = 0 := by simp [hg_zero] at hq ⊢; exact hq
      exact (Nat.ne_of_gt hA) this
    have hg_one_lt : 1 < g := by
      cases hg : g with
      | zero => exact False.elim (hg_ne_zero hg)
      | succ k =>
        cases k with
        | zero => exact False.elim (hg_ne_one hg)
        | succ k => exact Nat.succ_lt_succ (Nat.zero_lt_succ k)
    rcases hgA with ⟨A', hAeq⟩
    rcases hgB with ⟨B', hBeq⟩
    rcases hgC with ⟨C', hCeq⟩
    have hA' : 0 < A' := by
      apply Nat.pos_of_ne_zero
      intro hzero
      rw [hAeq, hzero, Nat.mul_zero] at hA
      exact False.elim ((Nat.ne_of_gt hA) rfl)
    have hB' : 0 < B' := by
      apply Nat.pos_of_ne_zero
      intro hzero
      rw [hBeq, hzero, Nat.mul_zero] at hB
      exact False.elim ((Nat.ne_of_gt hB) rfl)
    have hC' : 0 < C' := by
      apply Nat.pos_of_ne_zero
      intro hzero
      rw [hCeq, hzero, Nat.mul_zero] at hC
      exact False.elim ((Nat.ne_of_gt hC) rfl)
    have hEq' : A' ^ n + B' ^ n = C' ^ n := by
      apply Nat.eq_of_mul_eq_mul_left (Nat.pow_pos (Nat.pos_of_ne_zero hg_ne_zero))
      calc
        g ^ n * (A' ^ n + B' ^ n) =
            (g * A') ^ n + (g * B') ^ n := by
              rw [Nat.mul_add, Nat.mul_pow, Nat.mul_pow]
        _ = A ^ n + B ^ n := by rw [← hAeq, ← hBeq]
        _ = C ^ n := hEq
        _ = (g * C') ^ n := by rw [hCeq]
        _ = g ^ n * C' ^ n := by rw [Nat.mul_pow]
    have hA_lt : A' < A := by
      rw [hAeq]
      simpa using Nat.mul_lt_mul_of_pos_right hg_one_lt hA'
    have hB_lt : B' < B := by
      rw [hBeq]
      simpa using Nat.mul_lt_mul_of_pos_right hg_one_lt hB'
    have hC_lt : C' < C := by
      rw [hCeq]
      simpa using Nat.mul_lt_mul_of_pos_right hg_one_lt hC'
    have hsum_lt : A' + B' + C' < m := by
      rw [← hsum]
      exact Nat.add_lt_add (Nat.add_lt_add hA_lt hB_lt) hC_lt
    exact ih (A' + B' + C') hsum_lt A' B' C' n rfl hA' hB' hC' hn hEq'
  exact descent (A + B + C) A B C n rfl hA hB hC hn hEq

#print axioms FermatLastTheoremCore
#print axioms beal_implies_fermat_core
