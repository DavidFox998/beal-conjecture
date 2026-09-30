import Beal.«Beal.General».CompatChart2t
import Beal.«Beal.General».CompatChartXt
import Beal.«Beal.General».CompatChartYt

/-!
Paste the three quotient-induced polynomial chart identifications with
the already-checked restriction squares into abstract product-overlap
quotients. Product overlaps are not given polynomial presentations here.
-/

namespace Beal.General

set_option synthInstance.maxHeartbeats 200000

/-- The divided-equation chart restriction commutes with the graded
quotient restriction for any target generator, via its integral
quotient-induced chart map. -/
noncomputable abbrev polynomialTwoRestriction_compat
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (j : Fin 3) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  have h := localSurfaceCentreReesTwoAdicCompat W x y 0 j
  exact congrArg
    (fun φ => φ.comp
      (twoPolynomialToAbstract W x y a b c ha hF hX hY).toRingHom) h

/-- The saturated `Xt` chart restriction commutes with the graded
quotient restriction for any target generator. -/
noncomputable abbrev polynomialXtRestriction_compat
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (j : Fin 3) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  have h := localSurfaceCentreReesTwoAdicCompat W x y 1 j
  exact congrArg
    (fun φ => φ.comp (coordinatePolynomialToAbstract W x y 0).toRingHom) h

/-- The saturated `Yt` chart restriction commutes with the graded
quotient restriction for any target generator. -/
noncomputable abbrev polynomialYtRestriction_compat
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (j : Fin 3) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  have h := localSurfaceCentreReesTwoAdicCompat W x y 2 j
  exact congrArg
    (fun φ => φ.comp (coordinatePolynomialToAbstract W x y 1).toRingHom) h

/-- The independently defined `2t` polynomial restriction is induced
by the quotient of its integral chart map. -/
noncomputable abbrev polynomialTwoRestriction_eq_quotient
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (j : Fin 3) := by
  have hc := chart_eq_quotient_2t W x y a b c ha hF hX hY
  exact congrArg (fun e =>
    (localSurfaceAbstractProductRestriction W x y 0 j).comp e.toRingHom) hc

/-- The saturated `Xt` polynomial restriction is quotient-induced. -/
noncomputable abbrev polynomialXtRestriction_eq_quotient
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (j : Fin 3) := by
  have hc := chart_eq_quotient_Xt W x y
  exact congrArg (fun e =>
    (localSurfaceAbstractProductRestriction W x y 1 j).comp e.toRingHom) hc

/-- The saturated `Yt` polynomial restriction is quotient-induced. -/
noncomputable abbrev polynomialYtRestriction_eq_quotient
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (j : Fin 3) := by
  have hc := chart_eq_quotient_Yt W x y
  exact congrArg (fun e =>
    (localSurfaceAbstractProductRestriction W x y 2 j).comp e.toRingHom) hc

/-- `2t → Xt`, in the ordered `2t·Xt` product quotient.
The actual-side composite is `resPolynomial_2t_Xt`, up to
association of ring-hom composition. -/
noncomputable abbrev compatPolynomial_2t_Xt
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :=
  polynomialTwoRestriction_compat W x y a b c ha hF hX hY 1

/-- `Xt → 2t`, in the ordered `Xt·2t` product quotient.
The actual-side composite is `resPolynomial_Xt_2t`. -/
noncomputable abbrev compatPolynomial_Xt_2t
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  polynomialXtRestriction_compat W x y 0

/-- `2t → Yt`, in the ordered `2t·Yt` product quotient.
The actual-side composite is `resPolynomial_2t_Yt`. -/
noncomputable abbrev compatPolynomial_2t_Yt
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :=
  polynomialTwoRestriction_compat W x y a b c ha hF hX hY 2

/-- `Yt → 2t`, in the ordered `Yt·2t` product quotient.
The actual-side composite is `resPolynomial_Yt_2t`. -/
noncomputable abbrev compatPolynomial_Yt_2t
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  polynomialYtRestriction_compat W x y 0

/-- `Xt → Yt`, in the ordered `Xt·Yt` product quotient.
The actual-side composite is `resPolynomial_Xt_Yt`. -/
noncomputable abbrev compatPolynomial_Xt_Yt
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  polynomialXtRestriction_compat W x y 2

/-- `Yt → Xt`, in the ordered `Yt·Xt` product quotient.
The actual-side composite is `resPolynomial_Yt_Xt`. -/
noncomputable abbrev compatPolynomial_Yt_Xt
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  polynomialYtRestriction_compat W x y 1

#print axioms compatPolynomial_2t_Xt
#print axioms compatPolynomial_Xt_2t
#print axioms compatPolynomial_2t_Yt
#print axioms compatPolynomial_Yt_2t
#print axioms compatPolynomial_Xt_Yt
#print axioms compatPolynomial_Yt_Xt
#print axioms polynomialTwoRestriction_eq_quotient
#print axioms polynomialXtRestriction_eq_quotient
#print axioms polynomialYtRestriction_eq_quotient

end Beal.General