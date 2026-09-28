import Beal.«Beal.General».ProjectiveFibreChartBaseChange

/-!
Scheme-level basic-chart comparisons induced by the degree-preserving
translation from the special-fibre coordinate quotient to the canonical
split cubic. The image of the homogeneous denominator is kept explicit:
the translation need not fix the `Y` coordinate.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits

universe u

/-- Restriction of the graded equivalence to the product chart agrees
with restriction of its degree-zero localization on the first chart.
The product denominator on the target is the product of the translated
denominators. -/
theorem gradedEquivAwayHom_toProduct
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :
    let hfg : HomogeneousLocalization.Away 𝒜 (f * g) →+*
        HomogeneousLocalization.Away ℬ (e f * e g) :=
      gradedLocalizationMap 𝒜 ℬ e.toRingHom
        (by
          intro a ha
          obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (f * g)).mp ha
          apply (Submonoid.mem_powers_iff _ _).mpr
          exact ⟨n, by
            simpa only [map_pow, e.map_mul] using congrArg e hn⟩)
        he
    (homogeneousLocalization_toProduct ℬ (e f) (e g) d
      (he d f hf) (he d g hg)).comp
        (gradedEquivAwayHom 𝒜 ℬ e he f) =
      hfg.comp (homogeneousLocalization_toProduct 𝒜 f g d hf hg) := by
  let hP : Submonoid.powers f ≤
      (Submonoid.powers (e f)).comap e.toRingHom := by
    intro a ha
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a f).mp ha
    apply (Submonoid.mem_powers_iff _ _).mpr
    exact ⟨n, by simpa only [map_pow] using congrArg e hn⟩
  let hQ : Submonoid.powers f ⊔ Submonoid.powers g ≤
      (Submonoid.powers (e f) ⊔ Submonoid.powers (e g)).comap e.toRingHom := by
    apply sup_le
    · intro a ha
      exact Submonoid.mem_sup_left (hP ha)
    · intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a g).mp ha
      apply Submonoid.mem_sup_right
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by simpa only [map_pow] using congrArg e hn⟩
  let hdouble := gradedLocalizationMap 𝒜 ℬ e.toRingHom hQ he
  have hleft :
      (HomogeneousLocalization.mapId ℬ le_sup_left).comp
          (gradedEquivAwayHom 𝒜 ℬ e he f) =
        hdouble.comp (HomogeneousLocalization.mapId 𝒜 le_sup_left) :=
    (gradedLocalizationMap_restrict 𝒜 ℬ e.toRingHom
      le_sup_left le_sup_left hP hQ he)
  have hproduct :
      hdouble.comp (homogeneousLocalization_productToDouble 𝒜 f g) =
        (homogeneousLocalization_productToDouble ℬ (e f) (e g)).comp
          (gradedLocalizationMap 𝒜 ℬ e.toRingHom
            (by
              intro a ha
              obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (f * g)).mp ha
              apply (Submonoid.mem_powers_iff _ _).mpr
              exact ⟨n, by
                simpa only [map_pow, e.map_mul] using congrArg e hn⟩)
            he) := by
    apply RingHom.ext
    intro x
    obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective x
    simp only [RingHom.comp_apply, gradedLocalizationMap_mk,
      homogeneousLocalization_productToDouble, HomogeneousLocalization.mapId,
      HomogeneousLocalization.map_mk]
    rfl
  apply RingHom.ext
  intro x
  apply homogeneousLocalization_productToDouble_injective ℬ (e f) (e g)
  calc
    _ = (HomogeneousLocalization.mapId ℬ le_sup_left)
          ((gradedEquivAwayHom 𝒜 ℬ e he f) x) := by
      simpa only [RingHom.comp_apply] using congrArg
        (fun h => h ((gradedEquivAwayHom 𝒜 ℬ e he f) x))
        (homogeneousLocalization_toProduct_commutes ℬ (e f) (e g) d
          (he d f hf) (he d g hg))
    _ = hdouble ((HomogeneousLocalization.mapId 𝒜 le_sup_left) x) := by
      exact congrArg (fun h => h x) hleft
    _ = hdouble ((homogeneousLocalization_productToDouble 𝒜 f g)
          ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) x)) := by
      exact congrArg hdouble (by
        simpa only [RingHom.comp_apply] using congrArg (fun h => h x)
          (homogeneousLocalization_toProduct_commutes 𝒜 f g d hf hg).symm)
    _ = _ := by
      simpa only [RingHom.comp_apply] using congrArg
        (fun h => h ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) x))
        hproduct

/-- A degree-preserving equivalence on degree-zero localizations,
indexed by the denominators rather than their presentations. -/
noncomputable def gradedEquivAway_at
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (t : A) (s : B) (ht : e t = s) :
    HomogeneousLocalization.Away 𝒜 t ≃+*
      HomogeneousLocalization.Away ℬ s := by
  let h : HomogeneousLocalization.Away 𝒜 t →+*
      HomogeneousLocalization.Away ℬ s :=
    gradedLocalizationMap 𝒜 ℬ e.toRingHom
      (by
        intro a ha
        obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a t).mp ha
        apply (Submonoid.mem_powers_iff _ _).mpr
        exact ⟨n, by
          simpa only [map_pow, ht] using congrArg e hn⟩)
      he
  let k : HomogeneousLocalization.Away ℬ s →+*
      HomogeneousLocalization.Away 𝒜 t :=
    gradedLocalizationMap ℬ 𝒜 e.symm.toRingHom
      (by
        intro a ha
        obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a s).mp ha
        apply (Submonoid.mem_powers_iff _ _).mpr
        exact ⟨n, by
          simpa only [map_pow, ← ht, e.symm_apply_apply] using congrArg e.symm hn⟩)
      he'
  refine RingEquiv.ofBijective h ⟨?_, ?_⟩
  · intro x y hxy
    have hx : k (h x) = x := by
      obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective x
      simp only [h, k, gradedLocalizationMap_mk]
      simp
    have hy : k (h y) = y := by
      obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective y
      simp only [h, k, gradedLocalizationMap_mk]
      simp
    rw [← hx, ← hy, hxy]
  · intro y
    refine ⟨k y, ?_⟩
    obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective y
    simp only [h, k, gradedLocalizationMap_mk]
    simp

/-- On a product chart, the homogeneous translation is a ring
equivalence even when its target denominator is written as a product
of the two translated factors. -/
noncomputable def gradedEquivAway_product
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) :
    HomogeneousLocalization.Away 𝒜 (f * g) ≃+*
      HomogeneousLocalization.Away ℬ (e f * e g) :=
  gradedEquivAway_at 𝒜 ℬ e he he' (f * g) (e f * e g) (e.map_mul f g)

/-- The product translation does not depend on the ordering of its
two factors after transporting the source and target denominators. -/
theorem gradedEquivAway_product_mul_comm
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) :
    HEq (gradedEquivAway_product 𝒜 ℬ e he he' f g)
      (gradedEquivAway_product 𝒜 ℬ e he he' g f) := by
  unfold gradedEquivAway_product
  congr 1
  · exact mul_comm f g
  · exact mul_comm (e f) (e g)
  · apply proof_irrel_heq

/-- The inverse chart equivalences obey the same product restriction
square. This is the direction needed for the contravariant affine
`Spec` comparison. -/
theorem gradedEquivAway_symm_toProduct
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :
    let F := gradedEquivAway 𝒜 ℬ e he he' f
    let P := gradedEquivAway_product 𝒜 ℬ e he he' f g
    (homogeneousLocalization_toProduct 𝒜 f g d hf hg).comp
        F.symm.toRingHom =
      P.symm.toRingHom.comp
        (homogeneousLocalization_toProduct ℬ (e f) (e g) d
          (he d f hf) (he d g hg)) := by
  let F := gradedEquivAway 𝒜 ℬ e he he' f
  let P := gradedEquivAway_product 𝒜 ℬ e he he' f g
  have hforward :
      (homogeneousLocalization_toProduct ℬ (e f) (e g) d
        (he d f hf) (he d g hg)).comp F.toRingHom =
        P.toRingHom.comp (homogeneousLocalization_toProduct 𝒜 f g d hf hg) := by
    change (homogeneousLocalization_toProduct ℬ (e f) (e g) d
        (he d f hf) (he d g hg)).comp (gradedEquivAwayHom 𝒜 ℬ e he f) =
      (gradedLocalizationMap 𝒜 ℬ e.toRingHom
        (by
          intro a ha
          obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (f * g)).mp ha
          apply (Submonoid.mem_powers_iff _ _).mpr
          exact ⟨n, by
            simpa only [map_pow, e.map_mul] using congrArg e hn⟩)
        he).comp (homogeneousLocalization_toProduct 𝒜 f g d hf hg)
    exact
      (gradedEquivAwayHom_toProduct 𝒜 ℬ e he f g d hf hg)
  apply RingHom.ext
  intro x
  apply P.injective
  have hx := congrArg (fun h => h (F.symm x)) hforward
  change P ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) (F.symm x)) =
    P (P.symm ((homogeneousLocalization_toProduct ℬ (e f) (e g) d
      (he d f hf) (he d g hg)) x))
  rw [P.apply_symm_apply]
  change
    (homogeneousLocalization_toProduct ℬ (e f) (e g) d
      (he d f hf) (he d g hg)) (F (F.symm x)) =
      P ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) (F.symm x)) at hx
  simpa only [F.apply_symm_apply] using hx.symm

/-- The affine spectra of the translated projective charts commute
with restriction to the product chart. This square still has to be
compared with the actual open immersions of the two `Proj`s. -/
theorem gradedEquivAway_spec_toProduct
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :
    let F := gradedEquivAway 𝒜 ℬ e he he' f
    let P := gradedEquivAway_product 𝒜 ℬ e he he' f g
    Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct 𝒜 f g d hf hg)) ≫
      Spec.map (CommRingCat.ofHom F.symm.toRingHom) =
    Spec.map (CommRingCat.ofHom P.symm.toRingHom) ≫
      Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct ℬ (e f) (e g) d
          (he d f hf) (he d g hg))) := by
  let F := gradedEquivAway 𝒜 ℬ e he he' f
  let P := gradedEquivAway_product 𝒜 ℬ e he he' f g
  change Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct 𝒜 f g d hf hg)) ≫
      Spec.map (CommRingCat.ofHom F.symm.toRingHom) =
    Spec.map (CommRingCat.ofHom P.symm.toRingHom) ≫
      Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct ℬ (e f) (e g) d
          (he d f hf) (he d g hg)))
  rw [← Spec.map_comp, ← Spec.map_comp]
  exact congrArg (fun h => Spec.map (CommRingCat.ofHom h))
    (gradedEquivAway_symm_toProduct 𝒜 ℬ e he he' f g d hf hg)

/-- The degree-zero localization equivalence induced by a graded ring
equivalence lifts through the standard affine charts of both `Proj`s. -/
noncomputable def gradedEquivProjBasicSchemeIso
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d) :
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» 𝒜)
        (ProjectiveSpectrum.basicOpen 𝒜 f) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» ℬ)
        (ProjectiveSpectrum.basicOpen ℬ (e f)) := by
  exact (homogeneousProjBasicSchemeIso 𝒜 f d hf hd).trans
    ((Scheme.Spec.mapIso
      ((gradedEquivAway 𝒜 ℬ e he he' f).symm.toCommRingCatIso.op)).trans
        (homogeneousProjBasicSchemeIso ℬ (e f) d (he d f hf) hd).symm)

/-- The projective chart comparison indexed by matched denominators
and their common homogeneous degree. -/
noncomputable def gradedEquivProjBasicSchemeIso_at
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (t : A) (s : B) (ht : e t = s)
    (n : ℕ) (htA : t ∈ 𝒜 n) (hsB : s ∈ ℬ n) (hn : 0 < n) :
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» 𝒜)
        (ProjectiveSpectrum.basicOpen 𝒜 t) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» ℬ)
        (ProjectiveSpectrum.basicOpen ℬ s) := by
  exact (homogeneousProjBasicSchemeIso 𝒜 t n htA hn).trans
    ((Scheme.Spec.mapIso
      ((gradedEquivAway_at 𝒜 ℬ e he he' t s ht).symm.toCommRingCatIso.op)).trans
        (homogeneousProjBasicSchemeIso ℬ s n hsB hn).symm)

/-- The projective product chart is compared with the chart at the
product of the two translated denominators. -/
noncomputable def gradedEquivProjProductBasicSchemeIso
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» 𝒜)
        (ProjectiveSpectrum.basicOpen 𝒜 (f * g)) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» ℬ)
        (ProjectiveSpectrum.basicOpen ℬ (e f * e g)) :=
  gradedEquivProjBasicSchemeIso_at 𝒜 ℬ e he he'
    (f * g) (e f * e g) (e.map_mul f g) (d + d)
    (SetLike.GradedMul.mul_mem hf hg)
    (SetLike.GradedMul.mul_mem (he d f hf) (he d g hg)) (by omega)

/-- The chosen product-open scheme comparison agrees after exchanging
the two presentations of the overlap. -/
theorem gradedEquivProjProductBasicSchemeIso_mul_comm
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    HEq (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd)
      (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' g f d hg hf hd) := by
  unfold gradedEquivProjProductBasicSchemeIso
  congr 1
  · exact mul_comm f g
  · exact mul_comm (e f) (e g)
  · apply proof_irrel_heq
  · apply proof_irrel_heq
  · apply proof_irrel_heq

/-- The chosen projective basic-chart isomorphism is natural for
restriction to a product open, with the translated denominator on
the target. -/
theorem gradedEquivProjBasicSchemeIso_toProduct
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    let X := AlgebraicGeometry.«Proj» 𝒜
    let Y := AlgebraicGeometry.«Proj» ℬ
    let ka := (X.restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g))).left
    let kb := (Y.restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ (e f) (e g)))).left
    ka ≫ (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd).hom =
      (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd).hom ≫
        kb := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let Y := AlgebraicGeometry.«Proj» ℬ
  let ka := (X.restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g))).left
  let kb := (Y.restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ (e f) (e g)))).left
  let sf := homogeneousProjBasicSchemeIso 𝒜 f d hf hd
  let sp := homogeneousProjBasicSchemeIso 𝒜 (f * g) (d + d)
    (SetLike.GradedMul.mul_mem hf hg) (by omega)
  let tf := homogeneousProjBasicSchemeIso ℬ (e f) d (he d f hf) hd
  let tp := homogeneousProjBasicSchemeIso ℬ (e f * e g) (d + d)
    (SetLike.GradedMul.mul_mem (he d f hf) (he d g hg)) (by omega)
  let ef := (Scheme.Spec.mapIso
    ((gradedEquivAway 𝒜 ℬ e he he' f).symm.toCommRingCatIso.op)).hom
  let ep := (Scheme.Spec.mapIso
    ((gradedEquivAway_product 𝒜 ℬ e he he' f g).symm.toCommRingCatIso.op)).hom
  have hs : ka ≫ sf.hom =
      sp.hom ≫ Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct 𝒜 f g d hf hg)) :=
    homogeneousProjBasicSchemeIso_toProduct 𝒜 f g d hf hg hd
  have ht : kb ≫ tf.hom =
      tp.hom ≫ Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct ℬ (e f) (e g) d
          (he d f hf) (he d g hg))) :=
    homogeneousProjBasicSchemeIso_toProduct ℬ (e f) (e g) d
      (he d f hf) (he d g hg) hd
  have hm :
      Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct 𝒜 f g d hf hg)) ≫ ef =
      ep ≫ Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct ℬ (e f) (e g) d
          (he d f hf) (he d g hg))) := by
    change Spec.map (CommRingCat.ofHom
        (homogeneousLocalization_toProduct 𝒜 f g d hf hg)) ≫
        Spec.map (CommRingCat.ofHom
          (gradedEquivAway 𝒜 ℬ e he he' f).symm.toRingHom) =
      Spec.map (CommRingCat.ofHom
        (gradedEquivAway_product 𝒜 ℬ e he he' f g).symm.toRingHom) ≫
        Spec.map (CommRingCat.ofHom
          (homogeneousLocalization_toProduct ℬ (e f) (e g) d
            (he d f hf) (he d g hg)))
    exact gradedEquivAway_spec_toProduct 𝒜 ℬ e he he' f g d hf hg
  change ka ≫ (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd).hom =
    (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd).hom ≫ kb
  apply (cancel_mono tf.hom).mp
  calc
    (ka ≫ (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd).hom) ≫ tf.hom =
        (sp.hom ≫
          Spec.map (CommRingCat.ofHom
            (homogeneousLocalization_toProduct 𝒜 f g d hf hg))) ≫ ef := by
      change ((ka ≫ sf.hom ≫ ef ≫ tf.inv) ≫ tf.hom) = _
      simp only [Category.assoc, tf.inv_hom_id, Category.comp_id]
      simpa only [Category.assoc] using congrArg (fun h => h ≫ ef) hs
    _ = (sp.hom ≫ ep) ≫ Spec.map (CommRingCat.ofHom
          (homogeneousLocalization_toProduct ℬ (e f) (e g) d
            (he d f hf) (he d g hg))) := by
      simpa only [Category.assoc] using
        congrArg (fun h => sp.hom ≫ h) hm
    _ = ((gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd).hom ≫
        kb) ≫ tf.hom := by
      rw [Category.assoc
        (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd).hom
        kb tf.hom, ht]
      change (sp.hom ≫ ep) ≫
          Spec.map (CommRingCat.ofHom
            (homogeneousLocalization_toProduct ℬ (e f) (e g) d
              (he d f hf) (he d g hg))) =
        (sp.hom ≫ ep ≫ tp.inv) ≫
          (tp.hom ≫ Spec.map (CommRingCat.ofHom
            (homogeneousLocalization_toProduct ℬ (e f) (e g) d
              (he d f hf) (he d g hg))))
      simp only [Category.assoc, Iso.inv_hom_id_assoc]

/-- The second restriction uses the same chosen comparison on the
`f·g` overlap, after transporting the reversed product presentation. -/
theorem gradedEquivProjBasicSchemeIso_toProduct_right
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    let X := AlgebraicGeometry.«Proj» 𝒜
    let Y := AlgebraicGeometry.«Proj» ℬ
    let ka := (X.restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right 𝒜 f g))).left
    let kb := (Y.restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ (e f) (e g)))).left
    ka ≫ (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd).hom =
      (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd).hom ≫
        kb := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let Y := AlgebraicGeometry.«Proj» ℬ
  let ka := (X.restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right 𝒜 f g))).left
  let ka' := (X.restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 g f))).left
  let kb := (Y.restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ (e f) (e g)))).left
  let kb' := (Y.restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ (e g) (e f)))).left
  have hA : ProjectiveSpectrum.basicOpen 𝒜 (f * g) =
      ProjectiveSpectrum.basicOpen 𝒜 (g * f) := by rw [mul_comm f g]
  have hB : ProjectiveSpectrum.basicOpen ℬ (e f * e g) =
      ProjectiveSpectrum.basicOpen ℬ (e g * e f) := by
    rw [mul_comm (e f) (e g)]
  change ka ≫ (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd).hom =
    (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd).hom ≫ kb
  exact schemeIsoRestrictionSquare_of_heq ka ka'
    (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd)
    (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd)
    (gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' g f d hg hf hd)
    kb kb'
    (congrArg (fun T : X.Opens => T.toScheme) hA)
    (congrArg (fun T : Y.Opens => T.toScheme) hB)
    (openRestriction_heq hA _ _)
    (gradedEquivProjProductBasicSchemeIso_mul_comm 𝒜 ℬ e he he' f g d hf hg hd)
    (openRestriction_heq hB _ _)
    (gradedEquivProjBasicSchemeIso_toProduct 𝒜 ℬ e he he' g f d hg hf hd)

/-- The translated product chart compares the scheme-theoretic
intersection of the two basic opens on each side. -/
noncomputable def gradedEquivProjProductOverlapIso
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    let X := AlgebraicGeometry.«Proj» 𝒜
    let Y := AlgebraicGeometry.«Proj» ℬ
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
    let U' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e f)
    let V' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e g)
    pullback U.ι V.ι ≅ pullback U'.ι V'.ι := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let Y := AlgebraicGeometry.«Proj» ℬ
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let U' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e f)
  let V' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e g)
  let T' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e f * e g)
  have hT : T = U ⊓ V := ProjectiveSpectrum.basicOpen_mul 𝒜 f g
  have hT' : T' = U' ⊓ V' :=
    ProjectiveSpectrum.basicOpen_mul ℬ (e f) (e g)
  exact (openEqInfPullbackIso T U V hT).symm.trans
    ((gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd).trans
      (openEqInfPullbackIso T' U' V' hT'))

/-- The chosen overlap comparison restricts to the two chosen basic
chart comparisons under both pullback projections. -/
theorem gradedEquivProjProductOverlapIso_projections
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    let X := AlgebraicGeometry.«Proj» 𝒜
    let Y := AlgebraicGeometry.«Proj» ℬ
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
    let U' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e f)
    let V' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e g)
    let o := gradedEquivProjProductOverlapIso 𝒜 ℬ e he he' f g d hf hg hd
    (pullback.fst U.ι V.ι ≫
        (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd).hom =
      o.hom ≫ pullback.fst U'.ι V'.ι) ∧
    (pullback.snd U.ι V.ι ≫
        (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd).hom =
      o.hom ≫ pullback.snd U'.ι V'.ι) := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let Y := AlgebraicGeometry.«Proj» ℬ
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let U' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e f)
  let V' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e g)
  let T' : Y.Opens := ProjectiveSpectrum.basicOpen ℬ (e f * e g)
  have hT : T = U ⊓ V := ProjectiveSpectrum.basicOpen_mul 𝒜 f g
  have hT' : T' = U' ⊓ V' :=
    ProjectiveSpectrum.basicOpen_mul ℬ (e f) (e g)
  let a := openEqInfPullbackIso T U V hT
  let b := openEqInfPullbackIso T' U' V' hT'
  let p := gradedEquivProjProductBasicSchemeIso 𝒜 ℬ e he he' f g d hf hg hd
  let o := gradedEquivProjProductOverlapIso 𝒜 ℬ e he he' f g d hf hg hd
  have ha : a.hom ≫ pullback.fst U.ι V.ι =
      (X.restrictFunctor.map
        (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g))).left :=
    openEqInfPullbackIso_hom_fst T U V hT _
  have hb : b.hom ≫ pullback.fst U'.ι V'.ι =
      (Y.restrictFunctor.map
        (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ (e f) (e g)))).left :=
    openEqInfPullbackIso_hom_fst T' U' V' hT' _
  have hc : a.hom ≫ pullback.snd U.ι V.ι =
      (X.restrictFunctor.map
        (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right 𝒜 f g))).left :=
    openEqInfPullbackIso_hom_snd T U V hT _
  have hd' : b.hom ≫ pullback.snd U'.ι V'.ι =
      (Y.restrictFunctor.map
        (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ (e f) (e g)))).left :=
    openEqInfPullbackIso_hom_snd T' U' V' hT' _
  have hf' := gradedEquivProjBasicSchemeIso_toProduct
    𝒜 ℬ e he he' f g d hf hg hd
  have hg' := gradedEquivProjBasicSchemeIso_toProduct_right
    𝒜 ℬ e he he' f g d hf hg hd
  change (pullback.fst U.ι V.ι ≫
      (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd).hom =
      o.hom ≫ pullback.fst U'.ι V'.ι) ∧
    (pullback.snd U.ι V.ι ≫
      (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd).hom =
      o.hom ≫ pullback.snd U'.ι V'.ι)
  constructor
  · apply (cancel_epi a.hom).mp
    calc
      a.hom ≫ (pullback.fst U.ι V.ι ≫
          (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd).hom) =
        (a.hom ≫ pullback.fst U.ι V.ι) ≫
          (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd).hom := by
        rw [Category.assoc]
      _ = p.hom ≫ (b.hom ≫ pullback.fst U'.ι V'.ι) := by
        rw [ha, hb]
        exact hf'
      _ = a.hom ≫ (o.hom ≫ pullback.fst U'.ι V'.ι) := by
        change p.hom ≫ (b.hom ≫ pullback.fst U'.ι V'.ι) =
          a.hom ≫ ((a.inv ≫ p.hom ≫ b.hom) ≫ pullback.fst U'.ι V'.ι)
        simp only [Category.assoc, Iso.hom_inv_id_assoc]
  · apply (cancel_epi a.hom).mp
    calc
      a.hom ≫ (pullback.snd U.ι V.ι ≫
          (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd).hom) =
        (a.hom ≫ pullback.snd U.ι V.ι) ≫
          (gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd).hom := by
        rw [Category.assoc]
      _ = p.hom ≫ (b.hom ≫ pullback.snd U'.ι V'.ι) := by
        rw [hc, hd']
        exact hg'
      _ = a.hom ≫ (o.hom ≫ pullback.snd U'.ι V'.ι) := by
        change p.hom ≫ (b.hom ≫ pullback.snd U'.ι V'.ι) =
          a.hom ≫ ((a.inv ≫ p.hom ≫ b.hom) ≫ pullback.snd U'.ι V'.ι)
        simp only [Category.assoc, Iso.hom_inv_id_assoc]

/-- A graded equivalence glues its two chosen projective chart maps
when the corresponding opens cover both `Proj`s. -/
noncomputable def gradedEquivProjTwoChartSchemeIso
    {R S A B : Type} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d)
    (hcoverA : ProjectiveSpectrum.basicOpen 𝒜 f ⊔
      ProjectiveSpectrum.basicOpen 𝒜 g = ⊤)
    (hcoverB : ProjectiveSpectrum.basicOpen ℬ (e f) ⊔
      ProjectiveSpectrum.basicOpen ℬ (e g) = ⊤) :
    AlgebraicGeometry.«Proj» 𝒜 ≅ AlgebraicGeometry.«Proj» ℬ := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let Y := AlgebraicGeometry.«Proj» ℬ
  let U : Bool → X.Opens := fun b =>
    if b then ProjectiveSpectrum.basicOpen 𝒜 f
      else ProjectiveSpectrum.basicOpen 𝒜 g
  let V : Bool → Y.Opens := fun b =>
    if b then ProjectiveSpectrum.basicOpen ℬ (e f)
      else ProjectiveSpectrum.basicOpen ℬ (e g)
  have hU : ⨆ b, U b = ⊤ := by
    simpa only [iSup_bool_eq, U, Bool.cond_true, Bool.cond_false] using hcoverA
  have hV : ⨆ b, V b = ⊤ := by
    simpa only [iSup_bool_eq, V, Bool.cond_true, Bool.cond_false] using hcoverB
  let C := X.openCoverOfISupEqTop U hU
  let D := Y.openCoverOfISupEqTop V hV
  let c : ∀ i : Bool, C.obj i ≅ D.obj i := by
    intro i
    cases i
    · exact gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' g d hg hd
    · exact gradedEquivProjBasicSchemeIso 𝒜 ℬ e he he' f d hf hd
  let o := gradedEquivProjProductOverlapIso 𝒜 ℬ e he he' f g d hf hg hd
  have hfirst : pullback.fst (C.map true) (C.map false) ≫ (c true).hom =
      o.hom ≫ pullback.fst (D.map true) (D.map false) := by
    exact (gradedEquivProjProductOverlapIso_projections
      𝒜 ℬ e he he' f g d hf hg hd).1
  have hsecond : pullback.snd (C.map true) (C.map false) ≫ (c false).hom =
      o.hom ≫ pullback.snd (D.map true) (D.map false) := by
    exact (gradedEquivProjProductOverlapIso_projections
      𝒜 ℬ e he he' f g d hf hg hd).2
  have hforward : ∀ i j : Bool,
      pullback.fst (C.map i) (C.map j) ≫ (c i).hom ≫ D.map i =
        pullback.snd (C.map i) (C.map j) ≫ (c j).hom ≫ D.map j := by
    intro i j
    cases i <;> cases j
    · have h : pullback.fst (C.map false) (C.map false) =
          pullback.snd (C.map false) (C.map false) :=
        (cancel_mono (C.map false)).mp pullback.condition
      rw [h]
    · apply (cancel_epi
        (pullbackSymmetry (C.map true) (C.map false)).hom).mp
      simp only [← Category.assoc, pullbackSymmetry_hom_comp_fst,
        pullbackSymmetry_hom_comp_snd]
      calc
        _ = (o.hom ≫ pullback.snd (D.map true) (D.map false)) ≫
            D.map false := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ D.map false) hsecond
        _ = (o.hom ≫ pullback.fst (D.map true) (D.map false)) ≫
            D.map true := by simp only [Category.assoc, pullback.condition]
        _ = _ := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ D.map true) hfirst.symm
    · calc
        _ = (o.hom ≫ pullback.fst (D.map true) (D.map false)) ≫
            D.map true := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ D.map true) hfirst
        _ = (o.hom ≫ pullback.snd (D.map true) (D.map false)) ≫
            D.map false := by simp only [Category.assoc, pullback.condition]
        _ = _ := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ D.map false) hsecond.symm
    · have h : pullback.fst (C.map true) (C.map true) =
          pullback.snd (C.map true) (C.map true) :=
        (cancel_mono (C.map true)).mp pullback.condition
      rw [h]
  have hreverse : ∀ i j : Bool,
      pullback.fst (D.map i) (D.map j) ≫ (c i).inv ≫ C.map i =
        pullback.snd (D.map i) (D.map j) ≫ (c j).inv ≫ C.map j := by
    have hif : pullback.fst (D.map true) (D.map false) ≫ (c true).inv =
        o.inv ≫ pullback.fst (C.map true) (C.map false) :=
      schemeIsoRestrictionSquare_inverse (c true) o _ _ hfirst
    have his : pullback.snd (D.map true) (D.map false) ≫ (c false).inv =
        o.inv ≫ pullback.snd (C.map true) (C.map false) :=
      schemeIsoRestrictionSquare_inverse (c false) o _ _ hsecond
    intro i j
    cases i <;> cases j
    · have h : pullback.fst (D.map false) (D.map false) =
          pullback.snd (D.map false) (D.map false) :=
        (cancel_mono (D.map false)).mp pullback.condition
      rw [h]
    · apply (cancel_epi
        (pullbackSymmetry (D.map true) (D.map false)).hom).mp
      simp only [← Category.assoc, pullbackSymmetry_hom_comp_fst,
        pullbackSymmetry_hom_comp_snd]
      calc
        _ = (o.inv ≫ pullback.snd (C.map true) (C.map false)) ≫
            C.map false := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ C.map false) his
        _ = (o.inv ≫ pullback.fst (C.map true) (C.map false)) ≫
            C.map true := by simp only [Category.assoc, pullback.condition]
        _ = _ := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ C.map true) hif.symm
    · calc
        _ = (o.inv ≫ pullback.fst (C.map true) (C.map false)) ≫
            C.map true := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ C.map true) hif
        _ = (o.inv ≫ pullback.snd (C.map true) (C.map false)) ≫
            C.map false := by simp only [Category.assoc, pullback.condition]
        _ = _ := by
          simpa only [Category.assoc] using
            congrArg (fun t => t ≫ C.map false) his.symm
    · have h : pullback.fst (D.map true) (D.map true) =
          pullback.snd (D.map true) (D.map true) :=
        (cancel_mono (D.map true)).mp pullback.condition
      rw [h]
  let f' : ∀ i : Bool, C.obj i ⟶ Y := fun i => (c i).hom ≫ D.map i
  let g' : ∀ i : Bool, D.obj i ⟶ X := fun i => (c i).inv ≫ C.map i
  have hf' : ∀ i j, pullback.fst (C.map i) (C.map j) ≫ f' i =
      pullback.snd (C.map i) (C.map j) ≫ f' j := by
    intro i j
    simpa only [f', Category.assoc] using hforward i j
  have hg' : ∀ i j, pullback.fst (D.map i) (D.map j) ≫ g' i =
      pullback.snd (D.map i) (D.map j) ≫ g' j := by
    intro i j
    simpa only [g', Category.assoc] using hreverse i j
  let F : X ⟶ Y := @Scheme.OpenCover.glueMorphisms X C Y f' hf'
  let G : Y ⟶ X := @Scheme.OpenCover.glueMorphisms Y D X g' hg'
  refine { hom := F, inv := G, hom_inv_id := ?_, inv_hom_id := ?_ }
  · apply C.hom_ext
    intro i
    change C.map i ≫ (F ≫ G) = C.map i ≫ 𝟙 _
    rw [← Category.assoc, C.ι_glueMorphisms, Category.assoc,
      D.ι_glueMorphisms]
    simp only [f', g', ← Category.assoc, Iso.hom_inv_id,
      Category.id_comp, Category.comp_id]
  · apply D.hom_ext
    intro i
    change D.map i ≫ (G ≫ F) = D.map i ≫ 𝟙 _
    rw [← Category.assoc, D.ι_glueMorphisms, Category.assoc,
      C.ι_glueMorphisms]
    simp only [f', g', ← Category.assoc, Iso.inv_hom_id,
      Category.id_comp, Category.comp_id]

/-- The graded translation identifies each source projective basic
chart with the canonical split cubic's chart at its translated
coordinate, as schemes. -/
noncomputable def splitNodeProjectiveBasicSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (f : projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W)
    (d : ℕ) (hf : f ∈ projectiveWeierstrassSpecialFibreComponent W d)
    (hd : 0 < d) :
    let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
      (projectiveWeierstrassSpecialFibreComponent W))
        (ProjectiveSpectrum.basicOpen
          (projectiveWeierstrassSpecialFibreComponent W) f) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
        splitNodeProjectiveQuotientComponent)
        (ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent (e f)) := by
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  exact gradedEquivProjBasicSchemeIso
    (projectiveWeierstrassSpecialFibreComponent W)
    splitNodeProjectiveQuotientComponent
    (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
    (fun n a ha =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_homogeneous
        W hnode hsplit n a ha)
    (fun n b hb =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_symm_homogeneous
        W hnode hsplit n b hb) f d hf hd

/-- The chosen `Z` and `Y` charts of the quotient `Proj` are compared
with the canonical cubic at their translated coordinates. -/
noncomputable def splitNodeProjectiveTwoChartSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
    let z := r (q (MvPolynomial.X (2 : Fin 3)))
    let y := r (q (MvPolynomial.X (1 : Fin 3)))
    let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    ∀ b : Bool,
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
        (projectiveWeierstrassSpecialFibreComponent W))
          (ProjectiveSpectrum.basicOpen
            (projectiveWeierstrassSpecialFibreComponent W)
            (if b then z else y)) ≅
        Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
          splitNodeProjectiveQuotientComponent)
          (ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent
            (e (if b then z else y))) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
  let z := r (q (MvPolynomial.X (2 : Fin 3)))
  let y := r (q (MvPolynomial.X (1 : Fin 3)))
  change ∀ b : Bool,
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
      (projectiveWeierstrassSpecialFibreComponent W))
        (ProjectiveSpectrum.basicOpen
          (projectiveWeierstrassSpecialFibreComponent W)
          (if b then z else y)) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
        splitNodeProjectiveQuotientComponent)
        (ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent
          ((splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
            (if b then z else y)))
  intro b
  cases b
  · exact splitNodeProjectiveBasicSchemeIso W hnode hsplit y 1
      (Submodule.mem_map.mpr
        ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W 1, rfl⟩)
      (by decide)
  · exact splitNodeProjectiveBasicSchemeIso W hnode hsplit z 1
      (Submodule.mem_map.mpr
        ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W 2, rfl⟩)
      (by decide)

/-- The two translated denominators are `Z` and `V + b Z`, not
necessarily `Z` and `V` themselves. -/
theorem splitNodeProjectiveTranslatedCoordinates
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
    let z := r (q (MvPolynomial.X (2 : Fin 3)))
    let y := r (q (MvPolynomial.X (1 : Fin 3)))
    let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    let Q := Ideal.Quotient.mk (Ideal.span {splitNodeProjectiveCubic})
    e z = Q (MvPolynomial.X (2 : Fin 3)) ∧
      e y = Q (MvPolynomial.X (1 : Fin 3) +
        MvPolynomial.C (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)) *
          MvPolynomial.X 2) := by
  constructor
  · simpa only [MvPolynomial.map_X, projectivePlaneTranslation_Z] using
      (splitNode_projectiveSpecialFibreCoordinateRing_equiv_apply W hnode hsplit
        (MvPolynomial.X (2 : Fin 3)))
  · have hY : (projectivePlaneTranslation (ZMod 2)
        (PadicInt.toZMod W.a₃)
        (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
          (MvPolynomial.X (1 : Fin 3)) =
          MvPolynomial.X 1 +
            MvPolynomial.C (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)) *
              MvPolynomial.X 2 := by
      change (MvPolynomial.eval₂Hom MvPolynomial.C
        ![MvPolynomial.X 0 +
            MvPolynomial.C (PadicInt.toZMod W.a₃) * MvPolynomial.X 2,
          MvPolynomial.X 1 +
            MvPolynomial.C (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)) *
              MvPolynomial.X 2,
          MvPolynomial.X 2])
        (MvPolynomial.X (1 : Fin 3)) = _
      exact MvPolynomial.eval₂Hom_X' _ _ _
    simpa only [MvPolynomial.map_X, hY] using
      (splitNode_projectiveSpecialFibreCoordinateRing_equiv_apply W hnode hsplit
        (MvPolynomial.X (1 : Fin 3)))

/-- The target opens at the actual translated `Z` and `Y` coordinates
cover the canonical cubic's projective spectrum. -/
theorem splitNodeProjectiveTranslatedBasicOpen_Z_sup_Y
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
    let z := r (q (MvPolynomial.X (2 : Fin 3)))
    let y := r (q (MvPolynomial.X (1 : Fin 3)))
    let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent (e z) ⊔
      ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent (e y) =
        ⊤ := by
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  rcases splitNodeProjectiveTranslatedCoordinates W hnode hsplit with ⟨hZ, hY⟩
  dsimp only
  rw [hZ, hY]
  exact splitNodeProjectiveBasicOpen_Z_sup_V_add
    (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄))

/-- The images of the source `Z` and `Y` charts form an actual open
cover of the canonical cubic, with the translated `Y` retained. -/
noncomputable def splitNodeProjectiveTranslatedTwoChartOpenCover
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    (AlgebraicGeometry.«Proj» splitNodeProjectiveQuotientComponent).OpenCover := by
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
  let z := r (q (MvPolynomial.X (2 : Fin 3)))
  let y := r (q (MvPolynomial.X (1 : Fin 3)))
  let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
  let X := AlgebraicGeometry.«Proj» splitNodeProjectiveQuotientComponent
  let U : Bool → X.Opens := fun b =>
    if b then ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent
      (e z) else ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent
        (e y)
  apply X.openCoverOfISupEqTop U
  simpa only [iSup_bool_eq, U, Bool.cond_true, Bool.cond_false] using
    splitNodeProjectiveTranslatedBasicOpen_Z_sup_Y W hnode hsplit

/-- The degree-preserving translated coordinate equivalence glues
across the full `Z`/`Y` cover to identify the quotient `Proj` with
the canonical split cubic as a scheme. -/
noncomputable def splitNodeProjectiveSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    AlgebraicGeometry.«Proj» (projectiveWeierstrassSpecialFibreComponent W) ≅
      splitNodeProjectiveScheme := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
  let z := r (q (MvPolynomial.X (2 : Fin 3)))
  let y := r (q (MvPolynomial.X (1 : Fin 3)))
  let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
  exact gradedEquivProjTwoChartSchemeIso
    (projectiveWeierstrassSpecialFibreComponent W)
    splitNodeProjectiveQuotientComponent e
    (fun n a ha =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_homogeneous
        W hnode hsplit n a ha)
    (fun n b hb =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_symm_homogeneous
        W hnode hsplit n b hb)
    z y 1
    (Submodule.mem_map.mpr
      ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W 2, rfl⟩)
    (Submodule.mem_map.mpr
      ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W 1, rfl⟩)
    (by decide)
    (projectiveWeierstrassSpecialFibreBasicOpen_Z_sup_Y W)
    (splitNodeProjectiveTranslatedBasicOpen_Z_sup_Y W hnode hsplit)

/-- The actual scheme-theoretic special fibre is the canonical
split cubic, not merely chartwise equivalent to it. -/
noncomputable def splitNodeSpecialFibreCanonicalSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    projectiveWeierstrassSpecialFibreScheme W ≅
      splitNodeProjectiveScheme := by
  exact (splitNodeSpecialFibreProjSchemeIso W hnode hsplit).trans
    (splitNodeProjectiveSchemeIso W hnode hsplit)

end Beal.General