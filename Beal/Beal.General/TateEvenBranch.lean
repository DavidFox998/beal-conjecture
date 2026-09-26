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

#print axioms evenVal_node_fourFactor_data

end Beal.General