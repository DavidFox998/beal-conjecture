import Beal.«Beal.General».TateEvenReesChart
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme

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
`(2, X - a^p, Y - b^q)` with `a^p, b^q : ℕ`. An evaluation at the centre
cannot land in `ℤ_[2]`. No `sorry` is used.
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

/-- OPEN. For numerals `ap` and `bq`, a point of the blow-up of
`(2, X - ap, Y - bq)` would be a homogeneous prime of that Rees algebra
not containing the irrelevant ideal. No such prime is constructed.
`no_numeral_centre_evaluation_to_padic` shows the kernel of a map to
`ℤ_[2]` is not available: the centre contains `2`. An inhabitant would
not be `even_solution_implies_two_divides`. -/
def family_point : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    Nonempty (numeralFamilyPoint W ap bq)

/-- OPEN. A coprime Beal tuple `(a, b, p, q)` should determine a point of
`Bl_{I_{a,b}}`. The scheme above depends on the exponents `p, q` and on
the indeterminates `a, b` of `S`. No homogeneous prime is constructed.
`no_centre_evaluation_to_padic` rules out a ring hom to `ℤ_[2]` killing
the centre. An inhabitant would not yet be the arithmetic statement
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
#print axioms Beal.MathlibMissing.coprimeBealSolution_to_family_point
