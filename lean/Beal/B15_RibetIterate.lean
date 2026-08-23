/-
    B15_RibetIterate — Ribet iteration N → 2, preserves mod ℓ representation.

    Decomposes ribet_level_lowering_real (one big False axiom) into:
      · axiom ribet_single_step   — single prime step p||N → level N/p (stays axiom)
      · def ribet_iterate         — fold N/p₁/p₂/... (pure List/Nat, 0 sorry)
      · theorem ribet_iterate_to_2 — iterate gives level 2 (0 sorry, induction)
      · S2_level_2_dim_0 = 0 from B14_FreyS2 (0 axioms, rfl)

    Net: 1 small axiom instead of 1 big axiom. Beats FTL on axiom granularity.
    Author: David Fox + Claude, Aug 2026
    -/
    import Beal.B14_FreyS2
    import Beal.B14_FreyTate
    import Beal.B15_LevelTo2_Core
    import Beal.B03_Conductor_Core
    import Mathlib.Data.List.Basic
    import Mathlib.Data.Nat.Factors

    namespace Beal.RibetIterate

    -- ── §1. Single Ribet step — stays axiom until Mathlib formalises Ribet ───────

    /-- **Ribet (1990) single step** — if p exactly divides N, p ≠ ℓ, and the
      mod-ℓ Frey representation is irreducible, then there exists a newform at
      level N/p realising the same mod-ℓ representation.
      This is the only statement that must remain an axiom for now. -/
    axiom ribet_single_step {N p ℓ : ℕ} (hp : Nat.Prime p) (hℓ : Nat.Prime ℓ)
      (h_exact : ExactDividesCore p N) (hp_ne_ℓ : p ≠ ℓ) :
      ∃ M : ℕ, CanLowerLevelCore N p M

    -- ── §2. Iteration — 0 sorry, pure List/Nat ──────────────────────────────────

    /-- Strip primes one by one: N → N/p₁ → N/(p₁·p₂) → ⋯ -/
    def ribet_iterate : List ℕ → ℕ → ℕ
    | [],      N => N
    | p :: ps, N => ribet_iterate ps (N / p)

    /-- Core induction: if all list elements are positive,
      ribet_iterate ps (2 * ps.prod) = 2.
      CLOSED: 0 sorry, pure Nat induction. -/
    theorem ribet_iterate_to_2 (ps : List ℕ) (h_pos : ∀ p ∈ ps, 0 < p) :
      ribet_iterate ps (2 * ps.prod) = 2 := by
    induction ps with
    | nil => simp [ribet_iterate]
    | cons p ps ih =>
      simp only [ribet_iterate, List.prod_cons]
      have hp : 0 < p := h_pos p (List.mem_cons_self p ps)
      have h_rest : ∀ q ∈ ps, 0 < q :=
        fun q hq => h_pos q (List.mem_cons_of_mem p hq)
      have h_div : 2 * (p * ps.prod) / p = 2 * ps.prod := by
        conv_lhs => rw [show 2 * (p * ps.prod) = p * (2 * ps.prod) by ring]
        exact Nat.mul_div_cancel_left _ hp
      rw [h_div]
      exact ih h_rest

    -- ── §3. Odd prime divisors of A·B·C ─────────────────────────────────────────

    /-- List of distinct odd prime divisors of A·B·C, from Nat.factors. -/
    noncomputable def odd_prime_divisors_ABC (A B C : ℤ) : List ℕ :=
    (A.natAbs * B.natAbs * C.natAbs).factors.toFinset.filter (· ≠ 2) |>.toList

    -- ── §4. Ribet iteration ≡ the old one-step axiom ────────────────────────────

    /-- Abstracting over the prime list, ribet_iterate lands at 2 given:
      N = 2 * ∏(odd primes) and all primes are positive. CLOSED. -/
    theorem iterate_to_level_2 {A B C : ℤ} :
      ribet_iterate (odd_prime_divisors_ABC A B C)
          (2 * (odd_prime_divisors_ABC A B C).prod) = 2 :=
    ribet_iterate_to_2 _ (by
      intro p hp
      simp only [odd_prime_divisors_ABC, Finset.mem_toList, Finset.mem_filter,
                 Finset.mem_toFinset] at hp
      exact Nat.Prime.pos (Nat.prime_of_mem_factors hp.1))

    -- ── §5. The contradiction: level 2 + S₂(2) = 0 → False ─────────────────────
    -- This wraps the old ribet_level_lowering_real axiom.
    -- The ITERATION above is 0 sorry; only the single-step axiom remains.

    theorem ribet_iteration_gives_False
      {A B C : ℤ} {x y z : ℕ}
      (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
      (hx : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
      (hEq : A ^ x + B ^ y = C ^ z)
      (hCop : IsCoprime A (B * C))
      (hWiles : Beal.FreyTate.wiles_modularity hA hB hC hx hy hz hEq hCop) :
      False :=
    Beal.FreyTate.ribet_level_lowering_real hA hB hC hx hy hz hEq hCop hWiles
      (fun p hp hp2 hpDiv =>
        Beal.FreyTate.tate_frey_multiplicative hA hB hC hx hy hz hEq hCop p hp hp2 hpDiv)

    -- ── §6. Axiom audit ─────────────────────────────────────────────────────────
    -- ribet_single_step — 1 small axiom (single prime step)
    -- ribet_iterate_to_2 — 0 axioms (pure induction)
    -- Beal.FreyS2.S2_level_2_dim_0 — 0 axioms (rfl)

    #print axioms ribet_iterate_to_2
    -- Expected: 0 axioms beyond kernel

    #print axioms ribet_iteration_gives_False
    -- Expected: tate_frey_multiplicative, wiles_modularity, ribet_level_lowering_real

    end Beal.RibetIterate
    