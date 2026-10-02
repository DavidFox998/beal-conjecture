import Beal.MathlibMissing.Family
import Beal.«Beal.General».TateEvenCoordinateCharts
import Beal.«Beal.General».ProjectiveQuotientChart

/-!
Generation of the chart `D₊(Xt)` by `a, b, X, Y, U, V`.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option maxHeartbeats 2000000
set_option synthInstance.maxHeartbeats 400000

/-- The node evaluation on the coefficient model agrees with
`chartNodeHom` after `chartModelEval`. -/
theorem chartNodeHom_comp_chartModelEval :
    chartNodeHom.comp chartModelEval = modelBaseEvalNode := by
  have hcoeff :
      chartNodeHom.comp (chartFromF2Polynomial valuationOneCurve 0 0) =
        modelF2PolynomialEvalZero := by
    apply MvPolynomial.ringHom_ext
    · intro c
      fin_cases c
      · simp [modelF2PolynomialEvalZero]
      · simp [modelF2PolynomialEvalZero]
    · intro i
      have hmem :
          chartFromF2Polynomial valuationOneCurve 0 0 (MvPolynomial.X i) ∈
            ideal_ABXYUV valuationOneCurve 0 0 := by
        rw [ideal_ABXYUV]
        fin_cases i
        · exact Ideal.subset_span (by simp)
        · exact Ideal.subset_span (by simp)
      have hker := ker_contains_ABXYUV hmem
      simpa [modelF2PolynomialEvalZero, RingHom.mem_ker] using hker
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.comp_apply, chartModelEval, MvPolynomial.eval₂Hom_C,
      modelBaseEvalNode, modelBaseEvalXUV, modelF2PolynomialEvalZero,
      MvPolynomial.eval₂Hom_C, RingHom.id_apply]
    exact congrArg (fun φ : MvPolynomial (Fin 2) (ZMod 2) →+* ZMod 2 => φ r) hcoeff
      |>.trans (by simp [modelF2PolynomialEvalZero])
  · intro i
    have hmodel : modelBaseEvalNode (MvPolynomial.X i) = 0 := by
      simp [modelBaseEvalNode, modelBaseEvalXUV, modelF2PolynomialEvalZero]
    have hchart : chartNodeHom (chartModelEval (MvPolynomial.X i)) = 0 := by
      have hmem : chartModelEval (MvPolynomial.X i) ∈
          ideal_ABXYUV valuationOneCurve 0 0 := by
        fin_cases i
        · rw [chartModelEval, MvPolynomial.eval₂Hom_X']
          simp
          rw [ideal_ABXYUV]
          exact Ideal.subset_span (by simp)
        · rw [chartModelEval, MvPolynomial.eval₂Hom_X']
          simp
          rw [ideal_ABXYUV]
          exact Ideal.subset_span (by simp)
        · rw [chartModelEval, MvPolynomial.eval₂Hom_X']
          simp
          rw [ideal_ABXYUV]
          exact Ideal.subset_span (by simp)
        · rw [chartModelEval, MvPolynomial.eval₂Hom_X']
          simp
          rw [ideal_ABXYUV]
          exact Ideal.subset_span (by simp)
      have hker := ker_contains_ABXYUV hmem
      simpa [RingHom.mem_ker] using hker
    simpa [RingHom.comp_apply, hmodel] using hchart

section NodeChart

noncomputable abbrev nodeSurface : Type := surfaceRing valuationOneCurve

noncomputable abbrev nodeCentre : Ideal nodeSurface :=
  numeralCentreIdeal valuationOneCurve 0 0

noncomputable abbrev nodeSpecial : Ideal (reesAlgebra nodeCentre) :=
  numeralReesSpecialIdeal valuationOneCurve 0 0

/-- The three centre generators `2`, `X`, `Y` at the node `(0, 0)`. -/
noncomputable def nodeGenerator : Fin 3 → nodeSurface
  | 0 => (2 : nodeSurface)
  | 1 => surfaceNumeralX valuationOneCurve 0
  | 2 => surfaceNumeralY valuationOneCurve 0

theorem nodeGenerator_mem (i : Fin 3) : nodeGenerator i ∈ nodeCentre := by
  fin_cases i
  · exact two_mem_numeralCentreIdeal valuationOneCurve 0 0
  · simpa [nodeGenerator, surfaceNumeralX] using
      (numeral_X_mem_centre valuationOneCurve 0 0)
  · simpa [nodeGenerator, surfaceNumeralY] using
      (numeral_Y_mem_centre valuationOneCurve 0 0)

theorem nodeCentre_eq_span :
    nodeCentre = Ideal.span (Set.range nodeGenerator) := by
  rw [nodeCentre, numeralCentreIdeal, Ideal.map_span]
  apply congrArg Ideal.span
  ext z
  constructor
  · intro hz
    simp only [Set.mem_image, Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    obtain ⟨w, hw, rfl⟩ := hz
    rcases hw with rfl | rfl | rfl
    · refine ⟨0, ?_⟩
      simpa [nodeGenerator] using (two_eq_quotient_mk valuationOneCurve).symm
    · refine ⟨1, ?_⟩
      simp [nodeGenerator, surfaceNumeralX]
    · refine ⟨2, ?_⟩
      simp [nodeGenerator, surfaceNumeralY]
  · intro hz
    obtain ⟨i, rfl⟩ := hz
    fin_cases i
    · rw [nodeGenerator.eq_def, two_eq_quotient_mk]
      exact ⟨MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])), by simp, rfl⟩
    · rw [nodeGenerator.eq_def, surfaceNumeralX]
      exact ⟨MvPolynomial.X (0 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (0 : ℤ_[2])), by simp, rfl⟩
    · rw [nodeGenerator.eq_def, surfaceNumeralY]
      exact ⟨MvPolynomial.X (1 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (0 : ℤ_[2])), by simp, rfl⟩

private noncomputable def nodeDenom :
    reesAlgebra nodeCentre :=
  centreReesDegreeOne nodeCentre (nodeGenerator 1) (nodeGenerator_mem 1)

-- Defeq probes. These are statements, not inhabitants of open goals.
example : nodeDenom = numeralReesXT valuationOneCurve 0 0 := by
  rfl

noncomputable local instance nodeReesAlgebra :
    Algebra nodeSurface (reesAlgebra nodeCentre) := inferInstance

noncomputable local instance nodeQuotientAlgebra :
    Algebra nodeSurface ((reesAlgebra nodeCentre) ⧸ nodeSpecial) := inferInstance

noncomputable local instance nodeReesGrading :
    GradedAlgebra (centreReesComponent nodeCentre) :=
  centreReesGrading nodeCentre

/-- `R[T₀,T₁,T₂] → D₊(Xt)` on the integral Rees algebra, sending `Tᵢ`
to the degree-one ratio of the centre generators against `Xt`. -/
noncomputable def nodeIntegralRatio :
    MvPolynomial (Fin 3) nodeSurface →+*
      HomogeneousLocalization.Away (centreReesComponent nodeCentre) nodeDenom :=
  centreReesRatioPolynomialMap nodeCentre nodeGenerator nodeGenerator_mem
    (nodeGenerator 1) (nodeGenerator_mem 1)

theorem nodeIntegralRatio_surjective :
    Function.Surjective nodeIntegralRatio :=
  centreReesRatioPolynomialMap_surjective nodeCentre nodeGenerator
    nodeGenerator_mem nodeCentre_eq_span (nodeGenerator 1) (nodeGenerator_mem 1)

/-- The integral chart maps onto the special chart because no power of
`Xt` vanishes in `Rees(I)/(2)`. -/
noncomputable def nodeSpecialAway :
    HomogeneousLocalization.Away (centreReesComponent nodeCentre) nodeDenom →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  homogeneousQuotientAwayMap (centreReesComponent (R := nodeSurface) nodeCentre)
    nodeSpecial (numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0)
    nodeDenom

theorem nodeSpecialAway_surjective : Function.Surjective nodeSpecialAway := by
  have hdeg : nodeDenom ∈ centreReesComponent nodeCentre 1 :=
    centreReesDegreeOne_mem nodeCentre (nodeGenerator 1) (nodeGenerator_mem 1)
  have hpow : ∀ n : ℕ,
      (Ideal.Quotient.mk nodeSpecial nodeDenom) ^ n ≠ 0 := by
    intro n
    simpa using valuationOne_specialXT_pow_ne_zero n
  simpa [nodeSpecialAway] using
    homogeneousQuotientAwayMap_surjective
      (centreReesComponent (R := nodeSurface) nodeCentre) nodeSpecial
      (numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0)
      nodeDenom 1 hdeg hpow

/-- Surface scalars and the three ratios generate the special chart. -/
noncomputable def nodeChartRatio :
    MvPolynomial (Fin 3) nodeSurface →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  nodeSpecialAway.comp nodeIntegralRatio

theorem nodeChartRatio_surjective : Function.Surjective nodeChartRatio :=
  nodeSpecialAway_surjective.comp nodeIntegralRatio_surjective

private lemma nodeReesConst_algebraMap (r : nodeSurface) :
    numeralReesConst valuationOneCurve 0 0 r =
      algebraMap nodeSurface (reesAlgebra nodeCentre) r := by
  apply Subtype.ext
  simp [numeralReesConst, centreReesMonomial]

private lemma nodeIntegralRatio_C (r : nodeSurface) :
    nodeIntegralRatio (MvPolynomial.C r) =
      homogeneousScalarAway (centreReesComponent nodeCentre) nodeDenom r := by
  rw (config := { transparency := .default })
    [nodeIntegralRatio, centreReesRatioPolynomialMap, MvPolynomial.eval₂Hom_C]
  rfl

theorem nodeChartRatio_C (r : nodeSurface) :
    nodeChartRatio (MvPolynomial.C r) = chartConst valuationOneCurve 0 0 r := by
  let M := Submonoid.powers
    (Ideal.Quotient.mk nodeSpecial (numeralReesXT valuationOneCurve 0 0))
  apply HomogeneousLocalization.val_injective M
  rw [nodeChartRatio, RingHom.comp_apply, nodeIntegralRatio_C]
  rw (config := { transparency := .default })
    [nodeSpecialAway, homogeneousQuotientAwayMap, homogeneousScalarAway,
      gradedLocalizationMap_mk]
  simp [chartConst, HomogeneousLocalization.val_mk, nodeReesConst_algebraMap]

private lemma nodeIntegralRatio_X (i : Fin 3) :
    nodeIntegralRatio (MvPolynomial.X i) =
      centreReesNormalizedFraction nodeCentre (nodeGenerator 1) (nodeGenerator_mem 1) 1
        (nodeGenerator i) (by simpa [pow_one] using nodeGenerator_mem i) := by
  rw (config := { transparency := .default })
    [nodeIntegralRatio, centreReesRatioPolynomialMap, MvPolynomial.eval₂Hom_X']

private lemma nodeDenom_pow_one :
    nodeDenom ^ 1 = nodeDenom := pow_one _

theorem nodeChartRatio_X0 :
    nodeChartRatio (MvPolynomial.X 0) =
      chart_two_over_X valuationOneCurve 0 0 := by
  rw [nodeChartRatio, RingHom.comp_apply, nodeIntegralRatio_X]
  let M := Submonoid.powers
    (Ideal.Quotient.mk nodeSpecial (numeralReesXT valuationOneCurve 0 0))
  apply HomogeneousLocalization.val_injective M
  simp only [nodeSpecialAway, homogeneousQuotientAwayMap, centreReesNormalizedFraction,
    chart_two_over_X, HomogeneousLocalization.val_mk, nodeGenerator, numeralReesTwo,
    centreReesMonomial, pow_one]
  delta gradedLocalizationMap
  conv_lhs => whnf
  rfl

theorem nodeChartRatio_X2 :
    nodeChartRatio (MvPolynomial.X 2) =
      chart_Y_over_X valuationOneCurve 0 0 := by
  rw [nodeChartRatio, RingHom.comp_apply, nodeIntegralRatio_X]
  let M := Submonoid.powers
    (Ideal.Quotient.mk nodeSpecial (numeralReesXT valuationOneCurve 0 0))
  apply HomogeneousLocalization.val_injective M
  simp only [nodeSpecialAway, homogeneousQuotientAwayMap, centreReesNormalizedFraction,
    chart_Y_over_X, HomogeneousLocalization.val_mk, nodeGenerator, numeralReesYT,
    centreReesMonomial, pow_one]
  delta gradedLocalizationMap
  conv_lhs => whnf
  rfl

theorem nodeChartRatio_X1 :
    nodeChartRatio (MvPolynomial.X 1) = 1 := by
  rw [nodeChartRatio, RingHom.comp_apply, nodeIntegralRatio_X]
  let M := Submonoid.powers
    (Ideal.Quotient.mk nodeSpecial (numeralReesXT valuationOneCurve 0 0))
  apply HomogeneousLocalization.val_injective M
  simp only [nodeSpecialAway, homogeneousQuotientAwayMap, centreReesNormalizedFraction,
    HomogeneousLocalization.val_mk, HomogeneousLocalization.val_one, nodeGenerator,
    centreReesMonomial, pow_one]
  delta gradedLocalizationMap
  conv_lhs => whnf
  let x : (reesAlgebra nodeCentre) ⧸ nodeSpecial :=
    Ideal.Quotient.mk nodeSpecial (numeralReesXT valuationOneCurve 0 0)
  have hx : x ∈ M := ⟨1, pow_one x⟩
  change Localization.mk x ⟨x, hx⟩ = 1
  exact Localization.mk_self (⟨x, hx⟩ : M)

private lemma coeffModTwoEquiv_mk (s : S) :
    coeffModTwoEquiv (Ideal.Quotient.mk (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) s) =
      MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) s := by
  rw [coeffModTwoEquiv, RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
    RingHom.quotientKerEquivOfSurjective, RingHom.quotientKerEquivOfRightInverse.apply,
    RingHom.kerLift_mk]

private lemma chartScalar_eq_fromF2 (c : S) :
    chartScalar valuationOneCurve 0 0 c =
      chartFromF2Polynomial valuationOneCurve 0 0
        (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) c) := by
  rw [chartFromF2Polynomial, RingHom.comp_apply]
  have heq :
      coeffModTwoEquiv.symm
          (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) c) =
        Ideal.Quotient.mk (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) c := by
    apply coeffModTwoEquiv.injective
    rw [coeffModTwoEquiv.apply_symm_apply, coeffModTwoEquiv_mk]
  have hcoe :
      (coeffModTwoEquiv.symm.toRingHom)
          (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) c) =
        coeffModTwoEquiv.symm
          (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) c) := rfl
  rw [hcoe, heq, chartScalarModTwo, Ideal.Quotient.lift_mk]

noncomputable def coeffToF2 (q : MvPolynomial (Fin 2) S) :
    MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.map (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)) q

noncomputable def embedXY
    (q : MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2))) :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.rename (Fin.castAdd 2) q

private lemma chart_X_eq_const :
    chart_X valuationOneCurve 0 0 =
      chartConst valuationOneCurve 0 0
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X 0)) := by
  have hX : surfaceNumeralX valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X 0) := by
    simp [surfaceNumeralX, sub_zero]
  let M := Submonoid.powers
    (Ideal.Quotient.mk nodeSpecial (numeralReesXT valuationOneCurve 0 0))
  apply HomogeneousLocalization.val_injective M
  simp [chart_X, chartConst, HomogeneousLocalization.val_mk, hX, numeralReesConst]

private lemma chart_Y_eq_const :
    chart_Y valuationOneCurve 0 0 =
      chartConst valuationOneCurve 0 0
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X 1)) := by
  have hY : surfaceNumeralY valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X 1) := by
    simp [surfaceNumeralY, sub_zero]
  let M := Submonoid.powers
    (Ideal.Quotient.mk nodeSpecial (numeralReesXT valuationOneCurve 0 0))
  apply HomogeneousLocalization.val_injective M
  simp [chart_Y, chartConst, HomogeneousLocalization.val_mk, hY, numeralReesConst]

private lemma chartModelEval_embed_X (i : Fin 2) :
    chartModelEval (embedXY (MvPolynomial.X i)) =
      chartConst valuationOneCurve 0 0
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X i)) := by
  fin_cases i
  · have hcast : (Fin.castAdd 2 (0 : Fin 2) : Fin 4) = 0 := rfl
    simp [embedXY, chartModelEval, hcast, chart_X_eq_const]
  · have hcast : (Fin.castAdd 2 (1 : Fin 2) : Fin 4) = 1 := rfl
    simp [embedXY, chartModelEval, hcast, chart_Y_eq_const]

theorem chartConst_mk_polynomial (q : MvPolynomial (Fin 2) S) :
    chartConst valuationOneCurve 0 0
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve}) q) =
      chartModelEval (embedXY (coeffToF2 q)) := by
  let φ : MvPolynomial (Fin 2) S →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    (chartConstHom valuationOneCurve 0 0).comp
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve}))
  let ψ : MvPolynomial (Fin 2) S →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chartModelEval.comp
      (((MvPolynomial.rename (Fin.castAdd 2)).toRingHom).comp
        (MvPolynomial.map (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))))
  have hφψ : φ = ψ := by
    apply MvPolynomial.ringHom_ext
    · intro c
      simp only [φ, ψ, RingHom.comp_apply, coeffToF2, embedXY, MvPolynomial.map_C,
        MvPolynomial.rename_C, chartModelEval, MvPolynomial.eval₂Hom_C]
      have hmk : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.C c) = algebraMap S nodeSurface c := by
        rw [IsScalarTower.algebraMap_apply S (MvPolynomial (Fin 2) S) nodeSurface,
          MvPolynomial.algebraMap_eq, Ideal.Quotient.algebraMap_eq]
      rw [hmk]
      change (chartScalar valuationOneCurve 0 0) c = _
      rw [chartScalar_eq_fromF2]
      rw (config := { transparency := .default })
        [MvPolynomial.rename_C, MvPolynomial.eval₂Hom_C]
    · intro i
      simp only [φ, ψ, RingHom.comp_apply, MvPolynomial.map_X, MvPolynomial.rename_X]
      exact (chartModelEval_embed_X i).symm
  simpa [φ, ψ, coeffToF2, embedXY] using congrFun (congrArg DFunLike.coe hφψ) q

private lemma chartModelEval_X (i : Fin 4) :
    chartModelEval (MvPolynomial.X i) =
      (if i = 0 then chart_X valuationOneCurve 0 0
        else if i = 1 then chart_Y valuationOneCurve 0 0
        else if i = 2 then chart_two_over_X valuationOneCurve 0 0
        else chart_Y_over_X valuationOneCurve 0 0) := by
  simp [chartModelEval]

theorem nodeChartRatio_mem_model (q : MvPolynomial (Fin 3) nodeSurface) :
    ∃ p : MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)),
      chartModelEval p = nodeChartRatio q := by
  induction q using MvPolynomial.induction_on with
  | h_C r =>
      obtain ⟨poly, rfl⟩ :=
        Ideal.Quotient.mk_surjective (I := Ideal.span {surfacePolynomial valuationOneCurve}) r
      refine ⟨embedXY (coeffToF2 poly), ?_⟩
      rw [nodeChartRatio_C, chartConst_mk_polynomial]
  | h_add p q hp hq =>
      obtain ⟨p', hp'⟩ := hp
      obtain ⟨q', hq'⟩ := hq
      refine ⟨p' + q', ?_⟩
      rw [map_add, map_add, hp', hq']
  | h_X p i hp =>
      obtain ⟨p', hp'⟩ := hp
      fin_cases i
      · refine ⟨p' * MvPolynomial.X 2, ?_⟩
        rw [map_mul, hp', map_mul]
        rw (config := { transparency := .default }) [nodeChartRatio_X0, chartModelEval_X]
        simp
      · refine ⟨p', ?_⟩
        rw [map_mul]
        rw (config := { transparency := .default }) [nodeChartRatio_X1]
        rw [mul_one, hp']
      · refine ⟨p' * MvPolynomial.X 3, ?_⟩
        rw [map_mul, hp', map_mul]
        rw (config := { transparency := .default }) [nodeChartRatio_X2, chartModelEval_X]
        simp

theorem chartModelEval_surjective : Function.Surjective chartModelEval := by
  intro z
  obtain ⟨q, rfl⟩ := nodeChartRatio_surjective z
  obtain ⟨p, hp⟩ := nodeChartRatio_mem_model q
  exact ⟨p, hp⟩

/-- The chart `D₊(Xt)` is generated by `a`, `b`, `X`, `Y`, `U`, and `V`
modulo `X·U = 0`, `Y = X·V`, `Y² = X³`, and `U² = 0`. -/
theorem chartOfModelBase_surjective : Function.Surjective chartOfModelBase := by
  intro z
  obtain ⟨p, hp⟩ := chartModelEval_surjective z
  exact ⟨Ideal.Quotient.mk modelBaseRelationIdeal p, by
    simpa [chartOfModelBase] using hp⟩

end NodeChart

private lemma chartModelEval_nodeKer_le :
    Ideal.map chartModelEval (RingHom.ker modelBaseEvalNode) ≤
      ideal_ABXYUV valuationOneCurve 0 0 := by
  rw [modelBaseEvalNode_ker, Ideal.map_sup]
  refine sup_le ?_ ?_
  · rw [Ideal.map_span, Ideal.span_le]
    intro z hz
    simp only [Set.mem_image, Set.mem_univ, true_and] at hz
    obtain ⟨w, ⟨i, rfl⟩, rfl⟩ := hz
    rw [ideal_ABXYUV_eq_span_AB_X_UV]
    fin_cases i
    · simp [chartModelEval]
      exact Ideal.subset_span (by simp)
    · simp [chartModelEval, chart_Y_eq_chart_X_mul_Y_over_X]
      exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
    · simp [chartModelEval]
      exact Ideal.subset_span (by simp)
    · simp [chartModelEval]
      exact Ideal.subset_span (by simp)
  · rw [Ideal.map_span, Ideal.span_le]
    intro z hz
    simp only [Set.mem_image, Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    obtain ⟨w, hw, rfl⟩ := hz
    rw [ideal_ABXYUV]
    rcases hw with rfl | rfl
    · simp [chartModelEval]
      exact Ideal.subset_span (by simp)
    · simp [chartModelEval]
      exact Ideal.subset_span (by simp)

/-- Surjectivity of the model map identifies the kernel of the node
evaluation with `⟨a, b, X, Y, U, V⟩`. -/
theorem ker_eq_ideal_ABXYUV_holds : ker_eq_ideal_ABXYUV := by
  rw [ker_eq_ideal_ABXYUV]
  apply le_antisymm
  · intro f hf
    obtain ⟨q, hq⟩ := chartOfModelBase_surjective f
    obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective q
    have hf' : chartModelEval p = f := by
      simpa [chartOfModelBase] using hq
    have hzero : p ∈ RingHom.ker modelBaseEvalNode := by
      rw [RingHom.mem_ker, ← chartNodeHom_comp_chartModelEval, RingHom.comp_apply, hf']
      simpa [RingHom.mem_ker] using hf
    rw [← hf']
    exact chartModelEval_nodeKer_le (Ideal.mem_map_of_mem _ hzero)
  · exact ker_contains_ABXYUV

/-- The quotient of the chart by `⟨a, b, X, Y, U, V⟩` is `𝔽₂`. -/
theorem ideal_ABXYUV_quotient_F2_holds : ideal_ABXYUV_quotient_F2 :=
  ideal_ABXYUV_quotient_F2_of_ker_eq ker_eq_ideal_ABXYUV_holds

#print axioms Beal.MathlibMissing.chartOfModelBase_surjective
#print axioms Beal.MathlibMissing.ker_eq_ideal_ABXYUV
#print axioms Beal.MathlibMissing.ker_eq_ideal_ABXYUV_holds
#print axioms Beal.MathlibMissing.ideal_ABXYUV_quotient_F2_holds

end Beal.MathlibMissing
