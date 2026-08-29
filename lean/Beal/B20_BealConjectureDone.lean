/-
      B20_BealConjectureDone — the final conditional Beal scaffold.

       Conditional 20-brick milestone. Named axiom budget (0 sorry):
        · frey_conductor_data         (global Frey conductor boundary)
        · tate_step2_I_n_conductor_one (odd-prime local Tate boundary)
        · wiles_modularity            (Wiles 1995)
       · no opaque Ribet single-step axiom
       · one explicit, unconstructed `EnrichedPlanSupplier` input

      Architecture:
        · tate_frey_multiplicative_at_model (B14_TateInImpliesOrd1)
          derives exact odd-prime conductor divisibility for the canonical
          Frey model.
        · Wiles supplies only the finite odd-prime quotient plan; B15 derives
          every p || N edge from Tate and divisibility into the original
          conductor.
       · explicit data-valued per-edge newform support and representation/
         Hecke transport construct the form token to the impossible level-2
         slot. The support data is carried directly because the proposition-
         valued support existential cannot be eliminated into token data
         without choice.
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

         Named axiom chain (3 named axioms, 0 sorry):
           frey_conductor_data (one global conductor for the canonical model)
           tate_step2_I_n_conductor_one (odd-prime Tate Step 2)
           wiles_modularity (Wiles 1995)

         The enriched-plan supplier is explicit data, not a declared axiom.
         Each returned edge carries 07k's data-valued
         `NewSubspaceSupportData` and
         `NewformHeckeToPreservedTokenTransport`, together with the restricted
         Ihara, old/new, patching/specialization, and support-bridge boundaries.
         This remains a conditional typed scaffold, not a full construction
         of modular forms. The final chain now consumes the independently
         audited odd-prime Tate theorem; it still makes no claim about the
         conductor at 2. -/
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
        -- Expected named domain axioms (3, 0 sorry):
       --   Beal.FreyTate.TateStep2.frey_conductor_data
        --   Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one
      --   Beal.FreyTate.wiles_modularity
        -- The enriched-plan supplier is explicit data, not an axiom.

      #print axioms twenty_bricks_conditional

      end Beal20Done
    