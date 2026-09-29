import Beal.«Beal.General».TateReduction
import Mathlib.RingTheory.ReesAlgebra
import Mathlib.RingTheory.GradedAlgebra.Basic
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme

/-!
The degree-one elements of the actual Rees algebra of the centre on
the translated surface. Constructing `Proj` and identifying its
`D₊(2t)` coordinate ring are separate steps.
-/

namespace Beal.General

open Polynomial

/-- Monomials with coefficients in `Iⁿ` are elements of the Rees
algebra. -/
noncomputable def centreReesMonomial {R : Type*} [CommRing R]
    (I : Ideal R) (n : ℕ) : ↥(I ^ n) →ₗ[R] reesAlgebra I where
  toFun r := ⟨Polynomial.monomial n r.1,
    (reesAlgebra.monomial_mem).mpr r.2⟩
  map_add' r s := Subtype.ext (by simp)
  map_smul' a r := Subtype.ext (by simp [Polynomial.smul_monomial])

/-- The degree-`n` submodule of the Rees algebra. -/
noncomputable def centreReesComponent {R : Type*} [CommRing R]
    (I : Ideal R) (n : ℕ) : Submodule R (reesAlgebra I) :=
  LinearMap.range (centreReesMonomial I n)

theorem centreReesComponent_monomial {R : Type*} [CommRing R]
    (I : Ideal R) (n : ℕ) (r : R) (hr : r ∈ I ^ n) :
    centreReesMonomial I n ⟨r, hr⟩ ∈ centreReesComponent I n :=
  ⟨⟨r, hr⟩, rfl⟩

/-- The canonical Rees components contain the unit and multiply
into the component indexed by the sum of their degrees. -/
noncomputable def centreReesGradedMonoid {R : Type*} [CommRing R]
    (I : Ideal R) : SetLike.GradedMonoid (centreReesComponent I) where
  one_mem := by
    change ∃ r : ↥(I ^ 0), centreReesMonomial I 0 r = 1
    refine ⟨⟨1, by simp⟩, ?_⟩
    apply Subtype.ext
    simp [centreReesMonomial]
  mul_mem := by
    intro i j a b ha hb
    change ∃ r : ↥(I ^ i), centreReesMonomial I i r = a at ha
    change ∃ s : ↥(I ^ j), centreReesMonomial I j s = b at hb
    obtain ⟨r, rfl⟩ := ha
    obtain ⟨s, rfl⟩ := hb
    change ∃ u : ↥(I ^ (i + j)),
      centreReesMonomial I (i + j) u =
        centreReesMonomial I i r * centreReesMonomial I j s
    refine ⟨⟨r.1 * s.1, ?_⟩, ?_⟩
    · rw [pow_add]
      exact Ideal.mul_mem_mul r.2 s.2
    · apply Subtype.ext
      simp [centreReesMonomial, Polynomial.monomial_mul_monomial]

/-- A homogeneous Rees element is a single monomial at its stated
degree, with coefficient in the corresponding ideal power. -/
theorem centreReesComponent_as_monomial {R : Type*} [CommRing R]
    (I : Ideal R) (n : ℕ) (p : reesAlgebra I)
    (hp : p ∈ centreReesComponent I n) :
    (p : R[X]) = Polynomial.monomial n ((p : R[X]).coeff n) := by
  change ∃ r : ↥(I ^ n), centreReesMonomial I n r = p at hp
  obtain ⟨r, hr⟩ := hp
  rw [← hr]
  simp [centreReesMonomial]

/-- The Rees components span the whole subalgebra, since every
Rees polynomial is the sum of its monomial terms. -/
theorem centreReesComponent_iSup_eq_top {R : Type*} [CommRing R]
    (I : Ideal R) :
    (⨆ n : ℕ, centreReesComponent I n) = ⊤ := by
  apply eq_top_iff.mpr
  intro p _
  have hs : p = ∑ n ∈ (p : R[X]).support,
      centreReesMonomial I n ⟨(p : R[X]).coeff n, p.2 n⟩ := by
    apply Subtype.ext
    change (p : R[X]) = (Subalgebra.val (reesAlgebra I))
      (∑ n ∈ (p : R[X]).support,
        centreReesMonomial I n ⟨(p : R[X]).coeff n, p.2 n⟩)
    rw [map_sum]
    change (p : R[X]) = ∑ n ∈ (p : R[X]).support,
      Polynomial.monomial n ((p : R[X]).coeff n)
    exact (Polynomial.sum_monomial_eq (p : R[X])).symm
  rw [hs]
  apply Submodule.sum_mem
  intro n _
  exact Submodule.mem_iSup_of_mem n
    (centreReesComponent_monomial I n _ (p.2 n))

/-- Different homogeneous Rees components have disjoint polynomial
coefficients. -/
theorem centreReesComponent_coeff_ne {R : Type*} [CommRing R]
    (I : Ideal R) {i n : ℕ} (p : reesAlgebra I)
    (hp : p ∈ centreReesComponent I i) (hne : i ≠ n) :
    (p : R[X]).coeff n = 0 := by
  rw [centreReesComponent_as_monomial I i p hp, Polynomial.coeff_monomial]
  simp [hne]

/- The Rees algebra is the internal direct sum of its canonical
degree pieces, not merely spanned by them. -/
set_option synthInstance.maxHeartbeats 400000 in
theorem centreReesComponent_isInternal {R : Type*} [CommRing R]
    (I : Ideal R) :
    DirectSum.IsInternal (centreReesComponent I) := by
  classical
  let Q := centreReesComponent I
  have hzero (t : DirectSum ℕ (fun n => Q n))
      (ht : (DirectSum.coeAddMonoidHom Q) t = 0) : t = 0 := by
    apply DFinsupp.ext
    intro n
    rw [DFinsupp.zero_apply]
    by_cases hn : n ∈ t.support
    · have hsum :
          ∑ j ∈ t.support,
            ((t j : reesAlgebra I) : R[X]).coeff n = 0 := by
        have h := congrArg
          (fun p : reesAlgebra I => (p : R[X]).coeff n) ht
        rw [DirectSum.coeAddMonoidHom_eq_dfinsupp_sum] at h
        change ((Subalgebra.val (reesAlgebra I))
          (∑ j ∈ t.support, (t j : reesAlgebra I))).coeff n = 0 at h
        rw [map_sum] at h
        have hc (s : Finset ℕ) :
            (∑ j ∈ s, ((t j : reesAlgebra I) : R[X])).coeff n =
              ∑ j ∈ s, ((t j : reesAlgebra I) : R[X]).coeff n := by
          induction s using Finset.induction_on with
          | empty => simp
          | @insert j s hj ih => simp [hj, ih, Polynomial.coeff_add]
        exact (hc t.support).symm.trans h
      have hcoeff : ((t n : reesAlgebra I) : R[X]).coeff n = 0 := by
        calc
          _ = ∑ j ∈ t.support,
              ((t j : reesAlgebra I) : R[X]).coeff n := by
            symm
            apply Finset.sum_eq_single n
            · intro j _ hne
              exact centreReesComponent_coeff_ne I (t j) (t j).property hne
            · intro h
              exact (h hn).elim
          _ = 0 := hsum
      apply Subtype.ext
      apply Subtype.ext
      change ((t n : reesAlgebra I) : R[X]) = 0
      rw [centreReesComponent_as_monomial I n _ (t n).property, hcoeff]
      simp
    · exact DFinsupp.not_mem_support_iff.mp hn
  have hinj : Function.Injective (DirectSum.coeAddMonoidHom Q) := by
    intro t₁ t₂ h
    have hdiff : (DirectSum.coeAddMonoidHom Q) (t₁ - t₂) = 0 := by
      rw [map_sub, h, sub_self]
    exact sub_eq_zero.mp (hzero (t₁ - t₂) hdiff)
  have hspan := centreReesComponent_iSup_eq_top I
  change (⨆ n, Q n) = ⊤ at hspan
  rw [Submodule.iSup_eq_range_dfinsupp_lsum, LinearMap.range_eq_top] at hspan
  exact ⟨hinj, hspan⟩

/-- The actual Rees algebra carries its expected grading by powers
of the ideal. -/
noncomputable def centreReesGrading {R : Type*} [CommRing R]
    (I : Ideal R) : GradedAlgebra (centreReesComponent I) := by
  letI : SetLike.GradedMonoid (centreReesComponent I) :=
    centreReesGradedMonoid I
  exact DirectSum.IsInternal.gradedAlgebra (centreReesComponent_isInternal I)

/-- A scalar that is regular in the coefficient ring remains regular
in its Rees subalgebra, coefficient by coefficient. -/
theorem centreReesScalar_regular {R : Type*} [CommRing R]
    (I : Ideal R) (r : R)
    (hr : ∀ z : R, r * z = 0 → z = 0) :
    ∀ p : reesAlgebra I,
      algebraMap R (reesAlgebra I) r * p = 0 → p = 0 := by
  intro p hp
  apply Subtype.ext
  apply Polynomial.ext
  intro n
  have hc := congrArg
    (fun q : reesAlgebra I => (q : R[X]).coeff n) hp
  change (Polynomial.C r * (p : R[X])).coeff n = 0 at hc
  simpa only [Polynomial.coeff_zero] using
    hr ((p : R[X]).coeff n)
      (by simpa only [Polynomial.coeff_C_mul] using hc)

/-- The reduced translated surface equation is never the zero
polynomial: after setting the first coordinate to zero, its second
coordinate has monic quadratic term. -/
theorem localSurfaceEquation_reduction_ne_zero
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    MvPolynomial.map PadicInt.toZMod
      (localSurfaceEquation W x y) ≠ 0 := by
  intro hz
  let e : MvPolynomial (Fin 2) (ZMod 2) →+* Polynomial (ZMod 2) :=
    MvPolynomial.eval₂Hom Polynomial.C
      (fun i => if i = 0 then 0 else Polynomial.X)
  let W' := W.map PadicInt.toZMod
  let x' := PadicInt.toZMod x
  let y' := PadicInt.toZMod y
  have heval :
      e (MvPolynomial.map PadicInt.toZMod
        (localSurfaceEquation W x y)) =
      Polynomial.X ^ 2 +
        Polynomial.C (2 * y' + W'.a₁ * x' + W'.a₃) * Polynomial.X +
        Polynomial.C (localWeierstrassEquation W' x' y') := by
    simp [e, W', x', y', localSurfaceEquation, localWeierstrassEquation,
      WeierstrassCurve.map, MvPolynomial.eval_map,
      MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂Hom_X']
    simp only [map_ofNat]
    ring
  have hzcoeff :
      (Polynomial.X ^ 2 +
        Polynomial.C (2 * y' + W'.a₁ * x' + W'.a₃) * Polynomial.X +
        Polynomial.C (localWeierstrassEquation W' x' y') :
          Polynomial (ZMod 2)).coeff 2 = 0 := by
    rw [← heval, hz, map_zero, Polynomial.coeff_zero]
  have hone : (1 : ZMod 2) = 0 := by
    simpa [Polynomial.coeff_add, Polynomial.coeff_C_mul_X,
      Polynomial.coeff_X_pow] using hzcoeff
  exact one_ne_zero hone

/-- The translated integral surface coordinate ring is flat at the
base uniformizer for every Weierstrass equation: its defining
polynomial has nonzero reduction, independently of split or even
valuation assumptions. -/
theorem localSurfaceCoordinateRing_two_regular
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    ∀ z : R, q (MvPolynomial.C (2 : ℤ_[2])) * z = 0 → z = 0 := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let T := MvPolynomial (Fin 2) (ZMod 2)
  let f : S := localSurfaceEquation W x y
  let R := localSurfaceCoordinateRing W x y
  let q : S →+* R := Ideal.Quotient.mk (Ideal.span {f})
  let φ : S →+* T := MvPolynomial.map PadicInt.toZMod
  let t : S := MvPolynomial.C (2 : ℤ_[2])
  have htφ : φ t = 0 := by
    change MvPolynomial.map PadicInt.toZMod
      (MvPolynomial.C (2 : ℤ_[2])) = 0
    rw [MvPolynomial.map_C]
    have htwo : (2 : ZMod 2) = 0 := by decide
    rw [map_ofNat, htwo, map_zero]
  have htf : φ f ≠ 0 := localSurfaceEquation_reduction_ne_zero W x y
  have ht : t ≠ 0 := by
    intro hz
    have htwo : (2 : ℤ_[2]) = 0 :=
      (MvPolynomial.C_injective (Fin 2) ℤ_[2])
        (by simpa only [t, map_zero] using hz)
    norm_num at htwo
  change ∀ z : R, q t * z = 0 → z = 0
  intro z hz
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective z
  have hp : t * p ∈ Ideal.span {f} := by
    apply Ideal.Quotient.eq_zero_iff_mem.mp
    simpa only [map_mul] using hz
  obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.mp hp
  have hfd : t * p = f * d := hd
  have hφd : φ d = 0 := by
    have hprod : φ f * φ d = 0 := by
      calc
        φ f * φ d = φ (f * d) := (map_mul φ f d).symm
        _ = φ (t * p) := congrArg φ hfd.symm
        _ = 0 := by rw [map_mul, htφ, zero_mul]
    exact (mul_eq_zero.mp hprod).resolve_left htf
  have hdmem : d ∈ Ideal.span {t} := by
    rw [← localSurfaceAmbient_reduction_kernel_eq_span_two]
    exact hφd
  obtain ⟨e, he⟩ := Ideal.mem_span_singleton.mp hdmem
  have hcancel : p = f * e := by
    apply mul_left_cancel₀ ht
    calc
      t * p = f * d := hfd
      _ = t * (f * e) := by rw [he]; ring
  apply Ideal.Quotient.eq_zero_iff_mem.mpr
  exact Ideal.mem_span_singleton.mpr
    ⟨e, by simpa only [mul_comm] using hcancel⟩

/-- The Rees algebra of the image of `(2,X,Y)` in the local surface
coordinate ring, rather than the Rees algebra of the ambient plane. -/
abbrev localSurfaceCentreRees (W : WeierstrassCurve ℤ_[2])
    (x y : ℤ_[2]) : Type :=
  reesAlgebra (localSurfaceClosedPoint W x y)

/-- A homogeneous degree-one Rees element corresponding to `r ∈ I`. -/
noncomputable def centreReesDegreeOne {R : Type*} [CommRing R]
    (I : Ideal R) (r : R) (hr : r ∈ I) : reesAlgebra I :=
  ⟨Polynomial.monomial 1 r,
    (reesAlgebra.monomial_mem).mpr (by simpa only [pow_one] using hr)⟩

/-- Evaluation at `t = 1` forgets the Rees grading while retaining
the original coefficient in the surface coordinate ring. -/
noncomputable def centreReesEvalOne {R : Type*} [CommRing R]
    (I : Ideal R) : reesAlgebra I →+* R :=
  (Polynomial.evalRingHom (1 : R)).comp
    (Subalgebra.val (reesAlgebra I)).toRingHom

theorem centreReesEvalOne_degreeOne {R : Type*} [CommRing R]
    (I : Ideal R) (r : R) (hr : r ∈ I) :
    centreReesEvalOne I (centreReesDegreeOne I r hr) = r := by
  simp [centreReesEvalOne, centreReesDegreeOne, Polynomial.eval_monomial]

theorem centreReesEvalOne_scalar {R : Type*} [CommRing R]
    (I : Ideal R) (r : R) :
    centreReesEvalOne I (algebraMap R (reesAlgebra I) r) = r := by
  simp [centreReesEvalOne]

theorem centreReesDegreeOne_mem {R : Type*} [CommRing R]
    (I : Ideal R) (r : R) (hr : r ∈ I) :
    centreReesDegreeOne I r hr ∈ centreReesComponent I 1 := by
  change ∃ s : ↥(I ^ 1), centreReesMonomial I 1 s =
    centreReesDegreeOne I r hr
  refine ⟨⟨r, by simpa only [pow_one] using hr⟩, ?_⟩
  apply Subtype.ext
  rfl

/-- A ring map sends a Rees algebra to the Rees algebra of the image
ideal, coefficient by coefficient. This records the graded-compatible
map algebraically; a map on `Proj` is not yet constructed. -/
noncomputable def centreReesMap {R S : Type*} [CommRing R] [CommRing S]
    (f : R →+* S) (I : Ideal R) :
    reesAlgebra I →+* reesAlgebra (Ideal.map f I) where
  toFun p :=
    ⟨Polynomial.map f p.1, by
      intro n
      rw [Polynomial.coeff_map, ← Ideal.map_pow]
      exact Ideal.mem_map_of_mem f (p.2 n)⟩
  map_one' := Subtype.ext (by simp)
  map_mul' p q := Subtype.ext (by simp)
  map_zero' := Subtype.ext (by simp)
  map_add' p q := Subtype.ext (by simp)

/-- The coefficientwise Rees map preserves degree-one generators. -/
theorem centreReesMap_degreeOne {R S : Type*} [CommRing R] [CommRing S]
    (f : R →+* S) (I : Ideal R) (r : R) (hr : r ∈ I) :
    centreReesMap f I (centreReesDegreeOne I r hr) =
      centreReesDegreeOne (Ideal.map f I) (f r)
        (Ideal.mem_map_of_mem f hr) := by
  apply Subtype.ext
  simp [centreReesMap, centreReesDegreeOne]

/-- The degree-one element `2t` of the Rees algebra of the surface
centre. This is the prospective denominator for the `D₊(2t)` chart. -/
noncomputable def localSurfaceCentreReesTwo
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreRees W x y := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  apply centreReesDegreeOne (localSurfaceClosedPoint W x y)
    (q (MvPolynomial.C (2 : ℤ_[2])))
  exact Ideal.mem_map_of_mem q
    (Ideal.subset_span (by simp [localSurfaceCentre]))

/-- The degree-one Rees element `Xᵢt`, for the two translated
coordinates `X₀=X` and `X₁=Y`. -/
noncomputable def localSurfaceCentreReesCoordinate
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    localSurfaceCentreRees W x y := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  apply centreReesDegreeOne (localSurfaceClosedPoint W x y)
    (q (MvPolynomial.X i))
  exact Ideal.mem_map_of_mem q
    (Ideal.subset_span (by fin_cases i <;> simp [localSurfaceCentre]))

/-- The chosen Rees denominator really belongs to degree one of the
checked grading. -/
theorem localSurfaceCentreReesTwo_mem_degree_one
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreReesTwo W x y ∈
      centreReesComponent (localSurfaceClosedPoint W x y) 1 := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  have hr : q (MvPolynomial.C (2 : ℤ_[2])) ∈
      localSurfaceClosedPoint W x y :=
    Ideal.mem_map_of_mem q
      (Ideal.subset_span (by simp [localSurfaceCentre]))
  exact centreReesDegreeOne_mem _ _ hr

/-- The translated coordinate Rees generators also have degree one. -/
theorem localSurfaceCentreReesCoordinate_mem_degree_one
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    localSurfaceCentreReesCoordinate W x y i ∈
      centreReesComponent (localSurfaceClosedPoint W x y) 1 := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  have hr : q (MvPolynomial.X i) ∈ localSurfaceClosedPoint W x y :=
    Ideal.mem_map_of_mem q
      (Ideal.subset_span (by fin_cases i <;> simp [localSurfaceCentre]))
  exact centreReesDegreeOne_mem _ _ hr

/-- `Proj` of the graded Rees algebra of the actual surface centre.
This defines the blow-up's projective scheme object; its structural
morphism and chart comparison are separate. -/
noncomputable def localSurfaceCentreReesProj
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    AlgebraicGeometry.Scheme := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact AlgebraicGeometry.«Proj»
    (centreReesComponent (localSurfaceClosedPoint W x y))

/-- The ring of the basic open `D₊(2t)` of the graded surface Rees
`Proj`, defined as its degree-zero homogeneous localization. -/
noncomputable abbrev localSurfaceCentreTwoAway
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) : Type := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact HomogeneousLocalization.Away
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesTwo W x y)

/-- The actual degree-zero fraction `Xᵢt/(2t)` on the basic Rees
open; these will be the proposed images of `U` and `V`. -/
noncomputable def localSurfaceCentreTwoRatio
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    localSurfaceCentreTwoAway W x y := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨localSurfaceCentreReesCoordinate W x y i,
        localSurfaceCentreReesCoordinate_mem_degree_one W x y i⟩,
      ⟨localSurfaceCentreReesTwo W x y,
        localSurfaceCentreReesTwo_mem_degree_one W x y⟩,
      Submonoid.mem_powers _⟩

/-- Forgetting the Rees parameter `t` takes homogeneous fractions
on `D₊(2t)` to fractions on the original surface away from `2`.
This comparison will detect whether a polynomial in the two ratios
vanishes on the generic fibre. -/
noncomputable def localSurfaceCentreTwoAwayToSurfaceLocalization
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    HomogeneousLocalization.Away
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) →+*
      Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let I := localSurfaceClosedPoint W x y
  let A := localSurfaceCentreRees W x y
  let f : A := localSurfaceCentreReesTwo W x y
  let t : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let 𝒜 := centreReesComponent I
  letI : GradedAlgebra 𝒜 := centreReesGrading I
  let e : A →+* R := centreReesEvalOne I
  have ht : e f = t := by
    exact centreReesEvalOne_degreeOne I t
      (Ideal.mem_map_of_mem q
        (Ideal.subset_span (by simp [localSurfaceCentre])))
  let g : A →+* Localization.Away t :=
    (algebraMap R (Localization.Away t)).comp e
  have hg : ∀ s : Submonoid.powers f, IsUnit (g s) := by
    intro s
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff s.1 f).mp s.2
    have hu : IsUnit (algebraMap R (Localization.Away t) t) :=
      IsLocalization.map_units (Localization.Away t)
        ⟨t, Submonoid.mem_powers t⟩
    change IsUnit ((algebraMap R (Localization.Away t)) (e s))
    rw [← hn, map_pow, ht, map_pow]
    exact hu.pow n
  exact (IsLocalization.lift (S := Localization.Away f) (g := g) hg).comp
    (algebraMap (HomogeneousLocalization.Away 𝒜 f)
      (Localization.Away f))

/-- The pinned Proj basic-open theorem identifies the actual
`D₊(2t)` with the spectrum of its degree-zero localization. This
still does not identify that ring with the divided equation chart. -/
noncomputable def localSurfaceCentreTwoBasicSchemeIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    AlgebraicGeometry.Scheme.Opens.toScheme
        (X := localSurfaceCentreReesProj W x y)
        (ProjectiveSpectrum.basicOpen
          (centreReesComponent (localSurfaceClosedPoint W x y))
          (localSurfaceCentreReesTwo W x y)) ≅
      AlgebraicGeometry.Spec
        (CommRingCat.of (localSurfaceCentreTwoAway W x y)) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact AlgebraicGeometry.Scheme.fullyFaithfulForgetToLocallyRingedSpace.preimageIso
    (AlgebraicGeometry.projIsoSpec
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesTwo W x y)
      (localSurfaceCentreReesTwo_mem_degree_one W x y)
      (by decide))

/-- The Rees generators satisfy `2 · (Xᵢt) = Xᵢ · (2t)`.
After the missing graded chart construction, these are the
relations that give the ratios `X/2` and `Y/2`. -/
theorem localSurfaceCentreRees_relation
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    algebraMap R (localSurfaceCentreRees W x y)
        (q (MvPolynomial.C (2 : ℤ_[2]))) *
      localSurfaceCentreReesCoordinate W x y i =
    algebraMap R (localSurfaceCentreRees W x y)
        (q (MvPolynomial.X i)) *
      localSurfaceCentreReesTwo W x y := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  apply Subtype.ext
  change Polynomial.C (q (MvPolynomial.C (2 : ℤ_[2]))) *
      Polynomial.monomial 1 (q (MvPolynomial.X i)) =
    Polynomial.C (q (MvPolynomial.X i)) *
      Polynomial.monomial 1 (q (MvPolynomial.C (2 : ℤ_[2])))
  simp only [Polynomial.C_mul_monomial]
  congr 1
  ring

#print axioms localSurfaceCentreReesTwo
#print axioms localSurfaceCentreReesCoordinate
#print axioms localSurfaceCentreRees_relation
#print axioms centreReesMap
#print axioms centreReesMap_degreeOne
#print axioms centreReesComponent_isInternal
#print axioms centreReesGrading
#print axioms centreReesScalar_regular
#print axioms centreReesEvalOne
#print axioms centreReesEvalOne_degreeOne
#print axioms centreReesEvalOne_scalar
#print axioms localSurfaceCentreTwoAwayToSurfaceLocalization
#print axioms localSurfaceEquation_reduction_ne_zero
#print axioms localSurfaceCoordinateRing_two_regular
#print axioms localSurfaceCentreReesProj
#print axioms localSurfaceCentreReesTwo_mem_degree_one
#print axioms localSurfaceCentreTwoRatio
#print axioms localSurfaceCentreTwoBasicSchemeIso

end Beal.General