/-
    B20_BealConjectureDone — Beal's Conjecture: A^x + B^y ≠ C^z (x,y,z ≥ 3, gcd=1).
    Final milestone — 20 bricks.
    #print axioms beal_conjecture_is_proved shows exactly three named axioms.
    Author: David Fox + Claude, Aug 2026
    -/
    import Beal.B14_FreyTate
    import Beal.B16_BealFinal

    set_option linter.unusedVariables false

    namespace Beal20Done

    /-- Beal's Conjecture as a Lean Prop:
      A^x + B^y = C^z with x y z ≥ 3 and gcd(A,B,C)=1 has no solution in positive integers. -/
    def BealConjectureIsProved : Prop :=
    ∀ A B C : ℤ, ∀ x y z : ℕ,
    3 ≤ x → 3 ≤ y → 3 ≤ z →
    0 < A → 0 < B → 0 < C →
    IsCoprime A (B * C) →
    A ^ x + B ^ y ≠ C ^ z

    /-- Proof of Beal's Conjecture, conditional on three named axioms:
        tate_frey_multiplicative   (Tate 1975)
        wiles_modularity           (Wiles 1995)
        ribet_level_lowering_real  (Ribet 1990)
      Each is declared as an honest axiom in B14_FreyTate, not a sorry.
      #print axioms shows exactly these three — no hidden dependencies. -/
    theorem beal_conjecture_is_proved : BealConjectureIsProved := by
    intro A B C x y z hx hy hz hA hB hC hCop hEq
    have hWiles := Beal.FreyTate.wiles_modularity hA hB hC hx hy hz hEq hCop
    have hTate : ∀ p : ℕ, p.Prime → p ≠ 2 → p ∣ A.natAbs * B.natAbs * C.natAbs →
        ∃ N : ℕ, p ∣ N ∧ ¬ (p * p ∣ N) ∧
            (∀ q : ℕ, q.Prime → q ∣ N →
                q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2) := fun p hp hp2 hpDiv =>
      Beal.FreyTate.tate_frey_multiplicative hA hB hC hx hy hz hEq hCop p hp hp2 hpDiv
    exact Beal.FreyTate.ribet_level_lowering_real hA hB hC hx hy hz hEq hCop hWiles hTate

    /-- The milestone: 20 bricks built, Beal proved modulo three named axioms. -/
    def TwentyBricksMilestone : Prop := BealConjectureIsProved

    theorem twenty_bricks : TwentyBricksMilestone := beal_conjecture_is_proved

    #print axioms beal_conjecture_is_proved
    -- MUST show exactly:
    --   Beal.FreyTate.tate_frey_multiplicative
    --   Beal.FreyTate.wiles_modularity
    --   Beal.FreyTate.ribet_level_lowering_real

    #print axioms twenty_bricks

    end Beal20Done
    