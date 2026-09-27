import Beal.«Beal.General».ZChartFlatness

/-!
The coefficient DVR remains visible at every generic-fibre prime
of the actual integral `Z = 1` chart. The nonzero discriminant
forces a full affine partial derivative to be a unit at each
such localization. Every nonzero base coefficient is a unit,
so each such local ring receives the base fraction field.
These are algebraic certificates, not regular-local-ring theorems.
-/

namespace Beal.General

/-- A prime of the actual `Z = 1` chart that does not contain
the base uniformizer has trivial contraction to `ℤ_[2]`.
The injection is into the actual prime quotient, rather than
only into a chosen field-valued point. -/
theorem projectiveWeierstrassZChart_genericPrime_base_injective
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    Function.Injective
      ((Ideal.Quotient.mk Q).comp
        (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W))) := by
  let R := projectiveWeierstrassZChartRing W
  let φ : ℤ_[2] →+* R ⧸ Q :=
    (Ideal.Quotient.mk Q).comp (algebraMap ℤ_[2] R)
  have hprime : (RingHom.ker φ).IsPrime := RingHom.ker_isPrime φ
  have hker : RingHom.ker φ = ⊥ := by
    rcases padicInt_two_prime_eq_bot_or_span_two (RingHom.ker φ) hprime with h | h
    · exact h
    · exfalso
      have htwo : (2 : ℤ_[2]) ∈ RingHom.ker φ := by
        rw [h]
        exact Ideal.mem_span_singleton_self _
      apply h2
      apply Ideal.Quotient.eq_zero_iff_mem.mp
      exact htwo
  exact (RingHom.injective_iff_ker_eq_bot φ).mpr hker

/-- Every nonzero coefficient of the base DVR becomes a unit in
an actual-chart generic-fibre prime localization. -/
theorem projectiveWeierstrassZChart_genericPrime_base_unit
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q)
    (a : ℤ_[2]) (ha : a ≠ 0) :
    let R := projectiveWeierstrassZChartRing W
    let L := Localization.AtPrime Q
    IsUnit ((algebraMap R L) ((algebraMap ℤ_[2] R) a)) := by
  let R := projectiveWeierstrassZChartRing W
  let L := Localization.AtPrime Q
  let φ : ℤ_[2] →+* R ⧸ Q :=
    (Ideal.Quotient.mk Q).comp (algebraMap ℤ_[2] R)
  apply (IsLocalization.AtPrime.isUnit_to_map_iff L Q _).mpr
  intro hz
  have heq : φ a = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr hz
  exact ha ((projectiveWeierstrassZChart_genericPrime_base_injective
    W Q h2) (by simpa only [map_zero] using heq))

/-- The generic-fibre local ring of the actual chart receives the
fraction field `ℚ_[2]` of the coefficient DVR. The map is constructed
using the fact that every nonzero base coefficient is invertible at
the chosen prime, without assuming that the local ring is a field. -/
noncomputable def projectiveWeierstrassZChart_genericPrime_fractionMap
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    ℚ_[2] →+* Localization.AtPrime Q := by
  let R := projectiveWeierstrassZChartRing W
  let L := Localization.AtPrime Q
  let g : ℤ_[2] →+* L :=
    (algebraMap R L).comp (algebraMap ℤ_[2] R)
  have hunit (s : nonZeroDivisors ℤ_[2]) : IsUnit (g (s : ℤ_[2])) := by
    exact projectiveWeierstrassZChart_genericPrime_base_unit
      W Q h2 s (mem_nonZeroDivisors_iff_ne_zero.mp s.property)
  exact IsLocalization.lift (S := ℚ_[2]) (g := g) hunit

/-- The fraction-field map extends the coefficient map of the
actual integral chart. -/
theorem projectiveWeierstrassZChart_genericPrime_fractionMap_base
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q)
    (a : ℤ_[2]) :
    projectiveWeierstrassZChart_genericPrime_fractionMap W Q h2
      (algebraMap ℤ_[2] ℚ_[2] a) =
    (algebraMap (projectiveWeierstrassZChartRing W)
      (Localization.AtPrime Q))
      ((algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W)) a) := by
  simp only [projectiveWeierstrassZChart_genericPrime_fractionMap,
    IsLocalization.lift_eq, RingHom.comp_apply]

/-- If `W.Δ ≠ 0`, the discriminant remains nonzero at every
generic-fibre prime of the actual affine chart. This is the
input for the Jacobian-unit result below, not by itself a
local regularity criterion. -/
theorem projectiveWeierstrassZChart_genericPrime_discriminant
    (W : WeierstrassCurve ℤ_[2]) (hΔ : W.Δ ≠ 0)
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) W.Δ ∉ Q := by
  intro hmem
  let R := projectiveWeierstrassZChartRing W
  let φ : ℤ_[2] →+* R ⧸ Q :=
    (Ideal.Quotient.mk Q).comp (algebraMap ℤ_[2] R)
  have hzero : φ W.Δ = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr hmem
  have hinj := projectiveWeierstrassZChart_genericPrime_base_injective W Q h2
  exact hΔ (hinj (by simpa only [map_zero] using hzero))

set_option maxHeartbeats 500000 in
/-- The actual affine chart equation is an affine Weierstrass
equation at an arbitrary prime quotient, not just at rational
points. For generic-fibre primes, the nonzero discriminant makes
this point nonsingular over the prime quotient. This is not yet
a regular-local-ring theorem. -/
theorem projectiveWeierstrassZChart_genericPrime_nonsingular
    (W : WeierstrassCurve ℤ_[2]) (hΔ : W.Δ ≠ 0)
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    let R := projectiveWeierstrassZChartRing W
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    let φ : ℤ_[2] →+* R ⧸ Q :=
      (Ideal.Quotient.mk Q).comp (algebraMap ℤ_[2] R)
    let x : R ⧸ Q :=
      (Ideal.Quotient.mk Q) (q (MvPolynomial.X (0 : Fin 2)))
    let y : R ⧸ Q :=
      (Ideal.Quotient.mk Q) (q (MvPolynomial.X (1 : Fin 2)))
    (W.map φ).toAffine.Nonsingular x y := by
  let R := projectiveWeierstrassZChartRing W
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  let π : R →+* R ⧸ Q := Ideal.Quotient.mk Q
  let φ : ℤ_[2] →+* R ⧸ Q := π.comp (algebraMap ℤ_[2] R)
  let x : R ⧸ Q := π (q (MvPolynomial.X (0 : Fin 2)))
  let y : R ⧸ Q := π (q (MvPolynomial.X (1 : Fin 2)))
  let ψ : MvPolynomial (Fin 2) ℤ_[2] →+* R ⧸ Q :=
    MvPolynomial.eval₂Hom φ (fun i => if i = 0 then x else y)
  have hψ : ψ = π.comp q := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [ψ, φ, π, q]
      change (Ideal.Quotient.mk Q)
        (algebraMap ℤ_[2] R a) =
        (Ideal.Quotient.mk Q) (q (MvPolynomial.C a))
      rfl
    · intro i
      fin_cases i <;> simp [ψ, x, y]
  have hzero : ψ (localSurfaceEquation W 0 0) = 0 := by
    rw [hψ]
    have hq : q (localSurfaceEquation W 0 0) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr
        (Ideal.mem_span_singleton_self _)
    simp only [RingHom.comp_apply, hq, map_zero]
  have heq : (W.map φ).toAffine.Equation x y := by
    apply ((W.map φ).toAffine.equation_iff' x y).mpr
    convert hzero using 1
    simp [ψ, localSurfaceEquation, localWeierstrassEquation,
      WeierstrassCurve.map, x, y]
  have hΔQ : (W.map φ).Δ ≠ 0 := by
    rw [WeierstrassCurve.map_Δ]
    intro hzero
    apply projectiveWeierstrassZChart_genericPrime_discriminant W hΔ Q h2
    exact Ideal.Quotient.eq_zero_iff_mem.mp hzero
  exact (W.map φ).toAffine.nonsingular_of_Δ_ne_zero heq hΔQ

set_option maxHeartbeats 500000 in
/-- At each generic-fibre prime of the actual affine chart, at
least one of the two full integral affine partials is a unit in
the localization. This works for arbitrary prime quotients, not
only rational points. A Jacobian-to-regular-local-ring argument
is still needed to extract a maximal-ideal generator. -/
theorem projectiveWeierstrassZChart_genericPrime_jacobian_unit
    (W : WeierstrassCurve ℤ_[2]) (hΔ : W.Δ ≠ 0)
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    let R := projectiveWeierstrassZChartRing W
    let L := Localization.AtPrime Q
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    let x : R := q (MvPolynomial.X (0 : Fin 2))
    let y : R := q (MvPolynomial.X (1 : Fin 2))
    let c : ℤ_[2] →+* R := algebraMap ℤ_[2] R
    IsUnit ((algebraMap R L)
      (c W.a₁ * y - (3 * x ^ 2 + c 2 * c W.a₂ * x + c W.a₄))) ∨
    IsUnit ((algebraMap R L)
      (c 2 * y + c W.a₁ * x + c W.a₃)) := by
  let R := projectiveWeierstrassZChartRing W
  let L := Localization.AtPrime Q
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  let π : R →+* R ⧸ Q := Ideal.Quotient.mk Q
  let c : ℤ_[2] →+* R := algebraMap ℤ_[2] R
  let φ : ℤ_[2] →+* R ⧸ Q := π.comp c
  let x : R := q (MvPolynomial.X (0 : Fin 2))
  let y : R := q (MvPolynomial.X (1 : Fin 2))
  let dx : R := c W.a₁ * y - (3 * x ^ 2 + c 2 * c W.a₂ * x + c W.a₄)
  let dy : R := c 2 * y + c W.a₁ * x + c W.a₃
  have hn := (((W.map φ).toAffine.nonsingular_iff' (π x) (π y)).mp
    (projectiveWeierstrassZChart_genericPrime_nonsingular W hΔ Q h2)).2
  have hn' : φ W.a₁ * π y -
      (3 * (π x) ^ 2 + φ 2 * φ W.a₂ * π x + φ W.a₄) ≠ 0 ∨
      φ 2 * π y + φ W.a₁ * π x + φ W.a₃ ≠ 0 := by
    simpa [WeierstrassCurve.map] using hn
  have hx : π dx = φ W.a₁ * π y -
      (3 * (π x) ^ 2 + φ 2 * φ W.a₂ * π x + φ W.a₄) := by
    simp only [dx, map_sub, map_add, map_mul, map_pow, map_ofNat,
      φ, RingHom.comp_apply]
  have hy : π dy = φ 2 * π y + φ W.a₁ * π x + φ W.a₃ := by
    simp [dy, φ, c, map_add, map_mul]
  rcases hn' with hn | hn
  · left
    apply (IsLocalization.AtPrime.isUnit_to_map_iff L Q dx).mpr
    intro hd
    apply hn
    rw [← hx]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr hd
  · right
    apply (IsLocalization.AtPrime.isUnit_to_map_iff L Q dy).mpr
    intro hd
    apply hn
    rw [← hy]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr hd

end Beal.General