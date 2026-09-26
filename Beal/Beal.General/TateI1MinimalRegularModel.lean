import Beal.«Beal.General».TateI1Classification
import Mathlib.RingTheory.MvPolynomial.Homogeneous
import Mathlib.RingTheory.GradedAlgebra.HomogeneousIdeal
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme

/-!
The homogeneous equation for the candidate projective Weierstrass
model over `ℤ_[2]`, together with checks on two affine charts.
The quotient carries its inherited grading, so its `Proj` is an
actual scheme. The ambient projective plane and the cubic's closed
topological locus are also constructed. Dehomogenization defines maps
from each degree-zero chart localization to its explicit affine
quotient; their bijectivity is not yet proved. The closed immersion
relating the schemes, properness, all-stalk regularity, relative
minimality, and Kodaira classification remain to be proved.
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

/-- The proposed project's actual homogeneous coordinate *ring*.
The quotient has not yet been equipped with the inherited grading,
so this definition alone does not produce its `Proj` scheme. -/
abbrev projectiveWeierstrassCoordinateRing
    (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 3) ℤ_[2] ⧸
    Ideal.span {projectiveWeierstrassCubic W}

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

/-- Mathlib's actual scheme isomorphism from a basic open of the
quotient `Proj` to the spectrum of its degree-zero homogeneous
localization. This does not yet identify that localization with
the explicit affine Weierstrass quotient. -/
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

/-- The integral affine `Z = 1` chart's coordinate ring. Its
isomorphism with the degree-zero homogeneous localization is still
to be proved. -/
abbrev projectiveWeierstrassZChartRing
    (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) ℤ_[2] ⧸ Ideal.span {localSurfaceEquation W 0 0}

/-- The integral infinity `Y = 1` chart's coordinate ring. -/
abbrev projectiveWeierstrassYChartRing
    (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) ℤ_[2] ⧸
    Ideal.span {weierstrassInfinityChartEquation W}

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
`Z ≠ 0` to the proposed affine chart quotient. This is a ring map,
not yet a proven isomorphism. -/
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
#print axioms projectiveWeierstrassCubic_X_mem_of_Z_mem
#print axioms projectiveWeierstrassCubic_two_chart_cover

end Beal.General