import Beal.B17_X0Moduli

namespace Beal17Mazur

/-- The canonical nonzero rational two-torsion point, base-changed to `ℚ̄`.

The point is the displayed Frey point `(0, 0)` from the proved full-`E[2]`
classification.  Choosing this one cyclic subgroup does not assert that all
of `E[2] ≃ V₄` is cyclic.
-/
noncomputable def canonicalGeometricTwoPoint
    (context : FreyMazurContext) : GeometricFreyPoint context :=
  WeierstrassCurve.Affine.Point.baseChange
    (freyRationalCurve context.A context.B context.x context.y)
    ℚ (AlgebraicClosure ℚ)
    (freyTwoTorsionZero context.A context.B context.x context.y
      context.beal.1 context.beal.2.1)

theorem canonicalGeometricTwoPoint_ne_zero
    (context : FreyMazurContext) :
    canonicalGeometricTwoPoint context ≠ 0 := by
  intro h
  have hmap :
      (WeierstrassCurve.Affine.Point.baseChange
        (freyRationalCurve context.A context.B context.x context.y)
        ℚ (AlgebraicClosure ℚ))
          (freyTwoTorsionZero context.A context.B context.x context.y
            context.beal.1 context.beal.2.1) =
      (WeierstrassCurve.Affine.Point.baseChange
        (freyRationalCurve context.A context.B context.x context.y)
        ℚ (AlgebraicClosure ℚ)) 0 := by
    simpa [canonicalGeometricTwoPoint] using h
  have hbase :=
    (WeierstrassCurve.Affine.Point.map_injective
      (freyRationalCurve context.A context.B context.x context.y)
      (Algebra.ofId ℚ (AlgebraicClosure ℚ))) hmap
  exact
    (freyTwoTorsionZero_ne_zero context.A context.B context.x context.y
      context.beal.1 context.beal.2.1) (by simpa using hbase)

theorem canonicalGeometricTwoPoint_add_self
    (context : FreyMazurContext) :
    canonicalGeometricTwoPoint context +
      canonicalGeometricTwoPoint context = 0 := by
  change
    (WeierstrassCurve.Affine.Point.baseChange
      (freyRationalCurve context.A context.B context.x context.y)
      ℚ (AlgebraicClosure ℚ)) _ +
    (WeierstrassCurve.Affine.Point.baseChange
      (freyRationalCurve context.A context.B context.x context.y)
      ℚ (AlgebraicClosure ℚ)) _ = 0
  rw [← map_add, freyTwoTorsionZero_add_self]
  rfl

theorem canonicalGeometricTwoPoint_fixed
    (context : FreyMazurContext)
    (σ : Field.absoluteGaloisGroup ℚ) :
    galoisAction context σ (canonicalGeometricTwoPoint context) =
      canonicalGeometricTwoPoint context := by
  exact
    WeierstrassCurve.Affine.Point.map_baseChange
      (freyRationalCurve context.A context.B context.x context.y)
      σ.toAlgHom
      (freyTwoTorsionZero context.A context.B context.x context.y
        context.beal.1 context.beal.2.1)

theorem canonicalGeometricTwoPoint_order
    (context : FreyMazurContext) :
    addOrderOf (canonicalGeometricTwoPoint context) = 2 := by
  apply addOrderOf_eq_of_nsmul_and_div_prime_nsmul (n := 2)
  · norm_num
  · simpa [two_nsmul] using canonicalGeometricTwoPoint_add_self context
  · intro q hq hqdiv
    rcases (Nat.dvd_prime Nat.prime_two).mp hqdiv with hqeq | hqeq
    · exact (hq.ne_one hqeq).elim
    · subst q
      simpa using canonicalGeometricTwoPoint_ne_zero context

/-- The chosen rational cyclic order-two subgroup in geometric points. -/
noncomputable def canonicalTwoSubgroup
    (context : FreyMazurContext) :
    AddSubgroup (GeometricFreyPoint context) :=
  AddSubgroup.zmultiples (canonicalGeometricTwoPoint context)

theorem canonicalTwoSubgroup_card
    (context : FreyMazurContext) :
    Nat.card (canonicalTwoSubgroup context) = 2 := by
  rw [canonicalTwoSubgroup, Nat.card_zmultiples,
    canonicalGeometricTwoPoint_order]

theorem canonicalTwoSubgroup_stable
    (context : FreyMazurContext)
    (σ : Field.absoluteGaloisGroup ℚ)
    {point : GeometricFreyPoint context}
    (hpoint : point ∈ canonicalTwoSubgroup context) :
    galoisAction context σ point ∈ canonicalTwoSubgroup context := by
  rw [canonicalTwoSubgroup, AddSubgroup.mem_zmultiples_iff] at hpoint ⊢
  rcases hpoint with ⟨n, rfl⟩
  refine ⟨n, ?_⟩
  rw [map_zsmul, canonicalGeometricTwoPoint_fixed]

/-- Addition identifies two disjoint subgroups with their internal sum. -/
noncomputable def addSupEquivOfDisjoint
    {G : Type*} [AddCommGroup G]
    (H K : AddSubgroup G) (hdisjoint : Disjoint H K) :
    H × K ≃ (H ⊔ K : AddSubgroup G) :=
  Equiv.ofBijective
    (fun pair : H × K =>
      ⟨(pair.1 : G) + pair.2,
        AddSubgroup.add_mem_sup pair.1.property pair.2.property⟩)
    ⟨by
      intro left right heq
      apply AddSubgroup.add_injective_of_disjoint hdisjoint
      exact congrArg Subtype.val heq,
    by
      rintro ⟨point, hpoint⟩
      rcases AddSubgroup.mem_sup'.mp hpoint with ⟨left, right, hsum⟩
      exact ⟨(left, right), Subtype.ext hsum⟩⟩

theorem mixedSubgroup_card
    (context : FreyMazurContext)
    (kernel : RationalPIsogenyKernel context)
    (hdisjoint :
      Disjoint (canonicalTwoSubgroup context) kernel.carrier) :
    Nat.card
      (canonicalTwoSubgroup context ⊔ kernel.carrier :
        AddSubgroup (GeometricFreyPoint context)) =
      2 * context.p := by
  rw [← Nat.card_congr
      (addSupEquivOfDisjoint
        (canonicalTwoSubgroup context) kernel.carrier hdisjoint),
    Nat.card_prod, canonicalTwoSubgroup_card, kernel.card_eq_prime]

/-- A rational `p`-isogeny kernel yields the honest mixed cyclic level datum
mathematically corresponding to a rational point of `X₀(2p)`.

This theorem constructs only the minimal moduli datum.  It does not construct
the scheme-level modular curve, a quotient isogeny, or a compactified
non-cuspidal rational point.
-/
theorem kernelToX0TwoPModuli
    (context : FreyMazurContext)
    (kernel : RationalPIsogenyKernel context) :
    Nonempty (X0ModuliDatum context (2 * context.p)) := by
  have hTwoFinite :
      IsOfFinAddOrder (canonicalGeometricTwoPoint context) :=
    isOfFinAddOrder_iff_nsmul_eq_zero.mpr
      ⟨2, by norm_num,
        by simpa [two_nsmul] using
          canonicalGeometricTwoPoint_add_self context⟩
  let two := canonicalTwoSubgroup context
  letI : Fintype two :=
    (show (↑two : Set (GeometricFreyPoint context)).Finite by
      dsimp only [two, canonicalTwoSubgroup]
      exact hTwoFinite.finite_zmultiples).fintype
  letI : Finite kernel.carrier := kernel.finite_carrier
  letI : Fintype kernel.carrier := Fintype.ofFinite kernel.carrier
  letI : Fact context.p.Prime := ⟨context.prime⟩
  have hKernelCard : Fintype.card kernel.carrier = context.p := by
    rw [← Nat.card_eq_fintype_card]
    exact kernel.card_eq_prime
  letI : IsAddCyclic kernel.carrier :=
    isAddCyclic_of_prime_card hKernelCard
  obtain ⟨kernelGenerator, hKernelGenerator⟩ :=
    IsAddCyclic.exists_generator (α := kernel.carrier)
  have hKernelOrderSubtype :
      addOrderOf kernelGenerator = context.p := by
    rw [← hKernelCard]
    exact
      addOrderOf_eq_card_of_forall_mem_zmultiples hKernelGenerator
  have hKernelOrder :
      addOrderOf (kernelGenerator : GeometricFreyPoint context) =
        context.p := by
    rw [AddSubgroup.addOrderOf_coe]
    exact hKernelOrderSubtype
  have hCoprime : Nat.Coprime 2 context.p := by
    apply Nat.Coprime.symm
    rw [context.prime.coprime_iff_not_dvd]
    intro hdiv
    have : context.p ≤ 2 := Nat.le_of_dvd (by norm_num) hdiv
    have hp5 := context.five_le
    omega
  have hDisjoint : Disjoint two kernel.carrier := by
    rw [disjoint_iff]
    apply add_inf_eq_bot_of_coprime
    rw [show Nat.card two = 2 by
          exact canonicalTwoSubgroup_card context,
      kernel.card_eq_prime]
    exact hCoprime
  let mixed := two ⊔ kernel.carrier
  let sumMap : two × kernel.carrier → mixed :=
    fun pair =>
      ⟨(pair.1 : GeometricFreyPoint context) + pair.2,
        AddSubgroup.add_mem_sup pair.1.property pair.2.property⟩
  have hSumMapSurjective : Function.Surjective sumMap := by
    rintro ⟨point, hpoint⟩
    rcases AddSubgroup.mem_sup'.mp hpoint with ⟨left, right, hsum⟩
    exact ⟨(left, right), Subtype.ext hsum⟩
  letI : Finite mixed := Finite.of_surjective sumMap hSumMapSurjective
  let generatorPoint : GeometricFreyPoint context :=
    canonicalGeometricTwoPoint context + kernelGenerator
  have hGeneratorOrder :
      addOrderOf generatorPoint = 2 * context.p := by
    have hOrderCoprime :
        Nat.Coprime
          (addOrderOf (canonicalGeometricTwoPoint context))
          (addOrderOf
            (kernelGenerator : GeometricFreyPoint context)) := by
      rw [canonicalGeometricTwoPoint_order, hKernelOrder]
      exact hCoprime
    dsimp only [generatorPoint]
    rw [AddCommute.addOrderOf_add_eq_mul_addOrderOf_of_coprime
      (AddCommute.all _ _) hOrderCoprime,
      canonicalGeometricTwoPoint_order, hKernelOrder]
  have hGeneratorMem : generatorPoint ∈ mixed :=
    AddSubgroup.add_mem_sup
      (AddSubgroup.mem_zmultiples_iff.mpr ⟨1, by simp⟩)
      kernelGenerator.property
  have hGeneratedLe :
      AddSubgroup.zmultiples generatorPoint ≤ mixed :=
    AddSubgroup.zmultiples_le.mpr hGeneratorMem
  have hMixedCard : Nat.card mixed = 2 * context.p :=
    mixedSubgroup_card context kernel hDisjoint
  have hGeneratedEq : AddSubgroup.zmultiples generatorPoint = mixed := by
    apply AddSubgroup.eq_of_le_of_card_ge hGeneratedLe
    rw [Nat.card_zmultiples, hGeneratorOrder, hMixedCard]
  have hMixedCyclic :
      ∃ generator : mixed,
        ∀ point : mixed, ∃ exponent : Int,
          exponent • generator = point := by
    let generator : mixed := ⟨generatorPoint, hGeneratorMem⟩
    refine ⟨generator, fun point => ?_⟩
    have hpoint :
        (point : GeometricFreyPoint context) ∈
          AddSubgroup.zmultiples generatorPoint := by
      rw [hGeneratedEq]
      exact point.property
    rcases AddSubgroup.mem_zmultiples_iff.mp hpoint with ⟨n, hn⟩
    exact ⟨n, Subtype.ext hn⟩
  exact ⟨{
    level := {
      carrier := mixed
      finite_carrier := inferInstance
      card_eq_level := hMixedCard
      cyclic := hMixedCyclic
      stable := by
        intro σ point hpoint
        rcases AddSubgroup.mem_sup'.mp hpoint with ⟨left, right, rfl⟩
        rw [map_add]
        exact AddSubgroup.add_mem_sup
          (canonicalTwoSubgroup_stable context σ left.property)
          (kernel.galois_stable σ right right.property)
    }
  }⟩

/-- Residual reducibility produces the mixed-level moduli datum through the
existing rational-isogeny-kernel predicate. -/
theorem reducibleToX0TwoPModuli
    (context : FreyMazurContext)
    (hreducible : FreyResidualRepresentationReducible context) :
    Nonempty (X0ModuliDatum context (2 * context.p)) := by
  rcases hreducible with ⟨kernel⟩
  exact kernelToX0TwoPModuli context kernel

#print axioms canonicalGeometricTwoPoint_ne_zero
#print axioms canonicalGeometricTwoPoint_add_self
#print axioms canonicalGeometricTwoPoint_fixed
#print axioms canonicalGeometricTwoPoint_order
#print axioms canonicalTwoSubgroup_card
#print axioms canonicalTwoSubgroup_stable
#print axioms mixedSubgroup_card
#print axioms kernelToX0TwoPModuli
#print axioms reducibleToX0TwoPModuli

end Beal17Mazur