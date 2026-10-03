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

/-- The cover-level chart isomorphism, packaged so a swap of the
product factors is a transport of this one term. -/
noncomputable def twoAdicCoverChartIso
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (ρ : ℤ_[2] →+* R)
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (hgen : I = Ideal.span {algebraMap R A (ρ 2)})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d) :=
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 f
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  (pullbackRightPullbackFstIso π residue U.ι).trans
    (twoAdicChartQuotientProjIso 𝒜 I hI (ρ 2) hgen f d hf hd U π
      (homogeneousProjBasicSchemeIso 𝒜 f d hf hd)
      ((homogeneousScalarAwayHom 𝒜 f).comp ρ) rfl
      (homogeneousProjBasicTwoAdic_baseMap 𝒜 ρ f d hf hd))

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
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
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
    pulledBackOpenInclusion p
        (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g) ≫
      (twoAdicCoverChartIso 𝒜 ρ I hI hgen f d hf hd).hom =
      (twoAdicCoverChartIso 𝒜 ρ I hI hgen (f * g) (d + d)
        (SetLike.GradedMul.mul_mem hf hg) (by omega)).hom ≫ kQ := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  have hPaste := twoAdicPullbackInclusion_pasting π
    (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g)
  have hChart := twoAdicChartQuotientProjIso_toProduct
    𝒜 ρ I hI hgen f g d hf hg hd
  dsimp [twoAdicCoverChartIso] at hPaste hChart ⊢
  rw [← Category.assoc]
  rw [hPaste]
  rw [Category.assoc, hChart, Category.assoc]

/-- Swapping the factors of a product does not change the cover-level
chart isomorphism. -/
theorem twoAdicCoverChartIso_mul_comm
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (ρ : ℤ_[2] →+* R)
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (hgen : I = Ideal.span {algebraMap R A (ρ 2)})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) :
    HEq
      (twoAdicCoverChartIso 𝒜 ρ I hI hgen (f * g) (d + d)
        (SetLike.GradedMul.mul_mem hf hg) (by omega))
      (twoAdicCoverChartIso 𝒜 ρ I hI hgen (g * f) (d + d)
        (SetLike.GradedMul.mul_mem hg hf) (by omega)) := by
  congr 1
  · exact mul_comm f g
  · apply proof_irrel_heq

/-- The first projection of a product-open intersection is the
inclusion into the first pulled-back chart. -/
theorem twoAdicProductOverlap_hom_fst
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (π : AlgebraicGeometry.«Proj» 𝒜 ⟶ Spec (CommRingCat.of ℤ_[2]))
    (f g : A) :
    let X := AlgebraicGeometry.«Proj» 𝒜
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
    let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    (pulledBackOpenEqInfIso p T U V
        (ProjectiveSpectrum.basicOpen_mul 𝒜 f g)).hom ≫
      pullback.fst (pullback.snd U.ι p) (pullback.snd V.ι p) =
    pulledBackOpenInclusion p
      (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g) := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let p := pullback.fst π residue
  apply (cancel_mono (pullback.snd U.ι p)).mp
  rw [Category.assoc]
  change (pulledBackOpenEqInfIso p T U V
      (ProjectiveSpectrum.basicOpen_mul 𝒜 f g)).hom ≫
      pullback.fst (pullback.snd U.ι p) (pullback.snd V.ι p) ≫
        pullback.snd U.ι p =
    pulledBackOpenInclusion p
      (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 f g) ≫
      pullback.snd U.ι p
  rw [pulledBackOpenEqInfIso_hom_fst_snd]
  unfold pulledBackOpenInclusion
  simp only [pullback.map, pullback.lift_snd, Category.comp_id]

/-- The second projection of a product-open intersection is the
inclusion into the second pulled-back chart. -/
theorem twoAdicProductOverlap_hom_snd
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (π : AlgebraicGeometry.«Proj» 𝒜 ⟶ Spec (CommRingCat.of ℤ_[2]))
    (f g : A) :
    let X := AlgebraicGeometry.«Proj» 𝒜
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
    let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    (pulledBackOpenEqInfIso p T U V
        (ProjectiveSpectrum.basicOpen_mul 𝒜 f g)).hom ≫
      pullback.snd (pullback.snd U.ι p) (pullback.snd V.ι p) =
    pulledBackOpenInclusion p
      (ProjectiveSpectrum.basicOpen_mul_le_right 𝒜 f g) := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let p := pullback.fst π residue
  apply (cancel_mono (pullback.snd V.ι p)).mp
  rw [Category.assoc]
  change (pulledBackOpenEqInfIso p T U V
      (ProjectiveSpectrum.basicOpen_mul 𝒜 f g)).hom ≫
      pullback.snd (pullback.snd U.ι p) (pullback.snd V.ι p) ≫
        pullback.snd V.ι p =
    pulledBackOpenInclusion p
      (ProjectiveSpectrum.basicOpen_mul_le_right 𝒜 f g) ≫
      pullback.snd V.ι p
  rw [pulledBackOpenEqInfIso_hom_snd_snd]
  unfold pulledBackOpenInclusion
  simp only [pullback.map, pullback.lift_snd, Category.comp_id]

set_option maxHeartbeats 4000000 in
/-- Product-open restriction into the second factor, obtained from the
first-factor square by swapping the factors with `mul_comm`. -/
theorem twoAdicCoverChartIso_toProduct_right
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
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
    let Q := AlgebraicGeometry.«Proj» ℬ
    let UG : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q g)
    let UT : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    let k := (Q.restrictFunctor.map (homOfLE
      (show UT ≤ UG from by
        change ProjectiveSpectrum.basicOpen ℬ (q (f * g)) ≤
          ProjectiveSpectrum.basicOpen ℬ (q g)
        rw [map_mul]
        exact ProjectiveSpectrum.basicOpen_mul_le_right ℬ (q f) (q g)))).left
    pulledBackOpenInclusion p
        (ProjectiveSpectrum.basicOpen_mul_le_right 𝒜 f g) ≫
      (twoAdicCoverChartIso 𝒜 ρ I hI hgen g d hg hd).hom =
    (twoAdicCoverChartIso 𝒜 ρ I hI hgen (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg) (by omega)).hom ≫ k := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let X := AlgebraicGeometry.«Proj» 𝒜
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let Tsource : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (g * f)
  let Q := AlgebraicGeometry.«Proj» ℬ
  let UG : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q g)
  let UT : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
  let UT' : Q.Opens := ProjectiveSpectrum.basicOpen ℬ (q (g * f))
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let p := pullback.fst π residue
  let a : UT ≤ UG := by
    change ProjectiveSpectrum.basicOpen ℬ (q (f * g)) ≤
      ProjectiveSpectrum.basicOpen ℬ (q g)
    rw [map_mul]
    exact ProjectiveSpectrum.basicOpen_mul_le_right ℬ (q f) (q g)
  let b : UT' ≤ UG := by
    change ProjectiveSpectrum.basicOpen ℬ (q (g * f)) ≤
      ProjectiveSpectrum.basicOpen ℬ (q g)
    rw [map_mul]
    exact ProjectiveSpectrum.basicOpen_mul_le_left ℬ (q g) (q f)
  let k := (Q.restrictFunctor.map (homOfLE a)).left
  let k' := (Q.restrictFunctor.map (homOfLE b)).left
  have hS : pullback T.ι p = pullback Tsource.ι p :=
    congrArg (fun t : X.Opens => pullback t.ι p)
      (by dsimp [T, Tsource]; rw [mul_comm f g])
  have hCod : UT.toScheme = UT'.toScheme :=
    congrArg (fun t : Q.Opens => t.toScheme)
      (by dsimp [UT, UT']; rw [mul_comm f g])
  have hleft := twoAdicCoverChartIso_toProduct
    𝒜 ρ I hI hgen g f d hg hf hd
  exact schemeIsoRestrictionSquare_of_heq
    (pulledBackOpenInclusion p
      (ProjectiveSpectrum.basicOpen_mul_le_right 𝒜 f g))
    (pulledBackOpenInclusion p
      (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 g f))
    (twoAdicCoverChartIso 𝒜 ρ I hI hgen g d hg hd)
    (twoAdicCoverChartIso 𝒜 ρ I hI hgen (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg) (by omega))
    (twoAdicCoverChartIso 𝒜 ρ I hI hgen (g * f) (d + d)
      (SetLike.GradedMul.mul_mem hg hf) (by omega))
    k k' hS hCod
    (pulledBackOpenInclusion_heq p (by rw [mul_comm f g]) _ _)
    (twoAdicCoverChartIso_mul_comm 𝒜 ρ I hI hgen f g d hf hg hd)
    (openRestriction_heq (by dsimp [UT, UT']; rw [mul_comm f g]) a b)
    hleft

/-- The graded-quotient product chart is the intersection of its two
basic opens. No nilpotence hypothesis is used. -/
noncomputable def twoAdicQuotientProductOverlapIso
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜) (f g : A) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let ℬ := homogeneousQuotientComponent 𝒜 I
    let q := Ideal.Quotient.mk I
    let X := AlgebraicGeometry.«Proj» ℬ
    let U : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
    let V : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q g)
    let T : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
    T.toScheme ≅ pullback U.ι V.ι := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  have hT :
      ProjectiveSpectrum.basicOpen ℬ (q (f * g)) =
        ProjectiveSpectrum.basicOpen ℬ (q f) ⊓
          ProjectiveSpectrum.basicOpen ℬ (q g) := by
    rw [map_mul]
    exact ProjectiveSpectrum.basicOpen_mul ℬ (q f) (q g)
  exact openEqInfPullbackIso _ _ _ hT

/-- The quotient product overlap projects to the first basic open by
ordinary restriction. -/
theorem twoAdicQuotientProductOverlapIso_hom_fst
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜) (f g : A) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let ℬ := homogeneousQuotientComponent 𝒜 I
    let q := Ideal.Quotient.mk I
    let X := AlgebraicGeometry.«Proj» ℬ
    let U : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
    let V : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q g)
    let T : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
    (twoAdicQuotientProductOverlapIso 𝒜 I hI f g).hom ≫
        pullback.fst U.ι V.ι =
      (X.restrictFunctor.map (homOfLE
        (show T ≤ U from by
          change ProjectiveSpectrum.basicOpen ℬ (q (f * g)) ≤
            ProjectiveSpectrum.basicOpen ℬ (q f)
          rw [map_mul]
          exact ProjectiveSpectrum.basicOpen_mul_le_left ℬ (q f) (q g)))).left := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let X := AlgebraicGeometry.«Proj» ℬ
  let U : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
  let V : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q g)
  let T : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
  have hT : T = U ⊓ V := by
    dsimp [T, U, V]
    rw [map_mul]
    exact ProjectiveSpectrum.basicOpen_mul ℬ (q f) (q g)
  have hU : T ≤ U := hT.le.trans inf_le_left
  exact openEqInfPullbackIso_hom_fst T U V hT hU

/-- The second projection is ordinary restriction to the second basic open. -/
theorem twoAdicQuotientProductOverlapIso_hom_snd
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜) (f g : A) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let ℬ := homogeneousQuotientComponent 𝒜 I
    let q := Ideal.Quotient.mk I
    let X := AlgebraicGeometry.«Proj» ℬ
    let U : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
    let V : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q g)
    let T : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
    (twoAdicQuotientProductOverlapIso 𝒜 I hI f g).hom ≫
        pullback.snd U.ι V.ι =
      (X.restrictFunctor.map (homOfLE
        (show T ≤ V from by
          change ProjectiveSpectrum.basicOpen ℬ (q (f * g)) ≤
            ProjectiveSpectrum.basicOpen ℬ (q g)
          rw [map_mul]
          exact ProjectiveSpectrum.basicOpen_mul_le_right ℬ (q f) (q g)))).left := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let X := AlgebraicGeometry.«Proj» ℬ
  let U : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q f)
  let V : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q g)
  let T : X.Opens := ProjectiveSpectrum.basicOpen ℬ (q (f * g))
  have hT : T = U ⊓ V := by
    dsimp [T, U, V]
    rw [map_mul]
    exact ProjectiveSpectrum.basicOpen_mul ℬ (q f) (q g)
  have hV : T ≤ V := hT.le.trans inf_le_right
  exact openEqInfPullbackIso_hom_snd T U V hT hV

/-- The cover-chart comparison, transported through both overlap
identifications, is a scheme isomorphism of the two cover intersections. -/
noncomputable def twoAdicCoverOverlapIso
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
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    let UF : (AlgebraicGeometry.«Proj» ℬ).Opens :=
      ProjectiveSpectrum.basicOpen ℬ (q f)
    let UG : (AlgebraicGeometry.«Proj» ℬ).Opens :=
      ProjectiveSpectrum.basicOpen ℬ (q g)
    pullback (pullback.snd U.ι p) (pullback.snd V.ι p) ≅
      pullback UF.ι UG.ι := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let X := AlgebraicGeometry.«Proj» 𝒜
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let p := pullback.fst π residue
  exact (pulledBackOpenEqInfIso p T U V
      (ProjectiveSpectrum.basicOpen_mul 𝒜 f g)).symm.trans
    ((twoAdicCoverChartIso 𝒜 ρ I hI hgen (f * g) (d + d)
        (SetLike.GradedMul.mul_mem hf hg) (by omega)).trans
      (twoAdicQuotientProductOverlapIso 𝒜 I hI f g))

set_option maxHeartbeats 4000000 in
/-- The first overlap projection intertwines the cover chart with the
quotient-`Proj` projection. -/
theorem twoAdicCoverOverlap_fst
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
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    let UF : (AlgebraicGeometry.«Proj» ℬ).Opens :=
      ProjectiveSpectrum.basicOpen ℬ (q f)
    let UG : (AlgebraicGeometry.«Proj» ℬ).Opens :=
      ProjectiveSpectrum.basicOpen ℬ (q g)
    pullback.fst (pullback.snd U.ι p) (pullback.snd V.ι p) ≫
        (twoAdicCoverChartIso 𝒜 ρ I hI hgen f d hf hd).hom =
      (twoAdicCoverOverlapIso 𝒜 ρ I hI hgen f g d hf hg hd).hom ≫
        pullback.fst UF.ι UG.ι := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let X := AlgebraicGeometry.«Proj» 𝒜
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let p := pullback.fst π residue
  let a := pulledBackOpenEqInfIso p T U V
    (ProjectiveSpectrum.basicOpen_mul 𝒜 f g)
  let b := twoAdicCoverChartIso 𝒜 ρ I hI hgen (f * g) (d + d)
    (SetLike.GradedMul.mul_mem hf hg) (by omega)
  let c := twoAdicQuotientProductOverlapIso 𝒜 I hI f g
  have hSource := twoAdicProductOverlap_hom_fst 𝒜 π f g
  have hNatural := twoAdicCoverChartIso_toProduct
    𝒜 ρ I hI hgen f g d hf hg hd
  have hTarget := twoAdicQuotientProductOverlapIso_hom_fst 𝒜 I hI f g
  have hComp : a.hom ≫ (a.symm.trans (b.trans c)).hom =
      b.hom ≫ c.hom := by
    simp only [Iso.trans_hom, Iso.symm_hom, ← Category.assoc,
      Iso.hom_inv_id, Category.id_comp]
  dsimp only [] at hSource hNatural hTarget ⊢
  apply (cancel_epi a.hom).mp
  change (a.hom ≫ pullback.fst _ _) ≫
      (twoAdicCoverChartIso 𝒜 ρ I hI hgen f d hf hd).hom =
    (a.hom ≫ (a.symm.trans (b.trans c)).hom) ≫ pullback.fst _ _
  rw [hSource, hComp, hNatural]
  simp only [Category.assoc, hTarget]

set_option maxHeartbeats 4000000 in
/-- The second overlap projection intertwines the cover chart with the
quotient-`Proj` projection. The right-hand factor is the left-hand
square after `mul_comm`. -/
theorem twoAdicCoverOverlap_snd
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
    let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
    let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
    let π := homogeneousProjTwoAdicBase 𝒜 ρ
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let p := pullback.fst π residue
    let UF : (AlgebraicGeometry.«Proj» ℬ).Opens :=
      ProjectiveSpectrum.basicOpen ℬ (q f)
    let UG : (AlgebraicGeometry.«Proj» ℬ).Opens :=
      ProjectiveSpectrum.basicOpen ℬ (q g)
    pullback.snd (pullback.snd U.ι p) (pullback.snd V.ι p) ≫
        (twoAdicCoverChartIso 𝒜 ρ I hI hgen g d hg hd).hom =
      (twoAdicCoverOverlapIso 𝒜 ρ I hI hgen f g d hf hg hd).hom ≫
        pullback.snd UF.ι UG.ι := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let X := AlgebraicGeometry.«Proj» 𝒜
  let U : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 f
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let T : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 (f * g)
  let π := homogeneousProjTwoAdicBase 𝒜 ρ
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let p := pullback.fst π residue
  let a := pulledBackOpenEqInfIso p T U V
    (ProjectiveSpectrum.basicOpen_mul 𝒜 f g)
  let b := twoAdicCoverChartIso 𝒜 ρ I hI hgen (f * g) (d + d)
    (SetLike.GradedMul.mul_mem hf hg) (by omega)
  let c := twoAdicQuotientProductOverlapIso 𝒜 I hI f g
  have hSource := twoAdicProductOverlap_hom_snd 𝒜 π f g
  have hNatural := twoAdicCoverChartIso_toProduct_right
    𝒜 ρ I hI hgen f g d hf hg hd
  have hTarget := twoAdicQuotientProductOverlapIso_hom_snd 𝒜 I hI f g
  have hComp : a.hom ≫ (a.symm.trans (b.trans c)).hom =
      b.hom ≫ c.hom := by
    simp only [Iso.trans_hom, Iso.symm_hom, ← Category.assoc,
      Iso.hom_inv_id, Category.id_comp]
  dsimp only [] at hSource hNatural hTarget ⊢
  apply (cancel_epi a.hom).mp
  change (a.hom ≫ pullback.snd _ _) ≫
      (twoAdicCoverChartIso 𝒜 ρ I hI hgen g d hg hd).hom =
    (a.hom ≫ (a.symm.trans (b.trans c)).hom) ≫ pullback.snd _ _
  rw [hSource, hComp, hNatural]
  simp only [Category.assoc, hTarget]

/-- Each named generator chart of the actual special fibre is the
cover-level comparison for that Rees generator. -/
theorem localSurfaceCentreGeneratorFibreQuotientOpenIso_eq
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
    localSurfaceCentreGeneratorFibreQuotientOpenIso W x y i =
      twoAdicCoverChartIso 𝒜 ρ I
        (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y) rfl
        (localSurfaceCentreReesGenerator W x y i) 1
        (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
        (by decide) := by
  rfl

set_option maxHeartbeats 8000000 in
set_option synthInstance.maxHeartbeats 400000 in
/-- The three pulled-back generator charts glue to an isomorphism of
the actual special fibre with `Proj` of the Rees algebra modulo `(2)`. -/
noncomputable def surfaceCentreSpecialFibreSchemeIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreSpecialFibreScheme W x y ≅
      localSurfaceCentreReesSpecialProj W x y := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let R := localSurfaceCoordinateRing W x y
  let q0 : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  let ρ : ℤ_[2] →+* R := q0.comp MvPolynomial.C
  let hI := localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y
  let C := localSurfaceCentreSpecialFibreOpenCover W x y
  let D := localSurfaceCentreReesSpecialProjOpenCover W x y
  let gen := localSurfaceCentreReesGenerator W x y
  let mem : ∀ i : Fin 3, gen i ∈ 𝒜 1 :=
    fun i => localSurfaceCentreReesGenerator_mem_degree_one W x y i
  let e : ∀ i : Fin 3, C.obj i ≅ D.obj i := fun i =>
    twoAdicCoverChartIso 𝒜 ρ I hI rfl (gen i) 1 (mem i) (by decide)
  let o : ∀ i j : Fin 3,
      pullback (C.map i) (C.map j) ≅ pullback (D.map i) (D.map j) :=
    fun i j => twoAdicCoverOverlapIso 𝒜 ρ I hI rfl
      (gen i) (gen j) 1 (mem i) (mem j) (by decide)
  have hF : ∀ i j : Fin 3,
      pullback.fst (C.map i) (C.map j) ≫ (e i).hom =
        (o i j).hom ≫ pullback.fst (D.map i) (D.map j) := by
    intro i j
    exact twoAdicCoverOverlap_fst 𝒜 ρ I hI rfl
      (gen i) (gen j) 1 (mem i) (mem j) (by decide)
  have hS : ∀ i j : Fin 3,
      pullback.snd (C.map i) (C.map j) ≫ (e j).hom =
        (o i j).hom ≫ pullback.snd (D.map i) (D.map j) := by
    intro i j
    exact twoAdicCoverOverlap_snd 𝒜 ρ I hI rfl
      (gen i) (gen j) 1 (mem i) (mem j) (by decide)
  let f : ∀ i : Fin 3, C.obj i ⟶ localSurfaceCentreReesSpecialProj W x y :=
    fun i => (e i).hom ≫ D.map i
  let g : ∀ i : Fin 3, D.obj i ⟶ localSurfaceCentreSpecialFibreScheme W x y :=
    fun i => (e i).inv ≫ C.map i
  have hf : ∀ i j, pullback.fst (C.map i) (C.map j) ≫ f i =
      pullback.snd (C.map i) (C.map j) ≫ f j := by
    intro i j
    calc
      pullback.fst (C.map i) (C.map j) ≫ f i =
          (pullback.fst (C.map i) (C.map j) ≫ (e i).hom) ≫ D.map i := by
        simp only [f, Category.assoc]
      _ = ((o i j).hom ≫ pullback.fst (D.map i) (D.map j)) ≫ D.map i := by
        rw [hF i j]
      _ = ((o i j).hom ≫ pullback.snd (D.map i) (D.map j)) ≫ D.map j := by
        simp only [Category.assoc, pullback.condition]
      _ = (pullback.snd (C.map i) (C.map j) ≫ (e j).hom) ≫ D.map j := by
        rw [hS i j]
      _ = pullback.snd (C.map i) (C.map j) ≫ f j := by
        simp only [f, Category.assoc]
  have hg : ∀ i j, pullback.fst (D.map i) (D.map j) ≫ g i =
      pullback.snd (D.map i) (D.map j) ≫ g j := by
    intro i j
    have hFi : pullback.fst (D.map i) (D.map j) ≫ (e i).inv =
        (o i j).inv ≫ pullback.fst (C.map i) (C.map j) :=
      schemeIsoRestrictionSquare_inverse (e i) (o i j) _ _ (hF i j)
    have hSi : pullback.snd (D.map i) (D.map j) ≫ (e j).inv =
        (o i j).inv ≫ pullback.snd (C.map i) (C.map j) :=
      schemeIsoRestrictionSquare_inverse (e j) (o i j) _ _ (hS i j)
    calc
      pullback.fst (D.map i) (D.map j) ≫ g i =
          (pullback.fst (D.map i) (D.map j) ≫ (e i).inv) ≫ C.map i := by
        simp only [g, Category.assoc]
      _ = ((o i j).inv ≫ pullback.fst (C.map i) (C.map j)) ≫ C.map i := by
        rw [hFi]
      _ = ((o i j).inv ≫ pullback.snd (C.map i) (C.map j)) ≫ C.map j := by
        simp only [Category.assoc, pullback.condition]
      _ = (pullback.snd (D.map i) (D.map j) ≫ (e j).inv) ≫ C.map j := by
        rw [hSi]
      _ = pullback.snd (D.map i) (D.map j) ≫ g j := by
        simp only [g, Category.assoc]
  let F := C.glueMorphisms f hf
  let G := D.glueMorphisms g hg
  refine { hom := F, inv := G, hom_inv_id := ?_, inv_hom_id := ?_ }
  · apply C.hom_ext
    intro i
    change C.map i ≫ (F ≫ G) = C.map i ≫ 𝟙 _
    rw [← Category.assoc, C.ι_glueMorphisms, Category.assoc,
      D.ι_glueMorphisms]
    simp only [f, g, ← Category.assoc, Iso.hom_inv_id,
      Category.id_comp, Category.comp_id]
  · apply D.hom_ext
    intro i
    change D.map i ≫ (G ≫ F) = D.map i ≫ 𝟙 _
    rw [← Category.assoc, D.ι_glueMorphisms, Category.assoc,
      C.ι_glueMorphisms]
    simp only [f, g, ← Category.assoc, Iso.inv_hom_id,
      Category.id_comp, Category.comp_id]

#print axioms twoAdicChartQuotientProjIso_factor
#print axioms specMapIso_symm_hom
#print axioms twoAdicChartQuotientProjIso_toProduct
#print axioms localSurfaceCentreGeneratorQuotientProjChartIso_eq
#print axioms twoAdicPullbackInclusion_pasting
#print axioms twoAdicCoverChartIso_toProduct
#print axioms twoAdicCoverChartIso_mul_comm
#print axioms twoAdicProductOverlap_hom_fst
#print axioms twoAdicProductOverlap_hom_snd
#print axioms twoAdicCoverChartIso_toProduct_right
#print axioms twoAdicQuotientProductOverlapIso_hom_fst
#print axioms twoAdicQuotientProductOverlapIso_hom_snd
#print axioms twoAdicCoverOverlap_fst
#print axioms twoAdicCoverOverlap_snd
#print axioms localSurfaceCentreGeneratorFibreQuotientOpenIso_eq
#print axioms surfaceCentreSpecialFibreSchemeIso

end Beal.General
