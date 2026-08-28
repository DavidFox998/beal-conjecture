/-
      B14_TateC4Nonzero — c₄ ≢ 0 mod p for the Frey curve (Tate Step 2 input).

      For primitive A^x + B^y = C^z (gcd=1, x,y,z ≥ 3), Frey curve Y² = X(X−A^x)(X+B^y),
      c₄ = 16((A^x)² + A^x·B^y + (B^y)²).

      Three cases, all closed with 0 sorry:
        p | A, p ∤ B  →  c₄ ≡ 16·(B^y)² ≢ 0 mod p
        p | B, p ∤ A  →  c₄ ≡ 16·(A^x)² ≢ 0 mod p
        p | C, A^x+B^y=C^z, p ∤ B  →  A^x ≡ −B^y  →  c₄ ≡ 16·(B^y)² ≢ 0

      This is Tate algorithm Step 2: v_p(c₄)=0 → Kodaira type I_n → ord_p(N)=1.
      Author: David Fox + Claude, Aug 2026 — 0 sorry target
      -/
      import Beal.B14_FreyTate
      import Mathlib.Data.ZMod.Basic
      import Mathlib.Tactic

      namespace Beal.FreyTate.TateC4

      open Beal.FreyTate

      -- p is implicit (inferred from types); hp and hp2 are explicit on each theorem.
      variable {p : ℕ}

      -- ── §1. Helpers ──────────────────────────────────────────────────────────────

      /-- 16 ≠ 0 in ZMod p for any odd prime p.
        Proof: p prime, p | 16 = 2^4 → p | 2 → p = 2 (2 prime) → contradicts p ≠ 2. -/
      theorem sixteen_ne_zero_ZMod (hp : Nat.Prime p) (hp2 : p ≠ 2) : (16 : ZMod p) ≠ 0 := by
      intro h16
      apply hp2
      have h_dvd : p ∣ 16 := (ZMod.natCast_zmod_eq_zero_iff_dvd 16 p).mp h16
      have h16_pow : (16 : ℕ) = 2 ^ 4 := by norm_num
      rw [h16_pow] at h_dvd
      have h2dvd : p ∣ 2 := hp.dvd_of_dvd_pow h_dvd
      have h2le : 2 ≤ p := hp.two_le
      have hor := Nat.prime_two.eq_one_or_self_of_dvd p h2dvd
      omega

      /-- If p ∤ B.natAbs and y > 0 then (B^y : ZMod p) ≠ 0.
        Proof factors through (B : ZMod p) ≠ 0 then pow_ne_zero. -/
      theorem pow_ne_zero_of_not_dvd (hp : Nat.Prime p) (hp2 : p ≠ 2) {B : ℤ} {y : ℕ} (hy : 0 < y)
        (hB : ¬ p ∣ B.natAbs) : ((B ^ y : ℤ) : ZMod p) ≠ 0 := by
      haveI : Fact (Nat.Prime p) := ⟨hp⟩
      have hBne : (B : ZMod p) ≠ 0 := by
        intro h0
        apply hB
        have h : (p : ℤ) ∣ B := (ZMod.intCast_zmod_eq_zero_iff_dvd B p).mp h0
        obtain ⟨k, hk⟩ := h
        exact ⟨k.natAbs, by simp [hk, Int.natAbs_mul, Int.natAbs_ofNat]⟩
      rw [show ((B ^ y : ℤ) : ZMod p) = (B : ZMod p) ^ y from by push_cast; ring]
      exact pow_ne_zero y hBne

      -- ── §2. Three c₄ nonzero lemmas ─────────────────────────────────────────────
      -- Stated with explicit (A^x)^2 to avoid right-assoc ^ ambiguity in c4_Frey.

      /-- Lemma 1: p | A, p ∤ B → c₄ ≢ 0 mod p.
        A^x ≡ 0 → c₄ ≡ 16·(B^y)² ≢ 0. CLOSED. -/
      theorem c4_nonzero_of_dvd_A (hp : Nat.Prime p) (hp2 : p ≠ 2)
        {A B : ℤ} {x y : ℕ} (hx : 0 < x) (hy : 0 < y)
        (hA : (p : ℤ) ∣ A) (hB : ¬ p ∣ B.natAbs) :
        ((16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) : ℤ) : ZMod p) ≠ 0 := by
      haveI : Fact (Nat.Prime p) := ⟨hp⟩
      have hAx0 : ((A ^ x : ℤ) : ZMod p) = 0 := intPow_cast_zero_of_dvd hp hx hA
      have hBy_ne : ((B ^ y : ℤ) : ZMod p) ≠ 0 := pow_ne_zero_of_not_dvd hp hp2 hy hB
      have h_eq : ((16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) : ℤ) : ZMod p) =
          (16 : ZMod p) * ((B ^ y : ℤ) : ZMod p) ^ 2 := by
        push_cast at hAx0; push_cast; rw [hAx0]; ring
      rw [h_eq]
      exact mul_ne_zero (sixteen_ne_zero_ZMod hp hp2) (pow_ne_zero 2 hBy_ne)

      /-- Lemma 2: p | B, p ∤ A → c₄ ≢ 0 mod p. Symmetric to Lemma 1. CLOSED. -/
      theorem c4_nonzero_of_dvd_B (hp : Nat.Prime p) (hp2 : p ≠ 2)
        {A B : ℤ} {x y : ℕ} (hx : 0 < x) (hy : 0 < y)
        (hB : (p : ℤ) ∣ B) (hA : ¬ p ∣ A.natAbs) :
        ((16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) : ℤ) : ZMod p) ≠ 0 := by
      haveI : Fact (Nat.Prime p) := ⟨hp⟩
      have hBy0 : ((B ^ y : ℤ) : ZMod p) = 0 := intPow_cast_zero_of_dvd hp hy hB
      have hAx_ne : ((A ^ x : ℤ) : ZMod p) ≠ 0 := pow_ne_zero_of_not_dvd hp hp2 hx hA
      have h_eq : ((16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) : ℤ) : ZMod p) =
          (16 : ZMod p) * ((A ^ x : ℤ) : ZMod p) ^ 2 := by
        push_cast at hBy0; push_cast; rw [hBy0]; ring
      rw [h_eq]
      exact mul_ne_zero (sixteen_ne_zero_ZMod hp hp2) (pow_ne_zero 2 hAx_ne)

      /-- Lemma 3: p | C, A^x+B^y=C^z, p ∤ B → c₄ ≢ 0 mod p.
        C^z ≡ 0 → A^x + B^y ≡ 0 → A^x ≡ −B^y → c₄ = 16·(B^y)² ≢ 0. CLOSED. -/
      theorem c4_nonzero_of_dvd_C (hp : Nat.Prime p) (hp2 : p ≠ 2)
        {A B C : ℤ} {x y z : ℕ} (hx : 0 < x) (hy : 0 < y) (hz : 0 < z)
        (hEq : A ^ x + B ^ y = C ^ z)
        (hC : (p : ℤ) ∣ C) (hB : ¬ p ∣ B.natAbs) :
        ((16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) : ℤ) : ZMod p) ≠ 0 := by
      haveI : Fact (Nat.Prime p) := ⟨hp⟩
      have hCz0 : ((C ^ z : ℤ) : ZMod p) = 0 := intPow_cast_zero_of_dvd hp hz hC
      have hsum0 : ((A ^ x : ℤ) : ZMod p) + ((B ^ y : ℤ) : ZMod p) = 0 := by
        have h : ((A ^ x + B ^ y : ℤ) : ZMod p) = 0 := by
          rw [show (A ^ x + B ^ y : ℤ) = C ^ z from hEq]; exact hCz0
        rwa [Int.cast_add] at h
      have hBy_ne : ((B ^ y : ℤ) : ZMod p) ≠ 0 := pow_ne_zero_of_not_dvd hp hp2 hy hB
      have hAx_neg : ((A ^ x : ℤ) : ZMod p) = -((B ^ y : ℤ) : ZMod p) :=
        eq_neg_of_add_eq_zero_left hsum0
      have h_eq : ((16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) : ℤ) : ZMod p) =
          (16 : ZMod p) * ((B ^ y : ℤ) : ZMod p) ^ 2 := by
        have key : (A : ZMod p) ^ x = -(B : ZMod p) ^ y := by
          have := hAx_neg; push_cast at this; exact this
        push_cast; rw [key]; ring
      rw [h_eq]
      exact mul_ne_zero (sixteen_ne_zero_ZMod hp hp2) (pow_ne_zero 2 hBy_ne)

      #print axioms c4_nonzero_of_dvd_A  -- Expected: propext, Quot.sound, Classical.choice
      #print axioms c4_nonzero_of_dvd_B
      #print axioms c4_nonzero_of_dvd_C

      end Beal.FreyTate.TateC4
    