import Beal.«Beal.General».ZChartFlatness

/-!
The coefficient DVR remains visible at every generic-fibre prime
of the actual integral `Z = 1` chart. These are algebraic
nonvanishing certificates, not regular-local-ring theorems.
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

/-- If `W.Δ ≠ 0`, the discriminant remains nonzero at every
generic-fibre prime of the actual affine chart. This is a
necessary input for the generic Jacobian argument, not that
argument or the missing local regularity criterion. -/
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

end Beal.General