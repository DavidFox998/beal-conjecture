import Beal.«Beal.General».TateEvenReesChart
import Beal.«Beal.General».GradedProjectiveSpecialFibre
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme
import Mathlib.Data.ZMod.Basic
import Mathlib.NumberTheory.Padics.RingHoms

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
`familySpecialFibre` is `Proj` of `Rees(I)/(2)`. The homogeneous prime
in the chart `D₊(2t)`, containing the classes of `(X - ap) t` and
`(Y - bq) t` and not the class of `2t`, is not constructed.
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
#print axioms Beal.MathlibMissing.coprimeBealSolution_to_family_point
