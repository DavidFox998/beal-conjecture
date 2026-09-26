import Beal.«Beal.General».TateI1Classification
import Mathlib.RingTheory.MvPolynomial.Homogeneous
import Mathlib.RingTheory.GradedAlgebra.HomogeneousIdeal
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme

/-!
The homogeneous equation for the candidate projective Weierstrass
model over `ℤ_[2]`, together with checks on two affine charts.
The ambient projective plane and the cubic's closed topological locus
are constructed, but not the quotient `Proj` scheme of the cubic.
Properness, regularity of all stalks, relative minimality, and
Kodaira classification are not established in this file.
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
theorem projectiveWeierstrassCubic_affine
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    MvPolynomial.eval ![x, y, 1] (projectiveWeierstrassCubic W) =
      localWeierstrassEquation W x y := by
  simp [projectiveWeierstrassCubic, localWeierstrassEquation]

/-- Dehomogenization on `Y = 1` is the integral infinity
chart's polynomial, not just its reduction at the point. -/
theorem projectiveWeierstrassCubic_infinity
    (W : WeierstrassCurve ℤ_[2]) (u v : ℤ_[2]) :
    MvPolynomial.eval ![u, 1, v] (projectiveWeierstrassCubic W) =
      MvPolynomial.eval ![u, v] (weierstrassInfinityChartEquation W) := by
  simp [projectiveWeierstrassCubic, weierstrassInfinityChartEquation]

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
#print axioms projectiveWeierstrassLocus_isClosed
#print axioms projectiveWeierstrassCubic_affine
#print axioms projectiveWeierstrassCubic_infinity
#print axioms projectiveWeierstrassCubic_X_mem_of_Z_mem
#print axioms projectiveWeierstrassCubic_two_chart_cover

end Beal.General