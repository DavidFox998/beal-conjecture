import Beal.MathlibMissing.ChartSurjection
import Mathlib.Algebra.CharP.Two
import Mathlib.RingTheory.MvPolynomial.Basic

/-!
The chart ideal with the fifth generator `U + X² + X·V²`.
`U²` follows from `X·U = 0`. The induced map onto `D₊(Xt)` is
surjective. The polynomial quotient is `𝔽₂[a,b][X,V] / (X²·(X + V²))`.
`X⁴ − X ∉ I²`. The class `X + V²` is nonzero in `D₊(Xt)`
(`chart_X_add_V_sq_ne_zero`). Injectivity is not proved: a general normal
form `A(V) + X·B(V) + X²·C(V)` is not shown to vanish only when it is zero.
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

/-- `𝔽₂[a,b][X,V]`. Variable `0` is `X` and variable `1` is `V`. -/
abbrev chartNormalPoly : Type :=
  MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2))

/-- The relation `X²·(X + V²)`. -/
noncomputable def chartNormalRel : chartNormalPoly :=
  (MvPolynomial.X 0) ^ 2 * ((MvPolynomial.X 0) + (MvPolynomial.X 1) ^ 2)

noncomputable def chartNormalIdeal : Ideal chartNormalPoly :=
  Ideal.span {chartNormalRel}

/-- `𝔽₂[a,b][X,V] / (X²·(X + V²))`. -/
abbrev chartNormalRing : Type := chartNormalPoly ⧸ chartNormalIdeal

/-- `X²·(X + V²) = X·(U + X² + X·V²) + X·U`, so it lies in `chartTrueIdeal`. -/
theorem chartTrueIdeal_X_sq_mul_X_add_Vsq :
    (MvPolynomial.X (0 : Fin 4)) ^ 2 *
        ((MvPolynomial.X 0) + (MvPolynomial.X 3) ^ 2) ∈ chartTrueIdeal := by
  let X : MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) := MvPolynomial.X 0
  let U : MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) := MvPolynomial.X 2
  let V : MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) := MvPolynomial.X 3
  change X ^ 2 * (X + V ^ 2) ∈ chartTrueIdeal
  have hXU : X * U ∈ chartTrueIdeal := by
    rw [chartTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert _ _)
  have hw : chartKernelWitness ∈ chartTrueIdeal := by
    rw [chartTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
      (Set.mem_insert_of_mem _ (Set.mem_singleton _))))
  have hlin : X ^ 2 * (X + V ^ 2) = X * chartKernelWitness + X * U := by
    symm
    rw [chartKernelWitness]
    have hmul : X * ((U + X ^ 2) + X * V ^ 2) =
        (X * U + X * X ^ 2) + X * (X * V ^ 2) := by
      rw [mul_add, mul_add]
    rw [hmul]
    have hcube : X * X ^ 2 = X ^ 2 * X := by
      rw [pow_two, ← mul_assoc]
    have hsq : X * (X * V ^ 2) = X ^ 2 * V ^ 2 := by
      rw [← mul_assoc, ← pow_two]
    rw [hcube, hsq]
    -- `((X·U + X²·X) + X²·V²) + X·U`
    rw [add_assoc (X * U + X ^ 2 * X) (X ^ 2 * V ^ 2) (X * U)]
    rw [add_assoc (X * U) (X ^ 2 * X) (X ^ 2 * V ^ 2 + X * U)]
    rw [add_comm (X ^ 2 * V ^ 2) (X * U)]
    rw [← add_assoc (X ^ 2 * X) (X * U) (X ^ 2 * V ^ 2)]
    rw [add_comm (X ^ 2 * X) (X * U)]
    rw [add_assoc (X * U) (X ^ 2 * X) (X ^ 2 * V ^ 2)]
    rw [← add_assoc (X * U) (X * U) (X ^ 2 * X + X ^ 2 * V ^ 2)]
    rw [CharTwo.add_self_eq_zero (X * U), zero_add, ← mul_add]
  rw [hlin]
  exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ hw) hXU

/-- Send `X, Y, U, V` to `X, X·V, X² + X·V², V` in the normal-form quotient. -/
noncomputable def chartToNormalEval :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) →+* chartNormalRing :=
  MvPolynomial.eval₂Hom
    ((Ideal.Quotient.mk chartNormalIdeal).comp MvPolynomial.C)
    (fun i : Fin 4 =>
      if i = 0 then Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 0)
      else if i = 1 then
        Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 0 * MvPolynomial.X 1)
      else if i = 2 then
        Ideal.Quotient.mk chartNormalIdeal
          ((MvPolynomial.X 0) ^ 2 + MvPolynomial.X 0 * (MvPolynomial.X 1) ^ 2)
      else Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 1))

private lemma chartToNormalEval_X (i : Fin 4) :
    chartToNormalEval (MvPolynomial.X i) =
      if i = 0 then Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 0)
      else if i = 1 then
        Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 0 * MvPolynomial.X 1)
      else if i = 2 then
        Ideal.Quotient.mk chartNormalIdeal
          ((MvPolynomial.X 0) ^ 2 + MvPolynomial.X 0 * (MvPolynomial.X 1) ^ 2)
      else Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 1) := by
  simp [chartToNormalEval, MvPolynomial.eval₂Hom_X']

private lemma chartNormal_XU_eq_rel :
    (MvPolynomial.X (0 : Fin 2)) *
        ((MvPolynomial.X 0) ^ 2 + MvPolynomial.X 0 * (MvPolynomial.X 1) ^ 2) =
      chartNormalRel := by
  let X : chartNormalPoly := MvPolynomial.X 0
  let V : chartNormalPoly := MvPolynomial.X 1
  change X * (X ^ 2 + X * V ^ 2) = X ^ 2 * (X + V ^ 2)
  rw [mul_add]
  have hcube : X * X ^ 2 = X ^ 2 * X := by
    rw [pow_two, ← mul_assoc]
  have hsq : X * (X * V ^ 2) = X ^ 2 * V ^ 2 := by
    rw [← mul_assoc, ← pow_two]
  rw [hcube, hsq, ← mul_add]

private lemma chartNormal_Ysq_eq_rel :
    (MvPolynomial.X (0 : Fin 2) * MvPolynomial.X 1) ^ 2 -
        (MvPolynomial.X 0) ^ 3 = chartNormalRel := by
  let X : chartNormalPoly := MvPolynomial.X 0
  let V : chartNormalPoly := MvPolynomial.X 1
  change (X * V) ^ 2 - X ^ 3 = X ^ 2 * (X + V ^ 2)
  rw [CharTwo.sub_eq_add, mul_pow]
  have hpow : X ^ 3 = X ^ 2 * X := by
    rw [pow_succ]
  rw [hpow, add_comm (X ^ 2 * V ^ 2), ← mul_add]

/-- The four true generators die in `𝔽₂[a,b][X,V] / (X²·(X + V²))`. -/
theorem chartToNormalEval_kills_trueIdeal :
    chartTrueIdeal ≤ RingHom.ker chartToNormalEval := by
  rw [chartTrueIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_mul, chartToNormalEval_X, chartToNormalEval_X,
      if_pos (rfl : (0 : Fin 4) = 0),
      if_neg (by decide : (2 : Fin 4) ≠ 0),
      if_neg (by decide : (2 : Fin 4) ≠ 1),
      if_pos (rfl : (2 : Fin 4) = 2)]
    rw [← map_mul (Ideal.Quotient.mk chartNormalIdeal), chartNormal_XU_eq_rel,
      Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.subset_span (Set.mem_singleton _)
  · rw [CharTwo.sub_eq_add, SetLike.mem_coe, RingHom.mem_ker, map_add, map_mul,
      chartToNormalEval_X, chartToNormalEval_X, chartToNormalEval_X,
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_pos (rfl : (0 : Fin 4) = 0),
      if_neg (by decide : (3 : Fin 4) ≠ 0),
      if_neg (by decide : (3 : Fin 4) ≠ 1),
      if_neg (by decide : (3 : Fin 4) ≠ 2)]
    rw [← map_mul (Ideal.Quotient.mk chartNormalIdeal),
      ← map_add (Ideal.Quotient.mk chartNormalIdeal), CharTwo.add_self_eq_zero, map_zero]
  · rw [CharTwo.sub_eq_add, SetLike.mem_coe, RingHom.mem_ker, map_add, map_pow, map_pow,
      chartToNormalEval_X, chartToNormalEval_X,
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_pos (rfl : (0 : Fin 4) = 0)]
    rw [← map_pow (Ideal.Quotient.mk chartNormalIdeal),
      ← map_pow (Ideal.Quotient.mk chartNormalIdeal),
      ← map_add (Ideal.Quotient.mk chartNormalIdeal), ← CharTwo.sub_eq_add,
      chartNormal_Ysq_eq_rel, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.subset_span (Set.mem_singleton _)
  · rw [SetLike.mem_coe, RingHom.mem_ker, chartKernelWitness, map_add, map_add, map_pow, map_mul,
      map_pow, chartToNormalEval_X, chartToNormalEval_X, chartToNormalEval_X,
      if_pos (rfl : (2 : Fin 4) = 2),
      if_neg (by decide : (2 : Fin 4) ≠ 0),
      if_neg (by decide : (2 : Fin 4) ≠ 1),
      if_pos (rfl : (0 : Fin 4) = 0),
      if_neg (by decide : (3 : Fin 4) ≠ 0),
      if_neg (by decide : (3 : Fin 4) ≠ 1),
      if_neg (by decide : (3 : Fin 4) ≠ 2)]
    have hsecond :
        (Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 0)) ^ 2 +
          Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 0) *
            (Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X 1)) ^ 2 =
        Ideal.Quotient.mk chartNormalIdeal
          ((MvPolynomial.X 0) ^ 2 + MvPolynomial.X 0 * (MvPolynomial.X 1) ^ 2) := by
      rw [← map_pow (Ideal.Quotient.mk chartNormalIdeal),
        ← map_pow (Ideal.Quotient.mk chartNormalIdeal),
        ← map_mul (Ideal.Quotient.mk chartNormalIdeal),
        ← map_add (Ideal.Quotient.mk chartNormalIdeal)]
    rw [add_assoc, hsecond, ← map_add (Ideal.Quotient.mk chartNormalIdeal),
      CharTwo.add_self_eq_zero, map_zero]

/-- `𝔽₂[a,b][X,Y,U,V] / chartTrueIdeal → 𝔽₂[a,b][X,V] / (X²·(X + V²))`. -/
noncomputable def chartToNormal :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ chartTrueIdeal →+*
      chartNormalRing :=
  Ideal.Quotient.lift chartTrueIdeal chartToNormalEval chartToNormalEval_kills_trueIdeal

/-- Include `𝔽₂[a,b][X,V]` by `X ↦ X` and `V ↦ V`. -/
noncomputable def normalPolyToModel :
    chartNormalPoly →+* MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.eval₂Hom MvPolynomial.C
    (fun i : Fin 2 => if i = 0 then MvPolynomial.X 0 else MvPolynomial.X 3)

private lemma normalPolyToModel_rel :
    normalPolyToModel chartNormalRel =
      (MvPolynomial.X (0 : Fin 4)) ^ 2 *
        ((MvPolynomial.X 0) + (MvPolynomial.X 3) ^ 2) := by
  rw [chartNormalRel, normalPolyToModel, map_mul, map_pow, map_add, map_pow,
    MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X',
    if_pos (rfl : (0 : Fin 2) = 0),
    if_neg (by decide : (1 : Fin 2) ≠ 0)]

theorem normalPolyToModel_kills_rel :
    chartNormalIdeal ≤
      RingHom.ker ((Ideal.Quotient.mk chartTrueIdeal).comp normalPolyToModel) := by
  rw [chartNormalIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_singleton_iff] at hz
  subst hz
  rw [SetLike.mem_coe, RingHom.mem_ker, RingHom.comp_apply, normalPolyToModel_rel,
    Ideal.Quotient.eq_zero_iff_mem]
  exact chartTrueIdeal_X_sq_mul_X_add_Vsq

/-- `𝔽₂[a,b][X,V] / (X²·(X + V²)) → 𝔽₂[a,b][X,Y,U,V] / chartTrueIdeal`. -/
noncomputable def normalToChart :
    chartNormalRing →+*
      MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ chartTrueIdeal :=
  Ideal.Quotient.lift chartNormalIdeal
    ((Ideal.Quotient.mk chartTrueIdeal).comp normalPolyToModel) normalPolyToModel_kills_rel

private lemma chartToNormal_comp_normalToChart :
    chartToNormal.comp normalToChart = RingHom.id chartNormalRing := by
  apply Ideal.Quotient.ringHom_ext
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, chartToNormalEval,
      normalToChart, normalPolyToModel, Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_C]
  · intro i
    fin_cases i
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, normalToChart,
        Ideal.Quotient.lift_mk, chartToNormalEval, normalPolyToModel, MvPolynomial.eval₂Hom_X']
      rw [if_pos (by decide), MvPolynomial.eval₂Hom_X', if_pos (by decide)]
      exact congrArg (fun j : Fin 2 => Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X j))
        (Fin.ext rfl)
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, normalToChart,
        Ideal.Quotient.lift_mk, chartToNormalEval, normalPolyToModel, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), MvPolynomial.eval₂Hom_X',
        if_neg (by decide), if_neg (by decide), if_neg (by decide)]
      exact congrArg (fun j : Fin 2 => Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X j))
        (Fin.ext rfl)

private lemma normalToChart_comp_chartToNormal :
    normalToChart.comp chartToNormal = RingHom.id _ := by
  apply Ideal.Quotient.ringHom_ext
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, chartToNormalEval,
      normalToChart, normalPolyToModel, Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_C]
  · intro i
    fin_cases i
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, Ideal.Quotient.lift_mk,
        chartToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_pos (by decide)]
      simp only [normalToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalPolyToModel,
        MvPolynomial.eval₂Hom_X']
      rw [if_pos (by decide)]
      exact congrArg (fun j : Fin 4 => Ideal.Quotient.mk chartTrueIdeal (MvPolynomial.X j))
        (Fin.ext rfl)
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, Ideal.Quotient.lift_mk,
        chartToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_pos (by decide)]
      simp only [normalToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalPolyToModel,
        map_mul, MvPolynomial.eval₂Hom_X']
      rw [if_pos (by decide), if_neg (by decide)]
      rw [← map_mul (Ideal.Quotient.mk chartTrueIdeal), Ideal.Quotient.eq,
        CharTwo.sub_eq_add, add_comm, ← CharTwo.sub_eq_add, chartTrueIdeal]
      exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, Ideal.Quotient.lift_mk,
        chartToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_neg (by decide), if_pos (by decide)]
      simp only [normalToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalPolyToModel,
        map_add, map_mul, map_pow, MvPolynomial.eval₂Hom_X']
      rw [if_pos (by decide), if_neg (by decide)]
      have hleft :
          (Ideal.Quotient.mk chartTrueIdeal (MvPolynomial.X 0)) ^ 2 +
            Ideal.Quotient.mk chartTrueIdeal (MvPolynomial.X 0) *
              (Ideal.Quotient.mk chartTrueIdeal (MvPolynomial.X 3)) ^ 2 =
          Ideal.Quotient.mk chartTrueIdeal
            ((MvPolynomial.X 0) ^ 2 + MvPolynomial.X 0 * (MvPolynomial.X 3) ^ 2) := by
        rw [← map_pow (Ideal.Quotient.mk chartTrueIdeal),
          ← map_pow (Ideal.Quotient.mk chartTrueIdeal),
          ← map_mul (Ideal.Quotient.mk chartTrueIdeal),
          ← map_add (Ideal.Quotient.mk chartTrueIdeal)]
      rw [hleft, Ideal.Quotient.eq]
      have hmem : chartKernelWitness ∈ chartTrueIdeal := by
        rw [chartTrueIdeal]
        exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
          (Set.mem_insert_of_mem _ (Set.mem_singleton _))))
      have hgen (j : Fin 4) (hj : j = 2) :
          (MvPolynomial.X (0 : Fin 4)) ^ 2 +
            MvPolynomial.X 0 * (MvPolynomial.X 3) ^ 2 - MvPolynomial.X j ∈
            chartTrueIdeal := by
        subst hj
        rw [show (MvPolynomial.X (0 : Fin 4)) ^ 2 +
              MvPolynomial.X 0 * (MvPolynomial.X 3) ^ 2 - MvPolynomial.X 2 =
            chartKernelWitness by
          rw [chartKernelWitness, CharTwo.sub_eq_add, add_comm, add_assoc]]
        exact hmem
      apply hgen
      exact Fin.ext rfl
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartToNormal, Ideal.Quotient.lift_mk,
        chartToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_neg (by decide), if_neg (by decide)]
      simp only [normalToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalPolyToModel,
        MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide)]
      exact congrArg (fun j : Fin 4 => Ideal.Quotient.mk chartTrueIdeal (MvPolynomial.X j))
        (Fin.ext rfl)

/-- `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²)` is
`𝔽₂[a,b][X,V] / (X²·(X + V²))`. The classes of `1`, `X`, and `X²` generate
it as an `𝔽₂[a,b][V]`-module. -/
noncomputable def chartTrueIdeal_quotient_equiv_normal :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ chartTrueIdeal ≃+*
      chartNormalRing :=
  RingEquiv.ofRingHom chartToNormal normalToChart
    chartToNormal_comp_normalToChart normalToChart_comp_chartToNormal

/-- `X⁴ − X ∉ I²` at `(0, 0)`. `X⁴ ∈ I²` and `X ∉ I²`, so the degree-2
numerator `2·(X⁴ − X)` of `X² + X·V²` is not in the scalar ideal `(2)` of
the Rees algebra. `U − (X² + X·V²)` is a different class, and that one is zero. -/
theorem valuationOne_X_fourth_sub_X_not_mem_centre_sq :
    (surfaceNumeralX valuationOneCurve 0) ^ 4 -
        surfaceNumeralX valuationOneCurve 0 ∉
      numeralCentreIdeal valuationOneCurve 0 0 ^ 2 := by
  intro h
  set I := numeralCentreIdeal valuationOneCurve 0 0
  set x := surfaceNumeralX valuationOneCurve 0
  have hx : x ∈ I := numeral_X_mem_centre valuationOneCurve 0 0
  have hx2 : x ^ 2 ∈ I ^ 2 := Ideal.pow_mem_pow hx 2
  have hx4 : x ^ 4 ∈ I ^ 2 := by
    have hmul : x ^ 4 ∈ (I ^ 2) * (I ^ 2) := by
      rw [show x ^ 4 = x ^ 2 * x ^ 2 by rw [← pow_add]]
      exact Ideal.mul_mem_mul hx2 hx2
    exact Ideal.mul_le_right hmul
  have hxI2 : x ∈ I ^ 2 := by
    rw [← sub_sub_cancel (x ^ 4) x]
    exact Ideal.sub_mem _ hx4 h
  have hxeq : x =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2)) := by
    change surfaceNumeralX valuationOneCurve 0 = _
    rw [surfaceNumeralX, Nat.cast_zero, MvPolynomial.C_0, MvPolynomial.C_0, sub_zero]
  exact valuationOne_X_pow_not_mem_centre_succ 1 (by
    rw [pow_one]
    exact hxeq ▸ hxI2)

/-- Injectivity of the true chart map. Equivalent to
`ker chartModelEval = chartTrueIdeal`. Open.

`chartTrueIdeal_quotient_equiv_normal` identifies the source with
`𝔽₂[a,b][X,V] / (X²·(X + V²))`, whose classes are represented by
`A(V) + X·B(V) + X²·C(V)`. Vanishing in `D₊(Xt)` means that for some `m`
the cleared Rees numerator lies in `2 · I^{d+m}`.
`valuationOne_X_fourth_sub_X_not_mem_centre_sq` blocks only the class
`X² + X·V²`. `centreIdeal_power_coeff_bound` is the coefficient bound:
if `α + Y·β ∈ I^k`, the coefficient of `X^i` in `α` has 2-adic norm at
most `2^{−⌈(k−i)/2⌉}` and the coefficient of `X^i` in `β` has norm at
most `2^{−⌊(k−i)/2⌋}`. `centre_X_pow_mul_X_cube_sub_one_not_mem` gives
`X^m · (X³ − 1) ∉ I^{m+1}`. `chart_X_add_V_sq_ne_zero` applies that
obstruction: the class `X + V²` has degree-2 numerator `2·(X³ − 1)` on
`Y² = X³ − 2`, and `(Xt)^k` times that numerator lies in the scalar ideal
`(2)` only if `X^k · (X³ − 1) ∈ I^{k+2}`.
`exists_chartNormalForm` and `chartNormalForm_unique` give a unique
representative `A(V) + X·B(V) + X²·C(V)`.
`chartOfModelTrue_injective_iff_normalForm` is the kernel condition on
that representative. `bitReduced_signed_bound` is the coefficient step
for a `0`-`1` pattern: the lowest power of `X`, or the leading term of
`(X³ − 2)^q` when only `C` meets that power, has coefficient
`(-1)^s · 2^q` at an index whose centre bound is `q`. What remains open
is the identification of chart vanishing with `α = 2·αₛ`, `β = 2·βₛ`
and `αₛ + Y·βₛ ∈ I^D`. -/
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
#print axioms Beal.MathlibMissing.chartTrueIdeal_quotient_equiv_normal
#print axioms Beal.MathlibMissing.valuationOne_X_fourth_sub_X_not_mem_centre_sq
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_true_presentation
#print axioms Beal.MathlibMissing.chartModelEval_kernelWitness
#print axioms Beal.MathlibMissing.chartKernelWitness_not_mem
#print axioms Beal.MathlibMissing.not_chartOfModelBase_injective
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_presentation

end Beal.MathlibMissing
