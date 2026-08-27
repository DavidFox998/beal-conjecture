/-
      B20_BealConjectureDone — the final conditional Beal scaffold.

       Conditional 20-brick milestone. Named axiom budget (0 sorry):
        · wiles_modularity            (Wiles 1995)
        · tate_step2_I_n_conductor_one (Tate/Silverman AEC IV.9)
       · no opaque Ribet single-step axiom
       · one explicit, unconstructed `EnrichedPlanSupplier` input

      Architecture:
        · tate_frey_multiplicative_derived (B14_TateInImpliesOrd1) derives the
          per-prime conductor statement from the local Frey-conductor Tate
          step 2 interface.
       · an explicit data-valued per-edge provider transports the form token
         to the impossible level-2 slot. A genuine provider must be assembled
         from 07k's token provider and the explicit 07g–07j boundaries.
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

      /-- Beal's conjecture conditional on an explicit enriched descent plan.

          This is not the unconditional Beal conjecture: constructing the
          supplier still requires the open 07g–07k geometric, localization,
          and token-compatibility boundaries. -/
      def BealConjectureConditionalOnEnrichedPlan : Prop :=
         ∀ _supplier : Beal.RibetIterate.EnrichedPlanSupplier,
         ∀ A B C : ℤ, ∀ x y z : ℕ,
        3 ≤ x → 3 ≤ y → 3 ≤ z →
        0 < A → 0 < B → 0 < C →
        IsCoprime A (B * C) →
        A ^ x + B ^ y ≠ C ^ z

      /-- Conditional Beal theorem from an enriched descent-plan supplier.

         Named axiom chain (2 named axioms, 0 sorry):
          wiles_modularity (Wiles 1995)
          tate_step2_I_n_conductor_one (Tate/Silverman, local Frey conductor)

         The enriched-plan supplier is explicit data, not a declared axiom,
         but no value of that supplier is constructed here.
         Each returned edge carries 07k's `SupportedNewformToTokenProvider`
         together with the restricted Ihara, old/new, localized-rank-one, and
         support-bridge boundaries. This remains a conditional typed scaffold,
         not a full construction of modular forms. -/
      theorem beal_conjecture_conditional_on_enriched_plan :
          BealConjectureConditionalOnEnrichedPlan := by
         intro supplier A B C x y z hx hy hz hA hB hC hCop hEq
         exact Beal.RibetIterate.ribet_iteration_gives_False
           supplier hA hB hC hx hy hz hEq hCop

      -- ── 20-brick milestone alias ─────────────────────────────────────────────────

      def ConditionalTwentyBricksMilestone : Prop :=
        BealConjectureConditionalOnEnrichedPlan

      theorem twenty_bricks_conditional : ConditionalTwentyBricksMilestone :=
        beal_conjecture_conditional_on_enriched_plan

      -- ── Axiom audit ──────────────────────────────────────────────────────────────

      #print axioms beal_conjecture_conditional_on_enriched_plan
       -- Expected named domain axioms (2, 0 sorry):
      --   Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one
      --   Beal.FreyTate.wiles_modularity
        -- The enriched-plan supplier is explicit data, not an axiom.

      #print axioms twenty_bricks_conditional

      end Beal20Done
    