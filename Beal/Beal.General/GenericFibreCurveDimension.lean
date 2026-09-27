import Beal.«Beal.General».ZChartGenericFibre
import Mathlib.RingTheory.DedekindDomain.Basic
import Mathlib.RingTheory.DedekindDomain.Dvr
import Mathlib.RingTheory.AdjoinRoot

/-!
The affine Weierstrass equation over a field is monic in `Y`.
Its coordinate ring is integral over the principal-ideal ring
`K[X]`. This yields a prime-chain bound without relying on the
unfinished multivariate Krull-dimension formula in this Mathlib pin.

The identification with the inverted actual integral chart is a
separate obligation.
-/

namespace Beal.General

/-- An integral domain integral over a principal-ideal domain has
no strict chain of three prime ideals. -/
theorem dimensionLEOne_of_integral_pid
    (A B : Type*) [CommRing A] [IsDomain A] [IsPrincipalIdealRing A]
    [CommRing B] [IsDomain B] [Algebra A B] [Algebra.IsIntegral A B] :
    Ring.DimensionLEOne B := by
  letI : Ring.DimensionLEOne A :=
    Ring.DimensionLEOne.principal_ideal_ring A
  refine ⟨?_⟩
  intro p hp hprime
  letI : p.IsPrime := hprime
  have hcomap : p.comap (algebraMap A B) ≠ ⊥ := by
    obtain ⟨x, hx, hne⟩ := p.ne_bot_iff.mp hp
    exact Ideal.comap_ne_bot_of_integral_mem hne hx
      (Algebra.IsIntegral.isIntegral x)
  exact Ideal.isMaximal_of_isIntegral_of_isMaximal_comap p
    ((Ideal.comap_isPrime (algebraMap A B) p).isMaximal hcomap)

/-- The monic affine Weierstrass polynomial is irreducible over
the polynomial coefficient ring; its quotient is a domain. -/
theorem weierstrass_affine_field_isDomain
    {K : Type*} [Field K] (W : WeierstrassCurve K) :
    IsDomain (AdjoinRoot W.toAffine.polynomial) := by
  apply AdjoinRoot.isDomain_of_prime
  exact (irreducible_iff_prime).mp W.toAffine.irreducible_polynomial

/-- The coordinate ring of an affine Weierstrass curve over a
field has dimension at most one in the prime-chain sense.
The result does not assume a rational residue field and does not
require a nonzero discriminant for this dimension bound. -/
theorem weierstrass_affine_field_dimensionLEOne
    {K : Type*} [Field K] (W : WeierstrassCurve K) :
    Ring.DimensionLEOne (AdjoinRoot W.toAffine.polynomial) := by
  let f : Polynomial (Polynomial K) := W.toAffine.polynomial
  have hf : f.Monic := W.toAffine.monic_polynomial
  letI : IsDomain (AdjoinRoot f) :=
    weierstrass_affine_field_isDomain W
  letI : Module.Finite (Polynomial K) (AdjoinRoot f) :=
    (AdjoinRoot.powerBasis' hf).finite
  letI : Algebra.IsIntegral (Polynomial K) (AdjoinRoot f) :=
    Algebra.IsIntegral.of_finite (Polynomial K) (AdjoinRoot f)
  exact dimensionLEOne_of_integral_pid
    (Polynomial K) (AdjoinRoot f)

/-- At every prime of the field-valued affine Weierstrass
coordinate ring, including non-rational primes, the local ring
has dimension at most one in the prime-chain sense. -/
theorem weierstrass_affine_field_atPrime_dimensionLEOne
    {K : Type*} [Field K] (W : WeierstrassCurve K)
    (P : Ideal (AdjoinRoot W.toAffine.polynomial)) [P.IsPrime] :
    Ring.DimensionLEOne (Localization.AtPrime P) := by
  letI : IsDomain (AdjoinRoot W.toAffine.polynomial) :=
    weierstrass_affine_field_isDomain W
  letI : Ring.DimensionLEOne (AdjoinRoot W.toAffine.polynomial) :=
    weierstrass_affine_field_dimensionLEOne W
  apply Ring.DimensionLEOne.localization
    (R := AdjoinRoot W.toAffine.polynomial) (M := P.primeCompl)
    (Localization.AtPrime P)
  intro s hs
  apply mem_nonZeroDivisors_iff_ne_zero.mpr
  intro hz
  change s ∉ P at hs
  exact hs (by simpa only [hz] using P.zero_mem)

end Beal.General