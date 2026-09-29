import Beal.«Beal.General».TateI1Split

/-!
Checked inputs for the even-valuation nodal chart. Dividing the
pulled-back equation by four is justified here, but this polynomial
identity is not yet a scheme-theoretic blow-up, a resolution, or an
`Iₙ` classification.
-/

namespace Beal.General

/-- A positive, nonzero, even discriminant valuation supplies `4 ∣ Δ`.
At a reduced node the mixed coefficient is odd, the ambient
translated equation has second-order vanishing, and the `2`-chart
numerator is exactly four times the displayed polynomial. -/
theorem evenVal_node_fourFactor_data
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    PadicInt.toZMod W.a₁ ≠ 0 ∧
      (4 : ℤ_[2]) ∣ W.Δ ∧
      localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) ∈
        localSurfaceCentre ^ 2 ∧
      ∀ u v : ℤ_[2], ∃ A B C : ℤ_[2],
        localWeierstrassEquation W (W.a₃ + 2 * u)
          (W.a₃ ^ 2 + W.a₄ + 2 * v) =
        4 * (A + B * u + C * v +
          (v ^ 2 + W.a₁ * u * v -
            (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3) := by
  obtain ⟨k, hk⟩ := heven
  have hge : 2 ≤ Padic.valuation (W.Δ : ℚ_[2]) := by omega
  have hfour : (4 : ℤ_[2]) ∣ W.Δ :=
    four_dvd_delta_of_val_ge_two W hΔ hge
  refine ⟨?_, hfour, canonicalNodalPoint_surfaceEquation_mem_centre_sq
    W hnode hfour, ?_⟩
  · simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  · exact fun u v => canonicalNodalPoint_twoChartHasFourFactor
      W hnode hfour u v

/-- Unlike a pointwise factorization, this chooses the three divided
coefficients once for the whole `2`-chart. It is the uniform equation
needed before studying that chart as a polynomial hypersurface; no
strict-transform assertion is made. -/
theorem evenVal_node_twoChart_uniform
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    ∃ A B C : ℤ_[2],
      ∀ u v : ℤ_[2],
        localWeierstrassEquation W (W.a₃ + 2 * u)
          (W.a₃ ^ 2 + W.a₄ + 2 * v) =
        4 * (A + B * u + C * v +
          (v ^ 2 + W.a₁ * u * v -
            (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3) := by
  obtain ⟨k, hk⟩ := heven
  have hge : 2 ≤ Padic.valuation (W.Δ : ℚ_[2]) := by omega
  have hfour : (4 : ℤ_[2]) ∣ W.Δ :=
    four_dvd_delta_of_val_ge_two W hΔ hge
  obtain ⟨_, B, C, _, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha : PadicInt.toZMod W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  obtain ⟨A, hF⟩ := four_dvd_nodeConstant_of_four_dvd_delta W ha hfour
  exact ⟨A, B, C, fun u v =>
    localWeierstrassEquation_twoChart_factor
      W W.a₃ (W.a₃ ^ 2 + W.a₄) u v A B C hF hX hY⟩

/-- The reduced equation of the uniformly divided `2`-chart, with
`D` the reduction of `3a₃+a₂`. The cubic term disappears modulo two. -/
def evenNodeTwoChartReduced (A B C D u v : ZMod 2) : ZMod 2 :=
  A + B * u + C * v + (v ^ 2 + u * v - D * u ^ 2)

/-- Reducing the actual uniformly divided equation kills the cubic
term and yields the displayed characteristic-two chart equation. -/
theorem evenNodeTwoChartReduced_eq_reduction
    (W : WeierstrassCurve ℤ_[2]) (A B C u v : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1) :
    PadicInt.toZMod
      (A + B * u + C * v +
        (v ^ 2 + W.a₁ * u * v -
          (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3) =
      evenNodeTwoChartReduced (PadicInt.toZMod A)
        (PadicInt.toZMod B) (PadicInt.toZMod C)
        (PadicInt.toZMod (3 * W.a₃ + W.a₂))
        (PadicInt.toZMod u) (PadicInt.toZMod v) := by
  have htwo : PadicInt.toZMod (2 : ℤ_[2]) = 0 := by
    have hz : (2 : ZMod 2) = 0 := by decide
    simpa only [map_ofNat] using hz
  simp [evenNodeTwoChartReduced, map_add, map_sub, map_mul, map_pow, htwo, ha]

/-- In the genuinely even, positive, nonzero discriminant-valuation
branch, one fixed normalized equation factors the substituted integral
equation for every point, and its reduction is the displayed nodal-chart
quadratic. This is equation-level geometry, not a scheme blow-up. -/
theorem evenVal_node_twoChart_reduced_equation
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    ∃ A B C : ℤ_[2], ∀ u v : ℤ_[2],
      let F := A + B * u + C * v +
        (v ^ 2 + W.a₁ * u * v -
          (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3
      localWeierstrassEquation W (W.a₃ + 2 * u)
        (W.a₃ ^ 2 + W.a₄ + 2 * v) = 4 * F ∧
      PadicInt.toZMod F =
        evenNodeTwoChartReduced (PadicInt.toZMod A)
          (PadicInt.toZMod B) (PadicInt.toZMod C)
          (PadicInt.toZMod (3 * W.a₃ + W.a₂))
          (PadicInt.toZMod u) (PadicInt.toZMod v) := by
  obtain ⟨A, B, C, hfactor⟩ :=
    evenVal_node_twoChart_uniform W hnode hΔ hpositive heven
  have ha0 : PadicInt.toZMod W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  have ha : PadicInt.toZMod W.a₁ = 1 := by
    have hcases (a : ZMod 2) : a = 0 ∨ a = 1 := by
      fin_cases a <;> simp
    exact (hcases _).resolve_left ha0
  exact ⟨A, B, C, fun u v =>
    ⟨hfactor u v, evenNodeTwoChartReduced_eq_reduction W A B C u v ha⟩⟩

/-- Linearization of the reduced chart equation at an arbitrary point.
The remaining terms are quadratic in the increments, so the two
linear coefficients are exactly `B+v` and `C+u`. -/
theorem evenNodeTwoChartReduced_increment
    (A B C D u v s t : ZMod 2) :
    evenNodeTwoChartReduced A B C D (u + s) (v + t) -
      evenNodeTwoChartReduced A B C D u v =
    (B + v) * s + (C + u) * t + (t ^ 2 + s * t - D * s ^ 2) := by
  have htwo : (2 : ZMod 2) = 0 := by decide
  dsimp [evenNodeTwoChartReduced]
  linear_combination (v * t - D * u * s) * htwo

/-- The mod-two divided `2`-chart has at most one candidate singular
point: its partials are `B+v` and `C+u`. This describes the chart
equation's critical locus, not a resolution of the original surface. -/
theorem evenNode_twoChart_critical_point
    (B C u v : ZMod 2)
    (hu : B + v = 0) (hv : C + u = 0) :
    u = C ∧ v = B := by
  have hneg (x : ZMod 2) : -x = x := by
    have htwo : (2 : ZMod 2) = 0 := by decide
    calc
      -x = x - 2 * x := by ring
      _ = x := by rw [htwo, zero_mul, sub_zero]
  constructor
  · exact ((eq_neg_of_add_eq_zero_left hv).trans (hneg u)).symm
  · exact ((eq_neg_of_add_eq_zero_left hu).trans (hneg v)).symm

/-- The single candidate critical point lies on the reduced chart
precisely when the displayed residual scalar vanishes. This is the
next arithmetic condition a resolution argument must examine. -/
theorem evenNodeTwoChartReduced_critical_on_curve
    (A B C D u v : ZMod 2) :
    (B + v = 0 ∧ C + u = 0 ∧
      evenNodeTwoChartReduced A B C D u v = 0) ↔
    (u = C ∧ v = B ∧ A + B ^ 2 + B * C - D * C ^ 2 = 0) := by
  have htwo : (2 : ZMod 2) = 0 := by decide
  have hvalue :
      evenNodeTwoChartReduced A B C D C B =
        A + B ^ 2 + B * C - D * C ^ 2 := by
    dsimp [evenNodeTwoChartReduced]
    linear_combination B * C * htwo
  constructor
  · rintro ⟨hu, hv, heq⟩
    obtain ⟨hu', hv'⟩ := evenNode_twoChart_critical_point B C u v hu hv
    refine ⟨hu', hv', ?_⟩
    rw [hu', hv', hvalue] at heq
    exact heq
  · rintro ⟨hu, hv, heq⟩
    have hzero (x : ZMod 2) : x + x = 0 := by
      calc
        x + x = 2 * x := by ring
        _ = 0 := by rw [htwo, zero_mul]
    refine ⟨?_, ?_, ?_⟩
    · rw [hv]; exact hzero B
    · rw [hu]; exact hzero C
    · rw [hu, hv, hvalue]; exact heq

#print axioms evenVal_node_fourFactor_data
#print axioms evenVal_node_twoChart_uniform
#print axioms evenVal_node_twoChart_reduced_equation
#print axioms evenNodeTwoChartReduced_increment
#print axioms evenNode_twoChart_critical_point
#print axioms evenNodeTwoChartReduced_critical_on_curve

end Beal.General