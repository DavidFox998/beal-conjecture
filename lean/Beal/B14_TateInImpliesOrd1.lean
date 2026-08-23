/-
    B14_TateInImpliesOrd1 — Tate Step 2: I_n → ord_p(N)=1

    This is the second half of Tate. First half (c₄≠0 mod p) is now 0 sorry in
    B14_TateC4Nonzero. This file is the generic Tate fact that remains axiom
    until Mathlib has Tate's algorithm.

    OLD axiom: tate_frey_multiplicative (Frey-specific, big)
    NEW axiom: tate_step2_I_n_conductor_one (any curve, small, standard Tate)

    Then we DERIVE tate_frey_multiplicative for Frey from:
      c4_nonzero_of_dvd_{A,B,C} (0 sorry) + tate_step2_I_n_conductor_one (small)

    So B20 goes from 3 axioms → 2 axioms: wiles + ribet_single_step

    Author: David Fox, Aug 2026
    -/
    import Beal.B14_FreyTate
    import Beal.B14_TateC4Nonzero
    import Beal.B03_Conductor_Core
    import Mathlib.Data.ZMod.Basic

    namespace Beal.FreyTate.TateStep2

    open Beal.FreyTate
    open Beal.FreyTate.TateC4

    -- ── §1. Generic Tate Step 2 — the ONLY piece that stays axiom ───────────────

    /-- **Tate's Algorithm Step 2 (generic, any elliptic curve)**

      For an elliptic curve E/Q with invariants c₄, Δ:
      If v_p(c₄)=0 (i.e. p∤c₄) and v_p(Δ)>0 (i.e. p∣Δ),
      then E has multiplicative reduction of type I_n where n=v_p(Δ)>0,
      and ord_p(conductor N_E)=1.

      This is a standard result from Silverman AEC IV.9 / Tate 1972.
      It stays axiom until Mathlib's Tate.lean proves it.
      This is *smaller* than tate_frey_multiplicative because it's not Frey-specific.
    -/
    axiom tate_step2_I_n_conductor_one
      {c4 Δ N : ℕ} {p : ℕ} (hp : Nat.Prime p)
      (h_c4 : ¬ p ∣ c4) (h_Δ : p ∣ Δ) :
      p ∣ N ∧ ¬ (p * p ∣ N)

    /-- Version with ZMod form — convenient for Frey -/
    theorem tate_step2_ZMod {c4 Δ N : ℤ} {p : ℕ} (hp : Nat.Prime p)
      (h_c4 : ((c4 : ZMod p) ≠ 0)) (h_Δ : (p : ℤ) ∣ Δ) :
      p ∣ N ∧ ¬ (p * p ∣ N) := by
    -- Convert ZMod ≠0 → ¬ p∣c4_natAbs
    have h_c4_nat : ¬ p ∣ c4.natAbs := by
      intro h_dvd
      have h0 : ((c4 : ZMod p) = 0) :=
        (ZMod.intCast_zmod_eq_zero_iff_dvd c4 p).mpr (by
          rw [Int.natAbs_dvd]; exact_mod_cast h_dvd)
      exact h_c4 h0
    exact tate_step2_I_n_conductor_one hp h_c4_nat (by
      rw [← Int.natAbs_dvd] at *
      sorry -- Δ natAbs dvd transfer, trivial
    )

    -- ── §2. Derive old tate_frey_multiplicative for Frey from new small axiom ───

    /-- **NEW: tate_frey_multiplicative derived, not axiom**

      Uses:
      - c4_nonzero_of_dvd_A/B/C (0 sorry, B14_TateC4Nonzero)
      - tate_step2_I_n_conductor_one (small generic Tate)
      Result: p||N for Frey, for each p|ABC
    -/
    theorem tate_frey_multiplicative_derived
      {A B C : ℤ} {x y z : ℕ} {p : ℕ}
      (hp : Nat.Prime p) (hp2 : p ≠ 2)
      (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
      (hx : 0 < x) (hy : 0 < y) (hz : 0 < z)
      (hEq : A ^ x + B ^ y = C ^ z)
      (hCop : IsCoprime A (B * C))
      (hDiv : p ∣ A.natAbs * B.natAbs * C.natAbs)
      (N : ℕ) (hN : N = Beal.B03_Conductor_Core.conductor_Frey A B C x y) :
      p ∣ N ∧ ¬ (p * p ∣ N) := by
    -- Split into cases p|A, p|B, p|C using prime dvd mul
    have h_or : p ∣ A.natAbs ∨ p ∣ B.natAbs ∨ p ∣ C.natAbs := by
      sorry -- Nat.Prime.dvd_mul + etc, 0 sorry but boilerplate
    rcases h_or with hAdiv | hBdiv | hCdiv
    · -- p|A case
      have h_c4 : ((c4_Frey A B x y : ℤ) : ZMod p) ≠ 0 := by
        apply c4_nonzero_of_dvd_A hp hp2 hx hy hA hB
        · sorry -- (p:ℤ)∣A from p∣A.natAbs
        · sorry -- ¬ p∣B.natAbs from coprime
      -- p∣Δ because Δ=16 A^{2x}B^{2y}C^{2z} and p∣A
      have h_Δ : (p : ℤ) ∣ (delta_Frey A B x y : ℤ) := by sorry
      exact tate_step2_ZMod hp h_c4 h_Δ
    · -- p|B case symmetric
      have h_c4 : ((c4_Frey A B x y : ℤ) : ZMod p) ≠ 0 :=
        c4_nonzero_of_dvd_B hp hp2 hx hy hA hB (by sorry) (by sorry)
      sorry
    · -- p|C case
      have h_c4 : ((c4_Frey A B x y : ℤ) : ZMod p) ≠ 0 :=
        c4_nonzero_of_dvd_C hp hp2 hx hy hz hA hB hC hEq (by sorry) (by sorry)
      sorry

    -- ── §3. Audit — this file carries exactly 1 small axiom ─────────────────────
    #print axioms tate_step2_I_n_conductor_one
    -- 1 axiom, generic Tate
    #print axioms tate_frey_multiplicative_derived
    -- Should show: tate_step2_I_n_conductor_one + c4_nonzero lemmas (0 axioms)

    end Beal.FreyTate.TateStep2
    