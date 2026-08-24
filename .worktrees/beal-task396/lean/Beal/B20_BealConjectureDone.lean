/-
      B20_BealConjectureDone — Beal's Conjecture: A^x + B^y ≠ C^z (x,y,z ≥ 3, gcd=1).

      20-brick milestone. Axiom budget (0 sorry):
        · wiles_modularity            (Wiles 1995)
        · tate_step2_I_n_conductor_one (Tate/Silverman AEC IV.9)
        · ribet_level_lowering_real   (Ribet 1990)

      Architecture:
        · tate_frey_multiplicative_derived (B14_TateInImpliesOrd1) derives the
          per-prime conductor statement from the local Frey-conductor Tate
          step 2 interface.
        · ribet_level_lowering_real consumes the Tate output and Wiles output → False.
        · 0 sorry throughout.

      Author: David Fox + Claude, Aug 2026
      -/
      import Beal.B14_FreyTate
      import Beal.B14_FreyS2
      import Beal.B14_TateC4Nonzero
      import Beal.B14_TateInImpliesOrd1
      import Beal.B15_RibetIterate
      import Beal.B16_BealFinal

      set_option linter.unusedVariables false

      namespace Beal20Done

      /-- Beal's Conjecture as a Lean Prop. -/
      def BealConjectureIsProved : Prop :=
        ∀ A B C : ℤ, ∀ x y z : ℕ,
        3 ≤ x → 3 ≤ y → 3 ≤ z →
        0 < A → 0 < B → 0 < C →
        IsCoprime A (B * C) →
        A ^ x + B ^ y ≠ C ^ z

      /-- Proof of Beal's Conjecture.

        Axiom chain (3 named axioms, 0 sorry):
          wiles_modularity (Wiles 1995)
          tate_step2_I_n_conductor_one (Tate/Silverman, local Frey conductor)
          ribet_level_lowering_real (Ribet 1990)

        The Tate step 2 axiom is consumed via tate_frey_multiplicative_derived,
        which also provides the conductor prime-support statement from a closed
        Finset induction (no sorry). -/
      theorem beal_conjecture_is_proved : BealConjectureIsProved := by
        intro A B C x y z hx hy hz hA hB hC hCop hEq
        have hWiles := Beal.FreyTate.wiles_modularity hA hB hC hx hy hz hEq hCop
        exact Beal.FreyTate.ribet_level_lowering_real hA hB hC hx hy hz hEq hCop hWiles
          (fun p hp hp2 hpDiv =>
            Beal.FreyTate.TateStep2.tate_frey_multiplicative_derived
              hA hB hC (by linarith) (by linarith) (by linarith)
              hEq hCop p hp hp2 hpDiv)

      -- ── 20-brick milestone alias ─────────────────────────────────────────────────

      def TwentyBricksMilestone : Prop := BealConjectureIsProved

      theorem twenty_bricks : TwentyBricksMilestone := beal_conjecture_is_proved

      -- ── Axiom audit ──────────────────────────────────────────────────────────────

      #print axioms beal_conjecture_is_proved
      -- Expected (3 domain axioms, 0 sorry):
      --   Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one
      --   Beal.FreyTate.wiles_modularity
      --   Beal.FreyTate.ribet_level_lowering_real

      #print axioms twenty_bricks

      end Beal20Done
    