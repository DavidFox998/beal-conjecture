/-
        B14_TateInImpliesOrd1 — Tate Step 2: I_n → ord_p(N) = 1

        Separates the fixed Frey model/conductor supplier from the genuine
        local-conductor theorem `tate_step2_odd_prime_external`
        (Silverman AEC IV.9), using:
          · c4_nonzero_of_dvd_{A,B,C}   (0 sorry — B14_TateC4Nonzero)
          · frey_conductor_data          (global conductor boundary)
          · tate_step2_I_n_conductor_one (proved specialization wrapper)
          · FreyTwoAdicConductorCertificate (data-valued 2-adic interface)

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

        /-- The unit condition on the actual Weierstrass invariant `c₄`.

          At an odd prime this is the usual `vₚ(c₄) = 0` condition. It is kept
          as a proposition about the model's actual `c₄`, rather than as a
          field that a model supplier can fill independently. -/
        def IsC4UnitAt
            {A B C : ℤ} {x y z : ℕ} (model : FreyCurveModel A B C x y z) (p : ℕ) : Prop :=
          IsUnit (model.c4 : ZMod p)

        /-- A bad discriminant fiber at `p`, stated for the model's actual
          discriminant. The integral model makes this the concrete condition
          `p ∣ |Δ|`. -/
        def IsBadFiberAt
            {A B C : ℤ} {x y z : ℕ} (model : FreyCurveModel A B C x y z) (p : ℕ) : Prop :=
          p ∣ model.discriminant.natAbs

        /-- The minimal multiplicative branch of Tate's algorithm.

          For this milestone, the standard type `Iₙ` input is represented by
          the two explicit local certificates: unit `c₄` and bad
          discriminant fiber. No conductor or reduction-type fact is hidden in
          the model structure. -/
        def IsMinimalAt
            {A B C : ℤ} {x y z : ℕ} (model : FreyCurveModel A B C x y z) (p : ℕ) : Prop :=
          IsC4UnitAt model p

        def HasMultiplicativeTypeI
            {A B C : ℤ} {x y z : ℕ} (model : FreyCurveModel A B C x y z) (p : ℕ) : Prop :=
          IsMinimalAt model p ∧ IsBadFiberAt model p

        /-- The unit certificate is exactly the nonvanishing certificate used by
          the arithmetic Frey lemmas. -/
        theorem isC4UnitAt_iff_not_dvd
            {A B C : ℤ} {x y z : ℕ} (model : FreyCurveModel A B C x y z)
            {p : ℕ} (hp : p.Prime) :
            IsC4UnitAt model p ↔ ¬ p ∣ model.c4.natAbs := by
          haveI : Fact (Nat.Prime p) := ⟨hp⟩
          rw [IsC4UnitAt, isUnit_iff_ne_zero]
          constructor
          · intro hUnit hDvd
            apply hUnit
            rw [ZMod.intCast_zmod_eq_zero_iff_dvd]
            exact Int.natCast_dvd.mpr hDvd
          · intro hDvd hZero
            apply hDvd
            exact Int.natCast_dvd.mp
              ((ZMod.intCast_zmod_eq_zero_iff_dvd model.c4 p).mp hZero)

        /-- External global-conductor data for the canonical integral Frey model.

          This boundary supplies one conductor and its prime support. It does
          not contain Tate's exact local exponent theorem and cannot be
          instantiated with a different model at each prime. -/
        axiom frey_conductor_data
          {A B C : ℤ} {x y z : ℕ}
          (hEq : A ^ x + B ^ y = C ^ z) :
          FreyConductorData (freyIntegralModel A B C x y z)

        /-- The canonical coefficients and the one supplied conductor are
          assembled without `Classical.choice`. -/
        noncomputable def freyModelOf
            {A B C : ℤ} {x y z : ℕ}
            (hEq : A ^ x + B ^ y = C ^ z) : FreyCurveModel A B C x y z := by
          let D := frey_conductor_data hEq
          exact
            { freyIntegralModel A B C x y z with
              equation := hEq
              conductor := D.conductor
              conductor_prime_support := D.conductor_prime_support }

        /-- **External Tate input (odd-prime type `Iₙ`).**

          This is the only unformalized local theorem in this file. It is the
          standard Tate-algorithm assertion that a minimal bad type-`Iₙ` fiber
          at an odd prime has conductor exponent one. The prime, oddness, unit
          `c₄`, and bad discriminant hypotheses are all explicit; the
          conclusion refers to the conductor stored on this one exact model.

          Mathlib 4.12 does not formalize the Tate algorithm or elliptic-curve
          conductors, so this remains a deliberately narrow external theorem,
          not a fabricated conductor field or a claim of a global computation.
          The 2-adic exponent is outside this boundary. -/
        axiom tate_step2_odd_prime_external
          {A B C : ℤ} {x y z : ℕ}
          (model : FreyCurveModel A B C x y z)
          (p : ℕ) (hp : p.Prime) (hp2 : p ≠ 2)
          (hTypeI : HasMultiplicativeTypeI model p) :
          p ∣ model.conductor ∧ ¬ (p * p ∣ model.conductor)

        /-- The checked local theorem exposed to downstream Frey code.

          This wrapper is proved in Lean from the explicit type-`Iₙ`
          certificates. Its only mathematical dependency is the narrowly
          stated external Tate theorem above. -/
        theorem tate_step2_I_n_conductor_one
            {A B C : ℤ} {x y z : ℕ}
            (model : FreyCurveModel A B C x y z)
            (p : ℕ) (hp : p.Prime) (hp2 : p ≠ 2)
            (hMinimal : IsMinimalAt model p)
            (hDisc : IsBadFiberAt model p) :
            p ∣ model.conductor ∧ ¬ (p * p ∣ model.conductor) :=
          tate_step2_odd_prime_external model p hp hp2 ⟨hMinimal, hDisc⟩

        -- ── §2. Private helpers ───────────────────────────────────────────────────────

        private theorem dvd_int_of_dvd_natAbs {p : ℕ} {A : ℤ} (hA : 0 < A)
            (h : p ∣ A.natAbs) : (p : ℤ) ∣ A := by
          rw [← Int.natAbs_of_nonneg hA.le]; exact_mod_cast h

        private theorem absurd_prime_unit {p : ℕ} (hp : Nat.Prime p)
            (hunit : IsUnit (p : ℤ)) : False := by
          rcases Int.isUnit_iff.mp hunit with h | h
          · exact absurd h (by exact_mod_cast hp.one_lt.ne')
          · linarith [show (0 : ℤ) < p from by exact_mod_cast hp.pos]

        -- ── §3. Elementary 2-adic facts about the canonical equation ─────────────────

        theorem two_dvd_frey_discriminant
            (A B C : ℤ) (x y z : ℕ) :
            2 ∣ (disc_Frey A B C x y z).natAbs := by
          simp only [disc_Frey, Int.natAbs_mul, Int.natAbs_pow,
            Int.natAbs_ofNat]
          refine ⟨8 * (A.natAbs ^ x) ^ 2 * (B.natAbs ^ y) ^ 2 *
            (C.natAbs ^ z) ^ 2, ?_⟩
          ring

        theorem two_dvd_frey_c4
            (A B : ℤ) (x y : ℕ) :
            2 ∣ (c4_Frey A B x y).natAbs := by
          simp only [c4_Frey, Int.natAbs_mul, Int.natAbs_ofNat]
          refine ⟨8 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2).natAbs, ?_⟩
          ring

        theorem frey_two_adic_invariants_even
            {A B C : ℤ} {x y z : ℕ}
            (hEq : A ^ x + B ^ y = C ^ z) :
            TwoAdicInvariantWitness (freyModelOf hEq)
              .discEvenC4Even := by
          constructor
          · simpa only [(freyModelOf hEq).discriminant_eq] using
              two_dvd_frey_discriminant A B C x y z
          · simpa only [(freyModelOf hEq).c4_eq] using
              two_dvd_frey_c4 A B x y

        /-- Expose a supplied external 2-adic exponent for the same model. -/
        theorem tate_frey_two_adic_conductor
            {A B C : ℤ} {x y z : ℕ}
            (hEq : A ^ x + B ^ y = C ^ z)
            (certificate :
              FreyTwoAdicConductorCertificate (freyModelOf hEq)) :
            ExactTwoAdicConductorExponent
              (freyModelOf hEq) certificate.exponent :=
          certificate.exactExponent

        -- ── §4. Main derived theorem ─────────────────────────────────────────────────

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
          exact (isC4UnitAt_iff_not_dvd model hp).mpr
            (by simpa only [model.c4_eq] using h_c4_nat)
        have h_disc_int : (p : ℤ) ∣ disc_Frey A B C x y z := Int.natCast_dvd.mpr h_disc
        have h_disc_model : IsBadFiberAt model p := by
          have h_disc_nat : p ∣ (disc_Frey A B C x y z).natAbs :=
            Int.natCast_dvd.mp h_disc_int
          exact (show p ∣ model.discriminant.natAbs by
            simpa only [model.discriminant_eq] using h_disc_nat)
        have h_exact :=
          tate_step2_I_n_conductor_one model p hp hp2 h_minimal h_disc_model
        -- 5. The witness is the model's actual conductor, with its model-level support.
        exact ⟨model.conductor, h_exact.1, h_exact.2, model.conductor_prime_support⟩

        #print axioms freyIntegralModel
        #print axioms freyModelOf
        #print axioms tate_step2_odd_prime_external
        #print axioms tate_step2_I_n_conductor_one
        #print axioms tate_frey_two_adic_conductor
        #print axioms tate_frey_multiplicative_derived
        -- Expected named boundaries:
        --   frey_conductor_data
        --   tate_step2_odd_prime_external
        -- No `sorryAx`; the canonical integral model is transparent.

        end Beal.FreyTate.TateStep2
    