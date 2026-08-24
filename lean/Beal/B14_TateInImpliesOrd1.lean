/-
        B14_TateInImpliesOrd1 — Tate Step 2: I_n → ord_p(N) = 1

        Reduces tate_frey_multiplicative to the smaller generic axiom
        tate_step2_I_n_conductor_one (Silverman AEC IV.9), using:
          · c4_nonzero_of_dvd_{A,B,C}   (0 sorry — B14_TateC4Nonzero)
          · tate_step2_I_n_conductor_one (1 named axiom)

        Sorry count: 0.

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

        -- ── §2. ZMod wrapper ─────────────────────────────────────────────────────────

        theorem tate_step2_ZMod {c4 Δ : ℤ} {N : ℕ} {p : ℕ} (hp : Nat.Prime p)
          (h_c4 : (c4 : ZMod p) ≠ 0) (h_Δ : (p : ℤ) ∣ Δ) :
          p ∣ N ∧ ¬ (p * p ∣ N) := by
        have h_c4_nat : ¬ p ∣ c4.natAbs := by
          intro h_dvd
          apply h_c4
          rw [ZMod.intCast_zmod_eq_zero_iff_dvd]
          obtain ⟨k, hk⟩ := h_dvd
          exact ⟨k, by push_cast [← hk, Int.natAbs_eq_iff]; simp [mul_comm]⟩
        have h_Δ_nat : p ∣ Δ.natAbs := by
          obtain ⟨k, hk⟩ := h_Δ
          exact ⟨k.natAbs, by rw [hk]; simp [Int.natAbs_mul, Int.natAbs_ofNat]⟩
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

        /-- Prime divides a Finset ℕ product → divides some member.
          Proved by Finset induction; uses only Nat.Prime.dvd_mul, no uncertain API. -/
        private theorem prime_dvd_finset_prod {q : ℕ} (hq : q.Prime) :
            ∀ (T : Finset ℕ), q ∣ T.prod id → ∃ x ∈ T, q ∣ x := by
          intro T
          induction T using Finset.induction_on with
          | empty =>
            intro h
            exact absurd (Nat.dvd_one.mp h) hq.ne_one
          | insert ha ih =>
            rw [Finset.prod_insert ha]
            simp only [id]
            intro hprod
            rcases hq.dvd_mul.mp hprod with ha' | hT'
            · exact ⟨_, Finset.mem_insert_self _ _, ha'⟩
            · obtain ⟨x, hx, hxd⟩ := ih hT'
              exact ⟨x, Finset.mem_insert_of_mem hx, hxd⟩

        -- ── §4. Main derived theorem ──────────────────────────────────────────────────

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
          · -- p | C
            have hpC := dvd_int_of_dvd_natAbs hC hCdiv
            have hnotB : ¬ p ∣ B.natAbs := fun hBd => by
              have hpB := dvd_int_of_dvd_natAbs hB hBd
              have hpAx : (p : ℤ) ∣ A ^ x := by
                have h := dvd_sub (dvd_pow hpC hz.ne') (dvd_pow hpB hy.ne')
                rwa [← hEq, add_sub_cancel_right] at h
              have hpA_nat : p ∣ A.natAbs := by
                have h1 : p ∣ (A ^ x).natAbs := by
                  obtain ⟨k, hk⟩ := hpAx
                  exact ⟨k.natAbs, by rw [hk]; simp [Int.natAbs_mul, Int.natAbs_ofNat]⟩
                rw [Int.natAbs_pow] at h1
                exact hp.dvd_of_dvd_pow h1
              exact absurd_prime_unit hp (hCop.isUnit_of_dvd'
                (dvd_int_of_dvd_natAbs hA hpA_nat) (dvd_mul_of_dvd_left hpB C))
            exact c4_nonzero_of_dvd_C hp hp2 hx hy hz hEq hpC hnotB
        -- 3. p | disc_Frey.natAbs
        have h_disc : p ∣ (disc_Frey A B C x y z).natAbs := by
          simp only [disc_Frey, Int.natAbs_mul, Int.natAbs_pow, Int.natAbs_ofNat]
          rcases h_or with hAdiv | hBdiv | hCdiv
          · refine dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_of_dvd_right ?_ 16) _) _
            exact dvd_pow (dvd_pow hAdiv hx.ne') two_ne_zero
          · refine dvd_mul_of_dvd_left (dvd_mul_of_dvd_right ?_ _) _
            exact dvd_pow (dvd_pow hBdiv hy.ne') two_ne_zero
          · exact dvd_mul_of_dvd_right
              (dvd_pow (dvd_pow hCdiv hz.ne') two_ne_zero) _
        -- 4. Apply Tate Step 2
        have h_disc_int : (p : ℤ) ∣ disc_Frey A B C x y z := by
          obtain ⟨k, hk⟩ := h_disc
          exact ⟨k, by push_cast [← hk, Int.natAbs_eq_iff]; simp [mul_comm]⟩
        have h_tate := tate_step2_ZMod (N := conductor_Frey A B C x y) hp h_c4 h_disc_int
        -- 5. Conductor prime-support — the third conjunct
        refine ⟨conductor_Frey A B C x y, h_tate.1, h_tate.2, fun q hq_prime hq_dvd => ?_⟩
        simp only [conductor_Frey] at hq_dvd
        -- q | 2 * ∏{odd prime factors of ABC}
        rcases hq_prime.dvd_mul.mp hq_dvd with h2 | hprod
        · -- q | 2 and q prime → q = 2
          right
          have hq_le_2 : q ≤ 2 := Nat.le_of_dvd two_pos h2
          omega
        · -- q | ∏{odd primes of ABC} → q | A·B·C
          left
          set S := (A.natAbs * B.natAbs * C.natAbs).factors.toFinset.filter (· ≠ 2)
          obtain ⟨x', hx_S, hx_dvd⟩ := prime_dvd_finset_prod hq_prime S hprod
          have hx_filter := Finset.mem_filter.mp hx_S
          have hx_in_factors : x' ∈ (A.natAbs * B.natAbs * C.natAbs).factors :=
            Finset.mem_toFinset.mp hx_filter.1
          have hx_prime : x'.Prime := Nat.prime_of_mem_factors hx_in_factors
          -- q | x' and x' prime → q = x'
          have hqx : q = x' := by
            rcases hx_prime.eq_one_or_self_of_dvd q hx_dvd with h1 | hqx'
            · exact absurd (h1 ▸ hq_prime) Nat.not_prime_one
            · exact hqx'
          rw [hqx]; exact Nat.dvd_of_mem_factors hx_in_factors

        #print axioms tate_step2_I_n_conductor_one
        #print axioms tate_frey_multiplicative_derived
        -- Expected: tate_step2_I_n_conductor_one only (no sorryAx)

        end Beal.FreyTate.TateStep2
    