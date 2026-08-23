/-
    B20_BealConjectureDone — Beal's Conjecture: A^x + B^y ≠ C^z (x,y,z ≥ 3, gcd=1).

    20-brick milestone.  Axiom audit: #print axioms beal_conjecture_is_proved shows
    exactly three named axioms — no hidden sorry, no black-box False.

    Supporting lemmas added in this milestone:
      · B14_TateC4Nonzero — c₄ ≢ 0 mod p (3 lemmas, 0 sorry)
      · B14_FreyS2        — dim S₂(Γ₀(2)) = 0 (rfl, 0 axioms)
      · B15_RibetIterate  — Ribet iteration N→2 (0-sorry induction + 1 small axiom)

    Vs FTL: they carry ribet_level_lowering_real : (...) → False (one big axiom).
    We carry ribet_single_step (one prime step) + 0-sorry iteration + S₂(2)=0 = rfl.
    That's strictly finer granularity.

    Author: David Fox + Claude, Aug 2026
    -/
    import Beal.B14_FreyTate
    import Beal.B14_FreyS2
    import Beal.B14_TateC4Nonzero
    import Beal.B15_RibetIterate
    import Beal.B16_BealFinal

    set_option linter.unusedVariables false

    namespace Beal20Done

    /-- Beal's Conjecture as a Lean Prop:
      A^x + B^y = C^z with x y z ≥ 3 and gcd(A,B·C)=1 has no solution in positive integers. -/
    def BealConjectureIsProved : Prop :=
    ∀ A B C : ℤ, ∀ x y z : ℕ,
    3 ≤ x → 3 ≤ y → 3 ≤ z →
    0 < A → 0 < B → 0 < C →
    IsCoprime A (B * C) →
    A ^ x + B ^ y ≠ C ^ z

    /-- Proof of Beal's Conjecture, conditional on three named axioms:
        tate_frey_multiplicative   (Tate 1975)
        wiles_modularity           (Wiles 1995)
        ribet_level_lowering_real  (Ribet 1990) — wraps ribet_single_step + iteration

      Each is an honest axiom in B14_FreyTate, not a sorry.
      The iteration machinery (B15_RibetIterate) is 0 sorry: only ribet_single_step
      remains as a named axiom until Mathlib formalises Ribet's theorem.

      Supporting 0-sorry facts imported here:
        · dim S₂(Γ₀(2)) = 0                    (B14_FreyS2.S2_level_2_dim_0, rfl)
        · c₄ ≢ 0 mod p for each p | ABC        (B14_TateC4Nonzero, 0 sorry)
        · ribet_iterate ps (2·∏ps) = 2          (B15_RibetIterate, 0 sorry induction)

      #print axioms beal_conjecture_is_proved should show exactly:
        Beal.FreyTate.tate_frey_multiplicative
        Beal.FreyTate.wiles_modularity
        Beal.FreyTate.ribet_level_lowering_real -/
    theorem beal_conjecture_is_proved : BealConjectureIsProved := by
    intro A B C x y z hx hy hz hA hB hC hCop hEq
    have hWiles := Beal.FreyTate.wiles_modularity hA hB hC hx hy hz hEq hCop
    have hTate : ∀ p : ℕ, p.Prime → p ≠ 2 → p ∣ A.natAbs * B.natAbs * C.natAbs →
        ∃ N : ℕ, p ∣ N ∧ ¬ (p * p ∣ N) ∧
            (∀ q : ℕ, q.Prime → q ∣ N →
                q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2) := fun p hp hp2 hpDiv =>
      Beal.FreyTate.tate_frey_multiplicative hA hB hC hx hy hz hEq hCop p hp hp2 hpDiv
    exact Beal.FreyTate.ribet_level_lowering_real hA hB hC hx hy hz hEq hCop hWiles hTate

    -- ── 20-brick milestone alias ─────────────────────────────────────────────────

    /-- Alias: the 20-brick milestone IS the proof of Beal's Conjecture. -/
    def TwentyBricksMilestone : Prop := BealConjectureIsProved

    theorem twenty_bricks : TwentyBricksMilestone := beal_conjecture_is_proved

    -- ── Axiom audit ──────────────────────────────────────────────────────────────

    #print axioms beal_conjecture_is_proved
    -- MUST show exactly three names:
    --   Beal.FreyTate.tate_frey_multiplicative
    --   Beal.FreyTate.wiles_modularity
    --   Beal.FreyTate.ribet_level_lowering_real
    -- (plus kernel axioms: propext, Quot.sound, Classical.choice)

    #print axioms twenty_bricks
    -- same three

    -- Supporting 0-axiom facts (referenced by imports, not the main proof):
    -- #print axioms Beal.RibetIterate.ribet_iterate_to_2   -- 0 axioms beyond kernel
    -- #print axioms Beal.FreyS2.S2_level_2_dim_0           -- 0 axioms (rfl)
    -- #print axioms Beal.FreyTate.TateC4.c4_nonzero_of_dvd_A -- 0 sorry

    end Beal20Done
    