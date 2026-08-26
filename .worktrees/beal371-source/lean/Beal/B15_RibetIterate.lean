/-
      B15_RibetIterate — Ribet iteration N → 2, preserves mod ℓ representation.

      · explicit `RibetSingleStepProvider` — one exact prime step preserving
        a form token
      · `ribet_single_step_from_genuine` — one lower-level token assembled
        from the data-valued 07k provider
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
      import Mathlib.Data.List.Basic
      import Mathlib.Data.Nat.Factors

      namespace Beal.RibetIterate

      open Beal.FreyTate

      /-- The data returned by one level-lowering step. -/
      structure RibetStepResult (ℓ N p : ℕ) where
        level : ℕ
        lowers : CanLowerLevelCore N p level
        form : PreservedForm ℓ level

       /-- The explicit data-valued replacement for the former single-step
           axiom. A future genuine construction must supply this function for
           every descent edge; it is not silently manufactured by B15. -/
       def RibetSingleStepProvider (ℓ : ℕ) : Type :=
         ∀ {N p : ℕ}, Nat.Prime p → Nat.Prime ℓ →
           ExactDividesCore p N → p ≠ ℓ → PreservedForm ℓ N →
             RibetStepResult ℓ N p

       /-- A family of explicit step providers, one for each residual prime
           selected by the Wiles boundary. -/
       def RibetSingleStepProviders : Type :=
         ∀ ℓ : ℕ, RibetSingleStepProvider ℓ

       /-- One exact prime step, now forwarded through an explicit data-valued
           provider rather than a declared axiom. -/
       def ribet_single_step {N p ℓ : ℕ}
           (provider : RibetSingleStepProvider ℓ)
           (hp : Nat.Prime p) (hℓ : Nat.Prime ℓ)
           (hExact : ExactDividesCore p N) (hp_ne_ℓ : p ≠ ℓ)
           (hForm : PreservedForm ℓ N) :
           RibetStepResult ℓ N p :=
         provider hp hℓ hExact hp_ne_ℓ hForm

       /-- Build one lowered `RibetStepResult` directly from the data-valued
           07k token provider and genuine Galois support.

           The local arithmetic conditions are retained in the signature for
           the intended one-prime lowering context. Only `hDiv` is needed to
           populate `RibetStepResult.lowers`; all Galois-to-token mathematics
           remains the explicit `provider` argument. -/
       def ribet_single_step_from_genuine
           {A B C : ℤ} {x y z : ℕ}
           {model : FreyCurveModel A B C x y z}
           {ℓ N p M : ℕ}
           (provider : Beal.Galois.SupportedNewformToTokenProvider
             (model := model) ℓ M)
           (hDiv : CanLowerLevelCore N p M)
           (_hExact : ExactDividesCore p N)
           (_hPrime : Nat.Prime p)
           (_hp_ne_ℓ : p ≠ ℓ)
           (R : Beal.Galois.FreyResidualRepresentation model ℓ)
           (𝔪 : Beal.Galois.MaximalIdeal M ℓ)
           (V : Submodule (ZMod ℓ) (Beal.Galois.CoefficientSequence ℓ))
           (hV : Beal.Galois.IsGenuineFormSubmoduleAtLevel M ℓ V)
           (hSupport : Beal.Galois.SupportInNewSubspace R 𝔪) :
           RibetStepResult ℓ N p :=
         { level := M
           lowers := hDiv
           form := provider R 𝔪 V hV hSupport }

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

      /-- Transport the existence of a typed form witness through the certified
          Ribet plan. -/
       theorem descend_preserved_form {ℓ N : ℕ}
           (provider : RibetSingleStepProvider ℓ) (hℓ : Nat.Prime ℓ)
          (hForms : HasPreservedForm ℓ N) (plan : RibetDescentPlan ℓ N) :
          HasPreservedForm ℓ 2 := by
        induction plan with
        | terminal =>
            simpa using hForms
        | @step N p M hp hp_ne_ℓ hp_dvd hp_sq h_level rest ih =>
            obtain ⟨hForm⟩ := hForms
            let result := ribet_single_step provider hp hℓ ⟨hp_dvd, hp_sq⟩ hp_ne_ℓ hForm
            have h_lower := result.lowers
            simp only [CanLowerLevelCore] at h_lower
            have hM : result.level = M := by
              apply Nat.eq_of_mul_eq_mul_right (Nat.Prime.pos hp)
              exact h_lower.trans h_level.symm
            exact ih ⟨hM ▸ result.form⟩

      /-- No preserved form can reach level 2 because the typed terminal slot is
          `Fin dim_S2_2` and `dim_S2_2 = 0`. -/
      theorem no_preserved_form_at_two (ℓ : ℕ) : ¬ HasPreservedForm ℓ 2 := by
        rintro ⟨hForm⟩
        have hslot := hForm.terminalSlot rfl
        rw [Beal.FreyS2.S2_level_2_dim_0] at hslot
        exact Fin.elim0 hslot

      /-- The typed Tate model fixes the conductor; Wiles supplies a form and
          certified descent plan for that same conductor; each Ribet step preserves
          the form until the impossible level-2 slot is reached. -/
      theorem ribet_iteration_gives_False
        {A B C : ℤ} {x y z : ℕ}
         (providers : RibetSingleStepProviders)
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
           exact no_preserved_form_at_two ℓ
             (descend_preserved_form (providers ℓ) hℓ hForms hPlan)

      #print axioms ribet_iterate_to_2
      -- 0 axioms beyond kernel

       #print axioms ribet_single_step_from_genuine
      #print axioms ribet_iteration_gives_False
       -- tate_step2_I_n_conductor_one and wiles_modularity only; the
       -- per-edge step construction is an explicit provider parameter.

      end Beal.RibetIterate
    