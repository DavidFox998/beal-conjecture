import Beal.«Beal.General».TateEisenstein

/-!
Split and nonsplit tangent directions at a characteristic-two node.
The tangent-cone computation is about the special fibre, not the
uniformizer-linear term in the regular total surface. It does not
assign a Kodaira type or a conductor exponent.
-/

namespace Beal.General

/-- If the quadratic coefficient vanishes, the two distinct tangent
directions at the node are both rational over `ZMod 2`. -/
theorem reducedTangentCone_split
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (hnode : ReducedNodalPoint W x y)
    (hcoeff : 3 * x + W.a₂ = 0)
    (u v : ZMod 2) :
    reducedTangentCone W x u v = v * (v + u) := by
  have ha : W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases W.a₁).resolve_left hnode.2.2.2
  simp [reducedTangentCone, ha, hcoeff]
  ring

/-- If the quadratic coefficient is nonzero, the tangent cone has no
nonzero `ZMod 2`-rational direction. Its geometric directions are
still distinct, but conjugate over the quadratic extension. -/
theorem reducedTangentCone_nonsplit
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (hnode : ReducedNodalPoint W x y)
    (hcoeff : 3 * x + W.a₂ ≠ 0)
    (u v : ZMod 2)
    (hzero : reducedTangentCone W x u v = 0) :
    u = 0 ∧ v = 0 := by
  have ha : W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases W.a₁).resolve_left hnode.2.2.2
  have hc : 3 * x + W.a₂ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases (3 * x + W.a₂)).resolve_left hcoeff
  fin_cases u <;> fin_cases v <;>
    norm_num [reducedTangentCone, ha, hc] at hzero ⊢

/-- A valuation-one integral model with a nonsplit node at the
canonical point. This rules out a universal split conclusion from
`v₂(Δ) = 1` and the reduced-node hypotheses alone. -/
noncomputable def nonsplitValOneModel : WeierstrassCurve ℤ_[2] where
  a₁ := 1
  a₂ := 1
  a₃ := 0
  a₄ := 0
  a₆ := 2

theorem nonsplitValOneModel_delta :
    nonsplitValOneModel.Δ = (-1978 : ℤ_[2]) := by
  norm_num [nonsplitValOneModel, WeierstrassCurve.Δ,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]

theorem nonsplitValOneModel_node :
    ReducedNodalPoint (nonsplitValOneModel.map PadicInt.toZMod)
      (PadicInt.toZMod nonsplitValOneModel.a₃)
      (PadicInt.toZMod
        (nonsplitValOneModel.a₃ ^ 2 + nonsplitValOneModel.a₄)) := by
  norm_num [ReducedNodalPoint, reducedEquation, reducedDx, reducedDy,
    nonsplitValOneModel, WeierstrassCurve.map, map_ofNat, map_add]
  decide

theorem nonsplitValOneModel_coeff :
    3 * PadicInt.toZMod nonsplitValOneModel.a₃ +
      (nonsplitValOneModel.map PadicInt.toZMod).a₂ ≠ 0 := by
  norm_num [nonsplitValOneModel, WeierstrassCurve.map]

theorem nonsplitValOneModel_val :
    Padic.valuation (nonsplitValOneModel.Δ : ℚ_[2]) = 1 := by
  rw [nonsplitValOneModel_delta]
  have hneg : Padic.valuation (-1 : ℚ_[2]) = 0 := by
    have h := Padic.valuation_map_mul
      (show (-1 : ℚ_[2]) ≠ 0 by norm_num)
      (show (-1 : ℚ_[2]) ≠ 0 by norm_num)
    have hprod : (-1 : ℚ_[2]) * -1 = 1 := by ring
    rw [hprod, Padic.valuation_one] at h
    omega
  have hodd : Padic.valuation (989 : ℚ_[2]) = 0 := by
    change Padic.valuation ((989 : ℕ) : ℚ_[2]) = 0
    rw [q2_val_nat 989 (by norm_num)]
    simp [padicValNat.eq_zero_of_not_dvd (by norm_num : ¬2 ∣ 989)]
  have heq : ((-1978 : ℤ_[2]) : ℚ_[2]) =
      (-1 : ℚ_[2]) * 2 * 989 := by
    norm_num [PadicInt.coe_natCast]
    rfl
  rw [heq, Padic.valuation_map_mul
    (show (-1 : ℚ_[2]) * 2 ≠ 0 by norm_num)
    (show (989 : ℚ_[2]) ≠ 0 by norm_num),
    Padic.valuation_map_mul
      (show (-1 : ℚ_[2]) ≠ 0 by norm_num)
      (show (2 : ℚ_[2]) ≠ 0 by norm_num),
    hneg, (show Padic.valuation (2 : ℚ_[2]) = 1 from Padic.valuation_p), hodd]
  norm_num

theorem nonsplitValOneModel_counterexample :
    nonsplitValOneModel.Δ ≠ 0 ∧
      Padic.valuation (nonsplitValOneModel.Δ : ℚ_[2]) = 1 ∧
      ReducedNodalPoint (nonsplitValOneModel.map PadicInt.toZMod)
        (PadicInt.toZMod nonsplitValOneModel.a₃)
        (PadicInt.toZMod
          (nonsplitValOneModel.a₃ ^ 2 + nonsplitValOneModel.a₄)) ∧
      ∀ u v : ZMod 2,
        reducedTangentCone (nonsplitValOneModel.map PadicInt.toZMod)
          (PadicInt.toZMod nonsplitValOneModel.a₃) u v = 0 →
          u = 0 ∧ v = 0 := by
  refine ⟨?_, nonsplitValOneModel_val, nonsplitValOneModel_node, ?_⟩
  · rw [nonsplitValOneModel_delta]
    norm_num
  · intro u v hzero
    exact reducedTangentCone_nonsplit
      (nonsplitValOneModel.map PadicInt.toZMod)
      (PadicInt.toZMod nonsplitValOneModel.a₃)
      (PadicInt.toZMod
        (nonsplitValOneModel.a₃ ^ 2 + nonsplitValOneModel.a₄))
      nonsplitValOneModel_node nonsplitValOneModel_coeff u v hzero

#print axioms reducedTangentCone_split
#print axioms reducedTangentCone_nonsplit
#print axioms nonsplitValOneModel_val
#print axioms nonsplitValOneModel_counterexample

end Beal.General