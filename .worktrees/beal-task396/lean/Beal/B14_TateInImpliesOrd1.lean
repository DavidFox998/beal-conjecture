/-
        B14_TateInImpliesOrd1 — Tate Step 2: I_n → ord_p(N) = 1

        Reduces tate_frey_multiplicative to the smaller local-conductor axiom
        tate_step2_I_n_conductor_one (Silverman AEC IV.9), using:
          · c4_nonzero_of_dvd_{A,B,C}   (0 sorry — B14_TateC4Nonzero)
          · tate_step2_I_n_conductor_one (1 named local theorem interface)

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

        -- ── §1. Local Tate Step 2 boundary ───────────────────────────────────────────

        /-- A unit c₄ is the local minimality certificate needed by this
          multiplicative-reduction branch of Tate's algorithm. It is a sufficient
          local condition, not a reconstruction of the full algorithm. -/
        def IsMinimalAt
            {A B C : ℤ} {x y z : ℕ} (model : FreyCurveModel A B C x y z) (p : ℕ) : Prop :=
          ¬ p ∣ model.c4.natAbs

        /-- **Tate's Algorithm Step 2 (local Frey conductor interface)**
          A Frey equation has one integral Weierstrass model with a conductor
          value governed by an explicit odd-prime local contract. A unit `c₄`
          gives the minimality certificate for this branch, and a bad
          discriminant fiber then has conductor exponent one at `p`.

          The model records the Frey coefficients, `c₄`, discriminant, conductor
          value, prime support, and local conductor-exponent relation. Thus the
          conclusion cannot be instantiated with an unrelated natural number or a
          new conductor for each prime. This boundary covers only odd primes; it
          does not claim a formal 2-adic or globally computed conductor. Silverman
          AEC IV.9 / Tate 1972; the local theorem remains an explicit axiom until
          reconstructed in Lean. -/
        axiom tate_step2_I_n_conductor_one
          {A B C : ℤ} {x y z : ℕ}
          (hEq : A ^ x + B ^ y = C ^ z) :
          ∃ _model : FreyCurveModel A B C x y z, True

        /-- The local Tate interface supplies one model for a fixed Frey equation;
          later prime-by-prime arguments reuse this same chosen conductor. -/
        noncomputable def freyModelOf
            {A B C : ℤ} {x y z : ℕ}
            (hEq : A ^ x + B ^ y = C ^ z) : FreyCurveModel A B C x y z :=
          Classical.choose (tate_step2_I_n_conductor_one hEq)

        -- ── §2. Private helpers ───────────────────────────────────────────────────────

        private theorem dvd_int_of_dvd_natAbs {p : ℕ} {A : ℤ} (hA : 0 < A)
            (h : p ∣ A.natAbs) : (p : ℤ) ∣ A := by
          rw [← Int.natAbs_of_nonneg hA.le]; exact_mod_cast h

        private theorem absurd_prime_unit {p : ℕ} (hp : Nat.Prime p)
            (hunit : IsUnit (p : ℤ)) : False := by
          rcases Int.isUnit_iff.mp hunit with h | h
          · exact absurd h (by exact_mod_cast hp.one_lt.ne')
          · linarith [show (0 : ℤ) < p from by exact_mod_cast hp.pos]

        -- ── §3. Main derived theorem ──────────────────────────────────────────────────

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
        let model := freyModelOf hEq
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
        have h_c4_nat : ¬ p ∣ (c4_Frey A B x y).natAbs := by
          intro h_dvd
          apply h_c4
          rw [ZMod.intCast_zmod_eq_zero_iff_dvd]
          exact Int.natCast_dvd.mpr h_dvd
        have h_minimal : IsMinimalAt model p := by
          simpa only [IsMinimalAt, model.c4_eq] using h_c4_nat
        have h_disc_int : (p : ℤ) ∣ disc_Frey A B C x y z := Int.natCast_dvd.mpr h_disc
        have h_disc_model : p ∣ model.discriminant.natAbs := by
          have h_disc_nat : p ∣ (disc_Frey A B C x y z).natAbs :=
            Int.natCast_dvd.mp h_disc_int
          simpa only [model.discriminant_eq] using h_disc_nat
        have h_exact :=
          model.odd_multiplicative_conductor p hp hp2 h_minimal h_disc_model
        -- 5. The witness is the model's actual conductor, with its model-level support.
        exact ⟨model.conductor, h_exact.1, h_exact.2, model.conductor_prime_support⟩

        #print axioms tate_step2_I_n_conductor_one
        #print axioms tate_frey_multiplicative_derived
        -- Expected: tate_step2_I_n_conductor_one only (no sorryAx)

        end Beal.FreyTate.TateStep2
    