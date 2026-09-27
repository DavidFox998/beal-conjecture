import Beal.«Beal.General».GradedProjectiveSpecialFibre
import Mathlib.AlgebraicGeometry.Pullbacks

/-!
The base morphism needed to form the scheme-theoretic special fibre
of the *actual* quotient Proj. The fibre product and its comparison
with Proj of the graded quotient are separate obligations.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits Opposite TopologicalSpace

variable {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
variable (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]

/-- A base scalar, viewed as a degree-zero homogeneous fraction
at a relevant homogeneous prime. -/
noncomputable def projectiveScalarAtPrime
    (x : ProjectiveSpectrum 𝒜) (r : R) :
    HomogeneousLocalization 𝒜 x.asHomogeneousIdeal.toIdeal.primeCompl :=
  HomogeneousLocalization.mk
    ⟨0, ⟨algebraMap R A r, SetLike.algebraMap_mem_graded 𝒜 r⟩,
      ⟨1, SetLike.one_mem_graded 𝒜⟩, Submonoid.one_mem _⟩

/-- Forgetting the grading sends the scalar fraction to the
ordinary localization map. -/
theorem projectiveScalarAtPrime_val
    (x : ProjectiveSpectrum 𝒜) (r : R) :
    (projectiveScalarAtPrime 𝒜 x r).val =
      algebraMap A (Localization x.asHomogeneousIdeal.toIdeal.primeCompl)
        (algebraMap R A r) := by
  change Localization.mk (algebraMap R A r) (1 : x.asHomogeneousIdeal.toIdeal.primeCompl) =
    algebraMap A (Localization x.asHomogeneousIdeal.toIdeal.primeCompl)
      (algebraMap R A r)
  exact Localization.mk_one_eq_algebraMap _

/-- The pointwise scalar action is a ring homomorphism, as checked
inside the ordinary localization. -/
noncomputable def projectiveScalarAtPrimeHom
    (x : ProjectiveSpectrum 𝒜) :
    R →+* HomogeneousLocalization 𝒜
      x.asHomogeneousIdeal.toIdeal.primeCompl where
  toFun := projectiveScalarAtPrime 𝒜 x
  map_zero' := by
    apply HomogeneousLocalization.val_injective _
    rw [projectiveScalarAtPrime_val]
    simp
  map_one' := by
    apply HomogeneousLocalization.val_injective _
    rw [projectiveScalarAtPrime_val]
    simp
  map_add' r s := by
    apply HomogeneousLocalization.val_injective _
    rw [projectiveScalarAtPrime_val]
    simp only [HomogeneousLocalization.val_add, projectiveScalarAtPrime_val, map_add]
  map_mul' r s := by
    apply HomogeneousLocalization.val_injective _
    rw [projectiveScalarAtPrime_val]
    simp only [HomogeneousLocalization.val_mul, projectiveScalarAtPrime_val, map_mul]

/-- Each scalar defines a global section of the Proj structure
sheaf, locally represented by its degree-zero numerator over `1`. -/
noncomputable def projectiveScalarSection (r : R) :
    (ProjectiveSpectrum.Proj.structureSheaf 𝒜).1.obj
      (op (⊤ : Opens (ProjectiveSpectrum.top 𝒜))) :=
  ⟨fun x => projectiveScalarAtPrime 𝒜 x.1 r,
    fun x => ⟨⊤, x.2, 𝟙 _,
      0, ⟨algebraMap R A r, SetLike.algebraMap_mem_graded 𝒜 r⟩,
      ⟨1, SetLike.one_mem_graded 𝒜⟩,
      (fun y => by
        change (1 : A) ∈ y.1.asHomogeneousIdeal.toIdeal.primeCompl
        exact Submonoid.one_mem _),
      fun _ => rfl⟩⟩

/-- The base algebra acts on the global sections of the Proj
structure sheaf. -/
noncomputable def projectiveScalarToGamma :
    R →+* (ProjectiveSpectrum.Proj.structureSheaf 𝒜).1.obj
      (op (⊤ : Opens (ProjectiveSpectrum.top 𝒜))) where
  toFun := projectiveScalarSection 𝒜
  map_zero' := by
    apply AlgebraicGeometry.Proj.ext
    funext x
    exact map_zero (projectiveScalarAtPrimeHom 𝒜 x.1)
  map_one' := by
    apply AlgebraicGeometry.Proj.ext
    funext x
    exact map_one (projectiveScalarAtPrimeHom 𝒜 x.1)
  map_add' r s := by
    apply AlgebraicGeometry.Proj.ext
    funext x
    exact map_add (projectiveScalarAtPrimeHom 𝒜 x.1) r s
  map_mul' r s := by
    apply AlgebraicGeometry.Proj.ext
    funext x
    exact map_mul (projectiveScalarAtPrimeHom 𝒜 x.1) r s

/-- The actual quotient `Proj` has a structure morphism to the
base scheme, induced by its scalar global sections. This is the
map over which its scheme-theoretic fibre must be formed. -/
noncomputable def projectiveWeierstrassBaseMap
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassScheme W ⟶
      AlgebraicGeometry.Spec (CommRingCat.of ℤ_[2]) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  refine (AlgebraicGeometry.ΓSpec.adjunction.homEquiv
    (projectiveWeierstrassScheme W)
    (op (CommRingCat.of ℤ_[2]))) ?_
  exact (CommRingCat.ofHom
    (projectiveScalarToGamma (projectiveWeierstrassQuotientComponent W))).op

/-- The actual scheme-theoretic special fibre, formed as a fibre
product over the base. Its comparison with the separately defined
graded quotient `Proj` remains to be constructed. -/
noncomputable def projectiveWeierstrassSpecialFibreScheme
    (W : WeierstrassCurve ℤ_[2]) : AlgebraicGeometry.Scheme :=
  pullback (projectiveWeierstrassBaseMap W)
    (AlgebraicGeometry.Spec.map
      (CommRingCat.ofHom (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)))

end Beal.General