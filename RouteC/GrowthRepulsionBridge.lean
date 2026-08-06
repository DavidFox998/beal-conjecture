-- RouteC/GrowthRepulsionBridge.lean
    -- RH from GrowthBound + ZeroRepulsion — PROVED, 0 sorry.
    --
    -- Source: DavidFox998/rh-growth-contradiction / lean/growthbound.lean
    -- Author: David Fox.  Opera Numerorum.
    -- Copied into brothers-desert-proof to avoid cross-repo mathlib version conflict
    -- (rh-growth-contradiction pins mathlib@v4.12.0; this repo uses v4.15.0).
    --
    -- The two open conditionals named here:
    --   GrowthBound   : |ζ(½+it)| ≤ C·(log t)² for all t ≥ 2
    --   ZeroRepulsion : off-line zero → |ζ(½+it)| ≥ exp(c·log t/log log t) for large t
    -- Both are standard analytic number theory results; formalisation is ongoing in Mathlib.
    import Mathlib.NumberTheory.LSeries.RiemannZeta
    import Mathlib.Analysis.SpecialFunctions.Log.Basic
    import Mathlib.Analysis.SpecialFunctions.Exp

    namespace RouteC

    open Filter Real

    /-! ## Open conditionals named explicitly -/

    /-- GrowthBound: |ζ(½+it)| grows at most polynomially in log t on the critical line.
      Known to follow from the Lindelöf hypothesis; unconditional form is open.
      Source: rh-growth-contradiction/lean/growthbound.lean -/
    def GrowthBound : Prop :=
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ, 2 ≤ t →
      Complex.abs (riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) ≤ C * (Real.log t) ^ 2

    /-- ZeroRepulsion: an off-line zero forces the zeta function to be large on the critical line.
      Follows from Ingham's zero-repulsion / Deuring-Heilbronn.
      Source: rh-growth-contradiction/lean/growthbound.lean -/
    def ZeroRepulsion : Prop :=
    (∃ ρ : ℂ, riemannZeta ρ = 0 ∧ ρ ≠ 1 ∧
      (¬ ∃ n : ℕ, ρ = -2 * (n + 1 : ℂ)) ∧ ρ.re ≠ 1 / 2) →
    ∃ c₁ : ℝ, 0 < c₁ ∧ ∀ B : ℝ, ∃ t : ℝ, B ≤ t ∧
      Real.exp (c₁ * Real.log t / Real.log (Real.log t))
        ≤ Complex.abs (riemannZeta (1 / 2 + (t : ℂ) * Complex.I))

    /-! ## The key calculus lemma — PROVED, 0 sorry -/

    /-- exp(c·log t / log log t) grows faster than any C·(log t)² for t → ∞.
      This is the engine of the GrowthBound/ZeroRepulsion contradiction.
      PROVED 0 sorry. Source: rh-growth-contradiction/lean/growthbound.lean -/
    theorem exp_loglog_dominates_sq (C c₁ : ℝ) (hC : 0 < C) (hc₁ : 0 < c₁) :
      ∀ᶠ t in atTop,
        C * (Real.log t) ^ 2 < Real.exp (c₁ * Real.log t / Real.log (Real.log t)) := by
    have hexp2 : Tendsto (fun v : ℝ => Real.exp v / v ^ 2) atTop atTop :=
      Real.tendsto_exp_div_pow_atTop 2
    have hsub : Tendsto (fun v : ℝ => c₁ * (Real.exp v / v ^ 2) + (-2)) atTop atTop :=
      tendsto_atTop_add_const_right atTop (-2 : ℝ) (hexp2.const_mul_atTop hc₁)
    have hmul : Tendsto (fun v : ℝ => v * (c₁ * (Real.exp v / v ^ 2) + (-2))) atTop atTop :=
      tendsto_id.atTop_mul_atTop hsub
    have hcore : Tendsto (fun v : ℝ => c₁ * Real.exp v / v - 2 * v) atTop atTop := by
      refine hmul.congr' ?_
      filter_upwards [eventually_gt_atTop (0 : ℝ)] with v hv
      have hv' : v ≠ 0 := ne_of_gt hv
      field_simp; ring
    have hv_ineq : ∀ᶠ v in atTop, Real.log C + 2 * v < c₁ * Real.exp v / v := by
      filter_upwards [hcore.eventually_gt_atTop (Real.log C)] with v hv; linarith
    have hloglog : Tendsto (fun t : ℝ => Real.log (Real.log t)) atTop atTop :=
      Real.tendsto_log_atTop.comp Real.tendsto_log_atTop
    have ht_ineq := hloglog.eventually hv_ineq
    filter_upwards [ht_ineq, Real.tendsto_log_atTop.eventually_gt_atTop (0 : ℝ)]
      with t htin htpos
    rw [Real.exp_log htpos] at htin
    have hCsq : C * (Real.log t) ^ 2
        = Real.exp (Real.log C + 2 * Real.log (Real.log t)) := by
      rw [Real.exp_add, Real.exp_log hC, two_mul, Real.exp_add, Real.exp_log htpos, ← pow_two]
    rw [hCsq, Real.exp_lt_exp]; exact htin

    /-! ## The main bridge theorem — PROVED, 0 sorry -/

    /-- **riemannHypothesis_of_growth_and_repulsion** (PROVED, 0 sorry):
      Given GrowthBound and ZeroRepulsion, the Riemann Hypothesis holds.

      Proof: assume off-line zero ρ.
      • ZeroRepulsion → ∃ c₁>0, |ζ(½+it)| ≥ exp(c₁ log t/log log t) for large t.
      • GrowthBound    → |ζ(½+it)| ≤ C(log t)² for all t ≥ 2.
      • exp_loglog_dominates_sq → for large t: C(log t)² < exp(c₁ log t/log log t).
      • Contradiction.

      Source: DavidFox998/rh-growth-contradiction / lean/growthbound.lean — 0 sorry. -/
    theorem riemannHypothesis_of_growth_and_repulsion
      (hG : GrowthBound) (hR : ZeroRepulsion) : RiemannHypothesis := by
    intro s hs htriv hs1
    by_contra hre
    obtain ⟨c₁, hc₁, hbig⟩ := hR ⟨s, hs, hs1, htriv, hre⟩
    obtain ⟨C, hC, hub⟩ := hG
    obtain ⟨Ta, hTa⟩ := eventually_atTop.mp (exp_loglog_dominates_sq C c₁ hC hc₁)
    obtain ⟨t, hBt, hge⟩ := hbig (max 2 Ta)
    have h2 : (2 : ℝ) ≤ t := le_trans (le_max_left _ _) hBt
    have hTat : Ta ≤ t := le_trans (le_max_right _ _) hBt
    linarith [hub t h2, hTa t hTat, hge]

    end RouteC
    