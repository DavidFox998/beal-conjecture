import Beal.«Beal.General».YChartOverlapEquation

/-!
Coordinate maps between the two actual affine charts on the open
where both `Y` and `Z` are nonzero. On `Z = 1` the inverted
coordinate is `y = Y/Z`, not `x = X/Z`.
-/

namespace Beal.General

set_option maxHeartbeats 800000

/-- Substitute `U = x/y`, `V = 1/y` in the actual `Y = 1` quotient
and evaluate in the `Z = 1` chart with `y` inverted. -/
noncomputable def projectiveWeierstrassYChart_to_ZAway
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassYChartRing W →+*
      Localization.Away
        ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
          (MvPolynomial.X (1 : Fin 2))) := by
  let R := projectiveWeierstrassZChartRing W
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  let y : R := q (MvPolynomial.X (1 : Fin 2))
  let A := Localization.Away y
  let i : R →+* A := algebraMap R A
  let x : A := i (q (MvPolynomial.X (0 : Fin 2)))
  let ya : A := i y
  let hy : IsUnit ya := IsLocalization.Away.algebraMap_isUnit (S := A) y
  let z : A := (hy.unit⁻¹ : Aˣ)
  have hyz : ya * z = 1 := by
    change (hy.unit : A) * (hy.unit⁻¹ : Aˣ) = 1
    exact Units.mul_inv _
  let k : ℤ_[2] →+* A := i.comp (algebraMap ℤ_[2] R)
  let f : MvPolynomial (Fin 2) ℤ_[2] →+* A :=
    MvPolynomial.eval₂Hom k (fun j => if j = 0 then x * z else z)
  have heval : MvPolynomial.eval₂Hom k
      (fun j : Fin 2 => if j = 0 then x else ya) = i.comp q := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp only [MvPolynomial.eval₂Hom_C, RingHom.comp_apply]
      change i (algebraMap ℤ_[2] R a) = i (q (MvPolynomial.C a))
      rfl
    · intro j
      fin_cases j <;> simp [x, ya, y, q, i]
  have hZ : MvPolynomial.eval₂ k
      (fun j : Fin 2 => if j = 0 then x else ya)
      (localSurfaceEquation W 0 0) = 0 := by
    change (MvPolynomial.eval₂Hom k
      (fun j : Fin 2 => if j = 0 then x else ya))
      (localSurfaceEquation W 0 0) = 0
    rw [heval]
    change i (q (localSurfaceEquation W 0 0)) = 0
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.mem_span_singleton_self _), map_zero]
  have hF : f (weierstrassInfinityChartEquation W) = 0 := by
    have h := projectiveWeierstrass_overlap_equation
      W k x ya z hyz
    rw [hZ] at h
    change f (weierstrassInfinityChartEquation W) * ya ^ 3 = 0 at h
    exact (hy.pow 3).mul_right_cancel
      (h.trans (zero_mul (ya ^ 3)).symm)
  apply Ideal.Quotient.lift
    (Ideal.span {weierstrassInfinityChartEquation W}) f
  intro p hp
  obtain ⟨t, rfl⟩ := (Ideal.mem_span_singleton).mp hp
  rw [map_mul, hF]
  change (0 : A) * f t = 0
  exact zero_mul (f t)

/-- Substitute `x = U/V`, `y = 1/V` in the actual `Z = 1`
quotient and evaluate in the `Y = 1` chart with `V` inverted. -/
noncomputable def projectiveWeierstrassZChart_to_YAway
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassZChartRing W →+*
      Localization.Away
        ((Ideal.Quotient.mk
          (Ideal.span {weierstrassInfinityChartEquation W}))
          (MvPolynomial.X (1 : Fin 2))) := by
  let S := projectiveWeierstrassYChartRing W
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* S :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let v : S := q (MvPolynomial.X (1 : Fin 2))
  let B := Localization.Away v
  let i : S →+* B := algebraMap S B
  let u : B := i (q (MvPolynomial.X (0 : Fin 2)))
  let vb : B := i v
  let hv : IsUnit vb := IsLocalization.Away.algebraMap_isUnit (S := B) v
  let w : B := (hv.unit⁻¹ : Bˣ)
  have hvw : vb * w = 1 := by
    change (hv.unit : B) * (hv.unit⁻¹ : Bˣ) = 1
    exact Units.mul_inv _
  let k : ℤ_[2] →+* B := i.comp (algebraMap ℤ_[2] S)
  let f : MvPolynomial (Fin 2) ℤ_[2] →+* B :=
    MvPolynomial.eval₂Hom k (fun j => if j = 0 then u * w else w)
  have heval : MvPolynomial.eval₂Hom k
      (fun j : Fin 2 => if j = 0 then u else vb) = i.comp q := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp only [MvPolynomial.eval₂Hom_C, RingHom.comp_apply]
      change i (algebraMap ℤ_[2] S a) = i (q (MvPolynomial.C a))
      rfl
    · intro j
      fin_cases j <;> simp [u, vb, v, q, i]
  have hY : MvPolynomial.eval₂ k
      (fun j : Fin 2 => if j = 0 then u else vb)
      (weierstrassInfinityChartEquation W) = 0 := by
    change (MvPolynomial.eval₂Hom k
      (fun j : Fin 2 => if j = 0 then u else vb))
      (weierstrassInfinityChartEquation W) = 0
    rw [heval]
    change i (q (weierstrassInfinityChartEquation W)) = 0
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.mem_span_singleton_self _), map_zero]
  have hF : f (localSurfaceEquation W 0 0) = 0 := by
    have h := projectiveWeierstrass_overlap_equation_reverse
      W k u vb w hvw
    rw [hY] at h
    change f (localSurfaceEquation W 0 0) * vb ^ 3 = 0 at h
    exact (hv.pow 3).mul_right_cancel
      (h.trans (zero_mul (vb ^ 3)).symm)
  apply Ideal.Quotient.lift
    (Ideal.span {localSurfaceEquation W 0 0}) f
  intro p hp
  obtain ⟨t, rfl⟩ := (Ideal.mem_span_singleton).mp hp
  rw [map_mul, hF]
  change (0 : B) * f t = 0
  exact zero_mul (f t)

/-- The forward substitution fixes the base coefficients. -/
theorem projectiveWeierstrassYChart_to_ZAway_C
    (W : WeierstrassCurve ℤ_[2]) (a : ℤ_[2]) :
    let R := projectiveWeierstrassZChartRing W
    let S := projectiveWeierstrassYChartRing W
    let qZ : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    let qY : MvPolynomial (Fin 2) ℤ_[2] →+* S :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let A := Localization.Away (qZ (MvPolynomial.X (1 : Fin 2)))
    projectiveWeierstrassYChart_to_ZAway W (qY (MvPolynomial.C a)) =
      (algebraMap R A) (qZ (MvPolynomial.C a)) := by
  simp only [projectiveWeierstrassYChart_to_ZAway,
    Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_C]
  rfl

/-- The reverse substitution fixes the base coefficients. -/
theorem projectiveWeierstrassZChart_to_YAway_C
    (W : WeierstrassCurve ℤ_[2]) (a : ℤ_[2]) :
    let R := projectiveWeierstrassZChartRing W
    let S := projectiveWeierstrassYChartRing W
    let qZ : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    let qY : MvPolynomial (Fin 2) ℤ_[2] →+* S :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let B := Localization.Away (qY (MvPolynomial.X (1 : Fin 2)))
    projectiveWeierstrassZChart_to_YAway W (qZ (MvPolynomial.C a)) =
      (algebraMap S B) (qY (MvPolynomial.C a)) := by
  simp only [projectiveWeierstrassZChart_to_YAway,
    Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_C]
  rfl

/-- On the `Z = 1` localization, `V = 1/y` and `U = xV`. -/
theorem projectiveWeierstrassYChart_to_ZAway_coordinates
    (W : WeierstrassCurve ℤ_[2]) :
    let R := projectiveWeierstrassZChartRing W
    let S := projectiveWeierstrassYChartRing W
    let qZ : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    let qY : MvPolynomial (Fin 2) ℤ_[2] →+* S :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let A := Localization.Away (qZ (MvPolynomial.X (1 : Fin 2)))
    let i : R →+* A := algebraMap R A
    let F := projectiveWeierstrassYChart_to_ZAway W
    F (qY (MvPolynomial.X 0)) =
        i (qZ (MvPolynomial.X 0)) *
          F (qY (MvPolynomial.X 1)) ∧
      F (qY (MvPolynomial.X 1)) *
        i (qZ (MvPolynomial.X 1)) = 1 := by
  constructor
  · simp [projectiveWeierstrassYChart_to_ZAway]
  · simp [projectiveWeierstrassYChart_to_ZAway]

/-- On the `Y = 1` localization, `y = 1/V` and `x = Uy`. -/
theorem projectiveWeierstrassZChart_to_YAway_coordinates
    (W : WeierstrassCurve ℤ_[2]) :
    let R := projectiveWeierstrassZChartRing W
    let S := projectiveWeierstrassYChartRing W
    let qZ : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    let qY : MvPolynomial (Fin 2) ℤ_[2] →+* S :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let B := Localization.Away (qY (MvPolynomial.X (1 : Fin 2)))
    let i : S →+* B := algebraMap S B
    let G := projectiveWeierstrassZChart_to_YAway W
    G (qZ (MvPolynomial.X 0)) =
        i (qY (MvPolynomial.X 0)) *
          G (qZ (MvPolynomial.X 1)) ∧
      G (qZ (MvPolynomial.X 1)) *
        i (qY (MvPolynomial.X 1)) = 1 := by
  constructor
  · simp [projectiveWeierstrassZChart_to_YAway]
  · simp [projectiveWeierstrassZChart_to_YAway]

/-- The two actual quotient charts agree after inverting
`y = Y/Z` on `Z = 1` and `V = Z/Y` on `Y = 1`. -/
noncomputable def projectiveWeierstrass_chartOverlap_equiv
    (W : WeierstrassCurve ℤ_[2]) :
    Localization.Away
        ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
          (MvPolynomial.X (1 : Fin 2))) ≃+*
      Localization.Away
        ((Ideal.Quotient.mk
          (Ideal.span {weierstrassInfinityChartEquation W}))
          (MvPolynomial.X (1 : Fin 2))) := by
  let R := projectiveWeierstrassZChartRing W
  let S := projectiveWeierstrassYChartRing W
  let qZ : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  let qY : MvPolynomial (Fin 2) ℤ_[2] →+* S :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let ry : R := qZ (MvPolynomial.X 1)
  let sv : S := qY (MvPolynomial.X 1)
  let A := Localization.Away ry
  let B := Localization.Away sv
  let iR : R →+* A := algebraMap R A
  let iS : S →+* B := algebraMap S B
  let F : S →+* A := projectiveWeierstrassYChart_to_ZAway W
  let G : R →+* B := projectiveWeierstrassZChart_to_YAway W
  have hF := projectiveWeierstrassYChart_to_ZAway_coordinates W
  have hG := projectiveWeierstrassZChart_to_YAway_coordinates W
  have hFu : IsUnit (F sv) :=
    isUnit_iff_exists_inv.mpr ⟨iR ry, hF.2⟩
  have hGu : IsUnit (G ry) :=
    isUnit_iff_exists_inv.mpr ⟨iS sv, hG.2⟩
  let e : B →+* A := IsLocalization.Away.lift (S := B) sv hFu
  let d : A →+* B := IsLocalization.Away.lift (S := A) ry hGu
  have he (s : S) : e (iS s) = F s := IsLocalization.lift_eq _ s
  have hd (r : R) : d (iR r) = G r := IsLocalization.lift_eq _ r
  have hey : e (G ry) = iR ry := by
    apply hFu.mul_right_cancel
    calc
      e (G ry) * F sv = e (G ry * iS sv) := by rw [map_mul, he]
      _ = 1 := by rw [hG.2, map_one]
      _ = iR ry * F sv := by rw [mul_comm, hF.2]
  have hdv : d (F sv) = iS sv := by
    apply hGu.mul_right_cancel
    calc
      d (F sv) * G ry = d (F sv * iR ry) := by rw [map_mul, hd]
      _ = 1 := by rw [hF.2, map_one]
      _ = iS sv * G ry := by rw [mul_comm, hG.2]
  have hex : e (G (qZ (MvPolynomial.X 0))) =
      iR (qZ (MvPolynomial.X 0)) := by
    rw [hG.1, map_mul, he, hey, hF.1, mul_assoc, hF.2, mul_one]
  have hdu : d (F (qY (MvPolynomial.X 0))) =
      iS (qY (MvPolynomial.X 0)) := by
    rw [hF.1, map_mul, hd, hdv, hG.1, mul_assoc, hG.2, mul_one]
  have heG : e.comp G = iR := by
    apply (RingHom.cancel_right (f := qZ) Ideal.Quotient.mk_surjective).mp
    apply MvPolynomial.ringHom_ext
    · intro a
      change e (G (qZ (MvPolynomial.C a))) = iR (qZ (MvPolynomial.C a))
      rw [projectiveWeierstrassZChart_to_YAway_C W a,
        he, projectiveWeierstrassYChart_to_ZAway_C W a]
    · intro j
      fin_cases j
      · change e (G (qZ (MvPolynomial.X 0))) =
          iR (qZ (MvPolynomial.X 0))
        exact hex
      · change e (G ry) = iR ry
        exact hey
  have hdF : d.comp F = iS := by
    apply (RingHom.cancel_right (f := qY) Ideal.Quotient.mk_surjective).mp
    apply MvPolynomial.ringHom_ext
    · intro a
      change d (F (qY (MvPolynomial.C a))) = iS (qY (MvPolynomial.C a))
      rw [projectiveWeierstrassYChart_to_ZAway_C W a,
        hd, projectiveWeierstrassZChart_to_YAway_C W a]
    · intro j
      fin_cases j
      · change d (F (qY (MvPolynomial.X 0))) =
          iS (qY (MvPolynomial.X 0))
        exact hdu
      · change d (F sv) = iS sv
        exact hdv
  have hed : e.comp d = RingHom.id A := by
    apply IsLocalization.ringHom_ext (R := R) (S := A) (P := A)
      (Submonoid.powers ry)
    apply RingHom.ext
    intro r
    change e (d (iR r)) = iR r
    rw [hd]
    exact congrArg (fun f : R →+* A => f r) heG
  have hde : d.comp e = RingHom.id B := by
    apply IsLocalization.ringHom_ext (R := S) (S := B) (P := B)
      (Submonoid.powers sv)
    apply RingHom.ext
    intro s
    change d (e (iS s)) = iS s
    rw [he]
    exact congrArg (fun f : S →+* B => f s) hdF
  exact RingEquiv.ofHomInv d e hed hde

end Beal.General