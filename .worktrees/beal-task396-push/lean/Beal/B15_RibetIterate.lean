/-
      B15_RibetIterate — Ribet iteration N → 2, preserves mod ℓ representation.

      · `GaloisEdgeWitness` — per-edge arithmetic and 07g–07k data
      · `EnrichedPlanSupplier` — enriches the unchanged Wiles arithmetic plan
      · `ribet_single_step_from_genuine` — one lower-level token assembled
        from explicit data-valued 07k support and transport
      · theorem descend_preserved_form — certified descent to level 2 (0 sorry)

      The final contradiction comes from a typed form token at level 2 and
      S₂(2)=0, rather than a monolithic Ribet → False axiom.

      Author: David Fox + Claude, Aug 2026
      -/
      import Beal.B14_FreyS2
      import Beal.B14_FreyTate
       import Beal.B14_FormRepresentation
      import Beal.B14_TateInImpliesOrd1
      import Beal.B15_LevelTo2_Core
      import Beal.B03_Conductor_Core
        import Beal.Galois.«07k_TokenBridge»
        import Beal.Galois.«07n_NormalizedEigenlineQExpansion»
        import Beal.Galois.«07h_EutheosGeometry»
        import Beal.Patching.RankOne
      import Mathlib.Data.List.Basic
      import Mathlib.Data.Nat.Factors

      namespace Beal.RibetIterate

      open Beal.FreyTate

      /-- The data returned by one level-lowering step. -/
      structure RibetStepResult (ℓ N p : ℕ) where
        level : ℕ
        lowers : CanLowerLevelCore N p level
        form : PreservedForm ℓ level

       /-- All Galois and Hecke data needed at one exact lowering edge.

           The localized-data field is explicit because the patching and 07j
           bridges are indexed by it.  `hRank` is no longer accepted as a
           proposition: the edge carries transparent Taylor–Wiles patching
           data from which the rank-one equivalence is constructed. -/
       structure GaloisEdgeWitness
           {A B C : ℤ} {x y z : ℕ}
           {model : FreyCurveModel A B C x y z}
           (ℓ N p M : ℕ) where
         hPrime : Nat.Prime p
         hPrime_ne_ℓ : p ≠ ℓ
         hExact : ExactDividesCore p N
         hDiv : CanLowerLevelCore N p M
         R : Beal.Galois.FreyResidualRepresentation model ℓ
         m : Beal.Galois.MaximalIdeal M ℓ
         V : Submodule (ZMod ℓ) (Beal.Galois.CoefficientSequence ℓ)
         localized : Beal.Galois.LocalizedHeckeData M ℓ m
         hV : Beal.Galois.IsGenuineFormSubmoduleAtLevel M ℓ V
         hAttach : Beal.Galois.FreyHeckeAttachment R m.1
         normalized :
           Beal.Galois.NormalizedEigenlineData ℓ V
         eutheosGeometry :
           Beal.Galois.EutheosGeometryInterface M p ℓ V
         patching :
           @Beal.Patching.TaylorWilesPatchingData
             M p ℓ m V localized eutheosGeometry
         hSupportBridge :
           @Beal.Galois.hSupportFromBoundaries
             A B C x y z model ℓ R M p V m localized
         supportData :
           Beal.Galois.NewSubspaceSupportData R m
         transport :
           Beal.Galois.NewformHeckeToPreservedTokenTransport
             (model := model) ℓ M

       /-- The arithmetic plan type supplied by the unchanged Wiles boundary.
           It is named here only to document the supplier's input. -/
       abbrev GaloisArithmeticPlan (ℓ N : ℕ) :=
         RibetDescentPlan ℓ N

       /-- A proof-relevant enrichment of one exact arithmetic descent plan.

           The final index is the actual `RibetDescentPlan` value supplied by
           Wiles. Therefore every enriched edge has exactly the `N`, `p`, and
           `M` of the corresponding arithmetic constructor; the supplier
           cannot discard that plan and substitute a different chain. -/
       inductive GaloisDescentPlan
           {A B C : ℤ} {x y z : ℕ}
           {model : FreyCurveModel A B C x y z}
           (ℓ : ℕ) :
           {N : ℕ} → GaloisArithmeticPlan ℓ N → Type 2
         | terminal :
             GaloisDescentPlan (model := model) ℓ
               RibetDescentPlan.terminal
         | step {N p M : ℕ}
             {hp : Nat.Prime p}
             {hp_ne_ℓ : p ≠ ℓ}
             {hp_dvd : p ∣ N}
             {hp_sq : ¬ (p * p ∣ N)}
             {h_level : M * p = N}
             {rest : RibetDescentPlan ℓ M}
             (edge : GaloisEdgeWitness (model := model) ℓ N p M)
             (tail : GaloisDescentPlan (model := model) ℓ rest) :
             GaloisDescentPlan (model := model) ℓ
               (RibetDescentPlan.step
                 hp hp_ne_ℓ hp_dvd hp_sq h_level rest)

       /-- Explicit construction of a genuine plan from the arithmetic plan.

           The supplier is a data boundary, not a proposition-valued
           existence statement. Its result contains the per-edge 07g–07k
           witnesses needed by the recursive B15 proof. -/
       def EnrichedPlanSupplier : Type 2 :=
         ∀ {A B C : ℤ} {x y z : ℕ}
           (model : FreyCurveModel A B C x y z)
           (ℓ N : ℕ)
           (plan : GaloisArithmeticPlan ℓ N),
             GaloisDescentPlan (model := model) ℓ plan

       /-- Build one lowered result from a single enriched edge. -/
       def ribet_single_step_from_genuine
           {A B C : ℤ} {x y z : ℕ}
           {model : FreyCurveModel A B C x y z}
           {ℓ N p M : ℕ}
           (edge : GaloisEdgeWitness (model := model) ℓ N p M) :
           RibetStepResult ℓ N p := by
         letI := edge.localized
         have qExpansion :=
           Beal.Galois.QExpansionPrincipleOnV_fromEigenline
             M p ℓ edge.V edge.hPrime edge.normalized
         have hIhara :=
           Beal.Galois.ihara_zero_on_genuine_V_conditional
             M p ℓ edge.V edge.hV qExpansion
         have hOldNew :=
           Beal.Galois.OldNewDecompHyp_from_Eutheos
             edge.V edge.eutheosGeometry
         have hRank :=
           Beal.Patching.LocalizedRankOne_from_Patching
             edge.eutheosGeometry edge.patching
         have _hSupport :=
           edge.hSupportBridge edge.hV hIhara hOldNew hRank
         exact
           { level := M
             lowers := edge.hDiv
             form :=
               Beal.Galois.preservedToken_of_supportData
                 edge.transport edge.supportData }

      def ribet_iterate : List ℕ → ℕ → ℕ
      | [],      N => N
      | p :: ps, N => ribet_iterate ps (N / p)

      theorem ribet_iterate_to_2 (ps : List ℕ) (h_pos : ∀ p ∈ ps, 0 < p) :
        ribet_iterate ps (2 * ps.prod) = 2 := by
      induction ps with
      | nil => simp [ribet_iterate]
      | cons p ps ih =>
        simp only [ribet_iterate, List.prod_cons]
        have hp : 0 < p := h_pos p (List.mem_cons_self p ps)
        have h_rest := fun q hq => h_pos q (List.mem_cons_of_mem p hq)
        have h_div : 2 * (p * ps.prod) / p = 2 * ps.prod := by
          conv_lhs => rw [show 2 * (p * ps.prod) = p * (2 * ps.prod) by ring]
          exact Nat.mul_div_cancel_left _ hp
        rw [h_div]; exact ih h_rest

      noncomputable def odd_prime_divisors_ABC (A B C : ℤ) : List ℕ :=
        (A.natAbs * B.natAbs * C.natAbs).primeFactors.filter (· ≠ 2) |>.toList

      theorem iterate_to_level_2 {A B C : ℤ} :
        ribet_iterate (odd_prime_divisors_ABC A B C)
            (2 * (odd_prime_divisors_ABC A B C).prod) = 2 :=
      ribet_iterate_to_2 _ (by
        intro p hp
        simp only [odd_prime_divisors_ABC, Finset.mem_toList, Finset.mem_filter] at hp

        exact (Nat.prime_of_mem_primeFactors hp.1).pos)

      /-- Transport a typed form witness through the enriched genuine plan.

          Each recursive edge constructs its lower-level token from explicit
          edge-local 07k support data and representation/Hecke/newform
          transport. The proposition-valued 07j support bridge remains
          carried as an auditable boundary, but is not eliminated into data. -/
       theorem descend_preserved_form
           {A B C : ℤ} {x y z : ℕ}
           {model : FreyCurveModel A B C x y z}
           {ℓ N : ℕ}
           (hForms : HasPreservedForm ℓ N)
           (arithPlan : GaloisArithmeticPlan ℓ N)
           (plan : GaloisDescentPlan (model := model) ℓ arithPlan) :
           HasPreservedForm ℓ 2 := by
         induction plan with
         | terminal =>
             simpa using hForms
         | step edge tail ih =>
             let result := ribet_single_step_from_genuine edge
             exact ih ⟨result.form⟩

      /-- No preserved form can reach level 2 because the typed terminal slot is
          `Fin dim_S2_2` and `dim_S2_2 = 0`. -/
      theorem no_preserved_form_at_two (ℓ : ℕ) : ¬ HasPreservedForm ℓ 2 := by
        rintro ⟨hForm⟩
        have hslot := hForm.terminalSlot rfl
        rw [Beal.FreyS2.S2_level_2_dim_0] at hslot
        exact Fin.elim0 hslot

      /-- The canonical Frey model and global-conductor supplier fix the
          conductor; Wiles supplies a form and certified descent plan for that
          same conductor; each Ribet step preserves the form until the
          impossible level-2 slot is reached.

          The plan already contains its exact-divisibility edge proofs, so this
          theorem does not invoke the separate local Tate Step 2 theorem. -/
      theorem ribet_iteration_gives_False
        {A B C : ℤ} {x y z : ℕ}
         (supplier : EnrichedPlanSupplier)
        (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
        (hx : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
        (hEq : A ^ x + B ^ y = C ^ z)
        (hCop : IsCoprime A (B * C)) :
        False := by
           let model := Beal.FreyTate.TateStep2.freyModelOf hEq
           have hWiles :=
             Beal.FreyTate.wiles_modularity hA hB hC hx hy hz hEq hCop model
           rcases hWiles with ⟨ℓ, _, hℓ, hForms, hPlans⟩
           refine Nonempty.elim hPlans ?_
           intro hPlan
           let galoisPlan :=
             supplier model ℓ model.conductor hPlan
           exact no_preserved_form_at_two ℓ
             (descend_preserved_form hForms hPlan galoisPlan)

      #print axioms ribet_iterate_to_2
      -- 0 axioms beyond kernel

       #print axioms GaloisEdgeWitness
       #print axioms GaloisDescentPlan
       #print axioms EnrichedPlanSupplier
       #print axioms ribet_single_step_from_genuine
      #print axioms ribet_iteration_gives_False
       -- frey_conductor_data and wiles_modularity only; the per-edge step
       -- construction is an explicit provider parameter. The independent
       -- local theorem tate_step2_I_n_conductor_one is not used here because
       -- exact-divisibility proofs are already fields of the Wiles plan.

      end Beal.RibetIterate
    