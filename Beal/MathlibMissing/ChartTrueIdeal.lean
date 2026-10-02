import Beal.MathlibMissing.ChartSurjection
import Mathlib.Algebra.CharP.Two
import Mathlib.RingTheory.MvPolynomial.Basic

/-!
The chart ideal with the fifth generator `U + X² + X·V²`.
`U²` follows from `X·U = 0`. The induced map onto `D₊(Xt)` is
surjective. Injectivity is not proved.
-/

namespace Beal.MathlibMissing

/-- In characteristic 2, `(a + p + q) + (p + q) = a`. -/
private lemma char2_cancel_pairs {R : Type*} [CommRing R] [CharP R 2]
    (a p q : R) : (a + p + q) + (p + q) = a := by
  rw [add_assoc (a + p) q (p + q), add_comm p q, ← add_assoc q q p]
  rw [CharTwo.add_self_eq_zero q, zero_add, add_assoc a p p]
  rw [CharTwo.add_self_eq_zero p, add_zero]

/-- `(X·U, Y − X·V, Y² − X³, U + X² + X·V²)` in `𝔽₂[a,b][X,Y,U,V]`.
`U²` is not a generator. `chartTrueIdeal_contains_U2` puts it in the ideal. -/
noncomputable def chartTrueIdeal :
    Ideal (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2))) :=
  Ideal.span {
    MvPolynomial.X 0 * MvPolynomial.X 2,
    MvPolynomial.X 1 - MvPolynomial.X 0 * MvPolynomial.X 3,
    MvPolynomial.X 1 ^ 2 - MvPolynomial.X 0 ^ 3,
    chartKernelWitness }

/-- `U² = U·(U + X² + X·V²) + (X + V²)·(X·U)` in characteristic 2. -/
theorem chartTrueIdeal_contains_U2 :
    (MvPolynomial.X (2 : Fin 4)) ^ 2 ∈ chartTrueIdeal := by
  have hXU : MvPolynomial.X 0 * MvPolynomial.X 2 ∈ chartTrueIdeal := by
    rw [chartTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert _ _)
  have hw : chartKernelWitness ∈ chartTrueIdeal := by
    rw [chartTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
      (Set.mem_insert_of_mem _ (Set.mem_singleton _))))
  let X : MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) := MvPolynomial.X 0
  let U : MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) := MvPolynomial.X 2
  let V : MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) := MvPolynomial.X 3
  have hlin : U ^ 2 =
      U * chartKernelWitness + (X + V ^ 2) * (X * U) := by
    rw [chartKernelWitness, pow_two]
    have h1 : U * (U + X ^ 2 + X * V ^ 2) =
        U * U + U * X ^ 2 + U * (X * V ^ 2) := by
      rw [mul_add, mul_add]
    have h2 : (X + V ^ 2) * (X * U) = X * (X * U) + V ^ 2 * (X * U) := by
      rw [add_mul]
    have hXU : U * X ^ 2 = X * (X * U) := by
      rw [pow_two, mul_left_comm U X X, mul_comm U X]
    have hVU : U * (X * V ^ 2) = V ^ 2 * (X * U) := by
      rw [mul_left_comm U X (V ^ 2), mul_comm U (V ^ 2), mul_left_comm X (V ^ 2) U]
    rw [h1, h2, hXU, hVU]
    symm
    exact char2_cancel_pairs (U * U) (X * (X * U)) (V ^ 2 * (X * U))
  rw [hlin]
  exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ hw) (Ideal.mul_mem_left _ _ hXU)

/-- `(X·U, Y − X·V, Y² − X³, U²)` is contained in the true ideal. -/
theorem modelBaseRelationIdeal_le_chartTrueIdeal :
    modelBaseRelationIdeal ≤ chartTrueIdeal := by
  rw [modelBaseRelationIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · rw [chartTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert _ _)
  · rw [chartTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
  · rw [chartTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
      (Set.mem_insert _ _)))
  · exact chartTrueIdeal_contains_U2

/-- The true ideal lies in `ker chartModelEval`. -/
theorem chartTrueIdeal_le_ker_chartModelEval :
    chartTrueIdeal ≤ RingHom.ker chartModelEval := by
  rw [chartTrueIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · exact chartModelEval_relation (by
      rw [modelBaseRelationIdeal]
      exact Ideal.subset_span (Set.mem_insert _ _))
  · exact chartModelEval_relation (by
      rw [modelBaseRelationIdeal]
      exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _)))
  · exact chartModelEval_relation (by
      rw [modelBaseRelationIdeal]
      exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
        (Set.mem_insert _ _))))
  · rw [SetLike.mem_coe, RingHom.mem_ker]
    exact chartModelEval_kernelWitness

/-- `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²) → D₊(Xt)`. -/
noncomputable def chartOfModelTrue :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ chartTrueIdeal →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  Ideal.Quotient.lift chartTrueIdeal chartModelEval chartTrueIdeal_le_ker_chartModelEval

/-- Polynomials that cover the chart through the four-relation quotient
still cover it through the true ideal. -/
theorem chartOfModelTrue_surjective : Function.Surjective chartOfModelTrue := by
  intro z
  obtain ⟨p, hp⟩ := chartModelEval_surjective z
  refine ⟨Ideal.Quotient.mk chartTrueIdeal p, ?_⟩
  rw [chartOfModelTrue, Ideal.Quotient.lift_mk]
  exact hp

/-- Injectivity of the true chart map. Equivalent to
`ker chartModelEval = chartTrueIdeal`. Open: `U + X² + X·V²` lies in the
ideal, so the four-relation counterexample is killed, and a general
normal form `A(V) + X·B(V) + X²·C(V)` is not yet shown to vanish in
`D₊(Xt)` only when it is zero. -/
def chartOfModelTrue_injective : Prop :=
  Function.Injective chartOfModelTrue

/-- A proved injection would be a bijection. -/
theorem chartOfModelTrue_bijective_of_injective
    (h : chartOfModelTrue_injective) : Function.Bijective chartOfModelTrue :=
  ⟨h, chartOfModelTrue_surjective⟩

/-- OPEN. An isomorphism
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²) ≃ D₊(Xt)`.
`chartOfModelTrue_surjective` is the surjection.
`chartOfModelTrue_injective` is the missing injection.
This is not `chart_Dplus_Xt_presentation`, which names the parameter-free
ring `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`. -/
def chart_Dplus_Xt_true_presentation : Prop :=
  Nonempty
    ((MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ chartTrueIdeal) ≃+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0)

theorem chart_Dplus_Xt_true_presentation_of_injective
    (h : chartOfModelTrue_injective) : chart_Dplus_Xt_true_presentation := by
  rw [chart_Dplus_Xt_true_presentation]
  exact ⟨RingEquiv.ofBijective chartOfModelTrue
    (chartOfModelTrue_bijective_of_injective h)⟩

#print axioms Beal.MathlibMissing.chartTrueIdeal_contains_U2
#print axioms Beal.MathlibMissing.modelBaseRelationIdeal_le_chartTrueIdeal
#print axioms Beal.MathlibMissing.chartOfModelTrue_surjective
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_true_presentation
#print axioms Beal.MathlibMissing.chartModelEval_kernelWitness
#print axioms Beal.MathlibMissing.chartKernelWitness_not_mem
#print axioms Beal.MathlibMissing.not_chartOfModelBase_injective
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_presentation

end Beal.MathlibMissing
