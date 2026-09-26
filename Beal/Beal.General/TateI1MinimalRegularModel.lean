import Beal.«Beal.General».TateI1Classification
import Mathlib.RingTheory.MvPolynomial.Homogeneous
import Mathlib.RingTheory.GradedAlgebra.HomogeneousIdeal
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme
import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion

/-!
The homogeneous equation for the candidate projective Weierstrass
model over `ℤ_[2]`, together with checks on two affine charts.
The quotient carries its inherited grading, so its `Proj` is an
actual scheme. The ambient projective plane and the cubic's closed
topological locus are also constructed. Homogeneous normal forms
and localized saturation prove that dehomogenization identifies both
degree-zero chart localizations with their explicit affine quotients.
Each explicit affine chart is a closed subscheme of its affine plane.
The global projective closed immersion, properness, all-stalk
regularity, relative minimality, and Kodaira classification remain
to be proved.
-/

namespace Beal.General

/-- The integral homogeneous Weierstrass cubic in coordinates
`[X:Y:Z]`. Its `Z = 1` chart is the ordinary affine equation. -/
noncomputable def projectiveWeierstrassCubic
    (W : WeierstrassCurve ℤ_[2]) :
    MvPolynomial (Fin 3) ℤ_[2] :=
  let X : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 0
  let Y : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 1
  let Z : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 2
  Y ^ 2 * Z + MvPolynomial.C W.a₁ * X * Y * Z +
    MvPolynomial.C W.a₃ * Y * Z ^ 2 -
    (X ^ 3 + MvPolynomial.C W.a₂ * X ^ 2 * Z +
      MvPolynomial.C W.a₄ * X * Z ^ 2 +
      MvPolynomial.C W.a₆ * Z ^ 3)

/-- The projective equation really has degree three, so it can
generate a homogeneous ideal for a future `Proj` construction. -/
theorem projectiveWeierstrassCubic_isHomogeneous
    (W : WeierstrassCurve ℤ_[2]) :
    (projectiveWeierstrassCubic W).IsHomogeneous 3 := by
  let X : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 0
  let Y : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 1
  let Z : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 2
  have hX : X.IsHomogeneous 1 := MvPolynomial.isHomogeneous_X _ _
  have hY : Y.IsHomogeneous 1 := MvPolynomial.isHomogeneous_X _ _
  have hZ : Z.IsHomogeneous 1 := MvPolynomial.isHomogeneous_X _ _
  have hY2Z : (Y ^ 2 * Z).IsHomogeneous 3 := by
    simpa only [one_mul, Nat.reduceAdd] using (hY.pow 2).mul hZ
  have hXYZ : (MvPolynomial.C W.a₁ * X * Y * Z).IsHomogeneous 3 := by
    simpa only [Nat.reduceAdd, mul_assoc] using
      ((hX.mul hY).mul hZ).C_mul W.a₁
  have hYZ2 : (MvPolynomial.C W.a₃ * Y * Z ^ 2).IsHomogeneous 3 := by
    simpa only [one_mul, Nat.reduceAdd, mul_assoc] using
      (hY.mul (hZ.pow 2)).C_mul W.a₃
  have hX3 : (X ^ 3).IsHomogeneous 3 := by
    simpa only [one_mul] using hX.pow 3
  have hX2Z : (MvPolynomial.C W.a₂ * X ^ 2 * Z).IsHomogeneous 3 := by
    simpa only [one_mul, Nat.reduceAdd, mul_assoc] using
      (hX.pow 2 |>.mul hZ).C_mul W.a₂
  have hXZ2 : (MvPolynomial.C W.a₄ * X * Z ^ 2).IsHomogeneous 3 := by
    simpa only [one_mul, Nat.reduceAdd, mul_assoc] using
      (hX.mul (hZ.pow 2)).C_mul W.a₄
  have hZ3 : (MvPolynomial.C W.a₆ * Z ^ 3).IsHomogeneous 3 := by
    simpa only [one_mul] using (hZ.pow 3).C_mul W.a₆
  change (Y ^ 2 * Z + MvPolynomial.C W.a₁ * X * Y * Z +
    MvPolynomial.C W.a₃ * Y * Z ^ 2 -
    (X ^ 3 + MvPolynomial.C W.a₂ * X ^ 2 * Z +
      MvPolynomial.C W.a₄ * X * Z ^ 2 +
      MvPolynomial.C W.a₆ * Z ^ 3)).IsHomogeneous 3
  exact ((hY2Z.add hXYZ).add hYZ2).sub
    (((hX3.add hX2Z).add hXZ2).add hZ3)

/-- The explicit standard grading on the ambient three-variable
polynomial ring. Mathlib deliberately does not install this as a
global instance, since other weights are possible. -/
noncomputable def projectiveWeierstrassStandardGrading :
    GradedRing (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) where
  toGradedMonoid := MvPolynomial.HomogeneousSubmodule.gradedMonoid
  toDecomposition := MvPolynomial.decomposition

/-- The defining principal ideal is homogeneous for the standard
total-degree grading. This is the correct input for a projective
quotient, not yet the construction of its `Proj`. -/
theorem projectiveWeierstrassCubic_ideal_isHomogeneous
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedRing (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      projectiveWeierstrassStandardGrading
    (Ideal.span {projectiveWeierstrassCubic W} :
      Ideal (MvPolynomial (Fin 3) ℤ_[2])).IsHomogeneous
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) := by
  letI : GradedRing (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    projectiveWeierstrassStandardGrading
  apply Ideal.homogeneous_span
  intro f hf
  rcases Set.mem_singleton_iff.mp hf with rfl
  exact ⟨3, projectiveWeierstrassCubic_isHomogeneous W⟩

/-- The project's homogeneous coordinate *ring*. Its inherited
grading and `Proj` scheme are constructed below. -/
abbrev projectiveWeierstrassCoordinateRing
    (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 3) ℤ_[2] ⧸
    Ideal.span {projectiveWeierstrassCubic W}

/-- The homogeneous coordinate ring is finitely generated over
`ℤ_[2]`. This alone does not prove `Proj` proper. -/
theorem projectiveWeierstrassCoordinateRing_finiteType
    (W : WeierstrassCurve ℤ_[2]) :
    Algebra.FiniteType ℤ_[2] (projectiveWeierstrassCoordinateRing W) := by
  exact Algebra.FiniteType.of_surjective
    (R := ℤ_[2]) (A := MvPolynomial (Fin 3) ℤ_[2])
    (by infer_instance)
    (Ideal.Quotient.mkₐ ℤ_[2] (Ideal.span {projectiveWeierstrassCubic W}))
    Ideal.Quotient.mk_surjective

/-- The degree-`n` candidate in the coordinate quotient: the image
of ambient homogeneous polynomials of degree `n`. Proving these images
are an *internal direct sum* is still needed to grade the quotient. -/
noncomputable def projectiveWeierstrassQuotientComponent
    (W : WeierstrassCurve ℤ_[2]) (n : ℕ) :
    Submodule ℤ_[2] (projectiveWeierstrassCoordinateRing W) :=
  Submodule.map
    (Ideal.Quotient.mkₐ ℤ_[2]
      (Ideal.span {projectiveWeierstrassCubic W})).toLinearMap
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] n)

/-- The candidate homogeneous components span the coordinate ring.
This proves surjectivity of recomposition but not injectivity: that
remaining step must use homogeneity of the defining ideal. -/
theorem projectiveWeierstrassQuotientComponent_iSup_eq_top
    (W : WeierstrassCurve ℤ_[2]) :
    (⨆ n : ℕ, projectiveWeierstrassQuotientComponent W n) = ⊤ := by
  classical
  unfold projectiveWeierstrassQuotientComponent
  rw [← Submodule.map_iSup]
  letI : DirectSum.Decomposition
      (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.decomposition
  rw [DirectSum.IsInternal.submodule_iSup_eq_top
    (DirectSum.Decomposition.isInternal
      (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]))]
  rw [Submodule.map_top]
  exact LinearMap.range_eq_top.mpr
    (Ideal.Quotient.mkₐ_surjective ℤ_[2]
      (Ideal.span {projectiveWeierstrassCubic W}))

/-- If a finite sum of homogeneous polynomials of distinct degrees
vanishes in the cubic quotient, each summand vanishes there. This
is the key kernel calculation needed for injectivity of the quotient
grading's recomposition map. -/
theorem projectiveWeierstrassCubic_sum_mem_ideal_iff
    (W : WeierstrassCurve ℤ_[2])
    (s : Finset ℕ)
    (p : ℕ → MvPolynomial (Fin 3) ℤ_[2])
    (hp : ∀ n ∈ s, (p n).IsHomogeneous n) :
    (∑ n ∈ s, p n) ∈ Ideal.span {projectiveWeierstrassCubic W} ↔
      ∀ n ∈ s, p n ∈ Ideal.span {projectiveWeierstrassCubic W} := by
  let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
  letI : GradedRing 𝒜 := projectiveWeierstrassStandardGrading
  constructor
  · intro hsum n hn
    have hproj_eq : GradedRing.proj 𝒜 n (∑ j ∈ s, p j) = p n := by
      rw [map_sum]
      calc
        (∑ j ∈ s, GradedRing.proj 𝒜 n (p j)) =
            ∑ j ∈ s, if j = n then p j else 0 := by
          apply Finset.sum_congr rfl
          intro j hj
          by_cases h : j = n
          · subst j
            simp [GradedRing.proj_apply,
              DirectSum.decompose_of_mem_same 𝒜 (hp n hj)]
          · simp [h, GradedRing.proj_apply,
              DirectSum.decompose_of_mem_ne 𝒜 (hp j hj) h]
        _ = p n := by simp [hn]
    have hproj := (projectiveWeierstrassCubic_ideal_isHomogeneous W) n hsum
    rw [GradedRing.proj_apply] at hproj_eq
    rwa [hproj_eq] at hproj
  · intro h
    exact Ideal.sum_mem _ (fun n hn => h n hn)

/-- The quotient components respect multiplication and contain `1`
in degree zero, providing the multiplicative part of the grading. -/
noncomputable def projectiveWeierstrassQuotientGradedMonoid
    (W : WeierstrassCurve ℤ_[2]) :
    SetLike.GradedMonoid (projectiveWeierstrassQuotientComponent W) where
  one_mem := by
    apply Submodule.mem_map.mpr
    refine ⟨1, MvPolynomial.isHomogeneous_one _ _, ?_⟩
    simp
  mul_mem := by
    intro i j a b ha hb
    obtain ⟨a', ha', rfl⟩ := Submodule.mem_map.mp ha
    obtain ⟨b', hb', rfl⟩ := Submodule.mem_map.mp hb
    apply Submodule.mem_map.mpr
    refine ⟨a' * b', (ha'.mul hb'), ?_⟩
    exact (Ideal.Quotient.mkₐ ℤ_[2]
      (Ideal.span {projectiveWeierstrassCubic W})).map_mul a' b'

/-- The homogeneous images form an internal direct sum in the
quotient; injectivity uses componentwise membership in the
homogeneous defining ideal, not just the spanning result. -/
theorem projectiveWeierstrassQuotient_isInternal
    (W : WeierstrassCurve ℤ_[2]) :
    DirectSum.IsInternal (projectiveWeierstrassQuotientComponent W) := by
  classical
  let Q := projectiveWeierstrassQuotientComponent W
  let I : Ideal (MvPolynomial (Fin 3) ℤ_[2]) :=
    Ideal.span {projectiveWeierstrassCubic W}
  have hzero (t : DirectSum ℕ (fun n => Q n))
      (ht : (DirectSum.coeAddMonoidHom Q) t = 0) : t = 0 := by
    have hrep (n : ℕ) :
        ∃ p : MvPolynomial (Fin 3) ℤ_[2],
          p.IsHomogeneous n ∧
            (Ideal.Quotient.mk I) p =
              (t n : projectiveWeierstrassCoordinateRing W) := by
      obtain ⟨p, hp, heq⟩ := (Submodule.mem_map.mp (t n).property)
      exact ⟨p, hp, heq⟩
    let p : ℕ → MvPolynomial (Fin 3) ℤ_[2] := fun n => Classical.choose (hrep n)
    have hp (n : ℕ) : (p n).IsHomogeneous n :=
      (Classical.choose_spec (hrep n)).1
    have hq (n : ℕ) :
        (Ideal.Quotient.mk I) (p n) =
          (t n : projectiveWeierstrassCoordinateRing W) :=
      (Classical.choose_spec (hrep n)).2
    have hsum : (∑ n ∈ t.support, p n) ∈ I := by
      apply Ideal.Quotient.eq_zero_iff_mem.mp
      rw [map_sum]
      calc
        (∑ n ∈ t.support, (Ideal.Quotient.mk I) (p n)) =
            (DirectSum.coeAddMonoidHom Q) t := by
          rw [DirectSum.coeAddMonoidHom_eq_dfinsupp_sum]
          simp only [DFinsupp.sum, hq]
        _ = 0 := ht
    have hcomponent := (projectiveWeierstrassCubic_sum_mem_ideal_iff
      W t.support p (fun n _ => hp n)).mp hsum
    apply DFinsupp.ext
    intro n
    rw [DFinsupp.zero_apply]
    by_cases hn : n ∈ t.support
    · apply Submodule.coe_eq_zero.mp
      rw [← hq n]
      exact Ideal.Quotient.eq_zero_iff_mem.mpr (hcomponent n hn)
    · exact DFinsupp.not_mem_support_iff.mp hn
  have hinj : Function.Injective (DirectSum.coeAddMonoidHom Q) := by
    intro t₁ t₂ h
    have hdiff : (DirectSum.coeAddMonoidHom Q) (t₁ - t₂) = 0 := by
      rw [map_sub, h, sub_self]
    exact sub_eq_zero.mp (hzero (t₁ - t₂) hdiff)
  have hspan := projectiveWeierstrassQuotientComponent_iSup_eq_top W
  change (⨆ n, Q n) = ⊤ at hspan
  rw [Submodule.iSup_eq_range_dfinsupp_lsum, LinearMap.range_eq_top] at hspan
  exact ⟨hinj, hspan⟩

/-- The homogeneous cubic's coordinate quotient inherits a genuine
grading from the ambient polynomial ring. -/
noncomputable def projectiveWeierstrassQuotientGrading
    (W : WeierstrassCurve ℤ_[2]) :
    GradedAlgebra (projectiveWeierstrassQuotientComponent W) := by
  letI : SetLike.GradedMonoid
      (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGradedMonoid W
  exact DirectSum.IsInternal.gradedAlgebra
    (projectiveWeierstrassQuotient_isInternal W)

/-- The scheme `Proj(ℤ_[2][X,Y,Z]/(F))`, formed using the checked
inherited grading. No properness or regularity theorem is asserted. -/
noncomputable def projectiveWeierstrassScheme
    (W : WeierstrassCurve ℤ_[2]) : AlgebraicGeometry.Scheme := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact AlgebraicGeometry.Proj
    (projectiveWeierstrassQuotientComponent W)

/-- Every image of a coordinate variable has degree one in the
inherited grading. -/
theorem projectiveWeierstrassCoordinate_mem_degree_one
    (W : WeierstrassCurve ℤ_[2]) (i : Fin 3) :
    (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
      (MvPolynomial.X i) : projectiveWeierstrassCoordinateRing W) ∈
      projectiveWeierstrassQuotientComponent W 1 := by
  apply Submodule.mem_map.mpr
  exact ⟨MvPolynomial.X i, MvPolynomial.isHomogeneous_X _ _, rfl⟩

/-- The quotient map on homogeneous coordinate rings induces the
contravariant map of coordinate rings on every corresponding basic
projective chart. A compatible scheme morphism on all of `Proj`
still needs to be constructed. -/
noncomputable def projectiveWeierstrassBasicChartQuotientMap
    (W : WeierstrassCurve ℤ_[2]) (i : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
      (MvPolynomial.X i) →+*
      HomogeneousLocalization.Away (projectiveWeierstrassQuotientComponent W)
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.X i)) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  apply HomogeneousLocalization.map
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
    (projectiveWeierstrassQuotientComponent W)
    (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
  · intro a ha
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (MvPolynomial.X i)).mp ha
    apply (Submonoid.mem_powers_iff _ _).mpr
    refine ⟨n, ?_⟩
    rw [← map_pow, hn]
  · intro n p hp
    exact Submodule.mem_map.mpr ⟨p, hp, rfl⟩

/-- A graded ring map commutes with restriction to a larger denominator
monoid, on degree-zero homogeneous localizations. -/
theorem homogeneousLocalization_map_restrict
    {R A B : Type*} [CommRing R] [CommRing A] [CommRing B]
    [Algebra R A] [Algebra R B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule R B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    {P Q : Submonoid A} {P' Q' : Submonoid B}
    (g : A →+* B) (hPQ : P ≤ Q) (hP'Q' : P' ≤ Q')
    (hP : P ≤ P'.comap g) (hQ : Q ≤ Q'.comap g)
    (hg : ∀ i, ∀ a ∈ 𝒜 i, g a ∈ ℬ i) :
    (HomogeneousLocalization.mapId ℬ hP'Q').comp
      (HomogeneousLocalization.map 𝒜 ℬ g hP hg) =
    (HomogeneousLocalization.map 𝒜 ℬ g hQ hg).comp
      (HomogeneousLocalization.mapId 𝒜 hPQ) := by
  classical
  apply RingHom.ext
  intro s
  obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective s
  simp only [RingHom.comp_apply, HomogeneousLocalization.mapId,
    HomogeneousLocalization.map_mk]
  rfl

/-- A product denominator can be viewed in the double localization.
This is a comparison map, not yet a proof that it is an isomorphism. -/
noncomputable def homogeneousLocalization_productToDouble
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜] (x y : A) :
    HomogeneousLocalization 𝒜 (Submonoid.powers (x * y)) →+*
      HomogeneousLocalization 𝒜 (Submonoid.powers x ⊔ Submonoid.powers y) :=
  HomogeneousLocalization.mapId 𝒜 <|
    Submonoid.powers_le.mpr <|
      (Submonoid.powers x ⊔ Submonoid.powers y).mul_mem
        (Submonoid.mem_sup_left (Submonoid.mem_powers x))
        (Submonoid.mem_sup_right (Submonoid.mem_powers y))

/-- Every degree-zero fraction in the quotient chart lifts to the
ambient degree-zero chart. If a power of the inverted coordinate
vanishes, the quotient chart is the zero ring; otherwise homogeneity
forces the degree of its denominator to equal that power. -/
theorem projectiveWeierstrassBasicChartQuotientMap_surjective
    (W : WeierstrassCurve ℤ_[2]) (i : Fin 3) :
    Function.Surjective (projectiveWeierstrassBasicChartQuotientMap W i) := by
  classical
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let I : Ideal (MvPolynomial (Fin 3) ℤ_[2]) :=
    Ideal.span {projectiveWeierstrassCubic W}
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk I
  let x : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X i
  let xq : projectiveWeierstrassCoordinateRing W := q x
  intro t
  obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective t
  obtain ⟨k, hk⟩ := (Submonoid.mem_powers_iff v.den.val xq).mp v.den_mem
  by_cases hzero : xq ^ k = 0
  · have h0 : (0 : projectiveWeierstrassCoordinateRing W) ∈
        Submonoid.powers xq := by
      rw [← hzero]
      exact Submonoid.pow_mem _ (Submonoid.mem_powers xq) k
    letI : Subsingleton (Localization.Away xq) :=
      IsLocalization.subsingleton h0
    refine ⟨0, ?_⟩
    apply HomogeneousLocalization.val_injective (Submonoid.powers xq)
    exact Subsingleton.elim _ _
  · have hdegree : k = v.deg := by
      have hmem : xq ^ k ∈ projectiveWeierstrassQuotientComponent W k := by
        simpa only [nsmul_eq_mul, mul_one] using
          (SetLike.pow_mem_graded k
            (projectiveWeierstrassCoordinate_mem_degree_one W i))
      exact DirectSum.degree_eq_of_mem_mem
        (projectiveWeierstrassQuotientComponent W)
        hmem (hk.symm ▸ v.den.2) hzero
    subst k
    obtain ⟨p, hp, heq⟩ := Submodule.mem_map.mp v.num.2
    have hx : x ∈ MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] 1 := by
      change (MvPolynomial.X i).IsHomogeneous 1
      exact MvPolynomial.isHomogeneous_X _ _
    have hpow : x ^ v.deg ∈
        MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] v.deg := by
      simpa only [nsmul_eq_mul, mul_one] using
        (SetLike.pow_mem_graded v.deg hx)
    let u : HomogeneousLocalization.NumDenSameDeg
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (Submonoid.powers x) :=
      { deg := v.deg
        num := ⟨p, hp⟩
        den := ⟨x ^ v.deg, hpow⟩
        den_mem := Submonoid.pow_mem _ (Submonoid.mem_powers x) v.deg }
    refine ⟨HomogeneousLocalization.mk u, ?_⟩
    change (HomogeneousLocalization.map
      (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
      (projectiveWeierstrassQuotientComponent W) q
      (by
        intro a ha
        obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a x).mp ha
        apply (Submonoid.mem_powers_iff _ _).mpr
        exact ⟨n, by rw [← map_pow, hn]⟩)
      (by
        intro n p hp
        exact Submodule.mem_map.mpr ⟨p, hp, rfl⟩))
        (HomogeneousLocalization.mk u) = HomogeneousLocalization.mk v
    rw [HomogeneousLocalization.map_mk]
    congr 1
    refine HomogeneousLocalization.NumDenSameDeg.ext
      (Submonoid.powers xq) rfl ?_ ?_
    · simpa only [AlgHom.toLinearMap_apply] using heq
    · change q (x ^ v.deg) = v.den
      rw [map_pow]
      exact hk

/-- The actual basic-chart scheme map induced by the homogeneous
quotient, with source and target the spectra of degree-zero
homogeneous localizations. -/
noncomputable def projectiveWeierstrassBasicChartSchemeMap
    (W : WeierstrassCurve ℤ_[2]) (i : Fin 3) :=
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  AlgebraicGeometry.Spec.map
    (CommRingCat.ofHom (projectiveWeierstrassBasicChartQuotientMap W i))

/-- Each quotient map on the genuine basic opens of `Proj` is a
closed immersion of affine schemes. Global gluing is still open. -/
theorem projectiveWeierstrassBasicChartSchemeMap_isClosed
    (W : WeierstrassCurve ℤ_[2]) (i : Fin 3) :
    AlgebraicGeometry.IsClosedImmersion
      (projectiveWeierstrassBasicChartSchemeMap W i) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  unfold projectiveWeierstrassBasicChartSchemeMap
  exact AlgebraicGeometry.IsClosedImmersion.spec_of_surjective _
    (projectiveWeierstrassBasicChartQuotientMap_surjective W i)

/-- Inverting both coordinates is represented by the supremum of their
power submonoids. This gives one common target for the restrictions
from either basic chart. -/
noncomputable def projectiveWeierstrassOverlapQuotientMap
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (Submonoid.powers (MvPolynomial.X i) ⊔
          Submonoid.powers (MvPolynomial.X j)) →+*
      HomogeneousLocalization (projectiveWeierstrassQuotientComponent W)
        (Submonoid.powers
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X i)) ⊔
          Submonoid.powers
            ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
              (MvPolynomial.X j))) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  apply HomogeneousLocalization.map
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
    (projectiveWeierstrassQuotientComponent W) q
  · apply sup_le
    · intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (MvPolynomial.X i)).mp ha
      apply Submonoid.mem_sup_left
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by rw [← map_pow, hn]⟩
    · intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (MvPolynomial.X j)).mp ha
      apply Submonoid.mem_sup_right
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by rw [← map_pow, hn]⟩
  · intro n p hp
    exact Submodule.mem_map.mpr ⟨p, hp, rfl⟩

/-- On the common double localization, the restriction of the
quotient map from the `i` chart equals the quotient map of the
double localization. This is a ring-level commutative square, not
yet an identification with a scheme-theoretic overlap. -/
theorem projectiveWeierstrassOverlapQuotientMap_left
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    (HomogeneousLocalization.mapId (projectiveWeierstrassQuotientComponent W)
      (le_sup_left : Submonoid.powers
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X i)) ≤
        Submonoid.powers
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X i)) ⊔
        Submonoid.powers
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X j)))).comp
      (projectiveWeierstrassBasicChartQuotientMap W i) =
    (projectiveWeierstrassOverlapQuotientMap W i j).comp
      (HomogeneousLocalization.mapId
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (le_sup_left : Submonoid.powers (MvPolynomial.X i) ≤
          Submonoid.powers (MvPolynomial.X i) ⊔
            Submonoid.powers (MvPolynomial.X j))) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  have hPi : Submonoid.powers (MvPolynomial.X i) ≤
      (Submonoid.powers (q (MvPolynomial.X i))).comap q := by
    intro a ha
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (MvPolynomial.X i)).mp ha
    apply (Submonoid.mem_powers_iff _ _).mpr
    exact ⟨n, by rw [← map_pow, hn]⟩
  have hQ : (Submonoid.powers (MvPolynomial.X i) ⊔
      Submonoid.powers (MvPolynomial.X j)) ≤
      (Submonoid.powers (q (MvPolynomial.X i)) ⊔
        Submonoid.powers (q (MvPolynomial.X j))).comap q := by
    apply sup_le
    · intro a ha
      exact Submonoid.mem_sup_left (hPi ha)
    · intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (MvPolynomial.X j)).mp ha
      apply Submonoid.mem_sup_right
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by rw [← map_pow, hn]⟩
  exact homogeneousLocalization_map_restrict
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
    (projectiveWeierstrassQuotientComponent W) q le_sup_left le_sup_left
    hPi hQ (fun n p hp => Submodule.mem_map.mpr ⟨p, hp, rfl⟩)

/-- The same commutative square, now restricting from the `j` chart. -/
theorem projectiveWeierstrassOverlapQuotientMap_right
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    (HomogeneousLocalization.mapId (projectiveWeierstrassQuotientComponent W)
      (le_sup_right : Submonoid.powers
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X j)) ≤
        Submonoid.powers
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X i)) ⊔
        Submonoid.powers
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X j)))).comp
      (projectiveWeierstrassBasicChartQuotientMap W j) =
    (projectiveWeierstrassOverlapQuotientMap W i j).comp
      (HomogeneousLocalization.mapId
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (le_sup_right : Submonoid.powers (MvPolynomial.X j) ≤
          Submonoid.powers (MvPolynomial.X i) ⊔
            Submonoid.powers (MvPolynomial.X j))) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  have hPj : Submonoid.powers (MvPolynomial.X j) ≤
      (Submonoid.powers (q (MvPolynomial.X j))).comap q := by
    intro a ha
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (MvPolynomial.X j)).mp ha
    apply (Submonoid.mem_powers_iff _ _).mpr
    exact ⟨n, by rw [← map_pow, hn]⟩
  have hQ : (Submonoid.powers (MvPolynomial.X i) ⊔
      Submonoid.powers (MvPolynomial.X j)) ≤
      (Submonoid.powers (q (MvPolynomial.X i)) ⊔
        Submonoid.powers (q (MvPolynomial.X j))).comap q := by
    apply sup_le
    · intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (MvPolynomial.X i)).mp ha
      apply Submonoid.mem_sup_left
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by rw [← map_pow, hn]⟩
    · intro a ha
      exact Submonoid.mem_sup_right (hPj ha)
  exact homogeneousLocalization_map_restrict
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
    (projectiveWeierstrassQuotientComponent W) q le_sup_right le_sup_right
    hPj hQ (fun n p hp => Submodule.mem_map.mpr ⟨p, hp, rfl⟩)

/-- Surjectivity also holds after inverting two coordinates. Here the
degree of a nonzero denominator is the sum of their exponents. -/
theorem projectiveWeierstrassOverlapQuotientMap_surjective
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    Function.Surjective (projectiveWeierstrassOverlapQuotientMap W i j) := by
  classical
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let x : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X i
  let y : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X j
  let xq : projectiveWeierstrassCoordinateRing W := q x
  let yq : projectiveWeierstrassCoordinateRing W := q y
  let Q : Submonoid (projectiveWeierstrassCoordinateRing W) :=
    Submonoid.powers xq ⊔ Submonoid.powers yq
  intro t
  obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective t
  obtain ⟨a, ha, b, hb, hab⟩ := Submonoid.mem_sup.mp v.den_mem
  obtain ⟨k, hka⟩ := (Submonoid.mem_powers_iff a xq).mp ha
  obtain ⟨l, hlb⟩ := (Submonoid.mem_powers_iff b yq).mp hb
  have hden : xq ^ k * yq ^ l = v.den := by
    rw [hka, hlb, hab]
  by_cases hzero : xq ^ k * yq ^ l = 0
  · have h0 : (0 : projectiveWeierstrassCoordinateRing W) ∈ Q := by
      rw [← hzero]
      exact Q.mul_mem
        (Submonoid.mem_sup_left (Submonoid.pow_mem _ (Submonoid.mem_powers xq) k))
        (Submonoid.mem_sup_right (Submonoid.pow_mem _ (Submonoid.mem_powers yq) l))
    letI : Subsingleton (Localization Q) := IsLocalization.subsingleton h0
    refine ⟨0, ?_⟩
    apply HomogeneousLocalization.val_injective Q
    exact Subsingleton.elim _ _
  · have hmem : xq ^ k * yq ^ l ∈
        projectiveWeierstrassQuotientComponent W (k + l) := by
      simpa only [nsmul_eq_mul, mul_one] using
        (SetLike.mul_mem_graded
          (SetLike.pow_mem_graded k
            (projectiveWeierstrassCoordinate_mem_degree_one W i))
          (SetLike.pow_mem_graded l
            (projectiveWeierstrassCoordinate_mem_degree_one W j)))
    have hdegree : k + l = v.deg :=
      DirectSum.degree_eq_of_mem_mem (projectiveWeierstrassQuotientComponent W)
        hmem (hden.symm ▸ v.den.2) hzero
    obtain ⟨p, hp, heq⟩ := Submodule.mem_map.mp v.num.2
    have hx : x ∈ MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] 1 := by
      change (MvPolynomial.X i).IsHomogeneous 1
      exact MvPolynomial.isHomogeneous_X _ _
    have hy : y ∈ MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] 1 := by
      change (MvPolynomial.X j).IsHomogeneous 1
      exact MvPolynomial.isHomogeneous_X _ _
    have hpow : x ^ k * y ^ l ∈
        MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] v.deg := by
      rw [← hdegree]
      simpa only [nsmul_eq_mul, mul_one] using
        (SetLike.mul_mem_graded
          (SetLike.pow_mem_graded k hx) (SetLike.pow_mem_graded l hy))
    let P : Submonoid (MvPolynomial (Fin 3) ℤ_[2]) :=
      Submonoid.powers x ⊔ Submonoid.powers y
    let u : HomogeneousLocalization.NumDenSameDeg
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) P :=
      { deg := v.deg
        num := ⟨p, hp⟩
        den := ⟨x ^ k * y ^ l, hpow⟩
        den_mem := P.mul_mem
          (Submonoid.mem_sup_left (Submonoid.pow_mem _ (Submonoid.mem_powers x) k))
          (Submonoid.mem_sup_right (Submonoid.pow_mem _ (Submonoid.mem_powers y) l)) }
    have hQ : P ≤ Q.comap q := by
      apply sup_le
      · intro a ha
        obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a x).mp ha
        apply Submonoid.mem_sup_left
        apply (Submonoid.mem_powers_iff _ _).mpr
        exact ⟨n, by rw [← map_pow, hn]⟩
      · intro a ha
        obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a y).mp ha
        apply Submonoid.mem_sup_right
        apply (Submonoid.mem_powers_iff _ _).mpr
        exact ⟨n, by rw [← map_pow, hn]⟩
    have hg : ∀ n, ∀ a ∈
        MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] n,
        q a ∈ projectiveWeierstrassQuotientComponent W n := by
      intro n a ha
      exact Submodule.mem_map.mpr ⟨a, ha, rfl⟩
    refine ⟨HomogeneousLocalization.mk u, ?_⟩
    change (HomogeneousLocalization.map
      (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
      (projectiveWeierstrassQuotientComponent W) q hQ hg)
      (HomogeneousLocalization.mk u) = HomogeneousLocalization.mk v
    rw [HomogeneousLocalization.map_mk]
    congr 1
    refine HomogeneousLocalization.NumDenSameDeg.ext Q rfl ?_ ?_
    · simpa only [AlgHom.toLinearMap_apply] using heq
    · change q (x ^ k * y ^ l) = v.den
      rw [map_mul, map_pow, map_pow]
      exact hden

/-- The quotient map after inverting both coordinates gives a closed
immersion of affine schemes. Identification of these spectra with
the restrictions of the projective schemes is not asserted here. -/
theorem projectiveWeierstrassOverlapSchemeMap_isClosed
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    AlgebraicGeometry.IsClosedImmersion
      (AlgebraicGeometry.Spec.map
        (CommRingCat.ofHom (projectiveWeierstrassOverlapQuotientMap W i j))) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact AlgebraicGeometry.IsClosedImmersion.spec_of_surjective _
    (projectiveWeierstrassOverlapQuotientMap_surjective W i j)

/-- The quotient map on the *product* basic chart, rather than the
common double localization used for the preceding algebraic squares. -/
noncomputable def projectiveWeierstrassProductChartQuotientMap
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (MvPolynomial.X i * MvPolynomial.X j) →+*
      HomogeneousLocalization.Away (projectiveWeierstrassQuotientComponent W)
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X i) *
          (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X j)) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  apply HomogeneousLocalization.map
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
    (projectiveWeierstrassQuotientComponent W) q
  · intro a ha
    obtain ⟨n, hn⟩ :=
      (Submonoid.mem_powers_iff a (MvPolynomial.X i * MvPolynomial.X j)).mp ha
    apply (Submonoid.mem_powers_iff _ _).mpr
    refine ⟨n, ?_⟩
    rw [← map_mul, ← map_pow, hn]
  · intro n p hp
    exact Submodule.mem_map.mpr ⟨p, hp, rfl⟩

/-- The actual product-chart quotient map and the double-localization
quotient map agree after the canonical comparison into the double
localization. This does not identify that comparison with a restriction
of scheme charts. -/
theorem projectiveWeierstrassProductToDouble_commutes
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    (homogeneousLocalization_productToDouble
      (projectiveWeierstrassQuotientComponent W)
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X i))
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X j))).comp
      (projectiveWeierstrassProductChartQuotientMap W i j) =
    (projectiveWeierstrassOverlapQuotientMap W i j).comp
      (homogeneousLocalization_productToDouble
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (MvPolynomial.X i) (MvPolynomial.X j)) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  apply RingHom.ext
  intro s
  obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective s
  simp only [RingHom.comp_apply, homogeneousLocalization_productToDouble,
    HomogeneousLocalization.mapId, projectiveWeierstrassProductChartQuotientMap,
    projectiveWeierstrassOverlapQuotientMap, HomogeneousLocalization.map_mk]
  rfl

open CategoryTheory

/-- The preceding comparison square also commutes as a square of
affine schemes. It is not yet the restriction square for the two
`Proj` chart morphisms. -/
theorem projectiveWeierstrassProductToDouble_spec_commutes
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    AlgebraicGeometry.Spec.map
        (CommRingCat.ofHom
          (homogeneousLocalization_productToDouble
            (projectiveWeierstrassQuotientComponent W)
            ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
              (MvPolynomial.X i))
            ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
              (MvPolynomial.X j)))) ≫
      AlgebraicGeometry.Spec.map
        (CommRingCat.ofHom (projectiveWeierstrassProductChartQuotientMap W i j)) =
    AlgebraicGeometry.Spec.map
        (CommRingCat.ofHom (projectiveWeierstrassOverlapQuotientMap W i j)) ≫
      AlgebraicGeometry.Spec.map
        (CommRingCat.ofHom
          (homogeneousLocalization_productToDouble
            (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
            (MvPolynomial.X i) (MvPolynomial.X j))) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  rw [← AlgebraicGeometry.Spec.map_comp, ← AlgebraicGeometry.Spec.map_comp]
  exact congrArg (fun f => AlgebraicGeometry.Spec.map (CommRingCat.ofHom f))
    (projectiveWeierstrassProductToDouble_commutes W i j)

/-- Every degree-zero fraction on the product basic chart of the
quotient lifts from the corresponding ambient product chart. -/
theorem projectiveWeierstrassProductChartQuotientMap_surjective
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    Function.Surjective (projectiveWeierstrassProductChartQuotientMap W i j) := by
  classical
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let x : MvPolynomial (Fin 3) ℤ_[2] :=
    MvPolynomial.X i * MvPolynomial.X j
  let xq : projectiveWeierstrassCoordinateRing W :=
    q (MvPolynomial.X i) * q (MvPolynomial.X j)
  have hqx : q x = xq := map_mul q _ _
  intro t
  obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective t
  obtain ⟨k, hk⟩ := (Submonoid.mem_powers_iff v.den.val xq).mp v.den_mem
  by_cases hzero : xq ^ k = 0
  · have h0 : (0 : projectiveWeierstrassCoordinateRing W) ∈
        Submonoid.powers xq := by
      rw [← hzero]
      exact Submonoid.pow_mem _ (Submonoid.mem_powers xq) k
    letI : Subsingleton (Localization.Away xq) :=
      IsLocalization.subsingleton h0
    refine ⟨0, ?_⟩
    apply HomogeneousLocalization.val_injective (Submonoid.powers xq)
    exact Subsingleton.elim _ _
  · have hdegree : k * 2 = v.deg := by
      have hmem : xq ^ k ∈ projectiveWeierstrassQuotientComponent W (k * 2) := by
        have hbase : xq ∈ projectiveWeierstrassQuotientComponent W 2 := by
          simpa only [one_add_one_eq_two] using
            (SetLike.mul_mem_graded
              (projectiveWeierstrassCoordinate_mem_degree_one W i)
              (projectiveWeierstrassCoordinate_mem_degree_one W j))
        simpa only [nsmul_eq_mul] using (SetLike.pow_mem_graded k hbase)
      exact DirectSum.degree_eq_of_mem_mem
        (projectiveWeierstrassQuotientComponent W)
        hmem (hk.symm ▸ v.den.2) hzero
    obtain ⟨p, hp, heq⟩ := Submodule.mem_map.mp v.num.2
    have hx : x ∈ MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] 2 := by
      change (MvPolynomial.X i * MvPolynomial.X j :
        MvPolynomial (Fin 3) ℤ_[2]).IsHomogeneous 2
      have hi : (MvPolynomial.X i : MvPolynomial (Fin 3) ℤ_[2]).IsHomogeneous 1 :=
        MvPolynomial.isHomogeneous_X _ _
      have hj : (MvPolynomial.X j : MvPolynomial (Fin 3) ℤ_[2]).IsHomogeneous 1 :=
        MvPolynomial.isHomogeneous_X _ _
      simpa only [one_add_one_eq_two] using hi.mul hj
    have hpow : x ^ k ∈
        MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] v.deg := by
      rw [← hdegree]
      simpa only [nsmul_eq_mul] using (SetLike.pow_mem_graded k hx)
    let u : HomogeneousLocalization.NumDenSameDeg
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (Submonoid.powers x) :=
      { deg := v.deg
        num := ⟨p, hp⟩
        den := ⟨x ^ k, hpow⟩
        den_mem := Submonoid.pow_mem _ (Submonoid.mem_powers x) k }
    have hP : Submonoid.powers x ≤ (Submonoid.powers xq).comap q := by
      intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a x).mp ha
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by rw [← hqx, ← map_pow, hn]⟩
    have hg : ∀ n, ∀ a ∈
        MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2] n,
        q a ∈ projectiveWeierstrassQuotientComponent W n := by
      intro n a ha
      exact Submodule.mem_map.mpr ⟨a, ha, rfl⟩
    refine ⟨HomogeneousLocalization.mk u, ?_⟩
    change (HomogeneousLocalization.map
      (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
      (projectiveWeierstrassQuotientComponent W) q hP hg)
      (HomogeneousLocalization.mk u) = HomogeneousLocalization.mk v
    rw [HomogeneousLocalization.map_mk]
    congr 1
    refine HomogeneousLocalization.NumDenSameDeg.ext
      (Submonoid.powers xq) rfl ?_ ?_
    · simpa only [AlgHom.toLinearMap_apply] using heq
    · change q (x ^ k) = v.den
      rw [map_pow, hqx]
      exact hk

/-- Closed immersion of spectra on the actual product basic chart. -/
theorem projectiveWeierstrassProductChartSchemeMap_isClosed
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    AlgebraicGeometry.IsClosedImmersion
      (AlgebraicGeometry.Spec.map
        (CommRingCat.ofHom (projectiveWeierstrassProductChartQuotientMap W i j))) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact AlgebraicGeometry.IsClosedImmersion.spec_of_surjective _
    (projectiveWeierstrassProductChartQuotientMap_surjective W i j)

/-- Mathlib's scheme isomorphism from a basic open of the
quotient `Proj` to the spectrum of its degree-zero homogeneous
localization. The explicit affine chart ring identifications are
proved below. -/
noncomputable def projectiveWeierstrassBasicChartIso
    (W : WeierstrassCurve ℤ_[2]) (i : Fin 3) :=
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  AlgebraicGeometry.projIsoSpec
    (projectiveWeierstrassQuotientComponent W)
    ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X i))
    (projectiveWeierstrassCoordinate_mem_degree_one W i)
    (by decide : 0 < 1)

/-- The scheme-theoretic intersection of two coordinate opens in the
quotient `Proj` is the affine chart at their product. -/
theorem projectiveWeierstrassBasicOpen_inter
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    ProjectiveSpectrum.basicOpen (projectiveWeierstrassQuotientComponent W)
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.X i) *
         (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.X j)) =
      ProjectiveSpectrum.basicOpen (projectiveWeierstrassQuotientComponent W)
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X i)) ⊓
      ProjectiveSpectrum.basicOpen (projectiveWeierstrassQuotientComponent W)
          ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
            (MvPolynomial.X j)) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact ProjectiveSpectrum.basicOpen_mul _ _ _

/-- This `projIsoSpec` identifies the actual product basic open of the
quotient `Proj` with its degree-zero localization at the product. -/
noncomputable def projectiveWeierstrassProductChartIso
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :=
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  AlgebraicGeometry.projIsoSpec
    (projectiveWeierstrassQuotientComponent W)
    ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X i) *
      (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X j))
    (by simpa only [one_add_one_eq_two] using
      (SetLike.mul_mem_graded
        (projectiveWeierstrassCoordinate_mem_degree_one W i)
        (projectiveWeierstrassCoordinate_mem_degree_one W j)))
    (by decide : 0 < 2)

/-- The `Z ≠ 0` chart as an actual affine open of the quotient `Proj`. -/
noncomputable def projectiveWeierstrassZChartIso
    (W : WeierstrassCurve ℤ_[2]) :=
  projectiveWeierstrassBasicChartIso W 2

/-- The `Y ≠ 0` chart as an actual affine open of the quotient `Proj`. -/
noncomputable def projectiveWeierstrassYChartIso
    (W : WeierstrassCurve ℤ_[2]) :=
  projectiveWeierstrassBasicChartIso W 1

/-- The ambient projective plane as a scheme, before imposing the
cubic equation. This is not the model of the elliptic curve. -/
noncomputable def projectiveWeierstrassAmbientScheme :
    AlgebraicGeometry.Scheme := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  exact AlgebraicGeometry.Proj
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])

/-- The coordinate intersection in the ambient projective plane is
the basic open of the product. -/
theorem projectiveWeierstrassAmbientBasicOpen_inter (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    ProjectiveSpectrum.basicOpen
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
        (MvPolynomial.X i * MvPolynomial.X j) =
      ProjectiveSpectrum.basicOpen
          (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) (MvPolynomial.X i) ⊓
      ProjectiveSpectrum.basicOpen
          (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) (MvPolynomial.X j) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  exact ProjectiveSpectrum.basicOpen_mul _ _ _

/-- The actual ambient product basic open is the spectrum of its
degree-zero homogeneous localization. -/
noncomputable def projectiveWeierstrassAmbientProductChartIso (i j : Fin 3) :=
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  AlgebraicGeometry.projIsoSpec
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
    (MvPolynomial.X i * MvPolynomial.X j)
    (by
      change (MvPolynomial.X i * MvPolynomial.X j :
        MvPolynomial (Fin 3) ℤ_[2]).IsHomogeneous 2
      have hi : (MvPolynomial.X i : MvPolynomial (Fin 3) ℤ_[2]).IsHomogeneous 1 :=
        MvPolynomial.isHomogeneous_X _ _
      have hj : (MvPolynomial.X j : MvPolynomial (Fin 3) ℤ_[2]).IsHomogeneous 1 :=
        MvPolynomial.isHomogeneous_X _ _
      simpa only [one_add_one_eq_two] using hi.mul hj)
    (by decide : 0 < 2)

/-- The closed *topological* zero locus of the cubic in the ambient
projective spectrum. A closed subset is not by itself a closed
subscheme or the `Proj` of the coordinate ring quotient. -/
noncomputable def projectiveWeierstrassLocus
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    Set (ProjectiveSpectrum
      (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  exact ProjectiveSpectrum.zeroLocus
    (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2])
    {projectiveWeierstrassCubic W}

theorem projectiveWeierstrassLocus_isClosed
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    IsClosed (projectiveWeierstrassLocus W) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  exact ProjectiveSpectrum.isClosed_zeroLocus _ _

/-- Dehomogenization on `Z = 1` gives the integral affine
Weierstrass equation, with no reduction modulo `2`. -/
theorem projectiveWeierstrassCubic_dehomogenize_Z
    (W : WeierstrassCurve ℤ_[2]) :
    (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        MvPolynomial.X 1, 1])
      (projectiveWeierstrassCubic W) =
        localSurfaceEquation W 0 0 := by
  simp [projectiveWeierstrassCubic, localSurfaceEquation,
    localWeierstrassEquation, WeierstrassCurve.map]

theorem projectiveWeierstrassCubic_affine
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    MvPolynomial.eval ![x, y, 1] (projectiveWeierstrassCubic W) =
      localWeierstrassEquation W x y := by
  simp [projectiveWeierstrassCubic, localWeierstrassEquation]

/-- Dehomogenization on `Y = 1` is the integral infinity
chart's polynomial, not just its reduction at the point. -/
theorem projectiveWeierstrassCubic_dehomogenize_Y
    (W : WeierstrassCurve ℤ_[2]) :
    (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        1, MvPolynomial.X 1])
      (projectiveWeierstrassCubic W) =
        weierstrassInfinityChartEquation W := by
  simp [projectiveWeierstrassCubic, weierstrassInfinityChartEquation]

theorem projectiveWeierstrassCubic_infinity
    (W : WeierstrassCurve ℤ_[2]) (u v : ℤ_[2]) :
    MvPolynomial.eval ![u, 1, v] (projectiveWeierstrassCubic W) =
      MvPolynomial.eval ![u, v] (weierstrassInfinityChartEquation W) := by
  simp [projectiveWeierstrassCubic, weierstrassInfinityChartEquation]

/-- A homogeneous polynomial scales by its degree under a
simultaneous scaling of every evaluation variable. -/
private theorem homogeneous_aeval_smul
    {σ S : Type*} [CommSemiring S] [Algebra ℤ_[2] S]
    (p : MvPolynomial σ ℤ_[2]) {n : ℕ} (hp : p.IsHomogeneous n)
    (c : S) (x : σ → S) :
    (MvPolynomial.aeval (fun i => c * x i)) p =
      c ^ n * (MvPolynomial.aeval x) p := by
  classical
  conv_lhs => rw [← MvPolynomial.support_sum_monomial_coeff p]
  conv_rhs => rw [← MvPolynomial.support_sum_monomial_coeff p]
  simp only [map_sum, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  have hdeg : d.degree = n := by
    rw [Finsupp.degree_eq_weight_one]
    exact hp (MvPolynomial.mem_support_iff.mp hd)
  simp only [MvPolynomial.aeval_monomial]
  have hprod : d.prod (fun i k => (c * x i) ^ k) =
      c ^ d.degree * d.prod (fun i k => x i ^ k) := by
    simp only [mul_pow, Finsupp.prod_mul]
    rw [show d.prod (fun _ k => c ^ k) = c ^ d.degree by
      simp only [Finsupp.prod, Finsupp.degree,
        Finset.prod_pow_eq_pow_sum]]
  rw [hprod, hdeg]
  ring

/-- A homogeneous ambient polynomial is its dehomogenized
evaluation in the coordinate ratios, multiplied by the appropriate
power of the inverted variable. -/
private theorem homogeneous_away_normal_form
    {σ : Type*} (p : MvPolynomial σ ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n) (j : σ) :
    let z := MvPolynomial.X j
    let q := algebraMap (MvPolynomial σ ℤ_[2]) (Localization.Away z)
    let u : (Localization.Away z)ˣ :=
      (IsLocalization.Away.algebraMap_isUnit z).unit
    let iz : Localization.Away z :=
      ((u⁻¹ : (Localization.Away z)ˣ) : Localization.Away z)
    q p = (q z) ^ n *
      (MvPolynomial.aeval (fun i => q (MvPolynomial.X i) * iz)) p := by
  classical
  let z : MvPolynomial σ ℤ_[2] := MvPolynomial.X j
  let q : MvPolynomial σ ℤ_[2] →+* Localization.Away z :=
    algebraMap _ _
  have hz : IsUnit (q z) := IsLocalization.Away.algebraMap_isUnit z
  let u : (Localization.Away z)ˣ := hz.unit
  let iz : Localization.Away z :=
    ((u⁻¹ : (Localization.Away z)ˣ) : Localization.Away z)
  have hu : q z * iz = 1 := by
    change (u : Localization.Away z) *
      ((u⁻¹ : (Localization.Away z)ˣ) : Localization.Away z) = 1
    exact Units.mul_inv u
  have heval :
      (MvPolynomial.aeval (fun i => q (MvPolynomial.X i))) p = q p := by
    have heq : (MvPolynomial.aeval
        (fun i => q (MvPolynomial.X i))).toRingHom = q := by
      apply MvPolynomial.ringHom_ext
      · intro a
        change (MvPolynomial.aeval
          (fun i => q (MvPolynomial.X i))) (MvPolynomial.C a) =
            q (MvPolynomial.C a)
        rw [MvPolynomial.aeval_C, ← MvPolynomial.algebraMap_eq]
        exact IsScalarTower.algebraMap_apply ℤ_[2]
          (MvPolynomial σ ℤ_[2]) (Localization.Away z) a
      · intro i
        simp
    exact DFunLike.congr_fun heq p
  have hvar :
      (fun i => q z * (q (MvPolynomial.X i) * iz)) =
        (fun i => q (MvPolynomial.X i)) := by
    funext i
    calc
      q z * (q (MvPolynomial.X i) * iz) =
          q (MvPolynomial.X i) * (q z * iz) := by ring
      _ = q (MvPolynomial.X i) := by rw [hu, mul_one]
  have hscale := homogeneous_aeval_smul p hp (q z)
    (fun i => q (MvPolynomial.X i) * iz)
  rw [hvar, heval] at hscale
  change q p = (q z) ^ n *
    (MvPolynomial.aeval (fun i => q (MvPolynomial.X i) * iz)) p
  exact hscale

/-- The ambient `Z`-localization normal form uses the literal
dehomogenized two-variable polynomial. -/
private theorem homogeneous_Z_away_dehom
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n) :
    let z := MvPolynomial.X (2 : Fin 3)
    let q := algebraMap (MvPolynomial (Fin 3) ℤ_[2]) (Localization.Away z)
    let u : (Localization.Away z)ˣ :=
      (IsLocalization.Away.algebraMap_isUnit z).unit
    let iz : Localization.Away z :=
      ((u⁻¹ : (Localization.Away z)ˣ) : Localization.Away z)
    q p = (q z) ^ n *
      (MvPolynomial.aeval ![q (MvPolynomial.X 0) * iz,
          q (MvPolynomial.X 1) * iz])
        ((MvPolynomial.aeval
          ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
            MvPolynomial.X 1, 1]) p) := by
  classical
  let z : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 2
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* Localization.Away z :=
    algebraMap _ _
  let u : (Localization.Away z)ˣ :=
    (IsLocalization.Away.algebraMap_isUnit z).unit
  let iz : Localization.Away z :=
    ((u⁻¹ : (Localization.Away z)ˣ) : Localization.Away z)
  have hu : q z * iz = 1 := by
    change (u : Localization.Away z) *
      ((u⁻¹ : (Localization.Away z)ˣ) : Localization.Away z) = 1
    exact Units.mul_inv u
  let l : MvPolynomial (Fin 3) ℤ_[2] →ₐ[ℤ_[2]] Localization.Away z :=
    MvPolynomial.aeval (fun i => q (MvPolynomial.X i) * iz)
  let r : MvPolynomial (Fin 3) ℤ_[2] →ₐ[ℤ_[2]] Localization.Away z :=
    (MvPolynomial.aeval ![q (MvPolynomial.X 0) * iz,
      q (MvPolynomial.X 1) * iz]).comp
      (MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          MvPolynomial.X 1, 1])
  have hlr : l = r := by
    apply MvPolynomial.algHom_ext
    intro i
    fin_cases i <;> simp [l, r, hu]
  have h := homogeneous_away_normal_form p hp (2 : Fin 3)
  change q p = q z ^ n * l p at h
  rw [hlr] at h
  change q p = q z ^ n * r p
  exact h

/-- The corresponding ambient normal form after setting `Y = 1`. -/
private theorem homogeneous_Y_away_dehom
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n) :
    let y := MvPolynomial.X (1 : Fin 3)
    let q := algebraMap (MvPolynomial (Fin 3) ℤ_[2]) (Localization.Away y)
    let u : (Localization.Away y)ˣ :=
      (IsLocalization.Away.algebraMap_isUnit y).unit
    let iy : Localization.Away y :=
      ((u⁻¹ : (Localization.Away y)ˣ) : Localization.Away y)
    q p = (q y) ^ n *
      (MvPolynomial.aeval ![q (MvPolynomial.X 0) * iy,
          q (MvPolynomial.X 2) * iy])
        ((MvPolynomial.aeval
          ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
            1, MvPolynomial.X 1]) p) := by
  classical
  let y : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 1
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* Localization.Away y :=
    algebraMap _ _
  let u : (Localization.Away y)ˣ :=
    (IsLocalization.Away.algebraMap_isUnit y).unit
  let iy : Localization.Away y :=
    ((u⁻¹ : (Localization.Away y)ˣ) : Localization.Away y)
  have hu : q y * iy = 1 := by
    change (u : Localization.Away y) *
      ((u⁻¹ : (Localization.Away y)ˣ) : Localization.Away y) = 1
    exact Units.mul_inv u
  let l : MvPolynomial (Fin 3) ℤ_[2] →ₐ[ℤ_[2]] Localization.Away y :=
    MvPolynomial.aeval (fun i => q (MvPolynomial.X i) * iy)
  let r : MvPolynomial (Fin 3) ℤ_[2] →ₐ[ℤ_[2]] Localization.Away y :=
    (MvPolynomial.aeval ![q (MvPolynomial.X 0) * iy,
      q (MvPolynomial.X 2) * iy]).comp
      (MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          1, MvPolynomial.X 1])
  have hlr : l = r := by
    apply MvPolynomial.algHom_ext
    intro i
    fin_cases i <;> simp [l, r, hu]
  have h := homogeneous_away_normal_form p hp (1 : Fin 3)
  change q p = q y ^ n * l p at h
  rw [hlr] at h
  change q p = q y ^ n * r p
  exact h

/-- A homogeneous polynomial whose `Z = 1` dehomogenization is a
multiple of the affine equation becomes a multiple of the cubic
after multiplying by `Z³` in the ambient localization. -/
theorem projectiveWeierstrassCubic_Z_localized_saturation
    (W : WeierstrassCurve ℤ_[2])
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n)
    (hdehom : (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        MvPolynomial.X 1, 1]) p ∈
        Ideal.span {localSurfaceEquation W 0 0}) :
    let z := MvPolynomial.X (2 : Fin 3)
    let q := algebraMap (MvPolynomial (Fin 3) ℤ_[2]) (Localization.Away z)
    ∃ t : Localization.Away z,
      (q z) ^ 3 * q p =
        (q z) ^ n * q (projectiveWeierstrassCubic W) * t := by
  classical
  let z : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 2
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* Localization.Away z :=
    algebraMap _ _
  let u : (Localization.Away z)ˣ :=
    (IsLocalization.Away.algebraMap_isUnit z).unit
  let iz : Localization.Away z :=
    ((u⁻¹ : (Localization.Away z)ˣ) : Localization.Away z)
  let e : MvPolynomial (Fin 2) ℤ_[2] →ₐ[ℤ_[2]]
      Localization.Away z :=
    MvPolynomial.aeval ![q (MvPolynomial.X 0) * iz,
      q (MvPolynomial.X 1) * iz]
  obtain ⟨H, hH⟩ := Ideal.mem_span_singleton'.mp hdehom
  have hp' := homogeneous_Z_away_dehom p hp
  change q p = (q z) ^ n *
    e ((MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        MvPolynomial.X 1, 1]) p) at hp'
  have hF := homogeneous_Z_away_dehom
    (projectiveWeierstrassCubic W)
    (projectiveWeierstrassCubic_isHomogeneous W)
  change q (projectiveWeierstrassCubic W) =
    (q z) ^ 3 * e ((MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        MvPolynomial.X 1, 1]) (projectiveWeierstrassCubic W)) at hF
  rw [projectiveWeierstrassCubic_dehomogenize_Z] at hF
  refine ⟨e H, ?_⟩
  change (q z) ^ 3 * q p =
    (q z) ^ n * q (projectiveWeierstrassCubic W) * e H
  calc
    (q z) ^ 3 * q p =
        (q z) ^ 3 * ((q z) ^ n * (e H *
          e (localSurfaceEquation W 0 0))) := by
            rw [hp', ← hH, map_mul]
    _ = (q z) ^ n * ((q z) ^ 3 *
          e (localSurfaceEquation W 0 0)) * e H := by ring
    _ = (q z) ^ n * q (projectiveWeierstrassCubic W) * e H := by
          rw [← hF]

/-- The analogous localized saturation identity for the `Y = 1`
dehomogenization and the infinity-chart equation. -/
theorem projectiveWeierstrassCubic_Y_localized_saturation
    (W : WeierstrassCurve ℤ_[2])
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n)
    (hdehom : (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        1, MvPolynomial.X 1]) p ∈
        Ideal.span {weierstrassInfinityChartEquation W}) :
    let y := MvPolynomial.X (1 : Fin 3)
    let q := algebraMap (MvPolynomial (Fin 3) ℤ_[2]) (Localization.Away y)
    ∃ t : Localization.Away y,
      (q y) ^ 3 * q p =
        (q y) ^ n * q (projectiveWeierstrassCubic W) * t := by
  classical
  let y : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 1
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* Localization.Away y :=
    algebraMap _ _
  let u : (Localization.Away y)ˣ :=
    (IsLocalization.Away.algebraMap_isUnit y).unit
  let iy : Localization.Away y :=
    ((u⁻¹ : (Localization.Away y)ˣ) : Localization.Away y)
  let e : MvPolynomial (Fin 2) ℤ_[2] →ₐ[ℤ_[2]]
      Localization.Away y :=
    MvPolynomial.aeval ![q (MvPolynomial.X 0) * iy,
      q (MvPolynomial.X 2) * iy]
  obtain ⟨H, hH⟩ := Ideal.mem_span_singleton'.mp hdehom
  have hp' := homogeneous_Y_away_dehom p hp
  change q p = (q y) ^ n *
    e ((MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        1, MvPolynomial.X 1]) p) at hp'
  have hF := homogeneous_Y_away_dehom
    (projectiveWeierstrassCubic W)
    (projectiveWeierstrassCubic_isHomogeneous W)
  change q (projectiveWeierstrassCubic W) =
    (q y) ^ 3 * e ((MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        1, MvPolynomial.X 1]) (projectiveWeierstrassCubic W)) at hF
  rw [projectiveWeierstrassCubic_dehomogenize_Y] at hF
  refine ⟨e H, ?_⟩
  change (q y) ^ 3 * q p =
    (q y) ^ n * q (projectiveWeierstrassCubic W) * e H
  calc
    (q y) ^ 3 * q p =
        (q y) ^ 3 * ((q y) ^ n * (e H *
          e (weierstrassInfinityChartEquation W))) := by
            rw [hp', ← hH, map_mul]
    _ = (q y) ^ n * ((q y) ^ 3 *
          e (weierstrassInfinityChartEquation W)) * e H := by ring
    _ = (q y) ^ n * q (projectiveWeierstrassCubic W) * e H := by
          rw [← hF]

/-- The saturated relation descends to zero in the localization of
the cubic quotient at the image of `Z`. -/
theorem projectiveWeierstrass_Z_quotient_localization_zero
    (W : WeierstrassCurve ℤ_[2])
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n)
    (hdehom : (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        MvPolynomial.X 1, 1]) p ∈
        Ideal.span {localSurfaceEquation W 0 0}) :
    let I : Ideal (MvPolynomial (Fin 3) ℤ_[2]) :=
      Ideal.span {projectiveWeierstrassCubic W}
    let zb : projectiveWeierstrassCoordinateRing W :=
      (Ideal.Quotient.mk I) (MvPolynomial.X 2)
    (algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away zb)) ((Ideal.Quotient.mk I) p) = 0 := by
  let P := MvPolynomial (Fin 3) ℤ_[2]
  let I : Ideal P := Ideal.span {projectiveWeierstrassCubic W}
  let z : P := MvPolynomial.X 2
  let zb : projectiveWeierstrassCoordinateRing W :=
    (Ideal.Quotient.mk I) z
  let q := algebraMap P (Localization.Away z)
  let g : P →+* Localization.Away zb :=
    (algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away zb)).comp (Ideal.Quotient.mk I)
  have hz : IsUnit (g z) := by
    change IsUnit ((algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away zb)) zb)
    exact IsLocalization.Away.algebraMap_isUnit
      (S := Localization.Away zb) zb
  let φ : Localization.Away z →+* Localization.Away zb :=
    IsLocalization.Away.lift (S := Localization.Away z)
      (g := g) z hz
  have hφ (a : P) : φ (q a) = g a := by
    change (IsLocalization.Away.lift (S := Localization.Away z)
      (g := g) z hz) ((algebraMap P (Localization.Away z)) a) = g a
    exact IsLocalization.lift_eq _ a
  have hF : g (projectiveWeierstrassCubic W) = 0 := by
    change (algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away zb))
        ((Ideal.Quotient.mk I) (projectiveWeierstrassCubic W)) = 0
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.mem_span_singleton_self _)]
    exact map_zero _
  obtain ⟨t, ht⟩ :=
    projectiveWeierstrassCubic_Z_localized_saturation W p hp hdehom
  change (q z) ^ 3 * q p =
    (q z) ^ n * q (projectiveWeierstrassCubic W) * t at ht
  have ht' := congrArg φ ht
  simp only [map_mul, map_pow, hφ] at ht'
  change g p = 0
  have hz0 : (0 : Localization.Away zb) =
      @Zero.zero (Localization.Away zb) MulZeroClass.toZero := by rfl
  have hzero : (g z) ^ 3 * g p = 0 := by
    calc
      (g z) ^ 3 * g p = (g z) ^ n * 0 * φ t := by rw [← hF]; exact ht'
      _ = 0 := by
        have hmul : (g z) ^ n * 0 = 0 := by
          rw [hz0]
          exact mul_zero _
        rw [hmul]
        rw [hz0]
        exact zero_mul _
  apply (hz.pow 3).mul_left_cancel
  have hmul : (g z) ^ 3 * 0 = 0 := by
    rw [hz0]
    exact mul_zero _
  exact hzero.trans hmul.symm

/-- The corresponding zero statement in the quotient localization
at the image of `Y`. -/
theorem projectiveWeierstrass_Y_quotient_localization_zero
    (W : WeierstrassCurve ℤ_[2])
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n)
    (hdehom : (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        1, MvPolynomial.X 1]) p ∈
        Ideal.span {weierstrassInfinityChartEquation W}) :
    let I : Ideal (MvPolynomial (Fin 3) ℤ_[2]) :=
      Ideal.span {projectiveWeierstrassCubic W}
    let yb : projectiveWeierstrassCoordinateRing W :=
      (Ideal.Quotient.mk I) (MvPolynomial.X 1)
    (algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away yb)) ((Ideal.Quotient.mk I) p) = 0 := by
  let P := MvPolynomial (Fin 3) ℤ_[2]
  let I : Ideal P := Ideal.span {projectiveWeierstrassCubic W}
  let y : P := MvPolynomial.X 1
  let yb : projectiveWeierstrassCoordinateRing W :=
    (Ideal.Quotient.mk I) y
  let q := algebraMap P (Localization.Away y)
  let g : P →+* Localization.Away yb :=
    (algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away yb)).comp (Ideal.Quotient.mk I)
  have hy : IsUnit (g y) := by
    change IsUnit ((algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away yb)) yb)
    exact IsLocalization.Away.algebraMap_isUnit
      (S := Localization.Away yb) yb
  let φ : Localization.Away y →+* Localization.Away yb :=
    IsLocalization.Away.lift (S := Localization.Away y)
      (g := g) y hy
  have hφ (a : P) : φ (q a) = g a := by
    change (IsLocalization.Away.lift (S := Localization.Away y)
      (g := g) y hy) ((algebraMap P (Localization.Away y)) a) = g a
    exact IsLocalization.lift_eq _ a
  have hF : g (projectiveWeierstrassCubic W) = 0 := by
    change (algebraMap (projectiveWeierstrassCoordinateRing W)
      (Localization.Away yb))
        ((Ideal.Quotient.mk I) (projectiveWeierstrassCubic W)) = 0
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.mem_span_singleton_self _)]
    exact map_zero _
  obtain ⟨t, ht⟩ :=
    projectiveWeierstrassCubic_Y_localized_saturation W p hp hdehom
  change (q y) ^ 3 * q p =
    (q y) ^ n * q (projectiveWeierstrassCubic W) * t at ht
  have ht' := congrArg φ ht
  simp only [map_mul, map_pow, hφ] at ht'
  change g p = 0
  have hy0 : (0 : Localization.Away yb) =
      @Zero.zero (Localization.Away yb) MulZeroClass.toZero := by rfl
  have hzero : (g y) ^ 3 * g p = 0 := by
    calc
      (g y) ^ 3 * g p = (g y) ^ n * 0 * φ t := by rw [← hF]; exact ht'
      _ = 0 := by
        have hmul : (g y) ^ n * 0 = 0 := by
          rw [hy0]
          exact mul_zero _
        rw [hmul]
        rw [hy0]
        exact zero_mul _
  apply (hy.pow 3).mul_left_cancel
  have hmul : (g y) ^ 3 * 0 = 0 := by
    rw [hy0]
    exact mul_zero _
  exact hzero.trans hmul.symm

/-- Clearing the `Z`-localization denominator gives an actual
ambient polynomial relation in the principal cubic ideal. -/
theorem projectiveWeierstrassCubic_Z_power_mem_ideal
    (W : WeierstrassCurve ℤ_[2])
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n)
    (hdehom : (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        MvPolynomial.X 1, 1]) p ∈
        Ideal.span {localSurfaceEquation W 0 0}) :
    ∃ N : ℕ, (MvPolynomial.X (2 : Fin 3)) ^ N * p ∈
      Ideal.span {projectiveWeierstrassCubic W} := by
  let I : Ideal (MvPolynomial (Fin 3) ℤ_[2]) :=
    Ideal.span {projectiveWeierstrassCubic W}
  let zb : projectiveWeierstrassCoordinateRing W :=
    (Ideal.Quotient.mk I) (MvPolynomial.X 2)
  have hloc := projectiveWeierstrass_Z_quotient_localization_zero
    W p hp hdehom
  change (algebraMap (projectiveWeierstrassCoordinateRing W)
    (Localization.Away zb)) ((Ideal.Quotient.mk I) p) = 0 at hloc
  obtain ⟨m, hm⟩ := (IsLocalization.map_eq_zero_iff
    (Submonoid.powers zb) (Localization.Away zb)
    ((Ideal.Quotient.mk I) p)).mp hloc
  obtain ⟨N, hN⟩ :=
    (Submonoid.mem_powers_iff m.val zb).mp m.property
  refine ⟨N, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
  rw [map_mul, map_pow]
  change zb ^ N * (Ideal.Quotient.mk I) p = 0
  rw [hN]
  exact hm

/-- The same ambient denominator clearing on the `Y = 1` chart. -/
theorem projectiveWeierstrassCubic_Y_power_mem_ideal
    (W : WeierstrassCurve ℤ_[2])
    (p : MvPolynomial (Fin 3) ℤ_[2]) {n : ℕ}
    (hp : p.IsHomogeneous n)
    (hdehom : (MvPolynomial.aeval
      ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
        1, MvPolynomial.X 1]) p ∈
        Ideal.span {weierstrassInfinityChartEquation W}) :
    ∃ N : ℕ, (MvPolynomial.X (1 : Fin 3)) ^ N * p ∈
      Ideal.span {projectiveWeierstrassCubic W} := by
  let I : Ideal (MvPolynomial (Fin 3) ℤ_[2]) :=
    Ideal.span {projectiveWeierstrassCubic W}
  let yb : projectiveWeierstrassCoordinateRing W :=
    (Ideal.Quotient.mk I) (MvPolynomial.X 1)
  have hloc := projectiveWeierstrass_Y_quotient_localization_zero
    W p hp hdehom
  change (algebraMap (projectiveWeierstrassCoordinateRing W)
    (Localization.Away yb)) ((Ideal.Quotient.mk I) p) = 0 at hloc
  obtain ⟨m, hm⟩ := (IsLocalization.map_eq_zero_iff
    (Submonoid.powers yb) (Localization.Away yb)
    ((Ideal.Quotient.mk I) p)).mp hloc
  obtain ⟨N, hN⟩ :=
    (Submonoid.mem_powers_iff m.val yb).mp m.property
  refine ⟨N, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
  rw [map_mul, map_pow]
  change yb ^ N * (Ideal.Quotient.mk I) p = 0
  rw [hN]
  exact hm

/-- The integral affine `Z = 1` chart's coordinate ring. -/
abbrev projectiveWeierstrassZChartRing
    (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) ℤ_[2] ⧸ Ideal.span {localSurfaceEquation W 0 0}

/-- The integral infinity `Y = 1` chart's coordinate ring. -/
abbrev projectiveWeierstrassYChartRing
    (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) ℤ_[2] ⧸
    Ideal.span {weierstrassInfinityChartEquation W}

/-- The explicit `Z = 1` chart is a closed subscheme of the
corresponding affine plane. This does not construct the global
closed immersion into projective space. -/
noncomputable def projectiveWeierstrassZChartAffineImmersion
    (W : WeierstrassCurve ℤ_[2]) :
    AlgebraicGeometry.Scheme.Spec.obj
        (Opposite.op (CommRingCat.of (projectiveWeierstrassZChartRing W))) ⟶
      AlgebraicGeometry.Scheme.Spec.obj
        (Opposite.op (CommRingCat.of (MvPolynomial (Fin 2) ℤ_[2]))) :=
  AlgebraicGeometry.Spec.map
    (CommRingCat.ofHom
      (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})))

theorem projectiveWeierstrassZChartAffineImmersion_isClosed
    (W : WeierstrassCurve ℤ_[2]) :
    AlgebraicGeometry.IsClosedImmersion
      (projectiveWeierstrassZChartAffineImmersion W) := by
  unfold projectiveWeierstrassZChartAffineImmersion
  exact AlgebraicGeometry.IsClosedImmersion.spec_of_quotient_mk
    (R := CommRingCat.of (MvPolynomial (Fin 2) ℤ_[2]))
    (Ideal.span {localSurfaceEquation W 0 0})

/-- The explicit `Y = 1` chart is likewise a closed subscheme
of its affine plane. -/
noncomputable def projectiveWeierstrassYChartAffineImmersion
    (W : WeierstrassCurve ℤ_[2]) :
    AlgebraicGeometry.Scheme.Spec.obj
        (Opposite.op (CommRingCat.of (projectiveWeierstrassYChartRing W))) ⟶
      AlgebraicGeometry.Scheme.Spec.obj
        (Opposite.op (CommRingCat.of (MvPolynomial (Fin 2) ℤ_[2]))) :=
  AlgebraicGeometry.Spec.map
    (CommRingCat.ofHom
      (Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})))

theorem projectiveWeierstrassYChartAffineImmersion_isClosed
    (W : WeierstrassCurve ℤ_[2]) :
    AlgebraicGeometry.IsClosedImmersion
      (projectiveWeierstrassYChartAffineImmersion W) := by
  unfold projectiveWeierstrassYChartAffineImmersion
  exact AlgebraicGeometry.IsClosedImmersion.spec_of_quotient_mk
    (R := CommRingCat.of (MvPolynomial (Fin 2) ℤ_[2]))
    (Ideal.span {weierstrassInfinityChartEquation W})

/-- Setting `Z = 1` gives a well-defined algebra map from the
homogeneous coordinate quotient to the explicit affine chart ring. -/
noncomputable def projectiveWeierstrassZDehomMap
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassCoordinateRing W →ₐ[ℤ_[2]]
      projectiveWeierstrassZChartRing W := by
  let h : MvPolynomial (Fin 3) ℤ_[2] →ₐ[ℤ_[2]]
      projectiveWeierstrassZChartRing W :=
    (Ideal.Quotient.mkₐ ℤ_[2] (Ideal.span {localSurfaceEquation W 0 0})).comp
      (MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          MvPolynomial.X 1, 1])
  have hF : h (projectiveWeierstrassCubic W) = 0 := by
    change (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
      ((MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          MvPolynomial.X 1, 1]) (projectiveWeierstrassCubic W)) = 0
    rw [projectiveWeierstrassCubic_dehomogenize_Z]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.subset_span (Set.mem_singleton _))
  have hker : Ideal.span {projectiveWeierstrassCubic W} ≤
      RingHom.ker h.toRingHom := by
    apply Ideal.span_le.mpr
    intro p hp
    rcases Set.mem_singleton_iff.mp hp with rfl
    exact RingHom.mem_ker.mpr hF
  exact Ideal.Quotient.liftₐ _ h
    (fun p hp => RingHom.mem_ker.mp (hker hp))

/-- Setting `Y = 1` gives a well-defined algebra map to the
explicit infinity-chart quotient. -/
noncomputable def projectiveWeierstrassYDehomMap
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassCoordinateRing W →ₐ[ℤ_[2]]
      projectiveWeierstrassYChartRing W := by
  let h : MvPolynomial (Fin 3) ℤ_[2] →ₐ[ℤ_[2]]
      projectiveWeierstrassYChartRing W :=
    (Ideal.Quotient.mkₐ ℤ_[2]
      (Ideal.span {weierstrassInfinityChartEquation W})).comp
      (MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          1, MvPolynomial.X 1])
  have hF : h (projectiveWeierstrassCubic W) = 0 := by
    change (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
      ((MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          1, MvPolynomial.X 1]) (projectiveWeierstrassCubic W)) = 0
    rw [projectiveWeierstrassCubic_dehomogenize_Y]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.subset_span (Set.mem_singleton _))
  have hker : Ideal.span {projectiveWeierstrassCubic W} ≤
      RingHom.ker h.toRingHom := by
    apply Ideal.span_le.mpr
    intro p hp
    rcases Set.mem_singleton_iff.mp hp with rfl
    exact RingHom.mem_ker.mpr hF
  exact Ideal.Quotient.liftₐ _ h
    (fun p hp => RingHom.mem_ker.mp (hker hp))

/-- The `Z = 1` quotient map sends the homogeneous coordinate `Z` to a unit. -/
theorem projectiveWeierstrassZDehomMap_Z
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassZDehomMap W
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 2)) = 1 := by
  simp [projectiveWeierstrassZDehomMap]

/-- The `Y = 1` quotient map sends the homogeneous coordinate `Y` to a unit. -/
theorem projectiveWeierstrassYDehomMap_Y
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassYDehomMap W
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 1)) = 1 := by
  simp [projectiveWeierstrassYDehomMap]

/-- Comparison from the *actual degree-zero localization ring* on
`Z ≠ 0` to the affine chart quotient. -/
noncomputable def projectiveWeierstrassZChartComparisonMap
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W)
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 2)) →+* projectiveWeierstrassZChartRing W := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let z : projectiveWeierstrassCoordinateRing W :=
    (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X 2)
  have hz : IsUnit ((projectiveWeierstrassZDehomMap W).toRingHom z) := by
    change IsUnit (projectiveWeierstrassZDehomMap W
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 2)))
    rw [projectiveWeierstrassZDehomMap_Z]
    exact isUnit_one
  exact (IsLocalization.Away.lift z
    (g := (projectiveWeierstrassZDehomMap W).toRingHom) hz).comp
      (algebraMap (HomogeneousLocalization.Away
        (projectiveWeierstrassQuotientComponent W) z)
        (Localization.Away z))

/-- The corresponding comparison map on the `Y ≠ 0` chart. -/
noncomputable def projectiveWeierstrassYChartComparisonMap
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W)
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 1)) →+* projectiveWeierstrassYChartRing W := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let y : projectiveWeierstrassCoordinateRing W :=
    (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X 1)
  have hy : IsUnit ((projectiveWeierstrassYDehomMap W).toRingHom y) := by
    change IsUnit (projectiveWeierstrassYDehomMap W
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 1)))
    rw [projectiveWeierstrassYDehomMap_Y]
    exact isUnit_one
  exact (IsLocalization.Away.lift y
    (g := (projectiveWeierstrassYDehomMap W).toRingHom) hy).comp
      (algebraMap (HomogeneousLocalization.Away
        (projectiveWeierstrassQuotientComponent W) y)
        (Localization.Away y))

/-- The degree-zero coordinate ratio `Xᵢ / Xⱼ` in the genuine
homogeneous localization of the quotient ring. -/
noncomputable def projectiveWeierstrassCoordinateRatio
    (W : WeierstrassCurve ℤ_[2]) (j i : Fin 3) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W)
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X j)) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact HomogeneousLocalization.mk
    { deg := 1
      num := ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W i⟩
      den := ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W j⟩
      den_mem := Submonoid.mem_powers _ }

/-- A base coefficient as a degree-zero fraction with denominator
one in either basic chart. -/
noncomputable def projectiveWeierstrassConstantFraction
    (W : WeierstrassCurve ℤ_[2]) (j : Fin 3) (a : ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W)
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X j)) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  have hC : (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
      (MvPolynomial.C a) : projectiveWeierstrassCoordinateRing W) ∈
      projectiveWeierstrassQuotientComponent W 0 :=
    Submodule.mem_map.mpr
      ⟨MvPolynomial.C a, MvPolynomial.isHomogeneous_C _ _, rfl⟩
  exact HomogeneousLocalization.mk
    { deg := 0
      num := ⟨_, hC⟩
      den := ⟨1, (projectiveWeierstrassQuotientGradedMonoid W).one_mem⟩
      den_mem := Submonoid.one_mem _ }

/-- The `Z` comparison fixes integral base coefficients. -/
theorem projectiveWeierstrassZChartComparisonMap_C
    (W : WeierstrassCurve ℤ_[2]) (a : ℤ_[2]) :
    projectiveWeierstrassZChartComparisonMap W
      (projectiveWeierstrassConstantFraction W 2 a) =
        (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
          (MvPolynomial.C a) := by
  simp [projectiveWeierstrassZChartComparisonMap,
    projectiveWeierstrassConstantFraction,
    Localization.mk_eq_mk']
  unfold IsLocalization.Away.lift
  erw [IsLocalization.lift_mk'_spec]
  simp [projectiveWeierstrassZDehomMap]
  rfl

/-- The `Y` comparison fixes integral base coefficients. -/
theorem projectiveWeierstrassYChartComparisonMap_C
    (W : WeierstrassCurve ℤ_[2]) (a : ℤ_[2]) :
    projectiveWeierstrassYChartComparisonMap W
      (projectiveWeierstrassConstantFraction W 1 a) =
        (Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W}))
          (MvPolynomial.C a) := by
  simp [projectiveWeierstrassYChartComparisonMap,
    projectiveWeierstrassConstantFraction,
    Localization.mk_eq_mk']
  unfold IsLocalization.Away.lift
  erw [IsLocalization.lift_mk'_spec]
  simp [projectiveWeierstrassYDehomMap]
  rfl

/-- On the `Z ≠ 0` basic open, the comparison map sends `X/Z`
to the affine variable `x`. -/
theorem projectiveWeierstrassZChartComparisonMap_X
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassZChartComparisonMap W
      (projectiveWeierstrassCoordinateRatio W 2 0) =
        (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
          (MvPolynomial.X 0) := by
  simp [projectiveWeierstrassZChartComparisonMap,
    projectiveWeierstrassCoordinateRatio,
    Localization.mk_eq_mk']
  unfold IsLocalization.Away.lift
  erw [IsLocalization.lift_mk'_spec]
  simp [projectiveWeierstrassZDehomMap]

/-- The same comparison sends `Y/Z` to `y`. -/
theorem projectiveWeierstrassZChartComparisonMap_Y
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassZChartComparisonMap W
      (projectiveWeierstrassCoordinateRatio W 2 1) =
        (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
          (MvPolynomial.X 1) := by
  simp [projectiveWeierstrassZChartComparisonMap,
    projectiveWeierstrassCoordinateRatio,
    Localization.mk_eq_mk']
  unfold IsLocalization.Away.lift
  erw [IsLocalization.lift_mk'_spec]
  simp [projectiveWeierstrassZDehomMap]

/-- On the `Y ≠ 0` chart, `X/Y` maps to `u`. -/
theorem projectiveWeierstrassYChartComparisonMap_X
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassYChartComparisonMap W
      (projectiveWeierstrassCoordinateRatio W 1 0) =
        (Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W}))
          (MvPolynomial.X 0) := by
  simp [projectiveWeierstrassYChartComparisonMap,
    projectiveWeierstrassCoordinateRatio,
    Localization.mk_eq_mk']
  unfold IsLocalization.Away.lift
  erw [IsLocalization.lift_mk'_spec]
  simp [projectiveWeierstrassYDehomMap]

/-- On the `Y ≠ 0` chart, `Z/Y` maps to `v`. -/
theorem projectiveWeierstrassYChartComparisonMap_Z
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassYChartComparisonMap W
      (projectiveWeierstrassCoordinateRatio W 1 2) =
        (Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W}))
          (MvPolynomial.X 1) := by
  simp [projectiveWeierstrassYChartComparisonMap,
    projectiveWeierstrassCoordinateRatio,
    Localization.mk_eq_mk']
  unfold IsLocalization.Away.lift
  erw [IsLocalization.lift_mk'_spec]
  simp [projectiveWeierstrassYDehomMap]

/-- Every element of the explicit affine chart ring is the image
of a degree-zero fraction on `Z ≠ 0`. -/
theorem projectiveWeierstrassZChartComparisonMap_surjective
    (W : WeierstrassCurve ℤ_[2]) :
    Function.Surjective (projectiveWeierstrassZChartComparisonMap W) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {localSurfaceEquation W 0 0}
  have hpoly (p : MvPolynomial (Fin 2) ℤ_[2]) :
      ∃ t, projectiveWeierstrassZChartComparisonMap W t =
        (Ideal.Quotient.mk J) p := by
    apply MvPolynomial.induction_on p
    · intro a
      exact ⟨projectiveWeierstrassConstantFraction W 2 a,
        projectiveWeierstrassZChartComparisonMap_C W a⟩
    · intro p q hp hq
      obtain ⟨s, hs⟩ := hp
      obtain ⟨t, ht⟩ := hq
      refine ⟨s + t, ?_⟩
      simp [map_add, hs, ht]
    · intro p i hp
      obtain ⟨s, hs⟩ := hp
      fin_cases i
      · refine ⟨s * projectiveWeierstrassCoordinateRatio W 2 0, ?_⟩
        simp [map_mul, hs, projectiveWeierstrassZChartComparisonMap_X]
      · refine ⟨s * projectiveWeierstrassCoordinateRatio W 2 1, ?_⟩
        simp [map_mul, hs, projectiveWeierstrassZChartComparisonMap_Y]
  intro a
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective a
  exact hpoly p

/-- The analogous surjectivity statement for the `Y ≠ 0` chart. -/
theorem projectiveWeierstrassYChartComparisonMap_surjective
    (W : WeierstrassCurve ℤ_[2]) :
    Function.Surjective (projectiveWeierstrassYChartComparisonMap W) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {weierstrassInfinityChartEquation W}
  have hpoly (p : MvPolynomial (Fin 2) ℤ_[2]) :
      ∃ t, projectiveWeierstrassYChartComparisonMap W t =
        (Ideal.Quotient.mk J) p := by
    apply MvPolynomial.induction_on p
    · intro a
      exact ⟨projectiveWeierstrassConstantFraction W 1 a,
        projectiveWeierstrassYChartComparisonMap_C W a⟩
    · intro p q hp hq
      obtain ⟨s, hs⟩ := hp
      obtain ⟨t, ht⟩ := hq
      refine ⟨s + t, ?_⟩
      simp [map_add, hs, ht]
    · intro p i hp
      obtain ⟨s, hs⟩ := hp
      fin_cases i
      · refine ⟨s * projectiveWeierstrassCoordinateRatio W 1 0, ?_⟩
        simp [map_mul, hs, projectiveWeierstrassYChartComparisonMap_X]
      · refine ⟨s * projectiveWeierstrassCoordinateRatio W 1 2, ?_⟩
        simp [map_mul, hs, projectiveWeierstrassYChartComparisonMap_Z]
  intro a
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective a
  exact hpoly p

/-- The `Z` chart comparison has no kernel: a vanishing fraction has
a homogeneous numerator whose dehomogenization lies in the affine
equation ideal, hence vanishes in the localized cubic quotient. -/
theorem projectiveWeierstrassZChartComparisonMap_injective
    (W : WeierstrassCurve ℤ_[2]) :
    Function.Injective (projectiveWeierstrassZChartComparisonMap W) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let P := MvPolynomial (Fin 3) ℤ_[2]
  let I : Ideal P := Ideal.span {projectiveWeierstrassCubic W}
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {localSurfaceEquation W 0 0}
  let R := projectiveWeierstrassCoordinateRing W
  let z : R := (Ideal.Quotient.mk I) (MvPolynomial.X 2)
  let S := Localization.Away z
  let d := (projectiveWeierstrassZDehomMap W).toRingHom
  have hz : IsUnit (d z) := by
    change IsUnit (projectiveWeierstrassZDehomMap W
      ((Ideal.Quotient.mk I) (MvPolynomial.X 2)))
    rw [projectiveWeierstrassZDehomMap_Z]
    exact isUnit_one
  let φ : S →+* projectiveWeierstrassZChartRing W :=
    IsLocalization.Away.lift (S := S) (g := d) z hz
  have hφ (a : R) : φ ((algebraMap R S) a) = d a := by
    change (IsLocalization.Away.lift (S := S) (g := d) z hz)
      ((algebraMap R S) a) = d a
    exact IsLocalization.lift_eq _ a
  have hz0 : (0 : S) = @Zero.zero S MulZeroClass.toZero := by rfl
  have hkernel (t : HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W) z)
      (ht : projectiveWeierstrassZChartComparisonMap W t = 0) : t = 0 := by
    have hcmp : φ t.val = 0 := by
      change φ t.val = 0 at ht
      exact ht
    have hden := HomogeneousLocalization.den_smul_val t
    have hsmul : t.den • t.val =
        (algebraMap R S) t.den * t.val := by
      calc
        t.den • t.val =
            ((algebraMap R S) t.den) • t.val := by
              rw [← IsLocalization.mk'_one
                (M := Submonoid.powers z) S t.den,
                ← Localization.mk_eq_mk']
              exact (OreLocalization.oreDiv_one_smul t.den t.val).symm
        _ = (algebraMap R S) t.den * t.val := smul_eq_mul S
    rw [hsmul] at hden
    have hdenimage := congrArg φ hden
    rw [map_mul, hφ, hcmp] at hdenimage
    have hnum : d t.num = 0 := by
      rw [hφ] at hdenimage
      simpa using hdenimage.symm
    obtain ⟨p, hp, heq⟩ :=
      Submodule.mem_map.mp (HomogeneousLocalization.num_mem_deg t)
    have heq' : (Ideal.Quotient.mk I) p = t.num := by
      simpa only [AlgHom.toLinearMap_apply] using heq
    have hdehom : (MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          MvPolynomial.X 1, 1]) p ∈ J := by
      apply Ideal.Quotient.eq_zero_iff_mem.mp
      calc
        (Ideal.Quotient.mk J) ((MvPolynomial.aeval
            ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
              MvPolynomial.X 1, 1]) p) =
          projectiveWeierstrassZDehomMap W ((Ideal.Quotient.mk I) p) := by
            simp [projectiveWeierstrassZDehomMap]
        _ = d t.num := by rw [heq']; rfl
        _ = 0 := hnum
    have hloc := projectiveWeierstrass_Z_quotient_localization_zero
      W p hp hdehom
    change (algebraMap R S) ((Ideal.Quotient.mk I) p) = 0 at hloc
    rw [heq'] at hloc
    rw [hloc] at hden
    have hunit : IsUnit ((algebraMap R S) t.den) :=
      IsLocalization.map_units S ⟨t.den, t.den_mem⟩
    have hval : t.val = 0 := by
      apply hunit.mul_right_eq_zero.mp
      rw [hz0]
      exact hden
    apply HomogeneousLocalization.val_injective (Submonoid.powers z)
    simpa only [HomogeneousLocalization.val_zero] using hval
  intro a b hab
  have hdiff : projectiveWeierstrassZChartComparisonMap W (a - b) = 0 := by
    rw [map_sub, hab, sub_self]
  exact sub_eq_zero.mp (hkernel (a - b) hdiff)

/-- The `Y` comparison is injective by the same homogeneous
numerator and localized saturation argument. -/
theorem projectiveWeierstrassYChartComparisonMap_injective
    (W : WeierstrassCurve ℤ_[2]) :
    Function.Injective (projectiveWeierstrassYChartComparisonMap W) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let P := MvPolynomial (Fin 3) ℤ_[2]
  let I : Ideal P := Ideal.span {projectiveWeierstrassCubic W}
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {weierstrassInfinityChartEquation W}
  let R := projectiveWeierstrassCoordinateRing W
  let y : R := (Ideal.Quotient.mk I) (MvPolynomial.X 1)
  let S := Localization.Away y
  let d := (projectiveWeierstrassYDehomMap W).toRingHom
  have hy : IsUnit (d y) := by
    change IsUnit (projectiveWeierstrassYDehomMap W
      ((Ideal.Quotient.mk I) (MvPolynomial.X 1)))
    rw [projectiveWeierstrassYDehomMap_Y]
    exact isUnit_one
  let φ : S →+* projectiveWeierstrassYChartRing W :=
    IsLocalization.Away.lift (S := S) (g := d) y hy
  have hφ (a : R) : φ ((algebraMap R S) a) = d a := by
    change (IsLocalization.Away.lift (S := S) (g := d) y hy)
      ((algebraMap R S) a) = d a
    exact IsLocalization.lift_eq _ a
  have hy0 : (0 : S) = @Zero.zero S MulZeroClass.toZero := by rfl
  have hkernel (t : HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W) y)
      (ht : projectiveWeierstrassYChartComparisonMap W t = 0) : t = 0 := by
    have hcmp : φ t.val = 0 := by
      change φ t.val = 0 at ht
      exact ht
    have hden := HomogeneousLocalization.den_smul_val t
    have hsmul : t.den • t.val =
        (algebraMap R S) t.den * t.val := by
      calc
        t.den • t.val =
            ((algebraMap R S) t.den) • t.val := by
              rw [← IsLocalization.mk'_one
                (M := Submonoid.powers y) S t.den,
                ← Localization.mk_eq_mk']
              exact (OreLocalization.oreDiv_one_smul t.den t.val).symm
        _ = (algebraMap R S) t.den * t.val := smul_eq_mul S
    rw [hsmul] at hden
    have hdenimage := congrArg φ hden
    rw [map_mul, hφ, hcmp] at hdenimage
    have hnum : d t.num = 0 := by
      rw [hφ] at hdenimage
      simpa using hdenimage.symm
    obtain ⟨p, hp, heq⟩ :=
      Submodule.mem_map.mp (HomogeneousLocalization.num_mem_deg t)
    have heq' : (Ideal.Quotient.mk I) p = t.num := by
      simpa only [AlgHom.toLinearMap_apply] using heq
    have hdehom : (MvPolynomial.aeval
        ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
          1, MvPolynomial.X 1]) p ∈ J := by
      apply Ideal.Quotient.eq_zero_iff_mem.mp
      calc
        (Ideal.Quotient.mk J) ((MvPolynomial.aeval
            ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
              1, MvPolynomial.X 1]) p) =
          projectiveWeierstrassYDehomMap W ((Ideal.Quotient.mk I) p) := by
            simp [projectiveWeierstrassYDehomMap]
        _ = d t.num := by rw [heq']; rfl
        _ = 0 := hnum
    have hloc := projectiveWeierstrass_Y_quotient_localization_zero
      W p hp hdehom
    change (algebraMap R S) ((Ideal.Quotient.mk I) p) = 0 at hloc
    rw [heq'] at hloc
    rw [hloc] at hden
    have hunit : IsUnit ((algebraMap R S) t.den) :=
      IsLocalization.map_units S ⟨t.den, t.den_mem⟩
    have hval : t.val = 0 := by
      apply hunit.mul_right_eq_zero.mp
      rw [hy0]
      exact hden
    apply HomogeneousLocalization.val_injective (Submonoid.powers y)
    simpa only [HomogeneousLocalization.val_zero] using hval
  intro a b hab
  have hdiff : projectiveWeierstrassYChartComparisonMap W (a - b) = 0 := by
    rw [map_sub, hab, sub_self]
  exact sub_eq_zero.mp (hkernel (a - b) hdiff)

/-- The degree-zero `Z ≠ 0` localization is the explicit integral
affine Weierstrass chart, as an isomorphism of rings. -/
noncomputable def projectiveWeierstrassZChartRingEquiv
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W)
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 2)) ≃+* projectiveWeierstrassZChartRing W := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact RingEquiv.ofBijective (projectiveWeierstrassZChartComparisonMap W)
    ⟨projectiveWeierstrassZChartComparisonMap_injective W,
      projectiveWeierstrassZChartComparisonMap_surjective W⟩

/-- The degree-zero `Y ≠ 0` localization is the explicit integral
infinity chart, as an isomorphism of rings. -/
noncomputable def projectiveWeierstrassYChartRingEquiv
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    HomogeneousLocalization.Away
      (projectiveWeierstrassQuotientComponent W)
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X 1)) ≃+* projectiveWeierstrassYChartRing W := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact RingEquiv.ofBijective (projectiveWeierstrassYChartComparisonMap W)
    ⟨projectiveWeierstrassYChartComparisonMap_injective W,
      projectiveWeierstrassYChartComparisonMap_surjective W⟩

/-- The `Z ≠ 0` basic open of the projective model is the spectrum
of the explicit integral affine Weierstrass quotient. -/
noncomputable def projectiveWeierstrassExplicitZChartIso
    (W : WeierstrassCurve ℤ_[2]) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact (projectiveWeierstrassZChartIso W).trans
    (AlgebraicGeometry.Spec.toLocallyRingedSpace.mapIso
      (projectiveWeierstrassZChartRingEquiv W).symm.toCommRingCatIso.op)

/-- The `Y ≠ 0` basic open is the spectrum of the explicit
integral infinity-chart quotient. -/
noncomputable def projectiveWeierstrassExplicitYChartIso
    (W : WeierstrassCurve ℤ_[2]) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact (projectiveWeierstrassYChartIso W).trans
    (AlgebraicGeometry.Spec.toLocallyRingedSpace.mapIso
      (projectiveWeierstrassYChartRingEquiv W).symm.toCommRingCatIso.op)

/-- On the projective cubic, a prime containing `Z` also contains
`X`: modulo `Z` the equation is `-X³`. This holds for scheme points
over the integral base, not only for field-valued points, and shows
that the `X ≠ 0` open needs no separate third chart beyond `Z ≠ 0`.
It does not construct or glue those open subschemes. -/
theorem projectiveWeierstrassCubic_X_mem_of_Z_mem
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (MvPolynomial (Fin 3) ℤ_[2]))
    (hQ : Q.IsPrime)
    (hF : projectiveWeierstrassCubic W ∈ Q)
    (hZ : MvPolynomial.X (2 : Fin 3) ∈ Q) :
    MvPolynomial.X (0 : Fin 3) ∈ Q := by
  let X : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 0
  let Y : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 1
  let Z : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X 2
  have hfactor :
      projectiveWeierstrassCubic W + X ^ 3 =
        Z * (Y ^ 2 + MvPolynomial.C W.a₁ * X * Y +
          MvPolynomial.C W.a₃ * Y * Z -
          (MvPolynomial.C W.a₂ * X ^ 2 +
            MvPolynomial.C W.a₄ * X * Z +
            MvPolynomial.C W.a₆ * Z ^ 2)) := by
    dsimp [projectiveWeierstrassCubic, X, Y, Z]
    ring
  have hsum : projectiveWeierstrassCubic W + X ^ 3 ∈ Q := by
    rw [hfactor]
    exact Q.mul_mem_right _ hZ
  have hpow : X ^ 3 ∈ Q := by
    have := Q.sub_mem hsum hF
    simpa only [add_sub_cancel_left] using this
  exact hQ.mem_of_pow_mem 3 hpow

/-- Every relevant prime of the projective cubic is in one of the
`Z ≠ 0` or `Y ≠ 0` basic opens. The premise spells out relevance as
the failure of all three coordinate variables to lie in the prime. -/
theorem projectiveWeierstrassCubic_two_chart_cover
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (MvPolynomial (Fin 3) ℤ_[2]))
    (hQ : Q.IsPrime)
    (hF : projectiveWeierstrassCubic W ∈ Q)
    (hcoords : MvPolynomial.X (0 : Fin 3) ∉ Q ∨
      MvPolynomial.X (1 : Fin 3) ∉ Q ∨
      MvPolynomial.X (2 : Fin 3) ∉ Q) :
    MvPolynomial.X (1 : Fin 3) ∉ Q ∨
      MvPolynomial.X (2 : Fin 3) ∉ Q := by
  by_cases hz : MvPolynomial.X (2 : Fin 3) ∈ Q
  · left
    rcases hcoords with hx | hy | hz'
    · exact (hx (projectiveWeierstrassCubic_X_mem_of_Z_mem W Q hQ hF hz)).elim
    · exact hy
    · exact (hz' hz).elim
  · exact Or.inr hz

#print axioms projectiveWeierstrassCubic_isHomogeneous
#print axioms projectiveWeierstrassCubic_ideal_isHomogeneous
#print axioms projectiveWeierstrassCoordinateRing_finiteType
#print axioms projectiveWeierstrassQuotientComponent_iSup_eq_top
#print axioms projectiveWeierstrassCubic_sum_mem_ideal_iff
#print axioms projectiveWeierstrassQuotientGradedMonoid
#print axioms projectiveWeierstrassQuotient_isInternal
#print axioms projectiveWeierstrassQuotientGrading
#print axioms projectiveWeierstrassScheme
#print axioms projectiveWeierstrassCoordinate_mem_degree_one
#print axioms projectiveWeierstrassZChartIso
#print axioms projectiveWeierstrassYChartIso
#print axioms projectiveWeierstrassLocus_isClosed
#print axioms projectiveWeierstrassCubic_affine
#print axioms projectiveWeierstrassCubic_dehomogenize_Z
#print axioms projectiveWeierstrassCubic_dehomogenize_Y
#print axioms projectiveWeierstrassCubic_infinity
#print axioms projectiveWeierstrassZDehomMap
#print axioms projectiveWeierstrassYDehomMap
#print axioms projectiveWeierstrassZDehomMap_Z
#print axioms projectiveWeierstrassYDehomMap_Y
#print axioms projectiveWeierstrassZChartComparisonMap
#print axioms projectiveWeierstrassYChartComparisonMap
#print axioms projectiveWeierstrassCoordinateRatio
#print axioms projectiveWeierstrassConstantFraction
#print axioms projectiveWeierstrassZChartComparisonMap_C
#print axioms projectiveWeierstrassYChartComparisonMap_C
#print axioms projectiveWeierstrassZChartComparisonMap_X
#print axioms projectiveWeierstrassZChartComparisonMap_Y
#print axioms projectiveWeierstrassYChartComparisonMap_X
#print axioms projectiveWeierstrassYChartComparisonMap_Z
#print axioms projectiveWeierstrassZChartComparisonMap_surjective
#print axioms projectiveWeierstrassYChartComparisonMap_surjective
#print axioms projectiveWeierstrassCubic_Z_localized_saturation
#print axioms projectiveWeierstrassCubic_Y_localized_saturation
#print axioms projectiveWeierstrass_Z_quotient_localization_zero
#print axioms projectiveWeierstrass_Y_quotient_localization_zero
#print axioms projectiveWeierstrassZChartAffineImmersion_isClosed
#print axioms projectiveWeierstrassYChartAffineImmersion_isClosed
#print axioms projectiveWeierstrassCubic_Z_power_mem_ideal
#print axioms projectiveWeierstrassCubic_Y_power_mem_ideal
#print axioms projectiveWeierstrassZChartComparisonMap_injective
#print axioms projectiveWeierstrassYChartComparisonMap_injective
#print axioms projectiveWeierstrassZChartRingEquiv
#print axioms projectiveWeierstrassYChartRingEquiv
#print axioms projectiveWeierstrassExplicitZChartIso
#print axioms projectiveWeierstrassExplicitYChartIso
#print axioms projectiveWeierstrassCubic_X_mem_of_Z_mem
#print axioms projectiveWeierstrassCubic_two_chart_cover

end Beal.General