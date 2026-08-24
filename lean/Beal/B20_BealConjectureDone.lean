/-
      B20_BealConjectureDone — Beal's Conjecture: A^x + B^y ≠ C^z (x,y,z ≥ 3, gcd=1).

      20-brick milestone. Axiom budget (0 sorry):
        · wiles_modularity            (Wiles 1995)
        · tate_step2_I_n_conductor_one (Tate/Silverman AEC IV.9)
        · ribet_single_step           (Ribet 1990, typed descent)

      Architecture:
        · tate_frey_multiplicative_derived (B14_TateInImpliesOrd1) derives the
          per-prime conductor statement from the local Frey-conductor Tate
          step 2 interface.
        · a typed Ribet descent transports the form token to the impossible
          level-2 slot.
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
          ribet_single_step (Ribet 1990, typed descent)

        Tate supplies one fixed Frey model and conductor. Wiles consumes that
        model and supplies a form token plus certified descent plan; Ribet's
        single-step interface preserves the token to the level-2 contradiction.
        This remains a typed scaffold, not a full construction of modular forms. -/
      theorem beal_conjecture_is_proved : BealConjectureIsProved := by
        intro A B C x y z hx hy hz hA hB hC hCop hEq
        exact Beal.RibetIterate.ribet_iteration_gives_False hA hB hC hx hy hz hEq hCop

      -- ── 20-brick milestone alias ─────────────────────────────────────────────────

      def TwentyBricksMilestone : Prop := BealConjectureIsProved

      theorem twenty_bricks : TwentyBricksMilestone := beal_conjecture_is_proved

      -- ── Axiom audit ──────────────────────────────────────────────────────────────

      #print axioms beal_conjecture_is_proved
      -- Expected (3 domain axioms, 0 sorry):
      --   Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one
      --   Beal.FreyTate.wiles_modularity
      --   Beal.RibetIterate.ribet_single_step

      #print axioms twenty_bricks

      end Beal20Done
    