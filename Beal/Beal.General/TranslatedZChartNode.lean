import Beal.«Beal.General».TateEisenstein
import Beal.«Beal.General».TateI1MinimalRegularModel

/-!
Relate the translated local surface used by the valuation-one
Eisenstein argument to the actual integral `Z = 1` chart.
-/

namespace Beal.General

/-- Translation by `(x,y)` in the two affine coordinates of the
integral polynomial ring. -/
noncomputable def weierstrassCoordinateShift (x y : ℤ_[2]) :
    MvPolynomial (Fin 2) ℤ_[2] ≃ₐ[ℤ_[2]]
      MvPolynomial (Fin 2) ℤ_[2] :=
  AlgEquiv.ofAlgHom
    (MvPolynomial.aeval
      ![MvPolynomial.C x + MvPolynomial.X 0,
        MvPolynomial.C y + MvPolynomial.X 1])
    (MvPolynomial.aeval
      ![MvPolynomial.X 0 - MvPolynomial.C x,
        MvPolynomial.X 1 - MvPolynomial.C y])
    (by ext i; fin_cases i <;> simp)
    (by ext i; fin_cases i <;> simp)

/-- The shift carries the dehomogenized `Z = 1` equation to
the integral translated equation, not just to its reduction. -/
theorem weierstrassCoordinateShift_equation
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    weierstrassCoordinateShift x y (localSurfaceEquation W 0 0) =
      localSurfaceEquation W x y := by
  simp [weierstrassCoordinateShift, localSurfaceEquation,
    localWeierstrassEquation, WeierstrassCurve.map]

/-- The actual `Z = 1` coordinate ring and its translated local
surface are isomorphic over the integral base. -/
noncomputable def projectiveWeierstrassZChart_shiftEquiv
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    projectiveWeierstrassZChartRing W ≃ₐ[ℤ_[2]]
      localSurfaceCoordinateRing W x y := by
  apply Ideal.quotientEquivAlg
    (Ideal.span {localSurfaceEquation W 0 0})
    (Ideal.span {localSurfaceEquation W x y})
    (weierstrassCoordinateShift x y)
  rw [Ideal.map_span]
  simp only [Set.image_singleton]
  congr 1
  exact congrArg (fun z => ({z} : Set _))
    (weierstrassCoordinateShift_equation W x y).symm

/-- The prime of the original affine chart corresponding to a
prime of the translated surface under coordinate translation. -/
noncomputable def projectiveWeierstrassZChart_shiftPrime
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (P : Ideal (localSurfaceCoordinateRing W x y)) :
    Ideal (projectiveWeierstrassZChartRing W) :=
  P.comap (projectiveWeierstrassZChart_shiftEquiv W x y).toRingEquiv.toRingHom

/-- Equivalences of rings preserve the local rings at corresponding
prime ideals. -/
private noncomputable def localRingEquivOfRingEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    (e : A ≃+* B) (P : Ideal B) [P.IsPrime] :
    let Q := P.comap e.toRingHom
    letI : Q.IsPrime := Ideal.comap_isPrime e.toRingHom P
    Localization.AtPrime Q ≃+* Localization.AtPrime P := by
  let Q := P.comap e.toRingHom
  letI : Q.IsPrime := Ideal.comap_isPrime e.toRingHom P
  have hmon : Q.primeCompl.map e.toMonoidHom = P.primeCompl := by
    ext z
    constructor
    · rintro ⟨a, ha, rfl⟩
      change e a ∉ P at ha
      exact ha
    · intro hz
      refine ⟨e.symm z, ?_, e.apply_symm_apply z⟩
      change e (e.symm z) ∉ P
      simpa using hz
  exact IsLocalization.ringEquivOfRingEquiv _ _ e hmon

private theorem maximalIdeal_map_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    [LocalRing A] [LocalRing B] (e : A ≃+* B) :
    Ideal.map e.toRingHom (LocalRing.maximalIdeal A) =
      LocalRing.maximalIdeal B := by
  have hc : LocalRing.maximalIdeal A =
      Ideal.comap e.toRingHom (LocalRing.maximalIdeal B) := by
    ext z
    simp only [Ideal.mem_comap, LocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact e.isUnit_iff.symm.not
  rw [hc]
  exact Ideal.map_comap_of_surjective e.toRingHom e.surjective _

/-- Localizing the `Z = 1` chart at the translated prime yields
exactly the corresponding localized surface ring. -/
noncomputable def projectiveWeierstrassZChart_shiftLocalEquiv
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (P : Ideal (localSurfaceCoordinateRing W x y)) [P.IsPrime] :
    let Q := projectiveWeierstrassZChart_shiftPrime W x y P
    letI : Q.IsPrime := Ideal.comap_isPrime
      (projectiveWeierstrassZChart_shiftEquiv W x y).toRingEquiv.toRingHom P
    Localization.AtPrime Q ≃+* Localization.AtPrime P :=
  localRingEquivOfRingEquiv
    (projectiveWeierstrassZChart_shiftEquiv W x y).toRingEquiv P

/-- The valuation-one node has dimension two in the *actual*
`Z = 1` affine chart, not only in the auxiliary translated ring.
The prime is transported along the explicit coordinate translation. -/
theorem valOne_ZChart_node_ringKrullDim_eq_two
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let P := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let Q := projectiveWeierstrassZChart_shiftPrime W W.a₃
      (W.a₃ ^ 2 + W.a₄) P
    letI : Q.IsPrime := Ideal.comap_isPrime
      (projectiveWeierstrassZChart_shiftEquiv W W.a₃
        (W.a₃ ^ 2 + W.a₄)).toRingEquiv.toRingHom P
    ringKrullDim (Localization.AtPrime Q) = 2 := by
  let P := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let Q := projectiveWeierstrassZChart_shiftPrime W W.a₃
    (W.a₃ ^ 2 + W.a₄) P
  letI : Q.IsPrime := Ideal.comap_isPrime
    (projectiveWeierstrassZChart_shiftEquiv W W.a₃
      (W.a₃ ^ 2 + W.a₄)).toRingEquiv.toRingHom P
  exact (projectiveWeierstrassZChart_shiftLocalEquiv W W.a₃
    (W.a₃ ^ 2 + W.a₄) P).ringKrullDim.trans
      (valOne_local_surface_ringKrullDim_eq_two W hnode hΔ hval)

/-- The localization of the actual affine `Z = 1` coordinate ring
at the valuation-one node is Noetherian and two-dimensional, and
its maximal ideal requires exactly two generators. This is the
regular-parameter criterion at this one chart prime, not
all-stalk regularity of `Proj`. -/
theorem valOne_ZChart_node_regular_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let P := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let Q := projectiveWeierstrassZChart_shiftPrime W W.a₃
      (W.a₃ ^ 2 + W.a₄) P
    letI : Q.IsPrime := Ideal.comap_isPrime
      (projectiveWeierstrassZChart_shiftEquiv W W.a₃
        (W.a₃ ^ 2 + W.a₄)).toRingEquiv.toRingHom P
    let L := Localization.AtPrime Q
    IsNoetherianRing L ∧ ringKrullDim L = 2 ∧
      ∃ a b : L, LocalRing.maximalIdeal L = Ideal.span {a, b} ∧
        ∀ t : L, LocalRing.maximalIdeal L ≠ Ideal.span {t} := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let Q := projectiveWeierstrassZChart_shiftPrime W W.a₃
    (W.a₃ ^ 2 + W.a₄) P
  letI : Q.IsPrime := Ideal.comap_isPrime
    (projectiveWeierstrassZChart_shiftEquiv W W.a₃
      (W.a₃ ^ 2 + W.a₄)).toRingEquiv.toRingHom P
  let L := Localization.AtPrime Q
  let T := Localization.AtPrime P
  let e : L ≃+* T := projectiveWeierstrassZChart_shiftLocalEquiv W W.a₃
    (W.a₃ ^ 2 + W.a₄) P
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk
      (Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective
      (MvPolynomial (Fin 2) ℤ_[2]) R q Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing T :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  haveI : IsNoetherianRing L := isNoetherianRing_of_ringEquiv T e.symm
  obtain ⟨_, hspan, hnon⟩ :=
    valOne_local_surface_regular_parameters W hnode hΔ hval
  let a : T := (algebraMap R T) (q (MvPolynomial.X 0))
  let b : T := (algebraMap R T) (q (MvPolynomial.X 1))
  refine ⟨inferInstance, valOne_ZChart_node_ringKrullDim_eq_two W hnode hΔ hval,
    e.symm a, e.symm b, ?_, ?_⟩
  · calc
      LocalRing.maximalIdeal L =
          Ideal.map e.symm.toRingHom (LocalRing.maximalIdeal T) :=
        (maximalIdeal_map_of_ringEquiv e.symm).symm
      _ = Ideal.map e.symm.toRingHom (Ideal.span {a, b}) := by
        rw [hspan]
      _ = Ideal.span {e.symm a, e.symm b} := by
        simp only [Ideal.map_span, Set.image_insert_eq, Set.image_singleton]
        rfl
  · intro t ht
    apply hnon (e t)
    calc
      LocalRing.maximalIdeal T =
          Ideal.map e.toRingHom (LocalRing.maximalIdeal L) :=
        (maximalIdeal_map_of_ringEquiv e).symm
      _ = Ideal.map e.toRingHom (Ideal.span {t}) := by rw [ht]
      _ = Ideal.span {e t} := by
        simp only [Ideal.map_span, Set.image_singleton]
        rfl

end Beal.General