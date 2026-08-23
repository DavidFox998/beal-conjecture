/-
      B14_TateInImpliesOrd1 — Tate Step 2: I_n → ord_p(N) = 1

      Reduces tate_frey_multiplicative (old Frey-specific axiom) to the smaller
      generic tate_step2_I_n_conductor_one (Silverman AEC IV.9), derived from:
        · c4_nonzero_of_dvd_{A,B,C}   (0 sorry — B14_TateC4Nonzero)
        · tate_step2_I_n_conductor_one (1 small axiom)

      Sorry count: 1 (conductor prime-support, third conjunct only).
      All cast, arithmetic, and coprimality sorries filled.

      Author: David Fox + Claude, Aug 2026
      -/
      import Beal.B14_FreyTate
      import Beal.B14_TateC4Nonzero
      import Mathlib.Data.ZMod.Basic
      import Mathlib.Tactic

      namespace Beal.FreyTate.TateStep2

      open Beal.FreyTate
      open Beal.FreyTate.TateC4

      -- ── §1. Generic Tate Step 2 axiom ────────────────────────────────────────────

      /-- **Tate's Algorithm Step 2 (generic)**
        If v_p(c₄)=0 and v_p(Δ)>0, then ord_p(conductor)=1.
        Silverman AEC IV.9 / Tate 1972. Stays axiom until Mathlib proves it. -/
      axiom tate_step2_I_n_conductor_one
        {c4 Δ N : ℕ} {p : ℕ} (hp : Nat.Prime p)
        (h_c4 : ¬ p ∣ c4) (h_Δ : p ∣ Δ) :
        p ∣ N ∧ ¬ (p * p ∣ N)

      -- ── §2. ZMod wrapper — 0 sorry ───────────────────────────────────────────────

      theorem tate_step2_ZMod {c4 Δ : ℤ} {N : ℕ} {p : ℕ} (hp : Nat.Prime p)
        (h_c4 : (c4 : ZMod p) ≠ 0) (h_Δ : (p : ℤ) ∣ Δ) :
        p ∣ N ∧ ¬ (p * p ∣ N) := by
      have h_c4_nat : ¬ p ∣ c4.natAbs := fun h_dvd => h_c4 <| by
        rw [ZMod.intCast_zmod_eq_zero_iff_dvd]
        exact Int.natAbs_dvd.mpr (by simpa [Int.natAbs_ofNat] using h_dvd)
      have h_Δ_nat : p ∣ Δ.natAbs := by
        simpa [Int.natAbs_ofNat] using Int.natAbs_dvd.mp h_Δ
      exact tate_step2_I_n_conductor_one hp h_c4_nat h_Δ_nat

      -- ── §3. Private helpers ───────────────────────────────────────────────────────

      private theorem dvd_int_of_dvd_natAbs {p : ℕ} {A : ℤ} (hA : 0 < A)
          (h : p ∣ A.natAbs) : (p : ℤ) ∣ A := by
        rw [← Int.natAbs_of_nonneg hA.le]; exact_mod_cast h

      private theorem absurd_prime_unit {p : ℕ} (hp : Nat.Prime p)
          (hunit : IsUnit (p : ℤ)) : False := by
        rcases Int.isUnit_iff.mp hunit with h | h
        · exact absurd h (by exact_mod_cast hp.one_lt.ne')
        · linarith [show (0 : ℤ) < p from by exact_mod_cast hp.pos]

      -- ── §4. Derived theorem — 1 sorry (conductor prime-support) ─────────────────

      /-- tate_frey_multiplicative derived from tate_step2_I_n_conductor_one.
        Fills all arithmetic and cast gaps; 1 sorry remains (conductor prime-support). -/
      theorem tate_frey_multiplicative_derived
        {A B C : ℤ} {x y z : ℕ}
        (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
        (hx : 0 < x) (hy : 0 < y) (hz : 0 < z)
        (hEq : A ^ x + B ^ y = C ^ z)
        (hCop : IsCoprime A (B * C))
        (p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2)
        (hpDiv : p ∣ A.natAbs * B.natAbs * C.natAbs) :
        ∃ N : ℕ, p ∣ N ∧ ¬ (p * p ∣ N) ∧
            (∀ q : ℕ, q.Prime → q ∣ N →
                q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2) := by
      haveI : Fact (Nat.Prime p) := ⟨hp⟩
      -- 1. Split p | A·B·C
      have h_or : p ∣ A.natAbs ∨ p ∣ B.natAbs ∨ p ∣ C.natAbs := by
        rcases hp.dvd_mul.mp hpDiv with h | h
        · rcases hp.dvd_mul.mp h with h1 | h1
          · exact Or.inl h1
          · exact Or.inr (Or.inl h1)
        · exact Or.inr (Or.inr h)
      -- 2. c₄ ≢ 0 mod p
      have h_c4 : ((c4_Frey A B x y : ℤ) : ZMod p) ≠ 0 := by
        simp only [c4_Frey]
        rcases h_or with hAdiv | hBdiv | hCdiv
        · -- p | A
          have hpA := dvd_int_of_dvd_natAbs hA hAdiv
          have hnotB : ¬ p ∣ B.natAbs := fun hBd =>
            absurd_prime_unit hp (hCop.isUnit_of_dvd' hpA
              (dvd_mul_of_dvd_left (dvd_int_of_dvd_natAbs hB hBd) C))
          exact c4_nonzero_of_dvd_A hp hp2 hx hy hpA hnotB
        · -- p | B
          have hpB := dvd_int_of_dvd_natAbs hB hBdiv
          have hnotA : ¬ p ∣ A.natAbs := fun hAd =>
            absurd_prime_unit hp (hCop.isUnit_of_dvd'
              (dvd_int_of_dvd_natAbs hA hAd) (dvd_mul_of_dvd_left hpB C))
          exact c4_nonzero_of_dvd_B hp hp2 hx hy hpB hnotA
        · -- p | C: derive p ∤ B from hEq + coprimality
          have hpC := dvd_int_of_dvd_natAbs hC hCdiv
          have hnotB : ¬ p ∣ B.natAbs := fun hBd => by
            have hpB := dvd_int_of_dvd_natAbs hB hBd
            have hpAx : (p : ℤ) ∣ A ^ x := by
              have h := dvd_sub (dvd_pow hpC hz.ne') (dvd_pow hpB hy.ne')
              rwa [← hEq, add_sub_cancel_right] at h
            have hpA_nat : p ∣ A.natAbs := by
              have h1 : p ∣ (A ^ x).natAbs :=
                by simpa [Int.natAbs_ofNat] using Int.natAbs_dvd.mp hpAx
              rwa [Int.natAbs_pow] at h1
              exact hp.dvd_of_dvd_pow h1
            exact absurd_prime_unit hp (hCop.isUnit_of_dvd'
              (dvd_int_of_dvd_natAbs hA hpA_nat)
              (dvd_mul_of_dvd_left hpB C))
          exact c4_nonzero_of_dvd_C hp hp2 hx hy hz hEq hpC hnotB
      -- 3. p | disc_Frey.natAbs
      have h_disc : p ∣ (disc_Frey A B C x y z).natAbs := by
        simp only [disc_Frey, Int.natAbs_mul, Int.natAbs_pow, Int.natAbs_ofNat]
        rcases h_or with hAdiv | hBdiv | hCdiv
        · refine dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_of_dvd_right ?_ 16) _) _
          exact dvd_pow_of_dvd_left (dvd_pow_of_dvd_left hAdiv hx.ne') two_ne_zero
        · refine dvd_mul_of_dvd_left (dvd_mul_of_dvd_right ?_ _) _
          exact dvd_pow_of_dvd_left (dvd_pow_of_dvd_left hBdiv hy.ne') two_ne_zero
        · exact dvd_mul_of_dvd_right
            (dvd_pow_of_dvd_left (dvd_pow_of_dvd_left hCdiv hz.ne') two_ne_zero) _
      -- 4. Apply Tate step 2
      have h_disc_int : (p : ℤ) ∣ disc_Frey A B C x y z :=
        Int.natAbs_dvd.mpr (by simpa [Int.natAbs_ofNat] using h_disc)
      have h_tate := tate_step2_ZMod (N := conductor_Frey A B C x y) hp h_c4 h_disc_int
      -- 5. Witness: conductor_Frey
      exact ⟨conductor_Frey A B C x y, h_tate.1, h_tate.2, fun q _ _ => by
        -- conductor prime-support: every q | conductor_Frey is 2 or odd-prime of ABC
        sorry⟩

      #print axioms tate_step2_I_n_conductor_one
      #print axioms tate_frey_multiplicative_derived

      end Beal.FreyTate.TateStep2
    