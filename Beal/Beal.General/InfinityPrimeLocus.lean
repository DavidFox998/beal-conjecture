import Beal.«Beal.General».InfinityChartJacobian

/-!
Prime-ideal support of the `V = Z/Y = 0` boundary in the actual
integral `Y = 1` chart. The boundary need not be reduced: the
equation gives `U³` in `(V)`, not necessarily `U` in `(V)`.
-/

namespace Beal.General

/-- The factor `H` in the integral `Y = 1` identity `U³ = V * H - g`.
It restricts to `1` on the infinity section `U = V = 0`. -/
noncomputable def weierstrassInfinityUnitFactor
    (W : WeierstrassCurve ℤ_[2]) : MvPolynomial (Fin 2) ℤ_[2] :=
  let U : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 0
  let V : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 1
  1 + MvPolynomial.C W.a₁ * U + MvPolynomial.C W.a₃ * V -
    MvPolynomial.C W.a₂ * U ^ 2 -
    MvPolynomial.C W.a₄ * U * V -
    MvPolynomial.C W.a₆ * V ^ 2

/-- The identity `U³ = V * H` holds in the actual integral
`Y = 1` coordinate ring. -/
theorem weierstrassYChart_U_cube_eq_V_mul_factor
    (W : WeierstrassCurve ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        projectiveWeierstrassYChartRing W :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    q (MvPolynomial.X (0 : Fin 2)) ^ 3 =
      q (MvPolynomial.X (1 : Fin 2)) *
        q (weierstrassInfinityUnitFactor W) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let U : S := MvPolynomial.X 0
  let V : S := MvPolynomial.X 1
  let H : S := weierstrassInfinityUnitFactor W
  let q : S →+* projectiveWeierstrassYChartRing W :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  have heq : U ^ 3 = V * H - weierstrassInfinityChartEquation W := by
    dsimp [H, weierstrassInfinityUnitFactor,
      weierstrassInfinityChartEquation, U, V]
    ring
  have hg : q (weierstrassInfinityChartEquation W) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.subset_span (Set.mem_singleton _))
  change q U ^ 3 = q V * q H
  rw [← map_pow, heq, map_sub, map_mul, hg, sub_zero]

/-- In the actual `Y = 1` coordinate ring, `U³` is divisible by
`V`. This is the full integral equation, before any base change. -/
theorem weierstrassYChart_U_cube_mem_V
    (W : WeierstrassCurve ℤ_[2]) :
    let S := MvPolynomial (Fin 2) ℤ_[2]
    let q : S →+* projectiveWeierstrassYChartRing W :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    q (MvPolynomial.X (0 : Fin 2)) ^ 3 ∈
      Ideal.span {q (MvPolynomial.X (1 : Fin 2))} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let U : S := MvPolynomial.X 0
  let V : S := MvPolynomial.X 1
  let q : S →+* projectiveWeierstrassYChartRing W :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  change q U ^ 3 ∈ Ideal.span {q V}
  rw [weierstrassYChart_U_cube_eq_V_mul_factor W]
  exact (Ideal.span {q V}).mul_mem_right
    (q (weierstrassInfinityUnitFactor W))
    (Ideal.subset_span (Set.mem_singleton _))

/-- Every prime of the integral `Y = 1` chart containing `V`
also contains `U`: there is no additional prime of the support
of the infinity boundary away from its section over the base. -/
theorem weierstrassYChart_U_mem_of_V_mem
    (W : WeierstrassCurve ℤ_[2])
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime]
    (hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∈ P) :
    (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (0 : Fin 2)) ∈ P := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      projectiveWeierstrassYChartRing W :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  have hle : Ideal.span {q (MvPolynomial.X (1 : Fin 2))} ≤ P :=
    (Ideal.span_singleton_le_iff_mem P).mpr hV
  have hcube : q (MvPolynomial.X (0 : Fin 2)) ^ 3 ∈ P :=
    hle (weierstrassYChart_U_cube_mem_V W)
  exact (inferInstance : P.IsPrime).mem_of_pow_mem 3 hcube

/-- The factor `H` is outside every infinity-boundary prime.
It therefore becomes a unit in the corresponding local ring. -/
theorem weierstrassYChart_unitFactor_isUnit_at_infinity_prime
    (W : WeierstrassCurve ℤ_[2])
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime]
    (hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∈ P) :
    IsUnit ((algebraMap
      (projectiveWeierstrassYChartRing W) (Localization.AtPrime P))
      ((Ideal.Quotient.mk
        (Ideal.span {weierstrassInfinityChartEquation W}))
        (weierstrassInfinityUnitFactor W))) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := projectiveWeierstrassYChartRing W
  let U : S := MvPolynomial.X 0
  let V : S := MvPolynomial.X 1
  let H : S := weierstrassInfinityUnitFactor W
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  have hU : q U ∈ P :=
    weierstrassYChart_U_mem_of_V_mem W P hV
  have hfactor :
      H = 1 + U *
        (MvPolynomial.C W.a₁ - MvPolynomial.C W.a₂ * U -
          MvPolynomial.C W.a₄ * V) +
        V * (MvPolynomial.C W.a₃ - MvPolynomial.C W.a₆ * V) := by
    dsimp [H, weierstrassInfinityUnitFactor, U, V]
    ring
  have hq := congrArg q hfactor
  simp only [map_add, map_mul, map_one] at hq
  have hdiff : q H - 1 ∈ P := by
    rw [hq]
    have hleft : q U *
        q (MvPolynomial.C W.a₁ - MvPolynomial.C W.a₂ * U -
          MvPolynomial.C W.a₄ * V) ∈ P :=
      P.mul_mem_right _ hU
    have hright : q V *
        q (MvPolynomial.C W.a₃ - MvPolynomial.C W.a₆ * V) ∈ P :=
      P.mul_mem_right _ hV
    convert P.add_mem hleft hright using 1
    ring
  have hnot : q H ∉ P := by
    intro h
    have hOne : (1 : R) ∈ P := by
      convert P.sub_mem h hdiff using 1
      ring
    exact (inferInstance : P.IsPrime).ne_top
      ((Ideal.eq_top_iff_one P).mpr hOne)
  exact (IsLocalization.AtPrime.isUnit_to_map_iff
    (S := Localization.AtPrime P) P (q H)).mpr hnot

/-- At every prime on the infinity boundary, `V` is in the
principal ideal generated by `U` after localization. This uses
the integral identity `U³ = V * H` and the unit factor `H`. -/
theorem weierstrassYChart_V_mem_span_U_at_infinity_prime
    (W : WeierstrassCurve ℤ_[2])
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime]
    (hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∈ P) :
    let R := projectiveWeierstrassYChartRing W
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    (algebraMap R L) (q (MvPolynomial.X (1 : Fin 2))) ∈
      Ideal.span {(algebraMap R L) (q (MvPolynomial.X (0 : Fin 2)))} := by
  let R := projectiveWeierstrassYChartRing W
  let L := Localization.AtPrime P
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let f : R →+* L := algebraMap R L
  let u : L := f (q (MvPolynomial.X (0 : Fin 2)))
  let v : L := f (q (MvPolynomial.X (1 : Fin 2)))
  let h : L := f (q (weierstrassInfinityUnitFactor W))
  have hunit : IsUnit h :=
    weierstrassYChart_unitFactor_isUnit_at_infinity_prime W P hV
  have heq : u ^ 3 = v * h := by
    simpa only [map_pow, map_mul] using
      congrArg f (weierstrassYChart_U_cube_eq_V_mul_factor W)
  have hcube : u ^ 3 ∈ Ideal.span {u} :=
    (Ideal.span {u}).pow_mem_of_mem
      (Ideal.mem_span_singleton_self u) 3 (by decide)
  change v ∈ Ideal.span {u}
  apply (Ideal.mul_unit_mem_iff_mem (Ideal.span {u}) hunit).mp
  rw [← heq]
  exact hcube

end Beal.General