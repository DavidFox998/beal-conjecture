import Beal.«Beal.General».TateEvenReesChart
import Beal.«Beal.General».GradedProjectiveSpecialFibre
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme
import Mathlib.Data.ZMod.Basic
import Mathlib.NumberTheory.Padics.RingHoms
import Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization
import Mathlib.Algebra.MvPolynomial.Equiv
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Algebra.Polynomial.RingDivision
import Mathlib.RingTheory.Ideal.QuotientOperations
import Mathlib.RingTheory.MvPolynomial.Ideal
import Mathlib.RingTheory.Polynomial.Basic
import Mathlib.RingTheory.PrimeSpectrum

/-!
# Isolated gap: the family `Bl_{I_{a,b}}`

`BealEven` does not import this file. `lake build BealEven` does not
elaborate it.

`S = ℤ_[2][a,b]`. `surfaceRing` is the Weierstrass coordinate ring
`R_{a,b}` over `S`. `centreIdeal` is `(2, X - a^p, Y - b^q)` in that
ring. `familyBlowup` is `Proj` of the Rees algebra of that ideal.

`coprimeBealSolution_to_family_point` and `family_point` are uninhabited.
No homogeneous prime of either Rees algebra is constructed.

`no_centre_evaluation_to_padic` is proved: there is no ring hom
`R_{a,b} → ℤ_[2]` vanishing on `I_{a,b}`. The ideal contains `2`, and
`2 ≠ 0` in `ℤ_[2]`. The same obstruction holds for the numeral centre
`(2, X - a^p, Y - b^q)` with `a^p, b^q : ℕ`.

A blow-up point does not vanish on the centre. It is a direction on the
exceptional divisor. `PadicInt.toZMod` kills `2`, so the centre can be
evaluated in `ZMod 2`. `centreResidueHom` is that closed point of the
base when the reduced Weierstrass equation vanishes. It is the image of
the blow-up point in `V(2)`, not the point of `Proj`.
`familySpecialFibre` is `Proj` of `Rees(I)/(2)`.
`chart_Dplus_2t_ring` is the degree-zero localization of that quotient
at powers of the class of `2t`. `chartU` and `chartV` are the ratios
`(X - ap) t / 2t` and `(Y - bq) t / 2t`, and `ideal_UV` is the ideal
they generate. The direction `[1:0:0]` would be a prime of this chart
with residue field `𝔽₂`. That fails when the constant term of the
equation has 2-adic valuation exactly one: for
`valuationOneCurve` (`Y² = X³ + 2`) at `(0, 0)`, the residue vanishes
and `(2t)² = 0` in `Rees/(2)`, so the chart ring has one element.
The class of `2t` itself is not zero (`valuationOne_specialTwo_ne_zero`):
the quotient is by the degree-zero scalar ideal `(2)`, and `2t` is not
a multiple of that scalar.
`familySpecialFibrePoint_Dplus_2t` is that false universal claim.
`basicOpen_pow` and `basicOpen_zero` turn `(2t)² = 0` into
`D₊(2t) = ⊥` as an open of `Proj(Rees(I)/(2))` on this curve.
On the same curve no power of `X t` vanishes in `Rees/(2)`, because
`X` remains `1` under the residue map at `(1, 1)`.
`chart_Dplus_Xt_ring` is the degree-zero localization at that class.
It contains the ratios `2t / Xt` and `Yt / Xt`, and also the
degree-zero classes `chart_X` and `chart_Y` of `X - ap` and
`Y - bq`. On every numeral centre, `chart_Y = chart_X * (Yt / Xt)`
and `chart_X * (2t / Xt) = 0` in `Rees/(2)`, so `Y` lies in
`⟨X, 2t/Xt, Yt/Xt⟩`. The quotient of the chart by that span
kills `Y` (`quotient_span_XUV_kills_Y`). The relation
`X · (2t/Xt) = 0` becomes `0 = 0` there and does not add a
nilpotent. On `Y² = X³ + 2` at `(0, 0)`, `chart_Y ^ 2 = chart_X ^ 3`
in the chart, because `Y² - X³ = -2` on the surface and the
scalar `2` is zero in `Rees/(2)`. The polynomial model is
`𝔽₂[X,Y,U,V] / (X·U, Y - X·V, Y² - X³)`. Its further quotient
by `⟨X, U, V⟩` is `𝔽₂` (`modelXtChartModXUV_equiv_F2`):
`Y = X·V` puts `Y` in the ideal, so `Y² - X³` becomes `0 = 0`.
The quotient that drops `Y - X·V`, namely
`𝔽₂[X,Y,U,V] / (Y² - X³, X, U, V)`, still has a nonzero nilpotent
class of `Y` (`modelForgetY_class_Y_ne_zero`). The chart is not
shown isomorphic to the model. The surface is an algebra over
`ℤ_[2][a,b]`. `coeffModTwoEquiv` identifies `S / (2)` with
`𝔽₂[a,b]`, and `chartFromF2Polynomial` is a ring hom from that
polynomial ring into the chart `D₊(Xt)`. `chartOfModelBase` is
the induced hom from
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³)` into the same chart.
Neither hom is shown to be bijective, and the parameters `a, b`
are not generators of `⟨X, 2t/Xt, Yt/Xt⟩`. The ring is
nontrivial, so it has some prime.
`(Xt)^n ≠ 0` is necessary for `D₊(Xt)` to be nonempty
(`pow_ne_zero_of_basicOpen_ne_bot`) and is not sufficient.
The quotient of the chart by `⟨X, Y, 2t/Xt, Yt/Xt⟩` is not shown
to be `𝔽₂`, so that ideal is not shown to be maximal.
`FromSpec.toFun` is not applied, so the chart prime is not a
point of `Proj`.
`chart_Dplus_Xt_basicOpen_nonempty_valuationOne`,
`chart_Dplus_Xt_presentation`, `ideal_UV_maximal`,
`ideal_XYUV_quotient_F2`, `familySpecialFibrePoint_Dplus_Xt`, and
`familySpecialFibrePoint_XYUV` stay uninhabited.
`familySpecialFibrePoint` stays uninhabited. No `sorry` is used.
-/

namespace Beal.MathlibMissing

open Beal.General

/-- `S = ℤ_[2][a, b]`. -/
abbrev S : Type := MvPolynomial (Fin 2) ℤ_[2]

/-- The indeterminate `a`. -/
noncomputable def paramA : S := MvPolynomial.X 0

/-- The indeterminate `b`. -/
noncomputable def paramB : S := MvPolynomial.X 1

/-- The Weierstrass polynomial in `S[X, Y]`. -/
noncomputable def surfacePolynomial (W : WeierstrassCurve ℤ_[2]) :
    MvPolynomial (Fin 2) S :=
  let φ : ℤ_[2] →+* MvPolynomial (Fin 2) S :=
    MvPolynomial.C.comp (MvPolynomial.C : ℤ_[2] →+* S)
  localWeierstrassEquation (W.map φ) (MvPolynomial.X 0) (MvPolynomial.X 1)

/-- `R_{a,b} = S[X, Y] / (Weierstrass)`. -/
abbrev surfaceRing (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) S ⧸ Ideal.span {surfacePolynomial W}

/-- `I_{a,b} = (2, X - a^p, Y - b^q)` in `R_{a,b}`. -/
noncomputable def centreIdeal (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    Ideal (surfaceRing W) :=
  Ideal.map (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
    (Ideal.span {
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
      MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (paramA ^ p),
      MvPolynomial.X (1 : Fin 2) - MvPolynomial.C (paramB ^ q) })

/-- `Bl_{I_{a,b}} = Proj(Rees(I_{a,b}))`. -/
noncomputable def familyBlowup (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    AlgebraicGeometry.Scheme :=
  let I := centreIdeal W p q
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  AlgebraicGeometry.«Proj» (centreReesComponent I)

/-- Points of `Bl_{I_{a,b}}`. -/
noncomputable def familyBlowupPoint (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    Type _ :=
  let I := centreIdeal W p q
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  ProjectiveSpectrum (centreReesComponent I)

/-- The scalar `2` in `R_{a,b}` is the class of the constant polynomial `2`. -/
theorem two_eq_quotient_mk (W : WeierstrassCurve ℤ_[2]) :
    (2 : surfaceRing W) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) := by
  simp [surfaceRing, map_ofNat]

/-- `(2 : R_{a,b})` lies in `I_{a,b}`. -/
theorem two_mem_centreIdeal (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    (2 : surfaceRing W) ∈ centreIdeal W p q := by
  have hgen : MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) ∈
      Ideal.span ({
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
        MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (paramA ^ p),
        MvPolynomial.X (1 : Fin 2) - MvPolynomial.C (paramB ^ q) } :
        Set (MvPolynomial (Fin 2) S)) :=
    Ideal.subset_span (by simp)
  rw [two_eq_quotient_mk]
  exact Ideal.mem_map_of_mem
    (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})) hgen

/-- No ring hom `R_{a,b} → ℤ_[2]` kills `I_{a,b}`. Any ring hom sends
`2` to `2`, and `2 ≠ 0` in `ℤ_[2]`, but `2 ∈ I_{a,b}`. -/
theorem no_centre_evaluation_to_padic
    (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    ¬ ∃ φ : surfaceRing W →+* ℤ_[2], ∀ a ∈ centreIdeal W p q, φ a = 0 := by
  rintro ⟨φ, hφ⟩
  have hzero : φ (2 : surfaceRing W) = 0 := hφ _ (two_mem_centreIdeal W p q)
  rw [map_ofNat] at hzero
  exact Nat.cast_ne_zero.mpr (by decide : (2 : ℕ) ≠ 0) hzero

/-- The numeral centre `(2, X - ap, Y - bq)` in `R_{a,b}`. -/
noncomputable def numeralCentreIdeal (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (surfaceRing W) :=
  Ideal.map (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
    (Ideal.span {
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
      MvPolynomial.X (0 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])),
      MvPolynomial.X (1 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])) })

theorem two_mem_numeralCentreIdeal (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    (2 : surfaceRing W) ∈ numeralCentreIdeal W ap bq := by
  have hgen : MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) ∈
      Ideal.span ({
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
        MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])),
        MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])) } :
        Set (MvPolynomial (Fin 2) S)) :=
    Ideal.subset_span (by simp)
  have hmap :
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
          (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) ∈
        numeralCentreIdeal W ap bq :=
    Ideal.mem_map_of_mem _ hgen
  rw [two_eq_quotient_mk]
  exact hmap

/-- The numeral centre cannot be evaluated in `ℤ_[2]` either. -/
theorem no_numeral_centre_evaluation_to_padic
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    ¬ ∃ φ : surfaceRing W →+* ℤ_[2],
        ∀ a ∈ numeralCentreIdeal W ap bq, φ a = 0 := by
  rintro ⟨φ, hφ⟩
  have hzero : φ (2 : surfaceRing W) = 0 :=
    hφ _ (two_mem_numeralCentreIdeal W ap bq)
  rw [map_ofNat] at hzero
  exact Nat.cast_ne_zero.mpr (by decide : (2 : ℕ) ≠ 0) hzero

/-- Points of `Proj(Rees(2, X - ap, Y - bq))`. -/
noncomputable def numeralFamilyPoint (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Type _ :=
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  ProjectiveSpectrum (centreReesComponent I)

/-- OPEN. Existence of some point of the integral `Proj(Rees(I))`.
A point of this `Proj` is a homogeneous prime that does not contain
the irrelevant ideal. It is not a prime containing the centre, and it
is not the kernel of a map to `ℤ_[2]`. The special-fibre direction is
`familySpecialFibrePoint`. No homogeneous prime is constructed. An
inhabitant would not be `even_solution_implies_two_divides`. -/
def family_point : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    Nonempty (numeralFamilyPoint W ap bq)

/-- `ℤ_[2] → 𝔽₂` kills `2`. -/
theorem residue_kills_two : PadicInt.toZMod (2 : ℤ_[2]) = 0 := by
  rw [← RingHom.mem_ker, PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p]
  exact Ideal.mem_span_singleton_self (2 : ℤ_[2])

/-- Coefficients `ℤ_[2][a, b] → 𝔽₂`, sending the indeterminates to `0`. -/
noncomputable def coeffToResidue : S →+* ZMod 2 :=
  MvPolynomial.eval₂Hom PadicInt.toZMod (fun _ : Fin 2 => (0 : ZMod 2))

theorem coeffToResidue_two : coeffToResidue (MvPolynomial.C (2 : ℤ_[2])) = 0 := by
  rw [coeffToResidue, MvPolynomial.eval₂Hom_C, residue_kills_two]

/-- Evaluate `X ↦ ap mod 2`, `Y ↦ bq mod 2`, and coefficients through `𝔽₂`. -/
noncomputable def numeralEval (ap bq : ℕ) : MvPolynomial (Fin 2) S →+* ZMod 2 :=
  MvPolynomial.eval₂Hom coeffToResidue
    (fun i : Fin 2 => if i = 0 then (ap : ZMod 2) else (bq : ZMod 2))

theorem numeralEval_two (ap bq : ℕ) :
    numeralEval ap bq (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) = 0 := by
  rw [numeralEval, MvPolynomial.eval₂Hom_C, coeffToResidue_two]

theorem numeralEval_X (ap bq : ℕ) :
    numeralEval ap bq
        (MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))) = 0 := by
  rw [numeralEval, map_sub, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C, if_pos rfl]
  rw [coeffToResidue, MvPolynomial.eval₂Hom_C, map_natCast]
  exact sub_self _

theorem numeralEval_Y (ap bq : ℕ) :
    numeralEval ap bq
        (MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))) = 0 := by
  rw [numeralEval, map_sub, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C,
    if_neg (by decide : (1 : Fin 2) ≠ 0)]
  rw [coeffToResidue, MvPolynomial.eval₂Hom_C, map_natCast]
  exact sub_self _

/-- The reduced Weierstrass equation vanishes at `(ap mod 2, bq mod 2)`. -/
def surfaceResidueVanishes (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) : Prop :=
  numeralEval ap bq (surfacePolynomial W) = 0

/-- The closed point of the base over `𝔽₂`, once the reduced equation vanishes.
This map kills the numeral centre. It is the image of a blow-up point in
`V(2)`, not a point of `Proj`. -/
noncomputable def centreResidueHom (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (hW : surfaceResidueVanishes W ap bq) :
    surfaceRing W ⧸ numeralCentreIdeal W ap bq →+* ZMod 2 :=
  let φ : surfaceRing W →+* ZMod 2 :=
    Ideal.Quotient.lift (Ideal.span {surfacePolynomial W}) (numeralEval ap bq)
      (by
        intro a ha
        obtain ⟨d, rfl⟩ := Ideal.mem_span_singleton.mp ha
        rw [map_mul, hW, zero_mul])
  Ideal.Quotient.lift (numeralCentreIdeal W ap bq) φ (by
    intro a ha
    obtain ⟨b, hb, rfl⟩ :=
      (Ideal.mem_map_iff_of_surjective
        (f := Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
        Ideal.Quotient.mk_surjective).mp ha
    have hb0 : numeralEval ap bq b = 0 := by
      have hker : Ideal.span ({
          MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
          MvPolynomial.X (0 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])),
          MvPolynomial.X (1 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])) } :
          Set (MvPolynomial (Fin 2) S)) ≤
          RingHom.ker (numeralEval ap bq) := by
        rw [Ideal.span_le]
        intro z hz
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
        rcases hz with rfl | rfl | rfl
        · simpa [RingHom.mem_ker] using numeralEval_two ap bq
        · simpa [RingHom.mem_ker] using numeralEval_X ap bq
        · simpa [RingHom.mem_ker] using numeralEval_Y ap bq
      simpa [RingHom.mem_ker] using hker hb
    simp [φ, Ideal.Quotient.lift_mk, hb0])

/-- The scalar ideal `(2)` in the numeral Rees algebra. This is degree `0`.
It is not the ideal generated by the degree-one element `2t`. -/
noncomputable def numeralReesSpecialIdeal (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (reesAlgebra (numeralCentreIdeal W ap bq)) :=
  Ideal.span {algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq))
    (2 : surfaceRing W)}

theorem numeralReesSpecialIdeal_isHomogeneous
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    let I := numeralCentreIdeal W ap bq
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    (numeralReesSpecialIdeal W ap bq).IsHomogeneous (centreReesComponent I) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  apply Ideal.homogeneous_span
  intro z hz
  rcases Set.mem_singleton_iff.mp hz with rfl
  exact ⟨0, SetLike.algebraMap_mem_graded _ _⟩

/-- The degree-one monomial `2t` in the numeral Rees algebra. -/
noncomputable def numeralReesTwo (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 1
    ⟨(2 : surfaceRing W), by
      rw [pow_one]
      exact two_mem_numeralCentreIdeal W ap bq⟩

theorem numeral_X_mem_centre (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))) ∈
      numeralCentreIdeal W ap bq := by
  apply Ideal.mem_map_of_mem
  apply Ideal.subset_span
  simp

theorem numeral_Y_mem_centre (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))) ∈
      numeralCentreIdeal W ap bq := by
  apply Ideal.mem_map_of_mem
  apply Ideal.subset_span
  simp

/-- The degree-one monomial `(X - ap) t`. -/
noncomputable def numeralReesXT (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 1
    ⟨Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))),
      by
        rw [pow_one]
        exact numeral_X_mem_centre W ap bq⟩

/-- The degree-one monomial `(Y - bq) t`. -/
noncomputable def numeralReesYT (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 1
    ⟨Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))),
      by
        rw [pow_one]
        exact numeral_Y_mem_centre W ap bq⟩

/-- The class of `X - ap` in the surface ring. -/
noncomputable def surfaceNumeralX (W : WeierstrassCurve ℤ_[2]) (ap : ℕ) :
    surfaceRing W :=
  Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
    (MvPolynomial.X (0 : Fin 2) -
      MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])))

/-- The class of `Y - bq` in the surface ring. -/
noncomputable def surfaceNumeralY (W : WeierstrassCurve ℤ_[2]) (bq : ℕ) :
    surfaceRing W :=
  Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
    (MvPolynomial.X (1 : Fin 2) -
      MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])))

private lemma mem_centre_pow_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    r ∈ numeralCentreIdeal W ap bq ^ 0 := by
  simp only [pow_zero, Ideal.one_eq_top, Submodule.mem_top]

/-- The degree-zero Rees monomial `C r`. Every surface element lies in
`I^0 = ⊤`. -/
noncomputable def numeralReesConst (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) : reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 0
    ⟨r, mem_centre_pow_zero W ap bq r⟩

/-- `Proj(Rees(I)/(2))`, the special fibre of the numeral blow-up. -/
noncomputable def familySpecialFibre (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    AlgebraicGeometry.Scheme := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  exact @AlgebraicGeometry.«Proj» (surfaceRing W) (reesAlgebra I ⧸ J) _ _ _ ℬ
    (homogeneousQuotientGrading (centreReesComponent I) J hJ)

/-- Points of `Proj(Rees(I)/(2))`. -/
noncomputable def familySpecialFibreSpectrum (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Type _ := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  exact @ProjectiveSpectrum (surfaceRing W) (reesAlgebra I ⧸ J) _ _ _ ℬ
    (homogeneousQuotientGrading (centreReesComponent I) J hJ)

/-- OPEN. Once `(ap, bq)` lies on the reduced curve, the special-fibre
`Proj` should have a point. The point sought is a direction in the
exceptional divisor: a homogeneous prime of `Rees(I)/(2)` that does not
contain the irrelevant ideal, contains the classes of
`numeralReesXT = (X - ap) t` and `numeralReesYT = (Y - bq) t`, and does
not contain the class of `numeralReesTwo = 2t`, so it lies in `D₊(2t)`.
The chart coordinates are the ratios `(X - ap)/2` and `(Y - bq)/2`,
evaluated in `ZMod 2` by `centreResidueHom`. That prime is not
constructed. `centreResidueHom` is only the closed point of the base.
An inhabitant would not be `even_solution_implies_two_divides`. -/
def familySpecialFibrePoint : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    Nonempty (familySpecialFibreSpectrum W ap bq)

/-- The degree-zero chart ring `(Rees(I)/(2))_(2t)`. -/
noncomputable def chart_Dplus_2t_ring
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) : Type :=
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  let _ : Algebra (surfaceRing W) (reesAlgebra I) := inferInstance
  let _ : Algebra (surfaceRing W) (reesAlgebra I ⧸ J) := inferInstance
  HomogeneousLocalization.Away
    (homogeneousQuotientComponent (centreReesComponent I) J)
    (Ideal.Quotient.mk J (numeralReesTwo W ap bq))

set_option synthInstance.maxHeartbeats 400000

private lemma specialClass_mem_degree_one
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) (hr : r ∈ numeralCentreIdeal W ap bq) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq))
        (centreReesMonomial (numeralCentreIdeal W ap bq) 1
          ⟨r, by rw [pow_one]; exact hr⟩) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 1 := by
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  have hy := centreReesComponent_monomial I 1 r (by rw [pow_one]; exact hr)
  change _ ∈ Submodule.map
    (Ideal.Quotient.mkₐ (surfaceRing W) J).toLinearMap (centreReesComponent I 1)
  exact Submodule.mem_map_of_mem hy

private lemma specialClass_mem_degree_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq))
        (numeralReesConst W ap bq r) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 0 := by
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  have hy := centreReesComponent_monomial I 0 r (mem_centre_pow_zero W ap bq r)
  change _ ∈ Submodule.map
    (Ideal.Quotient.mkₐ (surfaceRing W) J).toLinearMap (centreReesComponent I 0)
  exact Submodule.mem_map_of_mem hy

private lemma quotient_one_mem_degree_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    (1 : reesAlgebra (numeralCentreIdeal W ap bq) ⧸
        numeralReesSpecialIdeal W ap bq) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hy : (1 : reesAlgebra I) ∈ centreReesComponent I 0 := by
    change ∃ r : ↥(I ^ 0), centreReesMonomial I 0 r = 1
    refine ⟨⟨1, by simp⟩, ?_⟩
    apply Subtype.ext
    simp [centreReesMonomial]
  have hmem : (Ideal.Quotient.mk J) (1 : reesAlgebra I) ∈
      homogeneousQuotientComponent (centreReesComponent I) J 0 :=
    Submodule.mem_map_of_mem hy
  rwa [map_one (Ideal.Quotient.mk J)] at hmem

/-- `U = (X - ap) t / 2t` on the chart `D₊(2t)`. -/
noncomputable def chartU (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_2t_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesTwo W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesXT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (0 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
            (numeral_X_mem_centre W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesTwo] using
          specialClass_mem_degree_one W ap bq (2 : surfaceRing W)
            (two_mem_numeralCentreIdeal W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- `V = (Y - bq) t / 2t` on the chart `D₊(2t)`. -/
noncomputable def chartV (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_2t_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesTwo W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesYT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (1 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))))
            (numeral_Y_mem_centre W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesTwo] using
          specialClass_mem_degree_one W ap bq (2 : surfaceRing W)
            (two_mem_numeralCentreIdeal W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

noncomputable instance chartCommRing
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    CommRing (chart_Dplus_2t_ring W ap bq) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  unfold chart_Dplus_2t_ring
  infer_instance

/-- The ideal `(U, V)` of the chart `D₊(2t)`. -/
noncomputable def ideal_UV (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (chart_Dplus_2t_ring W ap bq) :=
  Ideal.span {chartU W ap bq, chartV W ap bq}

/-- `Y² = X³ + 2`. Its constant term has 2-adic valuation one. -/
noncomputable def valuationOneCurve : WeierstrassCurve ℤ_[2] where
  a₁ := 0
  a₂ := 0
  a₃ := 0
  a₄ := 0
  a₆ := -2

theorem valuationOne_surfacePolynomial :
    surfacePolynomial valuationOneCurve =
      MvPolynomial.X (1 : Fin 2) ^ 2 - MvPolynomial.X (0 : Fin 2) ^ 3 +
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) := by
  simp [surfacePolynomial, localWeierstrassEquation, valuationOneCurve,
    map_neg, map_ofNat]
  ring

theorem valuationOne_two_eq :
    (2 : surfaceRing valuationOneCurve) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2) ^ 3 - MvPolynomial.X (1 : Fin 2) ^ 2) := by
  rw [two_eq_quotient_mk]
  apply eq_of_sub_eq_zero
  rw [← (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})).map_sub]
  apply Ideal.Quotient.eq_zero_iff_mem.mpr
  have hpoly :
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) -
        (MvPolynomial.X (0 : Fin 2) ^ 3 - MvPolynomial.X (1 : Fin 2) ^ 2) =
      surfacePolynomial valuationOneCurve := by
    rw [valuationOne_surfacePolynomial]
    ring
  rw [hpoly]
  exact Ideal.subset_span (by simp)

theorem valuationOne_two_mem_sq :
    (2 : surfaceRing valuationOneCurve) ∈
      numeralCentreIdeal valuationOneCurve 0 0 ^ 2 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  have hX : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (0 : Fin 2)) ∈ I := by
    simpa using numeral_X_mem_centre valuationOneCurve 0 0
  have hY : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (1 : Fin 2)) ∈ I := by
    simpa using numeral_Y_mem_centre valuationOneCurve 0 0
  have hX3 : (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (0 : Fin 2))) ^ 3 ∈ I ^ 2 :=
    Ideal.pow_le_pow_right (by decide : (2 : ℕ) ≤ 3)
      (Ideal.pow_mem_pow hX 3)
  have hY2 : (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (1 : Fin 2))) ^ 2 ∈ I ^ 2 :=
    Ideal.pow_mem_pow hY 2
  have hdiff :
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2))) ^ 3 -
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (1 : Fin 2))) ^ 2 ∈ I ^ 2 :=
    Ideal.sub_mem _ hX3 hY2
  have heq :
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2))) ^ 3 -
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (1 : Fin 2))) ^ 2 =
      (2 : surfaceRing valuationOneCurve) := by
    rw [← map_pow, ← map_pow, ← map_sub, valuationOne_two_eq]
  simpa [heq] using hdiff

theorem valuationOne_reesTwo_sq :
    numeralReesTwo valuationOneCurve 0 0 ^ 2 =
      algebraMap (surfaceRing valuationOneCurve)
        (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0))
        (2 : surfaceRing valuationOneCurve) *
      centreReesMonomial (numeralCentreIdeal valuationOneCurve 0 0) 2
        ⟨(2 : surfaceRing valuationOneCurve), valuationOne_two_mem_sq⟩ := by
  apply Subtype.ext
  change (Polynomial.monomial 1 (2 : surfaceRing valuationOneCurve)) ^ 2 =
    Polynomial.C (2 : surfaceRing valuationOneCurve) *
      Polynomial.monomial 2 (2 : surfaceRing valuationOneCurve)
  rw [pow_two, Polynomial.monomial_mul_monomial, Polynomial.C_mul_monomial]

theorem valuationOne_specialTwo_sq_zero :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesTwo valuationOneCurve 0 0)) ^ 2 = 0 := by
  rw [← map_pow, valuationOne_reesTwo_sq, map_mul]
  have hzero :
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0))
        (algebraMap (surfaceRing valuationOneCurve)
          (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0))
          (2 : surfaceRing valuationOneCurve)) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  rw [hzero]
  exact zero_mul
    ((Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0))
      (centreReesMonomial (numeralCentreIdeal valuationOneCurve 0 0) 2
        ⟨(2 : surfaceRing valuationOneCurve), valuationOne_two_mem_sq⟩))

/-- `(0, 0)` lies on the reduction of `Y² = X³ + 2`. -/
theorem surfaceResidueVanishes_valuationOne :
    surfaceResidueVanishes valuationOneCurve 0 0 := by
  rw [surfaceResidueVanishes, valuationOne_surfacePolynomial, map_add, map_sub,
    map_pow, map_pow, numeralEval, MvPolynomial.eval₂Hom_X',
    MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C, coeffToResidue,
    MvPolynomial.eval₂Hom_C, residue_kills_two]
  simp

/-- `1` is not in the numeral centre at `(0, 0)` on `Y² = X³ + 2`.
`centreResidueHom` lands in `𝔽₂`, so the quotient by the centre is not
the zero ring. -/
theorem one_not_mem_numeralCentreIdeal_valuationOne :
    (1 : surfaceRing valuationOneCurve) ∉
      numeralCentreIdeal valuationOneCurve 0 0 := by
  intro hmem
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let φ := centreResidueHom valuationOneCurve 0 0 surfaceResidueVanishes_valuationOne
  have hquot : (1 : surfaceRing valuationOneCurve ⧸ I) = 0 := by
    rw [← map_one (Ideal.Quotient.mk I)]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr hmem
  have := congrArg φ hquot
  rw [map_one, map_zero] at this
  exact one_ne_zero this

/-- Swap the surface variables so `Y` becomes variable `0`. -/
private noncomputable def valuationOneSwap :
    MvPolynomial (Fin 2) S ≃ₐ[S] MvPolynomial (Fin 2) S :=
  MvPolynomial.renameEquiv S (Equiv.swap (0 : Fin 2) 1)

private lemma valuationOne_swapped_polynomial :
    valuationOneSwap (surfacePolynomial valuationOneCurve) =
      MvPolynomial.X (0 : Fin 2) ^ 2 - MvPolynomial.X (1 : Fin 2) ^ 3 +
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) := by
  rw [valuationOne_surfacePolynomial, valuationOneSwap, MvPolynomial.renameEquiv_apply]
  simp only [map_add, map_sub, map_pow, MvPolynomial.rename_X, MvPolynomial.rename_C,
    Equiv.swap_apply_left, Equiv.swap_apply_right]

/-- After the swap, `finSuccEquiv` writes the equation as a monic
quadratic in `Y`. -/
private lemma valuationOne_yPoly_eq :
    (MvPolynomial.finSuccEquiv S 1)
        (valuationOneSwap (surfacePolynomial valuationOneCurve)) =
      Polynomial.X ^ 2 +
        Polynomial.C
          (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) -
            (MvPolynomial.X (0 : Fin 1)) ^ 3) := by
  rw [valuationOne_swapped_polynomial]
  have hY : (MvPolynomial.finSuccEquiv S 1) (MvPolynomial.X (1 : Fin 2)) =
      Polynomial.C (MvPolynomial.X (0 : Fin 1)) := by
    have : (1 : Fin 2) = Fin.succ (0 : Fin 1) := rfl
    rw [this]
    exact MvPolynomial.finSuccEquiv_X_succ
  have hC : (MvPolynomial.finSuccEquiv S 1)
      (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) =
      Polynomial.C (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) :=
    (MvPolynomial.finSuccEquiv S 1).commutes _
  simp only [map_add, map_sub, map_pow, MvPolynomial.finSuccEquiv_X_zero, hY, hC]
  ring

private lemma valuationOne_yPoly_monic :
    ((MvPolynomial.finSuccEquiv S 1)
      (valuationOneSwap (surfacePolynomial valuationOneCurve))).Monic := by
  rw [valuationOne_yPoly_eq]
  refine Polynomial.monic_X_pow_add ?_
  exact (Polynomial.degree_C_le).trans_lt
    (WithBot.coe_lt_coe.mpr (by decide : (0 : ℕ) < 2))

set_option maxHeartbeats 2000000 in
/-- Multiplication by `2` is injective on `R = S[X,Y] / (Y² − X³ + 2)`.
The equation is monic of degree `2` in `Y`, and `2 ≠ 0` in `ℤ_[2]`. -/
theorem valuationOne_two_regular (r : surfaceRing valuationOneCurve)
    (hr : (2 : surfaceRing valuationOneCurve) * r = 0) : r = 0 := by
  obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective r
  have hmem : MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) * f ∈
      Ideal.span {surfacePolynomial valuationOneCurve} := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, ← two_eq_quotient_mk]
    exact hr
  obtain ⟨g, hg⟩ := Ideal.mem_span_singleton'.mp hmem
  let e := valuationOneSwap.trans (MvPolynomial.finSuccEquiv S 1)
  have hq : (e (surfacePolynomial valuationOneCurve)).Monic := valuationOne_yPoly_monic
  have hc : e (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) =
      Polynomial.C (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) := by
    change (MvPolynomial.finSuccEquiv S 1)
        (valuationOneSwap (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])))) = _
    have hswap : valuationOneSwap (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) =
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) := by
      rw [valuationOneSwap, MvPolynomial.renameEquiv_apply, MvPolynomial.rename_C]
    rw [hswap]
    exact (MvPolynomial.finSuccEquiv S 1).commutes (MvPolynomial.C (2 : ℤ_[2]))
  have hdiv : e (surfacePolynomial valuationOneCurve) ∣
      Polynomial.C (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) * e f := by
    refine ⟨e g, ?_⟩
    rw [mul_comm (e (surfacePolynomial valuationOneCurve)), ← map_mul e, hg, map_mul e, hc]
  set q := e (surfacePolynomial valuationOneCurve)
  set gf := e f
  set c : MvPolynomial (Fin 1) S := MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))
  have hc0 : c ≠ 0 := by
    intro hz
    have hzC : (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) : MvPolynomial (Fin 1) S) =
        MvPolynomial.C (0 : S) := by
      simpa [MvPolynomial.C_0] using hz
    have hS : (MvPolynomial.C (2 : ℤ_[2]) : S) = 0 :=
      MvPolynomial.C_injective (Fin 1) S hzC
    have h2 : (2 : ℤ_[2]) = 0 :=
      MvPolynomial.C_injective (Fin 2) ℤ_[2]
        (show MvPolynomial.C (2 : ℤ_[2]) = MvPolynomial.C 0 by
          simpa [MvPolynomial.C_0] using hS)
    exact Nat.cast_ne_zero.mpr (by decide : (2 : ℕ) ≠ 0) h2
  have hrem : (Polynomial.C c * gf) %ₘ q = 0 :=
    (Polynomial.modByMonic_eq_zero_iff_dvd hq).mpr hdiv
  have hprod : Polynomial.C c * (gf %ₘ q) = 0 := by
    have hsmul := Polynomial.smul_modByMonic (q := q) c gf
    simp only [Algebra.smul_def, Polynomial.algebraMap_eq] at hsmul
    rw [← hsmul, hrem]
  have hrem0 : gf %ₘ q = 0 := by
    apply Polynomial.ext
    intro n
    rw [Polynomial.coeff_zero]
    have hcoeff : c * (gf %ₘ q).coeff n = 0 := by
      rw [← Polynomial.coeff_C_mul, hprod, Polynomial.coeff_zero]
    exact (mul_eq_zero.mp hcoeff).resolve_left hc0
  have hgf : q ∣ gf := (Polynomial.modByMonic_eq_zero_iff_dvd hq).mp hrem0
  obtain ⟨t, ht⟩ := hgf
  have hf : f = surfacePolynomial valuationOneCurve * e.symm t := by
    apply e.injective
    rw [map_mul e, AlgEquiv.apply_symm_apply]
    exact ht
  rw [hf]
  exact Ideal.Quotient.eq_zero_iff_mem.mpr
    (Ideal.mem_span_singleton'.mpr ⟨e.symm t, mul_comm _ _⟩)

/-- On `Y² = X³ + 2` at `(0, 0)`, the class of `2t` in `Rees/(2)` is not
zero. `(2t)² = 0` because `2 ∈ I²`, so `(2t)²` is the scalar `2` times
`2 t²`. The scalar ideal is degree zero. Membership of `monomial 1 (2)`
in that ideal would give `a ∈ I` with `2 * a = 2`, hence `a = 1` by
`valuationOne_two_regular`, contradicting
`one_not_mem_numeralCentreIdeal_valuationOne`. -/
theorem valuationOne_specialTwo_ne_zero :
    Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesTwo valuationOneCurve 0 0) ≠ 0 := by
  intro hzero
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hmem : numeralReesTwo valuationOneCurve 0 0 ∈ J :=
    Ideal.Quotient.eq_zero_iff_mem.mp hzero
  obtain ⟨z, hz⟩ := Ideal.mem_span_singleton'.mp hmem
  have hzpoly :
      (z : Polynomial (surfaceRing valuationOneCurve)) *
        Polynomial.C (2 : surfaceRing valuationOneCurve) =
      Polynomial.monomial 1 (2 : surfaceRing valuationOneCurve) := by
    have hz' := congrArg
      (fun w : reesAlgebra I => (w : Polynomial (surfaceRing valuationOneCurve))) hz
    simpa [numeralReesTwo, centreReesMonomial] using hz'
  have hcoeff : (2 : surfaceRing valuationOneCurve) *
      (z : Polynomial (surfaceRing valuationOneCurve)).coeff 1 = 2 := by
    rw [mul_comm] at hzpoly
    have this := congrArg
      (fun p : Polynomial (surfaceRing valuationOneCurve) => p.coeff 1) hzpoly
    change (Polynomial.C (2 : surfaceRing valuationOneCurve) *
        (z : Polynomial (surfaceRing valuationOneCurve))).coeff 1 =
      (Polynomial.monomial 1 (2 : surfaceRing valuationOneCurve)).coeff 1 at this
    rw [Polynomial.coeff_C_mul, Polynomial.coeff_monomial_same] at this
    exact this
  have ha : (z : Polynomial (surfaceRing valuationOneCurve)).coeff 1 ∈ I := by
    simpa [pow_one] using z.property 1
  set a : surfaceRing valuationOneCurve :=
    (z : Polynomial (surfaceRing valuationOneCurve)).coeff 1
  have hsub : (2 : surfaceRing valuationOneCurve) * (a - 1) = 0 := by
    have h' : (2 : surfaceRing valuationOneCurve) * a - 2 = 0 := by
      rw [hcoeff, sub_self]
    convert h' using 1
    ring
  have ha1 : a = 1 := sub_eq_zero.mp (valuationOne_two_regular (a - 1) hsub)
  exact one_not_mem_numeralCentreIdeal_valuationOne (ha1 ▸ ha)

/-- On this curve the chart `D₊(2t)` is the zero ring: `(2t)²` dies in
`Rees/(2)`, so inverting `2t` collapses the ring. -/
theorem chart_Dplus_2t_subsingleton_valuationOne :
    Subsingleton (chart_Dplus_2t_ring valuationOneCurve 0 0) := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0)
  let f := Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0)
  have hf : f ^ 2 = 0 := valuationOne_specialTwo_sq_zero
  have h0 : (0 : reesAlgebra I ⧸ J) ∈ Submonoid.powers f :=
    (Submonoid.mem_powers_iff 0 f).mpr ⟨2, hf⟩
  unfold chart_Dplus_2t_ring
  exact @HomogeneousLocalization.subsingleton ℕ (surfaceRing valuationOneCurve)
    (reesAlgebra I ⧸ J) _ _ _
    (homogeneousQuotientComponent (centreReesComponent I) J)
    (Submonoid.powers f) h0

/-- A positive power equal to zero forces the basic open in `Proj` to be
empty: `D₊(f^n) = D₊(f)` and `D₊(0) = ⊥`. -/
theorem proj_basicOpen_bot_of_pow_eq_zero
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (f : A) {n : ℕ} (hn : 0 < n) (hfn : f ^ n = 0) :
    ProjectiveSpectrum.basicOpen 𝒜 f = ⊥ := by
  rw [← ProjectiveSpectrum.basicOpen_pow 𝒜 f n hn, hfn, ProjectiveSpectrum.basicOpen_zero]

set_option maxHeartbeats 2000000

/-- On `Y² = X³ + 2` at `(0, 0)`, `(2t)² = 0` in `Rees/(2)`, so every
point of `Proj(Rees(I)/(2))` contains the class of `2t`. That is
`D₊(2t) = ∅`. `proj_basicOpen_bot_of_pow_eq_zero` is the same fact
written with `basicOpen_pow` and `basicOpen_zero`. -/
noncomputable def chart_Dplus_2t_empty_pack : Σ' p : Prop, p := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := (Ideal.Quotient.mk J) (numeralReesTwo valuationOneCurve 0 0)
  refine ⟨∀ x : @ProjectiveSpectrum (surfaceRing valuationOneCurve) (reesAlgebra I ⧸ J)
      _ _ _ ℬ _, f ∈ x.asHomogeneousIdeal.toIdeal, ?_⟩
  intro x
  have hpow : f ^ 2 ∈ x.asHomogeneousIdeal.toIdeal := by
    rw [valuationOne_specialTwo_sq_zero]
    exact Submodule.zero_mem _
  exact x.isPrime.mem_of_pow_mem 2 hpow

/-- `D₊(2t) = ⊥` on this curve. -/
def chart_Dplus_2t_empty : Prop := chart_Dplus_2t_empty_pack.1

theorem chart_Dplus_2t_empty_holds : chart_Dplus_2t_empty :=
  chart_Dplus_2t_empty_pack.2

theorem chart_Dplus_2t_not_equiv_F2 :
    ¬ Nonempty (chart_Dplus_2t_ring valuationOneCurve 0 0 ≃ ZMod 2) := by
  intro ⟨e⟩
  haveI := chart_Dplus_2t_subsingleton_valuationOne
  exact zero_ne_one ((Equiv.injective e.symm).subsingleton.elim (0 : ZMod 2) 1)

/-- The claim that `W(ap, bq) ≡ 0 (mod 2)` produces a point of
`Spec` of the chart `D₊(2t)`. The direction `[1:0:0]` would be a prime
of `ideal_UV = (U, V)` with residue field `𝔽₂`. Valuation one of the
constant term makes `2t` nilpotent on the special fibre, and the chart
is then the zero ring. -/
def familySpecialFibrePoint_Dplus_2t : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    ¬ Subsingleton (chart_Dplus_2t_ring W ap bq)

theorem not_familySpecialFibrePoint_Dplus_2t :
    ¬ familySpecialFibrePoint_Dplus_2t := by
  intro h
  exact h valuationOneCurve 0 0 surfaceResidueVanishes_valuationOne
    chart_Dplus_2t_subsingleton_valuationOne

/-- The degree-zero chart ring `(Rees(I)/(2))_((X - ap) t)`. -/
noncomputable def chart_Dplus_Xt_ring
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) : Type :=
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  let _ : Algebra (surfaceRing W) (reesAlgebra I) := inferInstance
  let _ : Algebra (surfaceRing W) (reesAlgebra I ⧸ J) := inferInstance
  HomogeneousLocalization.Away
    (homogeneousQuotientComponent (centreReesComponent I) J)
    (Ideal.Quotient.mk J (numeralReesXT W ap bq))

/-- `2t / (X - ap) t` on the chart `D₊(Xt)`. -/
noncomputable def chart_two_over_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesTwo W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesTwo] using
          specialClass_mem_degree_one W ap bq (2 : surfaceRing W)
            (two_mem_numeralCentreIdeal W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesXT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (0 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
            (numeral_X_mem_centre W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- `(Y - bq) t / (X - ap) t` on the chart `D₊(Xt)`. -/
noncomputable def chart_Y_over_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesYT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (1 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))))
            (numeral_Y_mem_centre W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesXT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (0 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
            (numeral_X_mem_centre W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- The degree-zero class of `X - ap` on the chart `D₊(Xt)`.
This is the fraction `C(X - ap) / 1`. It is not the ratio `2t / Xt`. -/
noncomputable def chart_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralX W ap))
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using
          specialClass_mem_degree_zero W ap bq (surfaceNumeralX W ap)⟩,
      ⟨(1 : reesAlgebra I ⧸ J), quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

/-- The degree-zero class of `Y - bq` on the chart `D₊(Xt)`.
This is the fraction `C(Y - bq) / 1`. It is not the ratio `Yt / Xt`. -/
noncomputable def chart_Y (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralY W bq))
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using
          specialClass_mem_degree_zero W ap bq (surfaceNumeralY W bq)⟩,
      ⟨(1 : reesAlgebra I ⧸ J), quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

noncomputable instance chartXtCommRing
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    CommRing (chart_Dplus_Xt_ring W ap bq) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  unfold chart_Dplus_Xt_ring
  infer_instance

/-- The ideal of ratios `(2t / Xt, Yt / Xt)` in the chart `D₊(Xt)`.
Its generators do not include the degree-zero classes of `X` and `Y`. -/
noncomputable def ideal_two_Y_over_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (chart_Dplus_Xt_ring W ap bq) :=
  Ideal.span {chart_two_over_X W ap bq, chart_Y_over_X W ap bq}

/-- The ideal `⟨X, Y, 2t/Xt, Yt/Xt⟩` in the chart `D₊(Xt)`.
`X` and `Y` are the degree-zero classes, not the ratios. -/
noncomputable def ideal_XYUV (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (chart_Dplus_Xt_ring W ap bq) :=
  Ideal.span
    {chart_X W ap bq, chart_Y W ap bq,
      chart_two_over_X W ap bq, chart_Y_over_X W ap bq}

/-- Evaluate `S[X, Y]` in `𝔽₂` at a chosen residue point. -/
noncomputable def residuePointEval (x y : ZMod 2) : MvPolynomial (Fin 2) S →+* ZMod 2 :=
  MvPolynomial.eval₂Hom coeffToResidue (fun i : Fin 2 => if i = 0 then x else y)

theorem residuePointEval_valuationOne :
    residuePointEval 1 1 (surfacePolynomial valuationOneCurve) = 0 := by
  rw [residuePointEval, valuationOne_surfacePolynomial, map_add, map_sub, map_pow, map_pow,
    MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C,
    if_pos rfl, if_neg (by decide : (1 : Fin 2) ≠ 0), coeffToResidue,
    MvPolynomial.eval₂Hom_C, residue_kills_two]
  simp

/-- The surface ring of `Y² = X³ + 2` maps to `𝔽₂` with `X ↦ 1` and `Y ↦ 1`. -/
noncomputable def valuationOne_X_residue : surfaceRing valuationOneCurve →+* ZMod 2 :=
  Ideal.Quotient.lift (Ideal.span {surfacePolynomial valuationOneCurve})
    (residuePointEval 1 1) (by
      intro a ha
      obtain ⟨d, rfl⟩ := Ideal.mem_span_singleton.mp ha
      rw [map_mul, residuePointEval_valuationOne, zero_mul])

theorem valuationOne_X_residue_X :
    valuationOne_X_residue
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2))) = 1 := by
  rw [valuationOne_X_residue, Ideal.Quotient.lift_mk, residuePointEval,
    MvPolynomial.eval₂Hom_X', if_pos rfl]

theorem valuationOne_X_residue_two :
    valuationOne_X_residue (2 : surfaceRing valuationOneCurve) = 0 := by
  rw [map_ofNat]
  decide

/-- No power of the class of `X t` vanishes in `Rees/(2)`. A relation
`(X t)^n = 2 · p` would force `X^n` to be divisible by `2`, but `X`
survives as `1` in the residue field. -/
theorem valuationOne_specialXT_pow_ne_zero (n : ℕ) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesXT valuationOneCurve 0 0)) ^ n ≠ 0 := by
  intro hzero
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let R := surfaceRing valuationOneCurve
  have hmem : (numeralReesXT valuationOneCurve 0 0) ^ n ∈
      numeralReesSpecialIdeal valuationOneCurve 0 0 := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_pow]
    exact hzero
  obtain ⟨p, hp⟩ := Ideal.mem_span_singleton'.mp hmem
  let x : R := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
    (MvPolynomial.X (0 : Fin 2))
  have hmono : ((numeralReesXT valuationOneCurve 0 0 : reesAlgebra I) : Polynomial R) =
      Polynomial.monomial 1 x := by
    simp [numeralReesXT, centreReesMonomial, x]
  have hpoly := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
  dsimp at hpoly
  rw [hmono, Polynomial.monomial_pow] at hpoly
  simp only [one_mul] at hpoly
  rw [mul_comm] at hpoly
  have hcoeff := congrArg (fun q : Polynomial R => q.coeff n) hpoly
  dsimp at hcoeff
  rw [Polynomial.coeff_C_mul, Polynomial.coeff_monomial, if_pos rfl] at hcoeff
  have hdiv : x ^ n = (2 : R) * (p : Polynomial R).coeff n := hcoeff.symm
  have hφ := congrArg valuationOne_X_residue hdiv
  rw [map_pow, valuationOne_X_residue_X, map_mul, valuationOne_X_residue_two,
    zero_mul, one_pow] at hφ
  exact one_ne_zero hφ

set_option maxHeartbeats 2000000

/-- The chart `D₊(Xt)` does not collapse: no power of the denominator
is zero, so `0` and `1` stay distinct in the degree-zero localization. -/
theorem chart_Dplus_Xt_nontrivial_valuationOne :
    Nontrivial (chart_Dplus_Xt_ring valuationOneCurve 0 0) := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  letI : GradedAlgebra (homogeneousQuotientComponent (centreReesComponent I) J) :=
    homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  have hf : ∀ n, f ^ n ≠ 0 := valuationOne_specialXT_pow_ne_zero
  unfold chart_Dplus_Xt_ring
  refine ⟨0, 1, ?_⟩
  intro h
  have hval := congrArg HomogeneousLocalization.val h
  rw [HomogeneousLocalization.val_zero, HomogeneousLocalization.val_one] at hval
  rw [← Localization.mk_zero (1 : Submonoid.powers f), ← Localization.mk_one] at hval
  rw [Localization.mk_eq_mk_iff] at hval
  obtain ⟨c, hc⟩ := Localization.r_iff_exists.mp hval
  have hc0 : (c : reesAlgebra I ⧸ J) = 0 := by
    dsimp at hc
    rw [one_mul (0 : reesAlgebra I ⧸ J), one_mul (1 : reesAlgebra I ⧸ J),
      mul_zero (c : reesAlgebra I ⧸ J), mul_one (c : reesAlgebra I ⧸ J)] at hc
    exact hc.symm
  obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff (c : reesAlgebra I ⧸ J) f).mp c.property
  exact hf n (hn.trans hc0)

/-- `D₊(Xt)` has a prime on this curve. The prime is a maximal ideal of
the chart ring. It is not shown to be the ideal of ratios
`(2t / Xt, Yt / Xt)`, and the residue field is not shown to be `𝔽₂`. -/
theorem chart_Dplus_Xt_prime_valuationOne :
    Nonempty (PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0)) := by
  haveI := chart_Dplus_Xt_nontrivial_valuationOne
  infer_instance

private lemma const_X_mul_two_eq_scalar_two_mul_xt
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    numeralReesConst W ap bq (surfaceNumeralX W ap) * numeralReesTwo W ap bq =
      algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq))
          (2 : surfaceRing W) *
        numeralReesXT W ap bq := by
  apply Subtype.ext
  unfold numeralReesConst numeralReesTwo numeralReesXT centreReesMonomial surfaceNumeralX
  rw [Subalgebra.coe_mul, Subalgebra.coe_mul, Subalgebra.coe_algebraMap]
  dsimp
  rw [Polynomial.C_mul_monomial]
  have hcoef := mul_comm
    ((Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
      (MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
    (2 : surfaceRing W)
  rw [hcoef, ← Polynomial.C_mul_monomial]

private lemma xt_mul_const_Y_eq_const_X_mul_yt
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    numeralReesXT W ap bq * numeralReesConst W ap bq (surfaceNumeralY W bq) =
      numeralReesConst W ap bq (surfaceNumeralX W ap) * numeralReesYT W ap bq := by
  apply Subtype.ext
  unfold numeralReesXT numeralReesYT numeralReesConst centreReesMonomial
    surfaceNumeralX surfaceNumeralY
  rw [Subalgebra.coe_mul, Subalgebra.coe_mul]
  dsimp
  rw [Polynomial.monomial_mul_C, Polynomial.C_mul_monomial]

/-- In `Rees/(2)`, the degree-zero class of `X - ap` kills `2t / Xt`. -/
theorem chart_X_mul_two_over_X_eq_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_X W ap bq * chart_two_over_X W ap bq = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_mul, HomogeneousLocalization.val_zero]
  simp only [chart_X, chart_two_over_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_mul]
  have hnum :
      Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralX W ap)) *
        Ideal.Quotient.mk J (numeralReesTwo W ap bq) = 0 := by
    rw [← map_mul, const_X_mul_two_eq_scalar_two_mul_xt, map_mul]
    have h2 : Ideal.Quotient.mk J
        (algebraMap (surfaceRing W) (reesAlgebra I) (2 : surfaceRing W)) = 0 := by
      rw [Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.mem_span_singleton_self _
    rw [h2]
    exact zero_mul ((Ideal.Quotient.mk J) (numeralReesXT W ap bq))
  rw [hnum]
  rw [← Localization.mk_zero (1 : Submonoid.powers f)]
  rw [Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  dsimp
  rw [mul_zero ((1 : reesAlgebra I ⧸ J) *
    (Ideal.Quotient.mk J) (numeralReesXT W ap bq))]
  rw [mul_zero (1 : reesAlgebra I ⧸ J)]
  rw [mul_zero (1 : reesAlgebra I ⧸ J)]

/-- `C(Y - bq) / 1 = C(X - ap) / 1 · (Yt / Xt)` on the chart `D₊(Xt)`. -/
theorem chart_Y_eq_chart_X_mul_Y_over_X
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Y W ap bq = chart_X W ap bq * chart_Y_over_X W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_mul]
  simp only [chart_Y, chart_X, chart_Y_over_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_mul, Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  have hcomm := congrArg (Ideal.Quotient.mk J)
    (xt_mul_const_Y_eq_const_X_mul_yt W ap bq)
  rw [map_mul, map_mul] at hcomm
  dsimp
  rw [one_mul (((1 : reesAlgebra I ⧸ J) * (Ideal.Quotient.mk J) (numeralReesXT W ap bq)) *
    (Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralY W bq)))]
  rw [one_mul ((1 : reesAlgebra I ⧸ J) *
    ((Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralX W ap)) *
      (Ideal.Quotient.mk J) (numeralReesYT W ap bq)))]
  rw [one_mul ((Ideal.Quotient.mk J) (numeralReesXT W ap bq))]
  rw [one_mul ((Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralX W ap)) *
    (Ideal.Quotient.mk J) (numeralReesYT W ap bq))]
  exact hcomm

/-- `Y` kills `2t / Xt` as well, because `Y = X · (Yt / Xt)`. -/
theorem chart_Y_mul_two_over_X_eq_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Y W ap bq * chart_two_over_X W ap bq = 0 := by
  rw [chart_Y_eq_chart_X_mul_Y_over_X, mul_right_comm,
    chart_X_mul_two_over_X_eq_zero, zero_mul]

/-- `Y` is redundant in `⟨X, Y, 2t/Xt, Yt/Xt⟩`: it equals `X · (Yt / Xt)`. -/
theorem ideal_XYUV_eq_span_X_UV
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    ideal_XYUV W ap bq =
      Ideal.span {chart_X W ap bq, chart_two_over_X W ap bq,
        chart_Y_over_X W ap bq} := by
  apply le_antisymm
  · rw [ideal_XYUV, Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl | rfl
    · exact Ideal.subset_span (by simp)
    · rw [chart_Y_eq_chart_X_mul_Y_over_X]
      exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
  · rw [ideal_XYUV, Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)


/-- `Y` lies in `⟨X, 2t/Xt, Yt/Xt⟩`, because `Y = X · (Yt / Xt)`. -/
theorem chart_Y_mem_span_X_UV
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Y W ap bq ∈ Ideal.span {chart_X W ap bq, chart_two_over_X W ap bq,
      chart_Y_over_X W ap bq} := by
  rw [chart_Y_eq_chart_X_mul_Y_over_X]
  exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))

/-- Quotienting the chart by `⟨X, 2t/Xt, Yt/Xt⟩` kills `Y`.
The class of `Y` is not a leftover nilpotent. -/
theorem quotient_span_XUV_kills_Y
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal.Quotient.mk (Ideal.span {chart_X W ap bq, chart_two_over_X W ap bq,
        chart_Y_over_X W ap bq}) (chart_Y W ap bq) = 0 := by
  rw [Ideal.Quotient.eq_zero_iff_mem]
  exact chart_Y_mem_span_X_UV W ap bq

/-!
### Polynomial model of the chart

`𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`, then the further quotient by
`⟨X, U, V⟩`. This is not an isomorphism with `chart_Dplus_Xt_ring`.
-/

/-- `X` in the model `𝔽₂[X, Y, U, V]`. -/
noncomputable def modelX : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 0

/-- `Y` in the model `𝔽₂[X, Y, U, V]`. -/
noncomputable def modelY : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 1

/-- `U`, standing for `2t / Xt`. -/
noncomputable def modelU : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 2

/-- `V`, standing for `Yt / Xt`. -/
noncomputable def modelV : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 3

/-- The relations `X·U = 0`, `Y = X·V`, and `Y² = X³`. -/
noncomputable def modelRelationIdeal : Ideal (MvPolynomial (Fin 4) (ZMod 2)) :=
  Ideal.span {modelX * modelU, modelY - modelX * modelV, modelY ^ 2 - modelX ^ 3}

/-- `⟨X, U, V⟩` in the polynomial model. -/
noncomputable def modelXUVIdeal : Ideal (MvPolynomial (Fin 4) (ZMod 2)) :=
  Ideal.span {modelX, modelU, modelV}

/-- `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`. -/
abbrev modelXtChart : Type :=
  MvPolynomial (Fin 4) (ZMod 2) ⧸ modelRelationIdeal

/-- The model chart modulo `⟨X, U, V⟩`. -/
abbrev modelXtChartModXUV : Type :=
  modelXtChart ⧸ modelXUVIdeal.map (Ideal.Quotient.mk modelRelationIdeal)

/-- `⟨Y² − X³, X, U, V⟩`, the model that drops `Y = X·V`. -/
noncomputable def modelForgetYIdeal : Ideal (MvPolynomial (Fin 4) (ZMod 2)) :=
  Ideal.span {modelY ^ 2 - modelX ^ 3, modelX, modelU, modelV}

private lemma modelRelation_sup_XUV_eq_named_span :
    modelRelationIdeal ⊔ modelXUVIdeal =
      Ideal.span ({modelX, modelY, modelU, modelV} :
        Set (MvPolynomial (Fin 4) (ZMod 2))) := by
  apply le_antisymm
  · refine sup_le ?_ ?_
    · rw [modelRelationIdeal, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl | rfl
      · exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))
      · exact Ideal.sub_mem _ (Ideal.subset_span (by simp))
          (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
      · exact Ideal.sub_mem _
          (Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) 2 (by decide))
          (Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) 3 (by decide))
    · rw [modelXUVIdeal, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl | rfl
      · exact Ideal.subset_span (by simp)
      · exact Ideal.subset_span (by simp)
      · exact Ideal.subset_span (by simp)
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl | rfl
    · exact Submodule.mem_sup_right (by
        rw [modelXUVIdeal]; exact Ideal.subset_span (by simp))
    · rw [← sub_add_cancel modelY (modelX * modelV)]
      refine Ideal.add_mem _ ?_ ?_
      · exact Submodule.mem_sup_left (by
          rw [modelRelationIdeal]; exact Ideal.subset_span (by simp))
      · exact Submodule.mem_sup_right (by
          rw [modelXUVIdeal]
          exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
    · exact Submodule.mem_sup_right (by
        rw [modelXUVIdeal]; exact Ideal.subset_span (by simp))
    · exact Submodule.mem_sup_right (by
        rw [modelXUVIdeal]; exact Ideal.subset_span (by simp))

private lemma model_named_span_eq_X_image :
    Ideal.span ({modelX, modelY, modelU, modelV} :
        Set (MvPolynomial (Fin 4) (ZMod 2))) =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) := by
  apply congrArg Ideal.span
  ext z
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff, Set.mem_image,
    Set.mem_univ, true_and]
  constructor
  · rintro (rfl | rfl | rfl | rfl)
    · exact ⟨0, rfl⟩
    · exact ⟨1, rfl⟩
    · exact ⟨2, rfl⟩
    · exact ⟨3, rfl⟩
  · rintro ⟨i, rfl⟩
    have hcov : ∀ j : Fin 4, j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by decide
    rcases hcov i with rfl | rfl | rfl | rfl
    · simp [modelX, modelY, modelU, modelV]
    · simp [modelX, modelY, modelU, modelV]
    · simp [modelX, modelY, modelU, modelV]
    · simp [modelX, modelY, modelU, modelV]

/-- `⟨X·U, Y − X·V, Y² − X³⟩` together with `⟨X, U, V⟩` is the ideal of
all four variables. `Y` enters through `Y = (Y − X·V) + X·V`. -/
theorem modelRelation_sup_XUV_eq_X_span :
    modelRelationIdeal ⊔ modelXUVIdeal =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) :=
  modelRelation_sup_XUV_eq_named_span.trans model_named_span_eq_X_image

/-- Evaluation at the origin of `𝔽₂⁴`. -/
noncomputable def modelEvalZero :
    MvPolynomial (Fin 4) (ZMod 2) →+* ZMod 2 :=
  MvPolynomial.eval (fun _ => (0 : ZMod 2))

theorem modelEvalZero_surjective : Function.Surjective modelEvalZero := by
  intro a
  exact ⟨MvPolynomial.C a, by simp [modelEvalZero]⟩

private lemma modelEvalZero_eq_coeff_zero
    (p : MvPolynomial (Fin 4) (ZMod 2)) :
    modelEvalZero p = p.coeff 0 := by
  classical
  rw [modelEvalZero, MvPolynomial.eval_eq]
  have hterm : ∀ d : Fin 4 →₀ ℕ, d ≠ 0 →
      p.coeff d * ∏ i ∈ d.support, (0 : ZMod 2) ^ d i = 0 := by
    intro d hd
    have hsup : d.support.Nonempty := by
      rw [Finset.nonempty_iff_ne_empty]
      intro hempty
      apply hd
      exact (Finsupp.support_eq_empty.mp hempty)
    obtain ⟨i, hi⟩ := hsup
    rw [Finset.prod_eq_zero hi (zero_pow (Finsupp.mem_support_iff.mp hi)), mul_zero]
  by_cases h0 : (0 : Fin 4 →₀ ℕ) ∈ p.support
  · rw [Finset.sum_eq_single (0 : Fin 4 →₀ ℕ)]
    · simp [Finsupp.support_zero]
    · intro d _hd hd0
      exact hterm d hd0
    · intro h
      exact (h h0).elim
  · rw [MvPolynomial.not_mem_support_iff.mp h0]
    apply Finset.sum_eq_zero
    intro d hd
    apply hterm d
    intro hd0
    apply h0
    simpa [hd0] using hd

theorem modelEvalZero_ker :
    RingHom.ker modelEvalZero =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) := by
  ext p
  rw [RingHom.mem_ker, modelEvalZero_eq_coeff_zero,
    MvPolynomial.mem_ideal_span_X_image]
  constructor
  · intro hcoeff m hm
    have hm0 : m ≠ 0 := by
      intro hm0
      subst hm0
      rw [MvPolynomial.mem_support_iff] at hm
      exact hm hcoeff
    have hex : ∃ i, m i ≠ 0 := by
      by_contra h
      push_neg at h
      apply hm0
      ext i
      exact h i
    obtain ⟨i, hi⟩ := hex
    exact ⟨i, Set.mem_univ _, hi⟩
  · intro h
    by_contra hnz
    have hmem : (0 : Fin 4 →₀ ℕ) ∈ p.support :=
      MvPolynomial.mem_support_iff.mpr hnz
    obtain ⟨i, -, hi⟩ := h 0 hmem
    exact hi rfl

/-- The model chart modulo `⟨X, U, V⟩` is `𝔽₂`. `Y` is zero because
`Y = X·V`, and `Y² − X³` becomes `0 = 0`. -/
noncomputable def modelXtChartModXUV_equiv_F2 :
    modelXtChartModXUV ≃+* ZMod 2 :=
  (DoubleQuot.quotQuotEquivQuotSup modelRelationIdeal modelXUVIdeal).trans <|
    (Ideal.quotEquivOfEq modelRelation_sup_XUV_eq_X_span).trans <|
      (Ideal.quotEquivOfEq modelEvalZero_ker.symm).trans <|
        RingHom.quotientKerEquivOfSurjective modelEvalZero_surjective

/-- In the quotient that drops `Y = X·V`, the class of `Y` squares to
zero, because `Y² = X³` and `X = 0`. -/
theorem modelForgetY_class_Y_sq_zero :
    (Ideal.Quotient.mk modelForgetYIdeal modelY) ^ 2 = 0 := by
  rw [← map_pow, Ideal.Quotient.eq_zero_iff_mem,
    ← sub_add_cancel (modelY ^ 2) (modelX ^ 3)]
  refine Ideal.add_mem _ ?_ ?_
  · rw [modelForgetYIdeal]
    exact Ideal.subset_span (by simp)
  · exact Ideal.pow_mem_of_mem _ (by
      rw [modelForgetYIdeal]
      exact Ideal.subset_span (by simp)) 3 (by decide)

/-- `X` is not divisible by `X²` in `𝔽₂[T]`. -/
theorem polynomial_X_not_mem_span_X_sq :
    (Polynomial.X : Polynomial (ZMod 2)) ∉
      Ideal.span ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
        Set (Polynomial (ZMod 2))) := by
  intro h
  rw [Ideal.mem_span_singleton, Polynomial.X_pow_dvd_iff] at h
  have h1 := h 1 (by decide)
  rw [Polynomial.coeff_X] at h1
  simp at h1

/-- `𝔽₂[T] / (T²)`. -/
abbrev modelNilpRing : Type :=
  Polynomial (ZMod 2) ⧸
    Ideal.span ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
      Set (Polynomial (ZMod 2)))

/-- Send `Y` to the class of `T` and `X`, `U`, `V` to `0`. -/
noncomputable def modelForgetYToNilp :
    MvPolynomial (Fin 4) (ZMod 2) →+* modelNilpRing :=
  MvPolynomial.eval₂Hom
    ((Ideal.Quotient.mk (Ideal.span
      ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} : Set (Polynomial (ZMod 2))))).comp
      Polynomial.C)
    (fun i : Fin 4 =>
      if i = 1 then
        Ideal.Quotient.mk (Ideal.span
          ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
            Set (Polynomial (ZMod 2)))) Polynomial.X
      else 0)

private lemma modelForgetYToNilp_X : modelForgetYToNilp modelX = 0 := by
  unfold modelForgetYToNilp modelX
  rw [MvPolynomial.eval₂Hom_X']
  simp

private lemma modelForgetYToNilp_U : modelForgetYToNilp modelU = 0 := by
  unfold modelForgetYToNilp modelU
  rw [MvPolynomial.eval₂Hom_X']
  simp

private lemma modelForgetYToNilp_V : modelForgetYToNilp modelV = 0 := by
  unfold modelForgetYToNilp modelV
  rw [MvPolynomial.eval₂Hom_X']
  simp

private lemma modelForgetYToNilp_Ysq_sub :
    modelForgetYToNilp (modelY ^ 2 - modelX ^ 3) = 0 := by
  rw [map_sub, map_pow, map_pow]
  unfold modelForgetYToNilp modelY modelX
  rw [MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X']
  simp
  rw [← map_pow, Ideal.Quotient.eq_zero_iff_mem]
  exact Ideal.mem_span_singleton_self _

private lemma modelForgetYIdeal_le_ker :
    modelForgetYIdeal ≤ RingHom.ker modelForgetYToNilp := by
  rw [modelForgetYIdeal, Ideal.span_le]
  intro z hz
  rw [SetLike.mem_coe, RingHom.mem_ker]
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · exact modelForgetYToNilp_Ysq_sub
  · exact modelForgetYToNilp_X
  · exact modelForgetYToNilp_U
  · exact modelForgetYToNilp_V

private lemma modelForgetYToNilp_Y :
    modelForgetYToNilp modelY =
      Ideal.Quotient.mk (Ideal.span
        ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
          Set (Polynomial (ZMod 2)))) Polynomial.X := by
  unfold modelForgetYToNilp modelY
  rw [MvPolynomial.eval₂Hom_X']
  simp

/-- The class of `Y` is nonzero in
`𝔽₂[X,Y,U,V] / (Y² − X³, X, U, V)`. Together with
`modelForgetY_class_Y_sq_zero`, it is a nonzero nilpotent, so
`⟨X, U, V⟩` does not kill `Y` unless the relation `Y = X·V` is used. -/
theorem modelForgetY_class_Y_ne_zero :
    Ideal.Quotient.mk modelForgetYIdeal modelY ≠ 0 := by
  intro h
  have hker : modelForgetYToNilp modelY = 0 := by
    rw [RingHom.mem_ker.mp (modelForgetYIdeal_le_ker
      ((Ideal.Quotient.eq_zero_iff_mem).mp h))]
  rw [modelForgetYToNilp_Y] at hker
  rw [Ideal.Quotient.eq_zero_iff_mem] at hker
  exact polynomial_X_not_mem_span_X_sq hker

/-- `𝔽₂[X,Y,U,V] / (Y² − X³, X, U, V)` is not a field. -/
theorem modelForgetYIdeal_not_maximal : ¬ modelForgetYIdeal.IsMaximal := by
  intro hmax
  rw [Ideal.Quotient.maximal_ideal_iff_isField_quotient] at hmax
  have hy := modelForgetY_class_Y_ne_zero
  have hsq := modelForgetY_class_Y_sq_zero
  rcases hmax.mul_inv_cancel hy with ⟨b, hb⟩
  apply hy
  calc
    Ideal.Quotient.mk modelForgetYIdeal modelY
        = Ideal.Quotient.mk modelForgetYIdeal modelY * 1 := by rw [mul_one]
    _ = Ideal.Quotient.mk modelForgetYIdeal modelY *
          (Ideal.Quotient.mk modelForgetYIdeal modelY * b) := by rw [hb]
    _ = (Ideal.Quotient.mk modelForgetYIdeal modelY *
          Ideal.Quotient.mk modelForgetYIdeal modelY) * b := by rw [mul_assoc]
    _ = 0 * b := by rw [← pow_two, hsq]
    _ = 0 := zero_mul _

private lemma numeralReesConst_pow
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) (n : ℕ) :
    numeralReesConst W ap bq r ^ n = numeralReesConst W ap bq (r ^ n) := by
  apply Subtype.ext
  unfold numeralReesConst centreReesMonomial
  rw [Subalgebra.coe_pow]
  dsimp
  exact (Polynomial.C_pow).symm

private lemma numeralReesConst_sub
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r s : surfaceRing W) :
    numeralReesConst W ap bq r - numeralReesConst W ap bq s =
      numeralReesConst W ap bq (r - s) := by
  unfold numeralReesConst
  rw [← map_sub (centreReesMonomial (numeralCentreIdeal W ap bq) 0)]
  congr 1

private lemma numeralReesConst_eq_algebraMap
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    numeralReesConst W ap bq r =
      algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq)) r := by
  apply Subtype.ext
  unfold numeralReesConst centreReesMonomial
  rw [Subalgebra.coe_algebraMap]
  dsimp

/-- On `Y² = X³ + 2` at `(0, 0)`, `Y² − X³ = −2` in the surface ring. -/
theorem valuationOne_node_Ysq_sub_Xcu :
    surfaceNumeralY valuationOneCurve 0 ^ 2 -
      surfaceNumeralX valuationOneCurve 0 ^ 3 =
      -(2 : surfaceRing valuationOneCurve) := by
  have hX : surfaceNumeralX valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2)) := by
    simp [surfaceNumeralX, map_zero, sub_zero]
  have hY : surfaceNumeralY valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (1 : Fin 2)) := by
    simp [surfaceNumeralY, map_zero, sub_zero]
  let φ := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
  rw [hX, hY, ← map_pow φ, ← map_pow φ, ← map_sub φ, valuationOne_two_eq,
    ← map_neg φ]
  apply congrArg
  ring

private lemma valuationOne_const_Ysq_sub_Xcu_mem_special :
    numeralReesConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0) ^ 2 -
      numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0) ^ 3 ∈
      numeralReesSpecialIdeal valuationOneCurve 0 0 := by
  let ψ := algebraMap (surfaceRing valuationOneCurve)
    (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0))
  rw [numeralReesConst_pow, numeralReesConst_pow, numeralReesConst_sub,
    valuationOne_node_Ysq_sub_Xcu, numeralReesConst_eq_algebraMap, map_neg ψ]
  exact Submodule.neg_mem _ (Ideal.mem_span_singleton_self _)

/-- In `Rees/(2)` on this node, `C(Y)² = C(X)³`. -/
theorem valuationOne_special_const_Ysq_eq_Xcu :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0))) ^ 2 =
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0))) ^ 3 := by
  let ψ := Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
  rw [← map_pow ψ, ← map_pow ψ, Ideal.Quotient.eq]
  exact valuationOne_const_Ysq_sub_Xcu_mem_special

/-- On the chart `D₊(Xt)` of `Y² = X³ + 2` at `(0, 0)`, `Y² = X³`. -/
theorem chart_Y_sq_eq_chart_X_cu_valuationOne :
    chart_Y valuationOneCurve 0 0 ^ 2 = chart_X valuationOneCurve 0 0 ^ 3 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_pow, HomogeneousLocalization.val_pow]
  simp only [chart_Y, chart_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_pow, Localization.mk_pow, Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  dsimp
  change (1 : reesAlgebra I ⧸ J) *
      ((1 : reesAlgebra I ⧸ J) ^ 3 *
        (Ideal.Quotient.mk J
          (numeralReesConst valuationOneCurve 0 0
            (surfaceNumeralY valuationOneCurve 0))) ^ 2) =
    (1 : reesAlgebra I ⧸ J) *
      ((1 : reesAlgebra I ⧸ J) ^ 2 *
        (Ideal.Quotient.mk J
          (numeralReesConst valuationOneCurve 0 0
            (surfaceNumeralX valuationOneCurve 0))) ^ 3)
  have h3 : (1 : reesAlgebra I ⧸ J) ^ 3 = 1 := one_pow _
  have h2 : (1 : reesAlgebra I ⧸ J) ^ 2 = 1 := one_pow _
  rw [h3, h2]
  set y := (Ideal.Quotient.mk J
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0))) ^ 2
  set x := (Ideal.Quotient.mk J
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0))) ^ 3
  rw [one_mul (1 * y), one_mul y, one_mul (1 * x), one_mul x]
  exact valuationOne_special_const_Ysq_eq_Xcu


/-- A quotient isomorphic to `𝔽₂` is a field, so the ideal is maximal. -/
theorem isMaximal_of_quotient_equiv_zmod_two
    {R : Type*} [CommRing R] (I : Ideal R) (e : R ⧸ I ≃+* ZMod 2) :
    I.IsMaximal := by
  refine Ideal.Quotient.maximal_of_isField I ?_
  have hcases : ∀ x : ZMod 2, x ≠ 0 → x = 1 := by decide
  refine ⟨⟨e.symm 0, e.symm 1, ?_⟩, mul_comm, ?_⟩
  · intro h
    have h01 : (0 : ZMod 2) = 1 := by
      have := congrArg e h
      rwa [e.apply_symm_apply, e.apply_symm_apply] at this
    exact zero_ne_one h01
  · intro a ha
    have ha' : e a ≠ 0 := by
      intro hz
      apply ha
      exact e.injective (hz.trans (map_zero e).symm)
    have hone : e a = 1 := hcases (e a) ha'
    refine ⟨e.symm (1 : ZMod 2), ?_⟩
    apply e.injective
    rw [map_mul e, e.apply_symm_apply, hone, map_one e, one_mul]

/-- `(Xt)^n ≠ 0` is necessary for `D₊(Xt)` to be nonempty. It is the
contrapositive of `proj_basicOpen_bot_of_pow_eq_zero`. It is not
sufficient: `basicOpen_pow` identifies `D₊(f^n)` with `D₊(f)`, and
`basicOpen_zero` kills `D₊(0)`, so a nilpotent element has empty
basic open. A non-nilpotent element need not lie outside some
homogeneous prime. -/
theorem pow_ne_zero_of_basicOpen_ne_bot
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    {f : A} {n : ℕ} (hn : 0 < n)
    (hopen : ProjectiveSpectrum.basicOpen 𝒜 f ≠ ⊥) : f ^ n ≠ 0 := by
  intro hfn
  exact hopen (proj_basicOpen_bot_of_pow_eq_zero 𝒜 f hn hfn)

/-- OPEN. The basic open `D₊(Xt)` is nonempty on this curve.
`valuationOne_specialXT_pow_ne_zero` gives `(Xt)^n ≠ 0`.
`pow_ne_zero_of_basicOpen_ne_bot` says that is necessary for
nonemptiness, not sufficient. `FromSpec.toFun` expects a point of
the carrier of `Spec`, which `Spec.topObj_forget` identifies with
`PrimeSpectrum`. The chart prime was not passed to that function. -/
def chart_Dplus_Xt_basicOpen_nonempty_valuationOne : Prop := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  exact Nonempty (↥(@ProjectiveSpectrum.basicOpen (surfaceRing valuationOneCurve)
    (reesAlgebra I ⧸ J) _ _ _ ℬ _
    ((Ideal.Quotient.mk J) (numeralReesXT valuationOneCurve 0 0))))

/-- OPEN. `(2t / Xt, Yt / Xt)` is a maximal ideal of the chart
`D₊(Xt)`, with quotient `𝔽₂`, whenever the reduced equation vanishes.
The chart has some prime on `Y² = X³ + 2`. That prime is not shown to
contain both ratios, and no evaluation `chart → 𝔽₂` is constructed.
The generators of this ideal are ratios. They are not `chart_X` or
`chart_Y`. Quotienting by the ratios is not shown to kill the
degree-zero class of `X`, and the chart is not presented as
`𝔽₂[X, Y] / (Y² - X³, X, Y)`. -/
def ideal_UV_maximal : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    (ideal_two_Y_over_X W ap bq).IsMaximal ∧
    Nonempty ((chart_Dplus_Xt_ring W ap bq ⧸ ideal_two_Y_over_X W ap bq) ≃+* ZMod 2)

/-- `S / (2) ≃ 𝔽₂[a,b]`. `PadicInt.toZMod` kills exactly the ideal `(2)`,
and `MvPolynomial.map` preserves that kernel. -/
theorem coeffModTwo_ker :
    RingHom.ker (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) :
        S →+* MvPolynomial (Fin 2) (ZMod 2)) =
      Ideal.span {MvPolynomial.C (2 : ℤ_[2])} := by
  apply le_antisymm
  · intro f hf
    rw [RingHom.mem_ker] at hf
    classical
    have hcoeff : ∀ m, f.coeff m ∈ Ideal.span {(2 : ℤ_[2])} := by
      intro m
      have h0 : PadicInt.toZMod (f.coeff m) = 0 := by
        rw [← MvPolynomial.coeff_map (f := (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)), hf,
          MvPolynomial.coeff_zero]
      have hker : f.coeff m ∈ RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
        rw [RingHom.mem_ker]
        exact h0
      rwa [PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p] at hker
    let d : (Fin 2 →₀ ℕ) → ℤ_[2] := fun m =>
      (Ideal.mem_span_singleton'.mp (hcoeff m)).choose
    have hd : ∀ m, d m * (2 : ℤ_[2]) = f.coeff m := fun m =>
      (Ideal.mem_span_singleton'.mp (hcoeff m)).choose_spec
    let g : S := ∑ m ∈ f.support, MvPolynomial.monomial m (d m)
    have hg : f = MvPolynomial.C (2 : ℤ_[2]) * g := by
      rw [MvPolynomial.as_sum f, Finset.mul_sum]
      refine Finset.sum_congr rfl ?_
      intro m _hm
      rw [MvPolynomial.C_mul_monomial, mul_comm (2 : ℤ_[2]) (d m), hd]
    rw [mul_comm] at hg
    exact Ideal.mem_span_singleton'.mpr ⟨g, hg.symm⟩
  · rw [Ideal.span_le]
    intro z hz
    rw [Set.mem_singleton_iff] at hz
    subst hz
    rw [SetLike.mem_coe, RingHom.mem_ker, MvPolynomial.map_C, residue_kills_two, map_zero]

private lemma padicToZMod_surjective :
    Function.Surjective (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
  intro y
  fin_cases y
  · exact ⟨0, map_zero _⟩
  · exact ⟨1, map_one _⟩

private lemma coeffModTwo_surjective :
    Function.Surjective (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) :
      S →+* MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.map_surjective (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) padicToZMod_surjective

/-- `ℤ_[2][a,b] / (2) ≃ 𝔽₂[a,b]`. -/
noncomputable def coeffModTwoEquiv :
    S ⧸ Ideal.span {MvPolynomial.C (2 : ℤ_[2])} ≃+*
      MvPolynomial (Fin 2) (ZMod 2) :=
  (Ideal.quotEquivOfEq coeffModTwo_ker.symm).trans
    (RingHom.quotientKerEquivOfSurjective coeffModTwo_surjective)

/-- The degree-zero class of a surface element on the chart `D₊(Xt)`. -/
noncomputable def chartConst (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) : chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq r)
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using specialClass_mem_degree_zero W ap bq r⟩,
      ⟨(1 : reesAlgebra I ⧸ J), quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

private lemma chartConst_val (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) :
    (chartConst W ap bq r).val =
      Localization.mk
        (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq)
          (numeralReesConst W ap bq r))
        (1 : Submonoid.powers
          (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq)
            (numeralReesXT W ap bq))) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  simp [chartConst, HomogeneousLocalization.val_mk]
  rfl

private lemma chartConst_mul (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r s : surfaceRing W) :
    chartConst W ap bq (r * s) = chartConst W ap bq r * chartConst W ap bq s := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_mul, chartConst_val, chartConst_val, chartConst_val,
    Localization.mk_mul]
  have hden : (1 : Submonoid.powers f) * 1 = 1 := mul_one _
  rw [hden]
  congr 1
  rw [← map_mul (Ideal.Quotient.mk J), numeralReesConst_eq_algebraMap,
    numeralReesConst_eq_algebraMap, numeralReesConst_eq_algebraMap, map_mul]

private lemma chartConst_add (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r s : surfaceRing W) :
    chartConst W ap bq (r + s) = chartConst W ap bq r + chartConst W ap bq s := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_add, chartConst_val, chartConst_val, chartConst_val]
  rw [Localization.add_mk_self
      (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq) (numeralReesConst W ap bq r))
      (1 : Submonoid.powers f)
      (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq) (numeralReesConst W ap bq s))]
  congr 1
  rw [← map_add (Ideal.Quotient.mk J), numeralReesConst_eq_algebraMap,
    numeralReesConst_eq_algebraMap, numeralReesConst_eq_algebraMap, map_add]

private lemma chartConst_one (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartConst W ap bq (1 : surfaceRing W) = 1 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartConst_val, HomogeneousLocalization.val_one, numeralReesConst_eq_algebraMap,
    map_one, map_one, Localization.mk_one]

private lemma chartConst_zero (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartConst W ap bq (0 : surfaceRing W) = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartConst_val, HomogeneousLocalization.val_zero, numeralReesConst_eq_algebraMap,
    map_zero, map_zero]
  exact Localization.mk_zero (1 : Submonoid.powers f)

/-- Constants of the surface ring, as degree-zero elements of the chart. -/
noncomputable def chartConstHom (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    surfaceRing W →+* chart_Dplus_Xt_ring W ap bq where
  toFun := chartConst W ap bq
  map_one' := chartConst_one W ap bq
  map_mul' := chartConst_mul W ap bq
  map_zero' := chartConst_zero W ap bq
  map_add' := chartConst_add W ap bq

/-- The chart `D₊(Xt)` is an algebra over `S = ℤ_[2][a,b]`. -/
noncomputable def chartScalar (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    S →+* chart_Dplus_Xt_ring W ap bq :=
  (chartConstHom W ap bq).comp (algebraMap S (surfaceRing W))

theorem chartScalar_C_two (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartScalar W ap bq (MvPolynomial.C (2 : ℤ_[2])) = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  rw [chartScalar, RingHom.comp_apply]
  have htwo : algebraMap S (surfaceRing W) (MvPolynomial.C (2 : ℤ_[2])) =
      (2 : surfaceRing W) := by
    rw [two_eq_quotient_mk]
    rfl
  rw [htwo]
  dsimp [chartConstHom]
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartConst_val, HomogeneousLocalization.val_zero, numeralReesConst_eq_algebraMap]
  have hJ0 : Ideal.Quotient.mk J
      (algebraMap (surfaceRing W) (reesAlgebra I) (2 : surfaceRing W)) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  rw [hJ0]
  exact Localization.mk_zero (1 : Submonoid.powers f)

/-- `2 = 0` in every chart `D₊(Xt)`. -/
theorem chart_two_eq_zero (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    (2 : chart_Dplus_Xt_ring W ap bq) = 0 := by
  have h := chartScalar_C_two W ap bq
  rw [chartScalar, RingHom.comp_apply] at h
  have htwo : algebraMap S (surfaceRing W) (MvPolynomial.C (2 : ℤ_[2])) =
      (2 : surfaceRing W) := by
    rw [two_eq_quotient_mk]
    rfl
  rw [htwo] at h
  rw [← map_ofNat (chartConstHom W ap bq)]
  exact h

/-- The structure map factors through `S / (2)`. -/
noncomputable def chartScalarModTwo (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    S ⧸ Ideal.span {MvPolynomial.C (2 : ℤ_[2])} →+* chart_Dplus_Xt_ring W ap bq :=
  Ideal.Quotient.lift (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) (chartScalar W ap bq)
    (by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul, chartScalar_C_two, mul_zero])

/-- The chart `D₊(Xt)` is an algebra over `𝔽₂[a,b]`. -/
noncomputable def chartFromF2Polynomial (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    MvPolynomial (Fin 2) (ZMod 2) →+* chart_Dplus_Xt_ring W ap bq :=
  (chartScalarModTwo W ap bq).comp coeffModTwoEquiv.symm.toRingHom

/-- `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`. The coefficient ring
is `𝔽₂[a,b]`, not `𝔽₂`. -/
noncomputable def modelBaseRelationIdeal :
    Ideal (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2))) :=
  Ideal.span {
    MvPolynomial.X 0 * MvPolynomial.X 2,
    MvPolynomial.X 1 - MvPolynomial.X 0 * MvPolynomial.X 3,
    MvPolynomial.X 1 ^ 2 - MvPolynomial.X 0 ^ 3 }

/-- Send `X, Y, U, V` to `chart_X`, `chart_Y`, `2t/Xt`, `Yt/Xt`. -/
noncomputable def chartModelEval :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  MvPolynomial.eval₂Hom (chartFromF2Polynomial valuationOneCurve 0 0)
    (fun i : Fin 4 =>
      if i = 0 then chart_X valuationOneCurve 0 0
      else if i = 1 then chart_Y valuationOneCurve 0 0
      else if i = 2 then chart_two_over_X valuationOneCurve 0 0
      else chart_Y_over_X valuationOneCurve 0 0)

private lemma chartModelEval_X0 :
    chartModelEval (MvPolynomial.X 0) = chart_X valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

private lemma chartModelEval_X1 :
    chartModelEval (MvPolynomial.X 1) = chart_Y valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

private lemma chartModelEval_X2 :
    chartModelEval (MvPolynomial.X 2) = chart_two_over_X valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

private lemma chartModelEval_X3 :
    chartModelEval (MvPolynomial.X 3) = chart_Y_over_X valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

theorem chartModelEval_relation :
    modelBaseRelationIdeal ≤ RingHom.ker chartModelEval := by
  rw [modelBaseRelationIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_mul, chartModelEval_X0, chartModelEval_X2,
      chart_X_mul_two_over_X_eq_zero]
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_sub, map_mul, chartModelEval_X1,
      chartModelEval_X0, chartModelEval_X3, chart_Y_eq_chart_X_mul_Y_over_X, sub_self]
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_sub, map_pow, map_pow, chartModelEval_X1,
      chartModelEval_X0, chart_Y_sq_eq_chart_X_cu_valuationOne, sub_self]

/-- A ring hom from the `𝔽₂[a,b]`-algebra presentation into the chart
`D₊(Xt)` on `Y² = X³ + 2` at `(0, 0)`. This is not shown to be
bijective. `chart_Dplus_Xt_presentation` still asks for an isomorphism
with the parameter-free model `modelXtChart`. -/
noncomputable def chartOfModelBase :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ modelBaseRelationIdeal →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  Ideal.Quotient.lift modelBaseRelationIdeal chartModelEval chartModelEval_relation

/-- OPEN. The chart `D₊(Xt)` on `Y² = X³ + 2` at `(0, 0)` is isomorphic
to the parameter-free ring `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`.
`modelXtChartModXUV_equiv_F2` is that model's further quotient by
`⟨X, U, V⟩`, and it is `𝔽₂`. `chartOfModelBase` is a ring hom into the
chart from the same quotient with coefficients `𝔽₂[a,b]` instead of
`𝔽₂`. That hom is not shown to be bijective, and `modelXtChart` has no
copy of `a, b`. `ap` and `bq` are numeral centre coordinates, not
evaluations of the indeterminates `a, b`. -/
def chart_Dplus_Xt_presentation : Prop :=
  Nonempty (chart_Dplus_Xt_ring valuationOneCurve 0 0 ≃+* modelXtChart)

/-- OPEN. On `Y² = X³ + 2` at `(0, 0)`, the quotient of the chart
`D₊(Xt)` by `⟨X, Y, 2t/Xt, Yt/Xt⟩` is `𝔽₂`. `quotient_span_XUV_kills_Y`
puts `Y` in `⟨X, 2t/Xt, Yt/Xt⟩`, so the quotient does not keep a
nilpotent class of `Y`. `chart_Y_sq_eq_chart_X_cu_valuationOne` is
`Y² = X³` in the chart. `modelXtChartModXUV_equiv_F2` is the same
quotient for the parameter-free polynomial model, and it is `𝔽₂`.
`chartFromF2Polynomial` lands in the chart before that quotient, so
`𝔽₂[a,b]` is still present. The chart is not shown isomorphic to the
parameter-free model (`chart_Dplus_Xt_presentation`).
`isMaximal_of_quotient_equiv_zmod_two` would make the ideal maximal
once the quotient isomorphism exists. `FromSpec.toFun` is not applied. -/
def ideal_XYUV_quotient_F2 : Prop :=
  Nonempty ((chart_Dplus_Xt_ring valuationOneCurve 0 0 ⧸
    ideal_XYUV valuationOneCurve 0 0) ≃+* ZMod 2)

/-- The quotient isomorphism would make `⟨X, Y, 2t/Xt, Yt/Xt⟩` prime
on this node. It would be a prime of the degree-zero chart, not yet
a point of `Proj`. -/
theorem chart_prime_of_ideal_XYUV_quotient_F2
    (h : ideal_XYUV_quotient_F2) :
    ∃ q : PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0),
      q.asIdeal = ideal_XYUV valuationOneCurve 0 0 := by
  obtain ⟨e⟩ := h
  refine ⟨⟨ideal_XYUV valuationOneCurve 0 0,
    (isMaximal_of_quotient_equiv_zmod_two _ e).isPrime⟩, rfl⟩

/-- OPEN. The ideal `(2t / Xt, Yt / Xt)` is prime with residue field
`𝔽₂`, so `FromSpec.toFun` would carry it into `D₊(Xt)`. No such prime
is constructed. -/
def familySpecialFibrePoint_Dplus_Xt : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    ∃ q : PrimeSpectrum (chart_Dplus_Xt_ring W ap bq),
      ideal_two_Y_over_X W ap bq ≤ q.asIdeal ∧
      Nonempty ((chart_Dplus_Xt_ring W ap bq ⧸ q.asIdeal) ≃+* ZMod 2)

/-- OPEN. A prime of the chart `D₊(Xt)` containing
`⟨X, Y, 2t/Xt, Yt/Xt⟩`, with residue field `𝔽₂`, on the node
`Y² = X³ + 2` at `(0, 0)`. `chart_prime_of_ideal_XYUV_quotient_F2`
produces that prime from the missing quotient isomorphism.
`FromSpec.toFun` is not applied, so the prime is not a point of
`D₊(Xt) ⊂ Proj(Rees(I)/(2))`. -/
def familySpecialFibrePoint_XYUV : Prop :=
  ∃ q : PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0),
    ideal_XYUV valuationOneCurve 0 0 ≤ q.asIdeal ∧
    Nonempty ((chart_Dplus_Xt_ring valuationOneCurve 0 0 ⧸ q.asIdeal) ≃+* ZMod 2)

/-- OPEN. A coprime Beal tuple `(a, b, p, q)` should determine a point of
`Bl_{I_{a,b}}` on the special fibre over `𝔽₂`, a direction on the
exceptional divisor, not a prime containing the centre. The scheme
`familyBlowup` depends on the exponents `p, q` and on the indeterminates
`a, b` of `S`. No homogeneous prime is constructed.
`no_centre_evaluation_to_padic` rules out a ring hom to `ℤ_[2]` killing
the centre. The residue map `PadicInt.toZMod` is the map that kills `2`.
An inhabitant would not yet be the arithmetic statement
`even_solution_implies_two_divides`. -/
def coprimeBealSolution_to_family_point : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (a b c p q r : ℕ),
    0 < a → 0 < b → 0 < c →
    1 < p → 1 < q → 1 < r →
    Nat.Coprime a b →
    a ^ p + b ^ q = c ^ r →
    Nonempty (familyBlowupPoint W p q)

end Beal.MathlibMissing

#print axioms Beal.MathlibMissing.familyBlowup
#print axioms Beal.MathlibMissing.two_eq_quotient_mk
#print axioms Beal.MathlibMissing.two_mem_centreIdeal
#print axioms Beal.MathlibMissing.no_centre_evaluation_to_padic
#print axioms Beal.MathlibMissing.no_numeral_centre_evaluation_to_padic
#print axioms Beal.MathlibMissing.family_point
#print axioms Beal.MathlibMissing.residue_kills_two
#print axioms Beal.MathlibMissing.centreResidueHom
#print axioms Beal.MathlibMissing.numeralReesSpecialIdeal_isHomogeneous
#print axioms Beal.MathlibMissing.familySpecialFibre
#print axioms Beal.MathlibMissing.familySpecialFibrePoint
#print axioms Beal.MathlibMissing.chartU
#print axioms Beal.MathlibMissing.ideal_UV
#print axioms Beal.MathlibMissing.valuationOne_specialTwo_sq_zero
#print axioms Beal.MathlibMissing.chart_Dplus_2t_subsingleton_valuationOne
#print axioms Beal.MathlibMissing.not_familySpecialFibrePoint_Dplus_2t
#print axioms Beal.MathlibMissing.valuationOne_specialXT_pow_ne_zero
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_nontrivial_valuationOne
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_prime_valuationOne
#print axioms Beal.MathlibMissing.proj_basicOpen_bot_of_pow_eq_zero
#print axioms Beal.MathlibMissing.chart_Dplus_2t_empty_pack
#print axioms Beal.MathlibMissing.chart_Dplus_2t_empty
#print axioms Beal.MathlibMissing.chart_Dplus_2t_empty_holds
#print axioms Beal.MathlibMissing.pow_ne_zero_of_basicOpen_ne_bot
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_basicOpen_nonempty_valuationOne
#print axioms Beal.MathlibMissing.chart_X
#print axioms Beal.MathlibMissing.chart_Y
#print axioms Beal.MathlibMissing.ideal_XYUV
#print axioms Beal.MathlibMissing.chart_X_mul_two_over_X_eq_zero
#print axioms Beal.MathlibMissing.chart_Y_eq_chart_X_mul_Y_over_X
#print axioms Beal.MathlibMissing.chart_Y_mul_two_over_X_eq_zero
#print axioms Beal.MathlibMissing.ideal_XYUV_eq_span_X_UV
#print axioms Beal.MathlibMissing.chart_Y_mem_span_X_UV
#print axioms Beal.MathlibMissing.quotient_span_XUV_kills_Y
#print axioms Beal.MathlibMissing.modelRelation_sup_XUV_eq_X_span
#print axioms Beal.MathlibMissing.modelEvalZero_ker
#print axioms Beal.MathlibMissing.modelXtChartModXUV_equiv_F2
#print axioms Beal.MathlibMissing.modelForgetY_class_Y_sq_zero
#print axioms Beal.MathlibMissing.modelForgetY_class_Y_ne_zero
#print axioms Beal.MathlibMissing.modelForgetYIdeal_not_maximal
#print axioms Beal.MathlibMissing.valuationOne_node_Ysq_sub_Xcu
#print axioms Beal.MathlibMissing.valuationOne_special_const_Ysq_eq_Xcu
#print axioms Beal.MathlibMissing.chart_Y_sq_eq_chart_X_cu_valuationOne
#print axioms Beal.MathlibMissing.one_not_mem_numeralCentreIdeal_valuationOne
#print axioms Beal.MathlibMissing.valuationOne_two_regular
#print axioms Beal.MathlibMissing.valuationOne_specialTwo_ne_zero
#print axioms Beal.MathlibMissing.coeffModTwo_ker
#print axioms Beal.MathlibMissing.coeffModTwoEquiv
#print axioms Beal.MathlibMissing.chartScalar_C_two
#print axioms Beal.MathlibMissing.chart_two_eq_zero
#print axioms Beal.MathlibMissing.chartFromF2Polynomial
#print axioms Beal.MathlibMissing.chartModelEval_relation
#print axioms Beal.MathlibMissing.chartOfModelBase
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_presentation
#print axioms Beal.MathlibMissing.isMaximal_of_quotient_equiv_zmod_two
#print axioms Beal.MathlibMissing.ideal_UV_maximal
#print axioms Beal.MathlibMissing.ideal_XYUV_quotient_F2
#print axioms Beal.MathlibMissing.chart_prime_of_ideal_XYUV_quotient_F2
#print axioms Beal.MathlibMissing.familySpecialFibrePoint_Dplus_Xt
#print axioms Beal.MathlibMissing.familySpecialFibrePoint_XYUV
#print axioms Beal.MathlibMissing.coprimeBealSolution_to_family_point
