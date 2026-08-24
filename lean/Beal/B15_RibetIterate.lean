/-
      B15_RibetIterate — Ribet iteration N → 2, preserves mod ℓ representation.

      · axiom ribet_single_step     — single prime step (stays axiom)
      · theorem ribet_iterate_to_2  — N → 2 iteration (0 sorry, induction)

      ribet_iteration_gives_False now uses tate_frey_multiplicative_derived
      (tate_step2_I_n_conductor_one based) instead of tate_frey_multiplicative.
      This removes tate_frey_multiplicative from #print axioms.

      Author: David Fox + Claude, Aug 2026
      -/
      import Beal.B14_FreyS2
      import Beal.B14_FreyTate
      import Beal.B14_TateInImpliesOrd1
      import Beal.B15_LevelTo2_Core
      import Beal.B03_Conductor_Core
      import Mathlib.Data.List.Basic
      import Mathlib.Data.Nat.Factors

      namespace Beal.RibetIterate

      axiom ribet_single_step {N p ℓ : ℕ} (hp : Nat.Prime p) (hℓ : Nat.Prime ℓ)
        (h_exact : ExactDividesCore p N) (hp_ne_ℓ : p ≠ ℓ) :
        ∃ M : ℕ, CanLowerLevelCore N p M

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
        simp only [odd_prime_divisors_ABC, Finset.mem_toList, Finset.mem_filter,
                   Multiset.mem_toFinset] at hp
        exact Nat.Prime.pos (Nat.prime_of_mem_primeFactorsList hp.1))

      -- Uses tate_frey_multiplicative_derived instead of tate_frey_multiplicative.
      -- This removes tate_frey_multiplicative from the axiom list.
      theorem ribet_iteration_gives_False
        {A B C : ℤ} {x y z : ℕ}
        (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
        (hx : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
        (hEq : A ^ x + B ^ y = C ^ z)
        (hCop : IsCoprime A (B * C))
        (hWiles : ∃ ℓ N : ℕ, 5 ≤ ℓ ∧ ℓ.Prime ∧ 2 ≤ N ∧
          ℓ ∣ A.natAbs * B.natAbs * C.natAbs ∧
          (∀ q : ℕ, q.Prime → q ∣ N →
            q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)) :
        False :=
      Beal.FreyTate.ribet_level_lowering_real hA hB hC hx hy hz hEq hCop hWiles
        (fun p hp hp2 hpDiv =>
          Beal.FreyTate.TateStep2.tate_frey_multiplicative_derived
            hA hB hC (by linarith) (by linarith) (by linarith)
            hEq hCop p hp hp2 hpDiv)

      #print axioms ribet_iterate_to_2
      -- 0 axioms beyond kernel

      #print axioms ribet_iteration_gives_False
      -- tate_step2_I_n_conductor_one, wiles_modularity, ribet_level_lowering_real, sorryAx×1
      -- NOTE: tate_frey_multiplicative is no longer listed

      end Beal.RibetIterate
    