import Beal.B17_MazurIrreducible
import Mathlib.GroupTheory.Complement
import Mathlib.GroupTheory.SpecificGroups.Cyclic

namespace Beal17Mazur

/-- A finite cyclic level structure on an additive group.

This is the small piece of data used by the Beal development to represent the
moduli content of a rational point on `X₀(N)`: a cyclic subgroup of geometric
points of order `N`, together with the supplied transport maps and their
stability.  It is deliberately not a definition of the modular curve itself.
-/
structure GaloisStableCyclicLevel
    (context : FreyMazurContext)
    (N : Nat) where
  carrier : AddSubgroup (GeometricFreyPoint context)
  finite_carrier : Finite carrier
  card_eq_level : Nat.card carrier = N
  cyclic :
    ∃ generator : carrier,
      ∀ point : carrier, ∃ exponent : Int, exponent • generator = point
  stable :
    ∀ (σ : Field.absoluteGaloisGroup ℚ)
      (point : GeometricFreyPoint context),
      point ∈ carrier → galoisAction context σ point ∈ carrier

/-- The level datum carried by a moduli point.

`Curve` is an explicit parameter because Mathlib 4.12 has no scheme-level
`X₀(N)` object to use here.  The record therefore stores an underlying curve
label and a cyclic geometric level structure, but makes no claim that the
result is a scheme, a function field, a compactified quotient, or a rational
point of a constructed modular curve.
-/
structure X0ModuliDatum
    (context : FreyMazurContext)
    (N : Nat) where
  level : GaloisStableCyclicLevel context N

/-- Base change a rational Frey point to the geometric point group used by the
residual representation. -/
noncomputable def rationalFreyPointToGeometric
    (context : FreyMazurContext) :
    RationalFreyPoint context.A context.B context.x context.y →+
      GeometricFreyPoint context :=
  WeierstrassCurve.Affine.Point.baseChange
    (freyRationalCurve context.A context.B context.x context.y)
    ℚ (AlgebraicClosure ℚ)

/-- The explicitly selected level-two point is `(0,0)`.  Its positivity
arguments are obtained from the proved full rational `E[2]` classification,
not from a separate torsion assumption. -/
noncomputable def selectedRationalTwoPoint
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    RationalFreyPoint context.A context.B context.x context.y :=
  freyTwoTorsionZero context.A context.B context.x context.y
    hFull.choose hFull.choose_spec.choose

/-- The selected point belongs to the exact four-point rational `E[2]` set
supplied by the exhaustive classification. -/
theorem selectedRationalTwoPoint_mem_fullE2
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    selectedRationalTwoPoint context hFull ∈
      FullE2 context.A context.B context.x context.y := by
  rw [hFull.choose_spec.choose_spec]
  simp [selectedRationalTwoPoint]

/-- The selected rational order-two point viewed geometrically. -/
noncomputable def selectedGeometricTwoPoint
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    GeometricFreyPoint context :=
  rationalFreyPointToGeometric context
    (selectedRationalTwoPoint context hFull)

/-- The cyclic level-two subgroup selected from the exhaustive Frey
`E[2](ℚ)` classification. -/
noncomputable def selectedTwoSubgroup
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    AddSubgroup (GeometricFreyPoint context) :=
  AddSubgroup.zmultiples (selectedGeometricTwoPoint context hFull)

theorem selectedGeometricTwoPoint_ne_zero
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    selectedGeometricTwoPoint context hFull ≠ 0 := by
  intro hzero
  apply freyTwoTorsionZero_ne_zero context.A context.B context.x context.y
    hFull.choose hFull.choose_spec.choose
  apply (WeierstrassCurve.Affine.Point.map_injective
    (W := freyRationalCurve context.A context.B context.x context.y)
    (f := Algebra.ofId ℚ (AlgebraicClosure ℚ)))
  simpa [selectedGeometricTwoPoint, selectedRationalTwoPoint,
    rationalFreyPointToGeometric] using hzero

theorem selectedGeometricTwoPoint_add_self
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    selectedGeometricTwoPoint context hFull +
        selectedGeometricTwoPoint context hFull = 0 := by
  unfold selectedGeometricTwoPoint selectedRationalTwoPoint
  rw [← map_add]
  rw [freyTwoTorsionZero_add_self]
  rfl

theorem selectedGeometricTwoPoint_addOrderOf
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    addOrderOf (selectedGeometricTwoPoint context hFull) = 2 := by
  rw [addOrderOf_eq_iff (by omega : 0 < 2)]
  constructor
  · simpa [two_nsmul] using
      selectedGeometricTwoPoint_add_self context hFull
  · intro m hm hpos
    have hm1 : m = 1 := by omega
    subst m
    simpa using selectedGeometricTwoPoint_ne_zero context hFull

theorem selectedTwoSubgroup_card
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    Nat.card (selectedTwoSubgroup context hFull) = 2 := by
  rw [selectedTwoSubgroup, Nat.card_zmultiples,
    selectedGeometricTwoPoint_addOrderOf]

/-- Absolute Galois fixes the selected point because it is obtained by base
change from a rational point. -/
theorem galoisAction_selectedGeometricTwoPoint
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context)
    (σ : Field.absoluteGaloisGroup ℚ) :
    galoisAction context σ (selectedGeometricTwoPoint context hFull) =
      selectedGeometricTwoPoint context hFull := by
  exact WeierstrassCurve.Affine.Point.map_baseChange
    (freyRationalCurve context.A context.B context.x context.y).toAffine
    σ.toAlgHom (selectedRationalTwoPoint context hFull)

theorem selectedTwoSubgroup_galois_stable
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context)
    (σ : Field.absoluteGaloisGroup ℚ)
    (point : GeometricFreyPoint context)
    (hpoint : point ∈ selectedTwoSubgroup context hFull) :
    galoisAction context σ point ∈ selectedTwoSubgroup context hFull := by
  rcases AddSubgroup.mem_zmultiples_iff.mp hpoint with ⟨exponent, rfl⟩
  rw [map_zsmul, galoisAction_selectedGeometricTwoPoint]
  exact AddSubgroup.zsmul_mem_zmultiples _ _

theorem RationalPIsogenyKernel.isAddCyclic
    {context : FreyMazurContext}
    (kernel : RationalPIsogenyKernel context) :
    IsAddCyclic kernel.carrier := by
  letI : Finite kernel.carrier := kernel.finite_carrier
  letI : Fintype kernel.carrier := Fintype.ofFinite kernel.carrier
  letI : Fact context.p.Prime := ⟨context.prime⟩
  apply @isAddCyclic_of_prime_card kernel.carrier inferInstance
    inferInstance context.p inferInstance
  simpa only [Nat.card_eq_fintype_card] using kernel.card_eq_prime

/-- A chosen generator of the prime-order kernel.  This does not claim that
the generator is rational; only the subgroup is Galois-stable. -/
noncomputable def RationalPIsogenyKernel.generator
    {context : FreyMazurContext}
    (kernel : RationalPIsogenyKernel context) :
    kernel.carrier :=
  @Classical.choose kernel.carrier
    (fun generator =>
      ∀ point : kernel.carrier,
        point ∈ AddSubgroup.zmultiples generator)
    (@IsAddCyclic.exists_generator kernel.carrier inferInstance
      kernel.isAddCyclic)

theorem RationalPIsogenyKernel.generator_generates
    {context : FreyMazurContext}
    (kernel : RationalPIsogenyKernel context) :
    ∀ point : kernel.carrier,
      point ∈ AddSubgroup.zmultiples kernel.generator :=
  @Classical.choose_spec kernel.carrier
    (fun generator =>
      ∀ point : kernel.carrier,
        point ∈ AddSubgroup.zmultiples generator)
    (@IsAddCyclic.exists_generator kernel.carrier inferInstance
      kernel.isAddCyclic)

theorem RationalPIsogenyKernel.generator_addOrderOf
    {context : FreyMazurContext}
    (kernel : RationalPIsogenyKernel context) :
    addOrderOf (kernel.generator : GeometricFreyPoint context) = context.p := by
  rw [AddSubgroup.addOrderOf_coe,
    addOrderOf_generator_eq_natCard kernel.generator_generates,
    kernel.card_eq_prime]

theorem two_coprime_residual_prime (context : FreyMazurContext) :
    Nat.Coprime 2 context.p := by
  apply (Nat.Prime.coprime_iff_not_dvd Nat.prime_two).2
  intro hdiv
  rcases (Nat.dvd_prime context.prime).mp hdiv with h | h
  · omega
  · exact context.prime_ne_two h.symm

/-- The level-two and level-`p` kernels meet only in the identity. -/
theorem selectedTwoSubgroup_inf_kernel
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    selectedTwoSubgroup context hFull ⊓ kernel.carrier = ⊥ := by
  apply add_inf_eq_bot_of_coprime
  rw [selectedTwoSubgroup_card, kernel.card_eq_prime]
  exact two_coprime_residual_prime context

/-- The actual mixed subgroup is the subgroup sum `C₂ ⊔ Cₚ`. -/
noncomputable def mixedLevelCarrier
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    AddSubgroup (GeometricFreyPoint context) :=
  selectedTwoSubgroup context hFull ⊔ kernel.carrier

/-- A generator candidate for the mixed subgroup. -/
noncomputable def mixedLevelGenerator
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    GeometricFreyPoint context :=
  selectedGeometricTwoPoint context hFull + kernel.generator

theorem mixedLevelGenerator_addOrderOf
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    addOrderOf (mixedLevelGenerator hFull kernel) = 2 * context.p := by
  have hcoprime :
      (addOrderOf (selectedGeometricTwoPoint context hFull)).Coprime
        (addOrderOf (kernel.generator : GeometricFreyPoint context)) := by
    rw [selectedGeometricTwoPoint_addOrderOf,
      kernel.generator_addOrderOf]
    exact two_coprime_residual_prime context
  simpa [mixedLevelGenerator, selectedGeometricTwoPoint_addOrderOf,
    kernel.generator_addOrderOf] using (AddCommute.all
    (selectedGeometricTwoPoint context hFull)
    (kernel.generator : GeometricFreyPoint context)
    ).addOrderOf_add_eq_mul_addOrderOf_of_coprime hcoprime

theorem selectedTwoPoint_mem_mixedGenerator
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    selectedGeometricTwoPoint context hFull ∈
      AddSubgroup.zmultiples (mixedLevelGenerator hFull kernel) := by
  have hpzero :
      context.p • (kernel.generator : GeometricFreyPoint context) = 0 :=
    kernel.le_pTorsion kernel.generator.property
  have hpmod : context.p % 2 = 1 := by
    exact Nat.odd_iff.mp
      (context.prime.odd_of_ne_two context.prime_ne_two)
  have hsmul :
      context.p • mixedLevelGenerator hFull kernel =
        selectedGeometricTwoPoint context hFull := by
    rw [mixedLevelGenerator, nsmul_add, hpzero, add_zero,
      ← mod_addOrderOf_nsmul,
      selectedGeometricTwoPoint_addOrderOf, hpmod, one_nsmul]
  rw [← hsmul]
  exact AddSubgroup.nsmul_mem_zmultiples _ _

theorem kernel_le_mixedGenerator
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    kernel.carrier ≤
      AddSubgroup.zmultiples (mixedLevelGenerator hFull kernel) := by
  letI : Finite kernel.carrier := kernel.finite_carrier
  letI : Fintype kernel.carrier := Fintype.ofFinite kernel.carrier
  letI : Fact context.p.Prime := ⟨context.prime⟩
  intro point hpoint
  let doubled : kernel.carrier :=
    ⟨2 • (kernel.generator : GeometricFreyPoint context),
      kernel.carrier.nsmul_mem kernel.generator.property 2⟩
  have hdoubled : doubled ≠ 0 := by
    intro hzero
    have hcoe :
        2 • (kernel.generator : GeometricFreyPoint context) = 0 :=
      congrArg Subtype.val hzero
    exact (nsmul_ne_zero_of_lt_addOrderOf (by omega : 2 ≠ 0)
      (by rw [kernel.generator_addOrderOf]; exact context.five_le.trans_lt' (by omega))) hcoe
  have hcard : Fintype.card kernel.carrier = context.p := by
    simpa only [Nat.card_eq_fintype_card] using kernel.card_eq_prime
  have hmem :
      (⟨point, hpoint⟩ : kernel.carrier) ∈
        AddSubgroup.zmultiples doubled :=
    mem_zmultiples_of_prime_card hcard hdoubled
  rcases AddSubgroup.mem_zmultiples_iff.mp hmem with ⟨exponent, hexponent⟩
  have hcoe :
      exponent • (doubled : GeometricFreyPoint context) = point :=
    congrArg Subtype.val hexponent
  have hdouble :
      (doubled : GeometricFreyPoint context) =
        2 • mixedLevelGenerator hFull kernel := by
    rw [mixedLevelGenerator, nsmul_add,
      show 2 • selectedGeometricTwoPoint context hFull = 0 by
        simpa [two_nsmul] using
          selectedGeometricTwoPoint_add_self context hFull,
      zero_add]
  rw [← hcoe, hdouble]
  exact (AddSubgroup.zmultiples
    (mixedLevelGenerator hFull kernel)).zsmul_mem
      (AddSubgroup.nsmul_mem_zmultiples
        (mixedLevelGenerator hFull kernel) 2) exponent

theorem mixedLevelCarrier_eq_zmultiples
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    mixedLevelCarrier hFull kernel =
      AddSubgroup.zmultiples (mixedLevelGenerator hFull kernel) := by
  apply le_antisymm
  · apply sup_le
    · rw [selectedTwoSubgroup, AddSubgroup.zmultiples_le]
      exact selectedTwoPoint_mem_mixedGenerator hFull kernel
    · exact kernel_le_mixedGenerator hFull kernel
  · rw [AddSubgroup.zmultiples_le]
    exact AddSubgroup.add_mem_sup
      (AddSubgroup.mem_zmultiples
        (selectedGeometricTwoPoint context hFull))
      kernel.generator.property

theorem mixedLevelCarrier_card
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    Nat.card (mixedLevelCarrier hFull kernel) = 2 * context.p := by
  rw [mixedLevelCarrier_eq_zmultiples, Nat.card_zmultiples,
    mixedLevelGenerator_addOrderOf]

theorem mixedLevelCarrier_galois_stable
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context)
    (σ : Field.absoluteGaloisGroup ℚ)
    (point : GeometricFreyPoint context)
    (hpoint : point ∈ mixedLevelCarrier hFull kernel) :
    galoisAction context σ point ∈ mixedLevelCarrier hFull kernel := by
  rw [mixedLevelCarrier] at hpoint ⊢
  rcases AddSubgroup.mem_sup.mp hpoint with
    ⟨twoPoint, htwo, primePoint, hprime, rfl⟩
  rw [map_add]
  exact AddSubgroup.add_mem_sup
    (selectedTwoSubgroup_galois_stable context hFull σ twoPoint htwo)
    (kernel.galois_stable σ primePoint hprime)

/-- The kernel-level rational `X₀(2p)` moduli datum.  It is a genuine
Galois-stable cyclic subgroup of order `2p`; it is not yet a point on a
constructed modular curve. -/
noncomputable def mixedX0ModuliDatum
    {context : FreyMazurContext}
    (hFull : HasFullRationalTwoTorsion context)
    (kernel : RationalPIsogenyKernel context) :
    X0ModuliDatum context (2 * context.p) where
  level :=
    { carrier := mixedLevelCarrier hFull kernel
      finite_carrier := by
        rw [mixedLevelCarrier_eq_zmultiples]
        exact Nat.finite_of_card_ne_zero <| by
          rw [Nat.card_zmultiples, mixedLevelGenerator_addOrderOf]
          exact mul_ne_zero (by decide) context.prime.ne_zero
      card_eq_level := mixedLevelCarrier_card hFull kernel
      cyclic := by
        refine ⟨⟨mixedLevelGenerator hFull kernel, ?_⟩, ?_⟩
        · rw [mixedLevelCarrier_eq_zmultiples]
          exact AddSubgroup.mem_zmultiples _
        · intro point
          have hpoint :
              (point : GeometricFreyPoint context) ∈
                AddSubgroup.zmultiples
                  (mixedLevelGenerator hFull kernel) := by
            simpa only [mixedLevelCarrier_eq_zmultiples] using point.property
          rcases AddSubgroup.mem_zmultiples_iff.mp hpoint with
            ⟨exponent, hexponent⟩
          refine ⟨exponent, Subtype.ext ?_⟩
          exact hexponent
      stable := mixedLevelCarrier_galois_stable hFull kernel }

/-- Residual reducibility supplies the existing stable order-`p` kernel, and
hence the mixed-level moduli datum, without selecting a rational `p`-torsion
generator. -/
theorem residualReducible_implies_mixedX0ModuliDatum
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context)
    (hReducible : FreyResidualRepresentationReducible context) :
    Nonempty (X0ModuliDatum context (2 * context.p)) := by
  rcases hReducible with ⟨kernel⟩
  exact ⟨mixedX0ModuliDatum hFull kernel⟩

/-- Narrow realization boundary: downstream work may interpret the proved
kernel datum as a non-cuspidal rational point on a genuine `X₀(2p)`, but this
file does not pretend that Mathlib 4.12 already constructs that curve. -/
def X0MixedLevelRealizationBoundary
    (RationalPoint : FreyMazurContext → Nat → Type) : Prop :=
  ∀ (context : FreyMazurContext),
    X0ModuliDatum context (2 * context.p) →
      Nonempty (RationalPoint context (2 * context.p))

/-- The supplied transport maps preserve the level subgroup. -/
theorem GaloisStableCyclicLevel.stable_mem
    {context : FreyMazurContext} {N : Nat}
    (level : GaloisStableCyclicLevel context N)
    (σ : Field.absoluteGaloisGroup ℚ)
    {point : GeometricFreyPoint context}
    (hpoint : point ∈ level.carrier) :
    galoisAction context σ point ∈ level.carrier :=
  level.stable σ point hpoint

/-- A cyclic level structure has a nonempty carrier. -/
theorem GaloisStableCyclicLevel.carrier_nonempty
    {context : FreyMazurContext} {N : Nat}
    (level : GaloisStableCyclicLevel context N) :
    Nonempty level.carrier :=
  ⟨0, level.carrier.zero_mem⟩

/-- A cyclic level structure has positive level. -/
theorem GaloisStableCyclicLevel.level_pos
    {context : FreyMazurContext} {N : Nat}
    (level : GaloisStableCyclicLevel context N) :
    0 < N := by
  letI : Finite level.carrier := level.finite_carrier
  rw [← level.card_eq_level]
  exact Nat.card_pos

/-- The moduli datum exposes its level without adding a scheme-level claim. -/
theorem X0ModuliDatum.level_card
    {context : FreyMazurContext} {N : Nat}
    (datum : X0ModuliDatum context N) :
    Nat.card datum.level.carrier = N :=
  datum.level.card_eq_level

#print axioms GaloisStableCyclicLevel
#print axioms X0ModuliDatum
#print axioms GaloisStableCyclicLevel.stable_mem
#print axioms GaloisStableCyclicLevel.carrier_nonempty
#print axioms GaloisStableCyclicLevel.level_pos
#print axioms X0ModuliDatum.level_card
#print axioms selectedRationalTwoPoint_mem_fullE2
#print axioms selectedGeometricTwoPoint_addOrderOf
#print axioms selectedTwoSubgroup_inf_kernel
#print axioms mixedLevelCarrier_eq_zmultiples
#print axioms mixedLevelCarrier_card
#print axioms mixedLevelCarrier_galois_stable
#print axioms mixedX0ModuliDatum
#print axioms residualReducible_implies_mixedX0ModuliDatum
#print axioms X0MixedLevelRealizationBoundary

end Beal17Mazur