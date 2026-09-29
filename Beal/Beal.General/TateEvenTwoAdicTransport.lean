import Beal.«Beal.General».TateEvenSpecialFibre

/-!
Transport between the quotient by the actual 2-adic base ideal
and the quotient by the same scalar in a homogeneous localization.
The statement is abstract in the grading ring and denominators.
-/

namespace Beal.General

set_option maxHeartbeats 1000000
set_option synthInstance.maxHeartbeats 200000

/-- Restriction to a product open commutes with changing from the
actual 2-adic quotient ideal to its principal scalar presentation.
No reduced-denominator condition is needed. -/
theorem homogeneousTwoAdicQuotientRestriction_transport
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (ρ : ℤ_[2] →+* R)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :
    let βf := (homogeneousScalarAwayHom 𝒜 f).comp ρ
    let βfg := (homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ
    letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 f) :=
      βf.toAlgebra
    letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 (f * g)) :=
      βfg.toAlgebra
    let J : Ideal ℤ_[2] := Ideal.span {(2 : ℤ_[2])}
    let Kf := Ideal.map βf J
    let Kfg := Ideal.map βfg J
    let Qf := Ideal.span {homogeneousScalarAway 𝒜 f (ρ 2)}
    let Qfg := Ideal.span {homogeneousScalarAway 𝒜 (f * g) (ρ 2)}
    let ef : Kf = Qf := by
      change Ideal.map βf (Ideal.span {(2 : ℤ_[2])}) =
        Ideal.span {homogeneousScalarAway 𝒜 f (ρ 2)}
      simp only [Ideal.map_span, Set.image_singleton]
      rfl
    let efg : Kfg = Qfg := by
      change Ideal.map βfg (Ideal.span {(2 : ℤ_[2])}) =
        Ideal.span {homogeneousScalarAway 𝒜 (f * g) (ρ 2)}
      simp only [Ideal.map_span, Set.image_singleton]
      rfl
    let s : HomogeneousLocalization.Away 𝒜 f →ₐ[ℤ_[2]]
        HomogeneousLocalization.Away 𝒜 (f * g) :=
      homogeneousLocalization_toProductTwoAdicAlgHom 𝒜 ρ f g d hf hg
    (Ideal.quotEquivOfEq efg).toRingHom.comp
        (affineFibreQuotientMap J s) =
      (homogeneousScalarQuotientToProduct 𝒜 f g d hf hg (ρ 2)).comp
        (Ideal.quotEquivOfEq ef).toRingHom := by
  let βf := (homogeneousScalarAwayHom 𝒜 f).comp ρ
  let βfg := (homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 f) :=
    βf.toAlgebra
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    βfg.toAlgebra
  let J : Ideal ℤ_[2] := Ideal.span {(2 : ℤ_[2])}
  let Kf := Ideal.map βf J
  let Kfg := Ideal.map βfg J
  let Qf := Ideal.span {homogeneousScalarAway 𝒜 f (ρ 2)}
  let Qfg := Ideal.span {homogeneousScalarAway 𝒜 (f * g) (ρ 2)}
  let ef : Kf = Qf := by
    change Ideal.map βf (Ideal.span {(2 : ℤ_[2])}) =
      Ideal.span {homogeneousScalarAway 𝒜 f (ρ 2)}
    simp only [Ideal.map_span, Set.image_singleton]
    rfl
  let efg : Kfg = Qfg := by
    change Ideal.map βfg (Ideal.span {(2 : ℤ_[2])}) =
      Ideal.span {homogeneousScalarAway 𝒜 (f * g) (ρ 2)}
    simp only [Ideal.map_span, Set.image_singleton]
    rfl
  let h := homogeneousLocalization_toProduct 𝒜 f g d hf hg
  have hK : Kf ≤ Kfg.comap h := by
    apply (Ideal.map_le_iff_le_comap).mpr
    intro r hr
    change h (βf r) ∈ Kfg
    have hs : h.comp βf = βfg := by
      change (h.comp (homogeneousScalarAwayHom 𝒜 f)).comp ρ =
        (homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ
      rw [homogeneousScalarAwayHom_toProduct]
    rw [← RingHom.comp_apply, hs]
    exact Ideal.mem_map_of_mem βfg hr
  have hQ : Qf ≤ Qfg.comap h := by
    apply Ideal.span_le.mpr
    intro z hz
    rcases Set.mem_singleton_iff.mp hz with rfl
    change h (homogeneousScalarAway 𝒜 f (ρ 2)) ∈ Qfg
    rw [homogeneousScalarAway_toProduct 𝒜 f g d hf hg]
    exact Ideal.subset_span (Set.mem_singleton _)
  change (Ideal.quotEquivOfEq efg).toRingHom.comp
      (Ideal.quotientMap Kfg h hK) =
    (Ideal.quotientMap Qfg h hQ).comp
      (Ideal.quotEquivOfEq ef).toRingHom
  exact quotientEquivOfEq_natural h Kf Qf Kfg Qfg ef efg hK hQ

/-- Paste two commuting ring-homomorphism squares without expanding
either of their intermediate quotient-ring presentations. -/
theorem ringHom_twoSquares
    {B C D E F G : Type} [CommRing B] [CommRing C]
    [CommRing D] [CommRing E] [CommRing F] [CommRing G]
    (a : B →+* C) (b : D →+* E)
    (c : F →+* B) (d : G →+* D)
    (k : C →+* E) (j : B →+* D) (l : F →+* G)
    (h₁ : k.comp a = b.comp j)
    (h₂ : j.comp c = d.comp l) :
    k.comp (a.comp c) = (b.comp d).comp l := by
  apply RingHom.ext
  intro z
  have h := congrArg (fun φ => φ (c z)) h₁
  have h' := congrArg (fun φ => φ z) h₂
  simp only [RingHom.comp_apply] at h h' ⊢
  exact h.trans (congrArg b h')

/-- Paste the scalar-quotient and base-ideal-transport squares.
The result compares actual 2-adic quotients directly to graded
quotient chart rings, for every ordered pair and without assuming
the reduced denominators survive. -/
noncomputable abbrev homogeneousTwoAdicAwayQuotient_toProduct
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (ρ : ℤ_[2] →+* R)
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (hgen : I = Ideal.span {algebraMap R A (ρ 2)})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :=
  let βf := (homogeneousScalarAwayHom 𝒜 f).comp ρ
  let βfg := (homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 f) :=
    βf.toAlgebra
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    βfg.toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  let J : Ideal ℤ_[2] := Ideal.span {(2 : ℤ_[2])}
  let ef : Ideal.map βf J =
      Ideal.span {homogeneousScalarAway 𝒜 f (ρ 2)} := by
    simp only [J, Ideal.map_span, Set.image_singleton]
    rfl
  let efg : Ideal.map βfg J =
      Ideal.span {homogeneousScalarAway 𝒜 (f * g) (ρ 2)} := by
    simp only [J, Ideal.map_span, Set.image_singleton]
    rfl
  ringHom_twoSquares
    (homogeneousQuotientAwayRingEquiv_any 𝒜 I hI
      (ρ 2) hgen f d hf).toRingHom
    (homogeneousQuotientAwayRingEquiv_any 𝒜 I hI
      (ρ 2) hgen (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg)).toRingHom
    (Ideal.quotEquivOfEq ef).toRingHom
    (Ideal.quotEquivOfEq efg).toRingHom
    (homogeneousLocalization_toProduct ℬ (q f) (q g) d hfq hgq)
    (homogeneousScalarQuotientToProduct 𝒜 f g d hf hg (ρ 2))
    (affineFibreQuotientMap J
      (homogeneousLocalization_toProductTwoAdicAlgHom 𝒜 ρ f g d hf hg))
    (homogeneousQuotientChartRestriction_square_any 𝒜 I hI
      (ρ 2) hgen f g d hf hg)
    (homogeneousTwoAdicQuotientRestriction_transport 𝒜 ρ
      f g d hf hg).symm

#print axioms homogeneousTwoAdicQuotientRestriction_transport
#print axioms homogeneousTwoAdicAwayQuotient_toProduct

end Beal.General