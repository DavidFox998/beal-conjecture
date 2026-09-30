import Beal.«Beal.General».TateEvenTwoAdicTransport

/-!
On each Rees basic open, the actual special fibre — the pullback of
the structural map along `ℤ_[2] → ℤ/2ℤ` — is the matching basic open
of `Proj(Rees / (2))`. The comparison does not assume the reduced
denominator is nonnilpotent. `twoAdicCoverChartIso_toProduct` is the
product-open restriction of that comparison, including pullback
pasting. Gluing the three generator charts with `glueMorphisms` is
the remaining scheme identification.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 2000000

/-- The actual special fibre of one Rees basic open, identified with
the matching open of the graded-quotient `Proj`. -/
noncomputable def surfaceCentreBasicSpecialChartIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (f : localSurfaceCentreRees W x y) (d : ℕ)
    (hf : f ∈ centreReesComponent (localSurfaceClosedPoint W x y) d)
    (hd : 0 < d) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let I0 := localSurfaceClosedPoint W x y
  letI : GradedAlgebra (centreReesComponent I0) := centreReesGrading I0
  let 𝒜 := centreReesComponent I0
  let J := localSurfaceCentreReesSpecialIdeal W x y
  let ρ : ℤ_[2] →+* R := q.comp MvPolynomial.C
  let U : (localSurfaceCentreReesProj W x y).Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 f
  let e := homogeneousProjBasicSchemeIso 𝒜 f d hf hd
  let β := (homogeneousScalarAwayHom 𝒜 f).comp ρ
  exact twoAdicChartQuotientProjIso 𝒜 J
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (ρ 2) rfl f d hf hd U
    (localSurfaceCentreReesToBase W x y) e β rfl
    (by
      simpa only [localSurfaceCentreReesToBase_eq_homogeneous] using
        homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd)

/-- The chart comparison is the affine special-fibre isomorphism,
followed by the nilpotence-free quotient-chart equivalence and the
graded-quotient basic-open presentation. -/
theorem twoAdicChartQuotientProjIso_factor
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (ρ : ℤ_[2] →+* R)
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (hgen : I = Ideal.span {algebraMap R A (ρ 2)})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let ℬ := homogeneousQuotientComponent 𝒜 I
    let q := Ideal.Quotient.mk I
    let X := AlgebraicGeometry.«Proj» 𝒜
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
    let e := homogeneousProjBasicSchemeIso 𝒜 f d hf hd
    let β := (homogeneousScalarAwayHom 𝒜 f).comp ρ
    let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
    let eqv := homogeneousTwoAdicAwayQuotientEquiv_any
      𝒜 ρ I hI hgen f d hf
    let proj := homogeneousProjBasicSchemeIso ℬ (q f) d hfq hd
    twoAdicChartQuotientProjIso 𝒜 I hI (ρ 2) hgen f d hf hd U π e β rfl
        (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd) =
      (twoAdicChartSpecialFibreIso U π e β
        (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd)).trans
        ((Scheme.Spec.mapIso (eqv.symm.toCommRingCatIso.op)).trans
          proj.symm) := by
  rfl

/-- `Spec` of the inverse quotient-chart equivalence is the forward
ring map, read contravariantly. -/
theorem specMapIso_symm_hom
    {B C : Type} [CommRing B] [CommRing C] (e : B ≃+* C) :
    (Scheme.Spec.mapIso (e.symm.toCommRingCatIso.op)).hom =
      Spec.map (CommRingCat.ofHom e.symm.toRingHom) := by
  rfl

set_option maxHeartbeats 4000000 in
/-- The nilpotence-free chart comparison respects product-open
restriction. The affine square, the quotient-chart ring square, and
the basic-open presentation are pasted in that order. -/
theorem twoAdicChartQuotientProjIso_toProduct
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (ρ : ℤ_[2] →+* R)
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (hgen : I = Ideal.span {algebraMap R A (ρ 2)})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let ℬ := homogeneousQuotientComponent 𝒜 I
    let q := Ideal.Quotient.mk I
    let X := AlgebraicGeometry.«Proj» 𝒜
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
    let Q := AlgebraicGeometry.«Proj» ℬ
    let UF : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
    let UV : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let iX := homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g)
    let kX := (X.restrictFunctor.map iX).left
    let kQ := (Q.restrictFunctor.map (homOfLE
      (show UV ≤ UF from by
        change ProjectiveSpectrum.basicOpen ℬ (q (f * g)) ≤
          ProjectiveSpectrum.basicOpen ℬ (q f)
        rw [map_mul]
        exact ProjectiveSpectrum.basicOpen_mul_le_left ℬ (q f) (q g)))).left
    let r := pullback.map (V.ι ≫ π) residue (U.ι ≫ π) residue
      kX (𝟙 _) (𝟙 _)
      (by
        have h := X.restrictFunctor_map_ofRestrict iX
        simpa only [Category.comp_id, Category.assoc] using
          (congrArg (fun ψ => ψ ≫ π) h).symm)
      (by simp)
    let eF := homogeneousProjBasicSchemeIso 𝒜 f d hf hd
    let eFG := homogeneousProjBasicSchemeIso 𝒜 (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg) (by omega)
    let βf := (homogeneousScalarAwayHom 𝒜 f).comp ρ
    let βfg := (homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ
    r ≫ (twoAdicChartQuotientProjIso 𝒜 I hI (ρ 2) hgen f d hf hd
        U π eF βf rfl
        (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd)).hom =
      (twoAdicChartQuotientProjIso 𝒜 I hI (ρ 2) hgen (f * g) (d + d)
        (SetLike.GradedMul.mul_mem hf hg) (by omega)
        V π eFG βfg rfl
        (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ (f * g) (d + d)
          (SetLike.GradedMul.mul_mem hf hg) (by omega))).hom ≫ kQ := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let X := AlgebraicGeometry.«Proj» 𝒜
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let Q := AlgebraicGeometry.«Proj» ℬ
  let UF : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
  let UV : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let iX := homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g)
  let kX := (X.restrictFunctor.map iX).left
  let hUV : UV ≤ UF := by
    change ProjectiveSpectrum.basicOpen ℬ (q (f * g)) ≤
      ProjectiveSpectrum.basicOpen ℬ (q f)
    rw [map_mul]
    exact ProjectiveSpectrum.basicOpen_mul_le_left ℬ (q f) (q g)
  let kQ := (Q.restrictFunctor.map (homOfLE hUV)).left
  let r := pullback.map (V.ι ≫ π) residue (U.ι ≫ π) residue
    kX (𝟙 _) (𝟙 _)
    (by
      have h := X.restrictFunctor_map_ofRestrict iX
      simpa only [Category.comp_id, Category.assoc] using
        (congrArg (fun ψ => ψ ≫ π) h).symm)
    (by simp)
  let eF := homogeneousProjBasicSchemeIso 𝒜 f d hf hd
  let eFG := homogeneousProjBasicSchemeIso 𝒜 (f * g) (d + d)
    (SetLike.GradedMul.mul_mem hf hg) (by omega)
  let βf := (homogeneousScalarAwayHom 𝒜 f).comp ρ
  let βfg := (homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 f) := βf.toAlgebra
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    βfg.toAlgebra
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  let hfgq : q (f * g) ∈ ℬ (d + d) :=
    Submodule.mem_map.mpr ⟨f * g, SetLike.GradedMul.mul_mem hf hg, rfl⟩
  let projF := homogeneousProjBasicSchemeIso ℬ (q f) d hfq hd
  let projFG := homogeneousProjBasicSchemeIso ℬ (q (f * g)) (d + d)
    hfgq (by omega)
  let eqF := homogeneousTwoAdicAwayQuotientEquiv_any
    𝒜 ρ I hI hgen f d hf
  let eqFG := homogeneousTwoAdicAwayQuotientEquiv_any
    𝒜 ρ I hI hgen (f * g) (d + d) (SetLike.GradedMul.mul_mem hf hg)
  let midF := Scheme.Spec.mapIso (eqF.symm.toCommRingCatIso.op)
  let midFG := Scheme.Spec.mapIso (eqFG.symm.toCommRingCatIso.op)
  let affF := twoAdicChartSpecialFibreIso U π eF βf
    (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd)
  let affFG := twoAdicChartSpecialFibreIso V π eFG βfg
    (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg) (by omega))
  have hF := twoAdicChartQuotientProjIso_factor
    𝒜 ρ I hI hgen f d hf hd
  have hFG := twoAdicChartQuotientProjIso_factor
    𝒜 ρ I hI hgen (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg) (by omega)
  let J : Ideal ℤ_[2] := Ideal.span {(2 : ℤ_[2])}
  let s := homogeneousLocalization_toProductTwoAdicAlgHom 𝒜 ρ f g d hf hg
  let specAff := Spec.map (CommRingCat.ofHom (affineFibreQuotientMap J s))
  let specLoc := Spec.map (CommRingCat.ofHom
    (homogeneousLocalization_toProduct ℬ (q f) (q g) d hfq hgq))
  have hAffineInv :=
    homogeneousProjBasicTwoAdicAffine_toProduct 𝒜 ρ f g d hf hg hd
  have hAffine : r ≫ affF.hom = affFG.hom ≫ specAff := by
    have hEqF : affF =
        twoAdicAffineSpecialFibreIso (U.ι ≫ π) eF
          (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd) :=
      twoAdicChartSpecialFibreIso_eq_affine U π eF βf _
    have hEqFG : affFG =
        twoAdicAffineSpecialFibreIso (V.ι ≫ π) eFG
          (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ (f * g) (d + d)
            (SetLike.GradedMul.mul_mem hf hg) (by omega)) :=
      twoAdicChartSpecialFibreIso_eq_affine V π eFG βfg _
    rw [hEqF, hEqFG]
    exact schemeIsoRestrictionSquare_inverse
      (twoAdicAffineSpecialFibreIso (U.ι ≫ π) eF
        (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd)).symm
      (twoAdicAffineSpecialFibreIso (V.ι ≫ π) eFG
        (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ (f * g) (d + d)
          (SetLike.GradedMul.mul_mem hf hg) (by omega))).symm
      specAff r hAffineInv
  have hRing := homogeneousTwoAdicAwayQuotient_toProduct
    𝒜 ρ I hI hgen f g d hf hg
  have hRing' :
      (homogeneousLocalization_toProduct ℬ (q f) (q g) d hfq hgq).comp
        eqF.toRingHom =
      eqFG.toRingHom.comp (affineFibreQuotientMap J s) := by
    simpa [eqF, eqFG, homogeneousTwoAdicAwayQuotientEquiv_any] using hRing
  have hMid : specAff ≫ midF.hom = midFG.hom ≫ specLoc := by
    rw [specMapIso_symm_hom, specMapIso_symm_hom]
    let fwdF := Spec.map (CommRingCat.ofHom eqF.toRingHom)
    let invF := Spec.map (CommRingCat.ofHom eqF.symm.toRingHom)
    let fwdFG := Spec.map (CommRingCat.ofHom eqFG.toRingHom)
    let invFG := Spec.map (CommRingCat.ofHom eqFG.symm.toRingHom)
    have hfwd : specLoc ≫ fwdF = fwdFG ≫ specAff := by
      rw [← Spec.map_comp, ← Spec.map_comp]
      exact congrArg (fun φ => Spec.map (CommRingCat.ofHom φ)) hRing'
    have hIdF : fwdF ≫ invF = 𝟙 _ := by
      rw [← Spec.map_comp]
      have hid :
          CommRingCat.ofHom eqF.symm.toRingHom ≫
            CommRingCat.ofHom eqF.toRingHom = 𝟙 _ := by
        ext z
        exact eqF.apply_symm_apply z
      rw [hid]
      simp
    have hIdFG : invFG ≫ fwdFG = 𝟙 _ := by
      rw [← Spec.map_comp]
      have hid :
          CommRingCat.ofHom eqFG.toRingHom ≫
            CommRingCat.ofHom eqFG.symm.toRingHom = 𝟙 _ := by
        ext z
        exact eqFG.symm_apply_apply z
      rw [hid]
      simp
    calc
      specAff ≫ invF = (invFG ≫ fwdFG) ≫ specAff ≫ invF := by
        rw [hIdFG, Category.id_comp]
      _ = invFG ≫ (fwdFG ≫ specAff) ≫ invF := by
        simp only [Category.assoc]
      _ = invFG ≫ (specLoc ≫ fwdF) ≫ invF := by rw [hfwd]
      _ = invFG ≫ specLoc ≫ (fwdF ≫ invF) := by
        simp only [Category.assoc]
      _ = invFG ≫ specLoc := by rw [hIdF, Category.comp_id]
  have hTarget : specLoc ≫ projF.inv = projFG.inv ≫ kQ :=
    schemeIsoRestrictionSquare_inverse projF projFG kQ specLoc
      (by
        simpa only [map_mul] using
          homogeneousProjBasicSchemeIso_toProduct
            ℬ (q f) (q g) d hfq hgq hd)
  dsimp
  dsimp at hF hFG
  rw [hF, hFG]
  change r ≫ (affF.hom ≫ midF.hom ≫ projF.inv) =
    (affFG.hom ≫ midFG.hom ≫ projFG.inv) ≫ kQ
  calc
    r ≫ (affF.hom ≫ midF.hom ≫ projF.inv) =
        (r ≫ affF.hom) ≫ midF.hom ≫ projF.inv := by
          simp only [Category.assoc]
    _ = (affFG.hom ≫ specAff) ≫ midF.hom ≫ projF.inv := by rw [hAffine]
    _ = affFG.hom ≫ (specAff ≫ midF.hom) ≫ projF.inv := by
          simp only [Category.assoc]
    _ = affFG.hom ≫ (midFG.hom ≫ specLoc) ≫ projF.inv := by rw [hMid]
    _ = affFG.hom ≫ midFG.hom ≫ (specLoc ≫ projF.inv) := by
          simp only [Category.assoc]
    _ = affFG.hom ≫ midFG.hom ≫ (projFG.inv ≫ kQ) := by rw [hTarget]
    _ = (affFG.hom ≫ midFG.hom ≫ projFG.inv) ≫ kQ := by
          simp only [Category.assoc]

/-- The named generator chart is the general nilpotence-free comparison. -/
theorem localSurfaceCentreGeneratorQuotientProjChartIso_eq
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 3) :
    let R := localSurfaceCoordinateRing W x y
    let q0 : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
    let I := localSurfaceCentreReesSpecialIdeal W x y
    let ρ : ℤ_[2] →+* R := q0.comp MvPolynomial.C
    let f := localSurfaceCentreReesGenerator W x y i
    localSurfaceCentreGeneratorQuotientProjChartIso W x y i =
      twoAdicChartQuotientProjIso 𝒜 I
        (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
        (ρ 2) rfl f 1
        (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
        (by decide)
        (ProjectiveSpectrum.basicOpen 𝒜 f)
        (homogeneousProjTwoAdicBase 𝒜 ρ)
        (homogeneousProjBasicSchemeIso 𝒜 f 1
          (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
          (by decide))
        ((homogeneousScalarAwayHom 𝒜 f).comp ρ) rfl
        (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f 1
          (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
          (by decide)) := by
  rfl

/-- Inclusion into a pulled-back chart, followed by pullback pasting,
is the product-open inclusion of the restricted fibres. -/
theorem twoAdicPullbackInclusion_pasting
    {X : Scheme} (π : X ⟶ Spec (CommRingCat.of ℤ_[2]))
    {T U : X.Opens} (hTU : T ≤ U) :
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    let k := (X.restrictFunctor.map (homOfLE hTU)).left
    let r := pullback.map (T.ι ≫ π) residue (U.ι ≫ π) residue
      k (𝟙 _) (𝟙 _)
      (by
        have h := X.restrictFunctor_map_ofRestrict (homOfLE hTU)
        simpa only [Category.comp_id, Category.assoc] using
          (congrArg (fun ψ => ψ ≫ π) h).symm)
      (by simp)
    pulledBackOpenInclusion p hTU ≫
        (pullbackRightPullbackFstIso π residue U.ι).hom =
      (pullbackRightPullbackFstIso π residue T.ι).hom ≫ r := by
  apply pullback.hom_ext
  · simp only [Category.assoc, pullbackRightPullbackFstIso_hom_fst,
      pulledBackOpenInclusion, pullback.map, pullback.lift_fst_assoc,
      pullback.lift_fst, Category.comp_id]
    rw [← Category.assoc, pullbackRightPullbackFstIso_hom_fst]
  · simp only [Category.assoc, pullbackRightPullbackFstIso_hom_snd,
      pulledBackOpenInclusion, pullback.map, pullback.lift_snd_assoc,
      pullback.lift_snd, Category.comp_id]

set_option maxHeartbeats 4000000 in
/-- The cover-level chart comparison, pasting included, respects
product-open restriction. -/
theorem twoAdicCoverChartIso_toProduct
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (ρ : ℤ_[2] →+* R)
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (hgen : I = Ideal.span {algebraMap R A (ρ 2)})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let ℬ := homogeneousQuotientComponent 𝒜 I
    let q := Ideal.Quotient.mk I
    let X := AlgebraicGeometry.«Proj» 𝒜
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
    let Q := AlgebraicGeometry.«Proj» ℬ
    let UF : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
    let UV : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    let kQ := (Q.restrictFunctor.map (homOfLE
      (show UV ≤ UF from by
        change ProjectiveSpectrum.basicOpen ℬ (q (f * g)) ≤
          ProjectiveSpectrum.basicOpen ℬ (q f)
        rw [map_mul]
        exact ProjectiveSpectrum.basicOpen_mul_le_left ℬ (q f) (q g)))).left
    let chartF :=
      (pullbackRightPullbackFstIso π residue U.ι).trans
        (twoAdicChartQuotientProjIso 𝒜 I hI (ρ 2) hgen f d hf hd U π
          (homogeneousProjBasicSchemeIso 𝒜 f d hf hd)
          ((homogeneousScalarAwayHom 𝒜 f).comp ρ) rfl
          (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd))
    let chartFG :=
      (pullbackRightPullbackFstIso π residue V.ι).trans
        (twoAdicChartQuotientProjIso 𝒜 I hI (ρ 2) hgen (f * g) (d + d)
          (SetLike.GradedMul.mul_mem hf hg) (by omega) V π
          (homogeneousProjBasicSchemeIso 𝒜 (f * g) (d + d)
            (SetLike.GradedMul.mul_mem hf hg) (by omega))
          ((homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ) rfl
          (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ (f * g) (d + d)
            (SetLike.GradedMul.mul_mem hf hg) (by omega)))
    pulledBackOpenInclusion p
        (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g) ≫ chartF.hom =
      chartFG.hom ≫ kQ := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  have hPaste := twoAdicPullbackInclusion_pasting π
    (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g)
  have hChart := twoAdicChartQuotientProjIso_toProduct
    𝒜 ρ I hI hgen f g d hf hg hd
  dsimp at hPaste hChart ⊢
  rw [← Category.assoc]
  rw [hPaste]
  rw [Category.assoc, hChart, Category.assoc]

#print axioms twoAdicChartQuotientProjIso_factor
#print axioms specMapIso_symm_hom
#print axioms twoAdicChartQuotientProjIso_toProduct
#print axioms localSurfaceCentreGeneratorQuotientProjChartIso_eq
#print axioms twoAdicPullbackInclusion_pasting
#print axioms twoAdicCoverChartIso_toProduct

end Beal.General
