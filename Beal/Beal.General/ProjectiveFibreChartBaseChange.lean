import Beal.«Beal.General».ProjectiveQuotientChart
import Beal.«Beal.General».AffineFibreTensor

/-!
An affine base-change comparison for homogeneous Proj charts. The scalar
action on the degree-zero chart ring is constructed explicitly, rather
than assumed from an implicit algebra instance. The `Spec` pullback
comparison remains separate from identifying the restriction of the
actual Proj structure morphism with this chart scalar action.
-/

namespace Beal.General
open scoped TensorProduct
open AlgebraicGeometry CategoryTheory CategoryTheory.Limits

universe u
variable {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
variable (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]

theorem homogeneousScalarAway_val (f : A) (t : R) :
    (homogeneousScalarAway 𝒜 f t).val =
      algebraMap A (Localization (Submonoid.powers f))
        (algebraMap R A t) := by
  change Localization.mk (algebraMap R A t)
      (1 : Submonoid.powers f) =
    algebraMap A (Localization (Submonoid.powers f)) (algebraMap R A t)
  exact Localization.mk_one_eq_algebraMap _

/-- The scalar fractions on a homogeneous basic open form a ring map
from the grading base. -/
noncomputable def homogeneousScalarAwayHom (f : A) :
    R →+* HomogeneousLocalization.Away 𝒜 f where
  toFun := homogeneousScalarAway 𝒜 f
  map_zero' := by
    apply HomogeneousLocalization.val_injective _
    rw [homogeneousScalarAway_val]
    simp
  map_one' := by
    apply HomogeneousLocalization.val_injective _
    rw [homogeneousScalarAway_val]
    simp
  map_add' t u := by
    apply HomogeneousLocalization.val_injective _
    simp only [HomogeneousLocalization.val_add, homogeneousScalarAway_val, map_add]
  map_mul' t u := by
    apply HomogeneousLocalization.val_injective _
    simp only [HomogeneousLocalization.val_mul, homogeneousScalarAway_val, map_mul]

/-- The scalar action on a basic chart is the restriction of the
scalar global section used to construct the actual Proj base map. -/
theorem projectiveScalarSection_awayToSection (f : A) (t : R) :
    (ProjectiveSpectrum.Proj.awayToSection 𝒜 f)
        (homogeneousScalarAway 𝒜 f t) =
      (ProjectiveSpectrum.Proj.structureSheaf 𝒜).1.map
        (homOfLE le_top).op (projectiveScalarSection 𝒜 t) := by
  apply AlgebraicGeometry.Proj.ext 𝒜
  funext x
  change (HomogeneousLocalization.mapId 𝒜
      (Submonoid.powers_le.mpr x.2))
        (homogeneousScalarAway 𝒜 f t) =
      projectiveScalarAtPrime 𝒜 x.1 t
  simp only [homogeneousScalarAway, projectiveScalarAtPrime,
    HomogeneousLocalization.mapId, HomogeneousLocalization.map_mk]
  rfl

/-- The scalar section square commutes as a ring-map identity on
every projective basic open. -/
theorem homogeneousScalarAwayHom_awayToSection (f : A) :
    CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f) ≫
        ProjectiveSpectrum.Proj.awayToSection 𝒜 f =
      CommRingCat.ofHom (projectiveScalarToGamma 𝒜) ≫
        (ProjectiveSpectrum.Proj.structureSheaf 𝒜).1.map
          (homOfLE le_top).op := by
  ext t
  exact projectiveScalarSection_awayToSection 𝒜 f t

/-- The same scalar square, on global sections of the restricted
scheme rather than sections of the projective sheaf. -/
theorem homogeneousScalarAwayHom_awayToΓ (f : A) :
    CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f) ≫
        ProjectiveSpectrum.Proj.awayToΓ 𝒜 f =
      CommRingCat.ofHom (projectiveScalarToGamma 𝒜) ≫
        Scheme.Γ.map (Scheme.Opens.ι
          (X := AlgebraicGeometry.«Proj» 𝒜)
          (ProjectiveSpectrum.basicOpen 𝒜 f)).op := by
  apply (cancel_mono ((Scheme.restrictFunctorΓ
    (X := AlgebraicGeometry.«Proj» 𝒜)).app
      (Opposite.op (ProjectiveSpectrum.basicOpen 𝒜 f))).hom).mp
  ext t
  apply AlgebraicGeometry.Proj.ext 𝒜
  funext x
  change (HomogeneousLocalization.mapId 𝒜
      (Submonoid.powers_le.mpr x.2))
        (homogeneousScalarAway 𝒜 f t) =
      projectiveScalarAtPrime 𝒜 x.1 t
  simp only [homogeneousScalarAway, projectiveScalarAtPrime,
    HomogeneousLocalization.mapId, HomogeneousLocalization.map_mk]
  rfl

/-- The pinned locally-ringed-space Proj chart equivalence, lifted
through the fully faithful inclusion of schemes. -/
noncomputable def homogeneousProjBasicSchemeIso
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d) :
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» 𝒜)
      (ProjectiveSpectrum.basicOpen 𝒜 f) ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away 𝒜 f)) := by
  exact Scheme.fullyFaithfulForgetToLocallyRingedSpace.preimageIso
    (AlgebraicGeometry.projIsoSpec 𝒜 f hf hd)

theorem homogeneousProjBasicSchemeIso_baseMap
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d) :
    let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 f
    U.ι ≫
        (ΓSpec.adjunction.homEquiv
          (AlgebraicGeometry.«Proj» 𝒜)
          (Opposite.op (CommRingCat.of R)))
          (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op =
      (homogeneousProjBasicSchemeIso 𝒜 f d hf hd).hom ≫
        Spec.map (CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f)) := by
  let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 f
  change U.ι ≫
    (ΓSpec.adjunction.homEquiv
      (AlgebraicGeometry.«Proj» 𝒜)
      (Opposite.op (CommRingCat.of R)))
      (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op = _
  rw [← ΓSpec.adjunction.homEquiv_naturality_left U.ι
    (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op]
  have hsection :
      Scheme.Γ.rightOp.map U.ι ≫
          (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op =
        (ProjectiveSpectrum.Proj.awayToΓ 𝒜 f).op ≫
          (CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f)).op := by
    simpa only [op_comp] using
      congrArg (fun h => h.op)
        (homogeneousScalarAwayHom_awayToΓ 𝒜 f).symm
  rw [hsection, ΓSpec.adjunction.homEquiv_naturality_right]
  rfl

/-- Algebraically, tensoring the degree-zero chart ring with a
quotient of the base is its quotient by the same scalar fraction. -/
noncomputable def homogeneousAwayTensorQuotientRingEquiv
    (f : A) (t : R) :
    letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
      (homogeneousScalarAwayHom 𝒜 f).toAlgebra
    (HomogeneousLocalization.Away 𝒜 f) ⊗[R]
        (R ⧸ Ideal.span {t}) ≃+*
      (HomogeneousLocalization.Away 𝒜 f ⧸
        Ideal.span {homogeneousScalarAway 𝒜 f t}) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  exact (affineFibreTensorRingEquiv
      (S := HomogeneousLocalization.Away 𝒜 f)
      (Ideal.span {t})).trans
    (Ideal.quotEquivOfEq (by
      simp only [Ideal.map_span, Set.image_singleton]
      rfl))

/-- The algebraic affine pullback chart is the chart ring of the
graded homogeneous quotient, when the denominator survives. -/
noncomputable def homogeneousAwayTensorQuotientChartEquiv
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d)
    (hpow : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0) :
    letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
      (homogeneousScalarAwayHom 𝒜 f).toAlgebra
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    (HomogeneousLocalization.Away 𝒜 f) ⊗[R]
        (R ⧸ Ideal.span {t}) ≃+*
      HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  exact (homogeneousAwayTensorQuotientRingEquiv 𝒜 f t).trans
    (homogeneousQuotientAwayRingEquiv 𝒜 I hI t hgen f d hf hpow)

/-- Quotienting the homogeneous coordinate ring commutes with passing
from the product basic open to the double localization. -/
theorem homogeneousQuotientAwayMap_productToDouble
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜) (f g : A) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    (homogeneousLocalization_productToDouble
        (homogeneousQuotientComponent 𝒜 I)
        (Ideal.Quotient.mk I f) (Ideal.Quotient.mk I g)).comp
      (homogeneousQuotientAwayMap 𝒜 I hI (f * g)) =
    (homogeneousQuotientDoubleMap 𝒜 I hI f g).comp
      (homogeneousLocalization_productToDouble 𝒜 f g) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  apply RingHom.ext
  intro s
  obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective s
  simp only [RingHom.comp_apply, homogeneousLocalization_productToDouble,
    HomogeneousLocalization.mapId, HomogeneousLocalization.map_mk,
    homogeneousQuotientAwayMap, homogeneousQuotientDoubleMap,
    gradedLocalizationMap_mk]
  rfl

/-- On the first basic chart, reduction commutes with restriction to
the product chart. Both paths are compared in the double localization. -/
theorem homogeneousQuotientAwayMap_toProduct_left
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    (homogeneousLocalization_toProduct
        (homogeneousQuotientComponent 𝒜 I)
        (Ideal.Quotient.mk I f) (Ideal.Quotient.mk I g) d
        (Submodule.mem_map.mpr ⟨f, hf, rfl⟩)
        (Submodule.mem_map.mpr ⟨g, hg, rfl⟩)).comp
      (homogeneousQuotientAwayMap 𝒜 I hI f) =
    (homogeneousQuotientAwayMap 𝒜 I hI (f * g)).comp
      (homogeneousLocalization_toProduct 𝒜 f g d hf hg) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let q := Ideal.Quotient.mk I
  have hfq : q f ∈ homogeneousQuotientComponent 𝒜 I d :=
    Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  have hgq : q g ∈ homogeneousQuotientComponent 𝒜 I d :=
    Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  apply RingHom.ext
  intro s
  apply homogeneousLocalization_productToDouble_injective
    (homogeneousQuotientComponent 𝒜 I) (q f) (q g)
  simp only [RingHom.comp_apply]
  calc
    (homogeneousLocalization_productToDouble
        (homogeneousQuotientComponent 𝒜 I) (q f) (q g))
        ((homogeneousLocalization_toProduct
          (homogeneousQuotientComponent 𝒜 I) (q f) (q g) d hfq hgq)
          ((homogeneousQuotientAwayMap 𝒜 I hI f) s)) =
      (HomogeneousLocalization.mapId (homogeneousQuotientComponent 𝒜 I)
        (le_sup_left : Submonoid.powers (q f) ≤
          Submonoid.powers (q f) ⊔ Submonoid.powers (q g)))
        ((homogeneousQuotientAwayMap 𝒜 I hI f) s) := by
          exact congrArg (fun h => h ((homogeneousQuotientAwayMap 𝒜 I hI f) s))
            (homogeneousLocalization_toProduct_commutes
              (homogeneousQuotientComponent 𝒜 I) (q f) (q g) d hfq hgq)
    _ = (homogeneousQuotientDoubleMap 𝒜 I hI f g)
          ((HomogeneousLocalization.mapId 𝒜
            (le_sup_left : Submonoid.powers f ≤
              Submonoid.powers f ⊔ Submonoid.powers g)) s) := by
          exact congrArg (fun h => h s)
            (homogeneousQuotientAwayMap_double_left 𝒜 I hI f g)
    _ = (homogeneousQuotientDoubleMap 𝒜 I hI f g)
          ((homogeneousLocalization_productToDouble 𝒜 f g)
            ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) s)) := by
          rw [← (homogeneousLocalization_toProduct_commutes
            𝒜 f g d hf hg : _)]
          rfl
    _ = (homogeneousLocalization_productToDouble
          (homogeneousQuotientComponent 𝒜 I) (q f) (q g))
          ((homogeneousQuotientAwayMap 𝒜 I hI (f * g))
            ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) s)) := by
          exact (congrArg (fun h => h
            ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) s))
            (homogeneousQuotientAwayMap_productToDouble 𝒜 I hI f g)).symm

/-- The ring equivalence of a quotient chart is induced by the
original map from the integral chart. -/
theorem homogeneousQuotientAwayRingEquiv_comp_mk
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d)
    (hpow : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    (homogeneousQuotientAwayRingEquiv 𝒜 I hI t hgen f d hf hpow).toRingHom.comp
      (Ideal.Quotient.mk
        (Ideal.span {homogeneousScalarAway 𝒜 f t})) =
      homogeneousQuotientAwayMap 𝒜 I hI f := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  apply RingHom.ext
  intro s
  simp only [RingHom.comp_apply, homogeneousQuotientAwayRingEquiv,
    RingEquiv.trans_apply,
    RingHom.quotientKerEquivOfSurjective]
  rfl

/-- The quotient-chart equivalences respect the first restriction
to the product overlap, tested on every integral chart fraction. -/
theorem homogeneousQuotientChartRestriction_left
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hpowf : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0)
    (hpowfg : ∀ n : ℕ, (Ideal.Quotient.mk I (f * g)) ^ n ≠ 0) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let q := Ideal.Quotient.mk I
    let hfq : q f ∈ homogeneousQuotientComponent 𝒜 I d :=
      Submodule.mem_map.mpr ⟨f, hf, rfl⟩
    let hgq : q g ∈ homogeneousQuotientComponent 𝒜 I d :=
      Submodule.mem_map.mpr ⟨g, hg, rfl⟩
    (homogeneousLocalization_toProduct
        (homogeneousQuotientComponent 𝒜 I)
        (q f) (q g) d hfq hgq).comp
      ((homogeneousQuotientAwayRingEquiv
        𝒜 I hI t hgen f d hf hpowf).toRingHom.comp
        (Ideal.Quotient.mk
          (Ideal.span {homogeneousScalarAway 𝒜 f t}))) =
    ((homogeneousQuotientAwayRingEquiv
        𝒜 I hI t hgen (f * g) (d + d)
        (SetLike.GradedMul.mul_mem hf hg) hpowfg).toRingHom.comp
      (Ideal.Quotient.mk
        (Ideal.span {homogeneousScalarAway 𝒜 (f * g) t}))).comp
      (homogeneousLocalization_toProduct 𝒜 f g d hf hg) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ homogeneousQuotientComponent 𝒜 I d :=
    Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ homogeneousQuotientComponent 𝒜 I d :=
    Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  change (homogeneousLocalization_toProduct
      (homogeneousQuotientComponent 𝒜 I)
      (q f) (q g) d hfq hgq).comp
    ((homogeneousQuotientAwayRingEquiv
      𝒜 I hI t hgen f d hf hpowf).toRingHom.comp
      (Ideal.Quotient.mk
        (Ideal.span {homogeneousScalarAway 𝒜 f t}))) = _
  rw [homogeneousQuotientAwayRingEquiv_comp_mk]
  rw [homogeneousQuotientAwayRingEquiv_comp_mk]
  exact homogeneousQuotientAwayMap_toProduct_left 𝒜 I hI f g d hf hg

/-- Restriction to the product basic open preserves the scalar
fraction defining the base fibre on both charts. -/
theorem homogeneousScalarAway_toProduct
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (t : R) :
    (homogeneousLocalization_toProduct 𝒜 f g d hf hg)
      (homogeneousScalarAway 𝒜 f t) =
    homogeneousScalarAway 𝒜 (f * g) t := by
  apply homogeneousLocalization_productToDouble_injective 𝒜 f g
  have h := congrArg (fun ψ => ψ (homogeneousScalarAway 𝒜 f t))
    (homogeneousLocalization_toProduct_commutes 𝒜 f g d hf hg)
  simp only [RingHom.comp_apply] at h
  rw [h]
  simp only [homogeneousScalarAway, homogeneousLocalization_productToDouble,
    HomogeneousLocalization.mapId, HomogeneousLocalization.map_mk]

/-- The chart restriction is a map over the grading base. -/
theorem homogeneousScalarAwayHom_toProduct
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :
    (homogeneousLocalization_toProduct 𝒜 f g d hf hg).comp
      (homogeneousScalarAwayHom 𝒜 f) =
    homogeneousScalarAwayHom 𝒜 (f * g) := by
  apply RingHom.ext
  intro t
  exact homogeneousScalarAway_toProduct 𝒜 f g d hf hg t

/-- Restriction of an integral basic chart descends to the quotient
by the scalar cutting out the special fibre. -/
noncomputable def homogeneousScalarQuotientToProduct
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (t : R) :
    (HomogeneousLocalization.Away 𝒜 f ⧸
      Ideal.span {homogeneousScalarAway 𝒜 f t}) →+*
    (HomogeneousLocalization.Away 𝒜 (f * g) ⧸
      Ideal.span {homogeneousScalarAway 𝒜 (f * g) t}) :=
  Ideal.quotientMap
    (Ideal.span {homogeneousScalarAway 𝒜 (f * g) t})
    (homogeneousLocalization_toProduct 𝒜 f g d hf hg)
    (by
      apply Ideal.span_le.mpr
      intro x hx
      rcases Set.mem_singleton_iff.mp hx with rfl
      change (homogeneousLocalization_toProduct 𝒜 f g d hf hg)
        (homogeneousScalarAway 𝒜 f t) ∈
          Ideal.span {homogeneousScalarAway 𝒜 (f * g) t}
      rw [homogeneousScalarAway_toProduct 𝒜 f g d hf hg t]
      exact Ideal.subset_span (Set.mem_singleton _))

/-- The induced quotient restriction is the restriction of an
integral fraction followed by reduction modulo the base scalar. -/
theorem homogeneousScalarQuotientToProduct_comp_mk
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (t : R) :
    (homogeneousScalarQuotientToProduct 𝒜 f g d hf hg t).comp
      (Ideal.Quotient.mk (Ideal.span {homogeneousScalarAway 𝒜 f t})) =
    (Ideal.Quotient.mk
      (Ideal.span {homogeneousScalarAway 𝒜 (f * g) t})).comp
      (homogeneousLocalization_toProduct 𝒜 f g d hf hg) := by
  apply RingHom.ext
  intro s
  simp only [RingHom.comp_apply, homogeneousScalarQuotientToProduct,
    Ideal.quotientMap_mk]

/-- The quotient-by-scalar chart isomorphisms commute with restriction
to the product overlap, as maps between the actual quotient rings. -/
theorem homogeneousQuotientChartRestriction_square
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hpowf : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0)
    (hpowfg : ∀ n : ℕ, (Ideal.Quotient.mk I (f * g)) ^ n ≠ 0) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let q := Ideal.Quotient.mk I
    let hfq : q f ∈ homogeneousQuotientComponent 𝒜 I d :=
      Submodule.mem_map.mpr ⟨f, hf, rfl⟩
    let hgq : q g ∈ homogeneousQuotientComponent 𝒜 I d :=
      Submodule.mem_map.mpr ⟨g, hg, rfl⟩
    (homogeneousLocalization_toProduct
        (homogeneousQuotientComponent 𝒜 I)
        (q f) (q g) d hfq hgq).comp
      (homogeneousQuotientAwayRingEquiv
        𝒜 I hI t hgen f d hf hpowf).toRingHom =
    (homogeneousQuotientAwayRingEquiv
        𝒜 I hI t hgen (f * g) (d + d)
        (SetLike.GradedMul.mul_mem hf hg) hpowfg).toRingHom.comp
      (homogeneousScalarQuotientToProduct 𝒜 f g d hf hg t) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  apply RingHom.ext
  intro s
  obtain ⟨v, rfl⟩ := Ideal.Quotient.mk_surjective s
  have h := congrArg (fun ψ => ψ v)
    (homogeneousQuotientChartRestriction_left 𝒜 I hI t hgen
      f g d hf hg hpowf hpowfg)
  have hm := congrArg (fun ψ => ψ v)
    (homogeneousScalarQuotientToProduct_comp_mk 𝒜 f g d hf hg t)
  simpa only [RingHom.comp_apply, hm] using h

/-- Reversing the two coordinates describes the same product basic
open; the restriction square above applies in both orders. -/
theorem homogeneousProductBasicOpen_comm (f g : A) :
    ProjectiveSpectrum.basicOpen 𝒜 (f * g) =
      ProjectiveSpectrum.basicOpen 𝒜 (g * f) := by
  rw [mul_comm f g]

/-- The quotient-chart compatibility is also a commutative square of
affine schemes. This is not yet compatibility of the restricted
pullback-to-Proj chart isomorphisms. -/
theorem homogeneousQuotientChartRestriction_spec_square
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hpowf : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0)
    (hpowfg : ∀ n : ℕ, (Ideal.Quotient.mk I (f * g)) ^ n ≠ 0) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let q := Ideal.Quotient.mk I
    let hfq : q f ∈ homogeneousQuotientComponent 𝒜 I d :=
      Submodule.mem_map.mpr ⟨f, hf, rfl⟩
    let hgq : q g ∈ homogeneousQuotientComponent 𝒜 I d :=
      Submodule.mem_map.mpr ⟨g, hg, rfl⟩
    Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct
          (homogeneousQuotientComponent 𝒜 I)
          (q f) (q g) d hfq hgq)) ≫
      Spec.map (CommRingCat.ofHom
        (homogeneousQuotientAwayRingEquiv
          𝒜 I hI t hgen f d hf hpowf).toRingHom) =
    Spec.map (CommRingCat.ofHom
        (homogeneousQuotientAwayRingEquiv
          𝒜 I hI t hgen (f * g) (d + d)
          (SetLike.GradedMul.mul_mem hf hg) hpowfg).toRingHom) ≫
      Spec.map (CommRingCat.ofHom
        (homogeneousScalarQuotientToProduct 𝒜 f g d hf hg t)) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  dsimp only
  rw [← Spec.map_comp, ← Spec.map_comp]
  exact congrArg (fun h => Spec.map (CommRingCat.ofHom h))
    (homogeneousQuotientChartRestriction_square
      𝒜 I hI t hgen f g d hf hg hpowf hpowfg)

/-- The *affine* base change of a homogeneous basic chart is `Spec`
of the matching chart ring of the graded quotient. This states a
scheme isomorphism for the pullback of the explicitly constructed
scalar map from `Spec` of the chart; the relation to the
restriction of the global Proj structure morphism is established
by `homogeneousProjBasicSchemeIso_baseMap`. -/
noncomputable def homogeneousAwayPullbackSchemeIso
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d)
    (hpow : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0) :
    letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
      (homogeneousScalarAwayHom 𝒜 f).toAlgebra
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    pullback
        (Spec.map (CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f)))
        (Spec.map (CommRingCat.ofHom
          (Ideal.Quotient.mk (Ideal.span {t})))) ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f))) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  exact (pullbackSpecIso R (HomogeneousLocalization.Away 𝒜 f)
    (R ⧸ Ideal.span {t})).trans
      (Scheme.Spec.mapIso ((homogeneousAwayTensorQuotientChartEquiv
        𝒜 I hI t hgen f d hf hpow).symm.toCommRingCatIso.op))

/-- An actual restricted Proj fibre chart: first restrict the
scalar-induced global structure morphism to `D(f)`, then pull back
along the quotient of the base. This is the scheme-level affine
chart comparison; gluing these restricted fibres into the global
pullback is still a separate step. -/
noncomputable def homogeneousProjBasicPullbackSchemeIso
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d)
    (hpow : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0) :
    letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
      (homogeneousScalarAwayHom 𝒜 f).toAlgebra
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 f
    let base : AlgebraicGeometry.«Proj» 𝒜 ⟶
        Spec (CommRingCat.of R) :=
      (ΓSpec.adjunction.homEquiv
        (AlgebraicGeometry.«Proj» 𝒜)
        (Opposite.op (CommRingCat.of R)))
        (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
    pullback (U.ι ≫ base)
      (Spec.map (CommRingCat.ofHom
        (Ideal.Quotient.mk (Ideal.span {t})))) ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f))) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 f
  let base : AlgebraicGeometry.«Proj» 𝒜 ⟶
      Spec (CommRingCat.of R) :=
    (ΓSpec.adjunction.homEquiv
      (AlgebraicGeometry.«Proj» 𝒜)
      (Opposite.op (CommRingCat.of R)))
      (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
  let chart := homogeneousProjBasicSchemeIso 𝒜 f d hf hd
  let residue : Spec (CommRingCat.of (R ⧸ Ideal.span {t})) ⟶
      Spec (CommRingCat.of R) :=
    Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (Ideal.span {t})))
  let chartBase : Spec (CommRingCat.of (HomogeneousLocalization.Away 𝒜 f)) ⟶
      Spec (CommRingCat.of R) :=
    Spec.map (CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f))
  let e := pullback.map (U.ι ≫ base) residue chartBase residue
    chart.hom (𝟙 _) (𝟙 _)
    (homogeneousProjBasicSchemeIso_baseMap 𝒜 f d hf hd)
    (by simp)
  haveI : IsIso e := inferInstance
  exact (asIso e).trans
    (homogeneousAwayPullbackSchemeIso 𝒜 I hI t hgen f d hf hpow)

end Beal.General

namespace Beal.General

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits

/-- The base quotient by the uniformizer is the chosen residue field,
not merely an abstract quotient ring. -/
noncomputable def twoAdicResidueQuotientEquiv :
    (ℤ_[2] ⧸ Ideal.span {(2 : ℤ_[2])}) ≃+* ZMod 2 := by
  have hker :
      RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) =
        Ideal.span {(2 : ℤ_[2])} := by
    rw [PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p]
    norm_num
  have hsurj :
      Function.Surjective (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
    intro x
    refine ⟨(x.val : ℤ_[2]), ?_⟩
    simp
  exact (Ideal.quotEquivOfEq hker.symm).trans
    (RingHom.quotientKerEquivOfSurjective hsurj)

theorem twoAdicResidueQuotientEquiv_mk (r : ℤ_[2]) :
    twoAdicResidueQuotientEquiv
      (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])}) r) =
        PadicInt.toZMod r := by
  simp [twoAdicResidueQuotientEquiv]
  rfl

/-- The residue-field morphism of affine schemes factors through
the quotient by `2`, with an isomorphism on the intermediate base. -/
theorem twoAdicResidueSpecMap :
    Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)) =
      (Scheme.Spec.mapIso
        (twoAdicResidueQuotientEquiv.toCommRingCatIso.op)).hom ≫
        Spec.map (CommRingCat.ofHom
          (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])}))) := by
  change Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)) =
    Spec.map (CommRingCat.ofHom twoAdicResidueQuotientEquiv.toRingHom) ≫
      Spec.map (CommRingCat.ofHom
        (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])})))
  rw [← Spec.map_comp]
  congr 1

/-- A restricted basic chart of the actual Proj fibre over `ZMod 2`,
not merely the pullback over an abstract quotient of the base. -/
noncomputable def homogeneousProjBasicZModPullbackSchemeIso
    {A : Type} [CommRing A] [Algebra ℤ_[2] A]
    (𝒜 : ℕ → Submodule ℤ_[2] A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (hgen : I = Ideal.span {algebraMap ℤ_[2] A 2})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d)
    (hpow : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0) :
    letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 f) :=
      (homogeneousScalarAwayHom 𝒜 f).toAlgebra
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 f
    let base : AlgebraicGeometry.«Proj» 𝒜 ⟶
        Spec (CommRingCat.of ℤ_[2]) :=
      (ΓSpec.adjunction.homEquiv
        (AlgebraicGeometry.«Proj» 𝒜)
        (Opposite.op (CommRingCat.of ℤ_[2])))
        (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
    pullback (U.ι ≫ base)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f))) := by
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 f
  let base : AlgebraicGeometry.«Proj» 𝒜 ⟶
      Spec (CommRingCat.of ℤ_[2]) :=
    (ΓSpec.adjunction.homEquiv
      (AlgebraicGeometry.«Proj» 𝒜)
      (Opposite.op (CommRingCat.of ℤ_[2])))
      (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
  let chartBase := U.ι ≫ base
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let quotient := Spec.map (CommRingCat.ofHom
    (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])})))
  let e := pullback.map chartBase residue chartBase quotient
    (𝟙 _) (Scheme.Spec.mapIso
      (twoAdicResidueQuotientEquiv.toCommRingCatIso.op)).hom (𝟙 _)
    (by simp) (by simpa only using twoAdicResidueSpecMap)
  haveI : IsIso e := inferInstance
  exact (asIso e).trans
    (homogeneousProjBasicPullbackSchemeIso 𝒜 I hI 2 hgen f d hf hd hpow)

/-- Under the split-node hypotheses, any positive-degree projective
coordinate that survives modulo `2` gives a chart of the restricted
actual scheme-theoretic fibre. -/
noncomputable def splitNodeProjectiveBasicPullbackSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (f : projectiveWeierstrassCoordinateRing W) (d : ℕ)
    (hf : f ∈ projectiveWeierstrassQuotientComponent W d)
    (hd : 0 < d)
    (hne : (Ideal.Quotient.mk
      (projectiveWeierstrassSpecialFibreIdeal W)) f ≠ 0) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    let U : (projectiveWeierstrassScheme W).Opens :=
      ProjectiveSpectrum.basicOpen
        (projectiveWeierstrassQuotientComponent W) f
    pullback (U.ι ≫ projectiveWeierstrassBaseMap W)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away
        (projectiveWeierstrassSpecialFibreComponent W)
        (Ideal.Quotient.mk
          (projectiveWeierstrassSpecialFibreIdeal W) f))) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  haveI : IsDomain (projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) := by
    have e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    haveI : IsDomain (MvPolynomial (Fin 3) (ZMod 2) ⧸
        Ideal.span {splitNodeProjectiveCubic}) :=
      splitNodeProjectiveCoordinateRing_isDomain
    exact e.toMulEquiv.isDomain _
  exact homogeneousProjBasicZModPullbackSchemeIso
    (projectiveWeierstrassQuotientComponent W)
    (projectiveWeierstrassSpecialFibreIdeal W)
    (projectiveWeierstrassSpecialFibreIdeal_isHomogeneous W)
    (projectiveWeierstrassSpecialFibreIdeal_eq_scalar_span W)
    f d hf hd (fun n => pow_ne_zero n hne)

/-- The restricted actual fibre over the integral `Z` basic open is
affine with the graded-quotient `Z` chart ring. -/
noncomputable def splitNodeProjectiveZPullbackSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :=
  splitNodeProjectiveBasicPullbackSchemeIso W hnode hsplit
    ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X (2 : Fin 3))) 1
    (projectiveWeierstrassCoordinate_mem_degree_one W 2)
    (by decide)
    (splitNode_projectiveSpecialFibreCoordinate_Z_ne_zero W hnode hsplit)

/-- The corresponding restricted actual fibre over `Y`. -/
noncomputable def splitNodeProjectiveYPullbackSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :=
  splitNodeProjectiveBasicPullbackSchemeIso W hnode hsplit
    ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X (1 : Fin 3))) 1
    (projectiveWeierstrassCoordinate_mem_degree_one W 1)
    (by decide)
    (by
      intro hz
      exact projectiveWeierstrassSpecialFibreIdeal_not_Y W
        (Ideal.Quotient.eq_zero_iff_mem.mp hz))

/-- The double `ZY` restriction of the actual fibre is affine with
the graded-quotient double-localization ring. -/
noncomputable def splitNodeProjectiveZYPullbackSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  haveI : IsDomain (projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) := by
    have e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    haveI : IsDomain (MvPolynomial (Fin 3) (ZMod 2) ⧸
        Ideal.span {splitNodeProjectiveCubic}) :=
      splitNodeProjectiveCoordinateRing_isDomain
    exact e.toMulEquiv.isDomain _
  exact splitNodeProjectiveBasicPullbackSchemeIso W hnode hsplit
    (((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X (2 : Fin 3))) *
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
        (MvPolynomial.X (1 : Fin 3)))) 2
    (SetLike.GradedMul.mul_mem
      (projectiveWeierstrassCoordinate_mem_degree_one W 2)
      (projectiveWeierstrassCoordinate_mem_degree_one W 1))
    (by decide)
    (by
      rw [map_mul]
      apply mul_ne_zero
      · exact splitNode_projectiveSpecialFibreCoordinate_Z_ne_zero W hnode hsplit
      · intro hz
        exact projectiveWeierstrassSpecialFibreIdeal_not_Y W
          (Ideal.Quotient.eq_zero_iff_mem.mp hz))

/-- The pullback of an integral basic open is an open subscheme of the
actual special fibre. The source is precisely the restricted pullback
compared to a graded-quotient chart above. -/
noncomputable def projectiveWeierstrassBasicFibreOpenImmersion
    (W : WeierstrassCurve ℤ_[2])
    (f : projectiveWeierstrassCoordinateRing W) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let U : (projectiveWeierstrassScheme W).Opens :=
      ProjectiveSpectrum.basicOpen
        (projectiveWeierstrassQuotientComponent W) f
    pullback (U.ι ≫ projectiveWeierstrassBaseMap W)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ⟶
      projectiveWeierstrassSpecialFibreScheme W := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let U : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen
      (projectiveWeierstrassQuotientComponent W) f
  let base := projectiveWeierstrassBaseMap W
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  exact (pullbackRightPullbackFstIso base residue U.ι).inv ≫
    pullback.snd U.ι (pullback.fst base residue)

instance projectiveWeierstrassBasicFibreOpenImmersion_isOpen
    (W : WeierstrassCurve ℤ_[2])
    (f : projectiveWeierstrassCoordinateRing W) :
    IsOpenImmersion (projectiveWeierstrassBasicFibreOpenImmersion W f) := by
  dsimp [projectiveWeierstrassBasicFibreOpenImmersion]
  infer_instance

/-- Pulling back the integral `Z`/`Y` cover along the first projection
gives an actual two-open cover of the scheme-theoretic special fibre. -/
noncomputable def projectiveWeierstrassSpecialFibreTwoChartOpenCover
    (W : WeierstrassCurve ℤ_[2]) :
    (projectiveWeierstrassSpecialFibreScheme W).OpenCover := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact (projectiveWeierstrassTwoChartOpenCover W).pullbackCover'
    (pullback.fst (projectiveWeierstrassBaseMap W)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))))

end Beal.General