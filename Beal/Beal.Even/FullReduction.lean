import Beal.«Beal.General».TateEvenBranch
import Beal.«Beal.General».SpecialFibreGluing
import Beal.«Beal.General».SpecialFibrePullbackIso
import Beal.«Beal.General».TateEvenBranchGenericFibre
import Beal.«Beal.General».CompatChartXt
import Beal.«Beal.General».CompatChartYt
import Beal.«Beal.General».TateEvenCoordinateCharts
import Mathlib.Algebra.Group.Even
import Mathlib.AlgebraicGeometry.PrimeSpectrum.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.AlgebraicGeometry.Morphisms.UniversallyClosed
import Mathlib.RingTheory.FiniteType
import Mathlib.Topology.Basic

/-!
# v34 even-branch packaging

This module does not prove Beal's conjecture, and it does not prove
the even-exponent case. It assembles the checked Rees-chart facts
with the algebraic identities a later even-reduction would use.

Checked, and re-exported or proved below:

* `2` is a non-zero-divisor in the divided even-node chart ring
  (`evenNodeTwoChart_two_regular` in the 2,249-line
  `TateEvenBranch.lean`, which this file does not edit).
* The degree-one elements `2t`, `Xt`, and `Yt` cover the Rees `Proj`.
* The `Xt` and `Yt` relation ideals are the saturations
  `J_X = (G_X : X^∞)` and `J_Y = (G_Y : Y^∞)`.
* Over `D(2)`, the actual Rees blow-up is isomorphic to
  `Spec (R_Z[1/2])`, and the centre becomes the unit ideal.
* In `Spec(ℤ_[2])`, the complement of `D(2)` is `V(2)`, and `D(2)`
  is dense because `ℤ_[2]` is a domain and `2 ≠ 0`.
* `Proj(ReesMod2)` is isomorphic to the gluing of the three
  polynomial-chart spectra. The overlaps are abstract pullbacks.
* The divided `2`-chart ring is a finite-type `ℤ_[2]`-algebra.
  Finite type is not `UniversallyClosed`: an affine chart of a
  cover need not be a universally closed morphism, and Mathlib
  v4.12.0 has no properness theorem for Rees `Proj`.
* For `y² + xy = x³ + 8`, the `2`-chart numerator is
  `4(V² + UV - 2U³ - 2)`. The affine zero set of `V² + UV` contains
  the union of the lines `V = 0` and `V + U = 0`. Over a domain the
  two agree. Those lines meet only at `(0,0)`. Over `𝔽₂` the points
  are `(0,0)`, `(1,0)`, and `(1,1)`, and the last two lie on exactly
  one line. This node is not `ℙ¹`.

Not checked, and not given inhabitants here:

* `UniversallyClosed` or topological `IsProperMap` for
  `Bl_I → Spec(ℤ_[2])` or `Bl_I → Spec(R_Z)`. The predicate is
  local on the target, and only for an open cover of the target.
  The closed point of `Spec(ℤ_[2])` lies in no proper open
  (`base_closedPoint_mem_open_iff_top`), and `V(2)` is not open
  (`base_V2_not_open`), so `{D(2), V(2)}` is not such a cover.
  Over `D(2)` the pullback is `Spec(R_Z[1/2])`, not the base.
  The open immersion `D(2) ↪ Spec(ℤ_[2])` is not a closed map
  (`awayTwoInclusion_not_universallyClosed`). That immersion is
  not `localSurfaceCentreReesToBase`, and the negation of
  `UniversallyClosed` for the blow-up over `Spec(ℤ_[2])` is not
  a theorem (`localSurfaceCentreReesToBase_universallyClosed_false`
  stays uninhabited). The correct properness target is
  `Bl_I → Spec(R)` (`localSurfaceCentreReesToSurfaceProper`),
  also uninhabited. The general statement is
  `proj_proper_of_fg_graded`: `Proj` of a finite-type graded
  algebra over a Noetherian ring is universally closed over
  `Spec` of that ring. It is uninhabited. This Mathlib has no
  valuative criterion, no scheme `ℙⁿ`, and no `Proj` morphism
  from a graded surjection;
* an open immersion of `Bl_I` onto a dense open of `Spec(R_Z)`
  (the checked isomorphism is the generic fibre over `D(2)`, and
  `D(2)` is dense in `Spec(ℤ_[2])`);
* `V(overline{2t})` inside `Proj(ReesMod2)`, and any isomorphism
  of that locus with `ℙ¹_{𝔽₂}`;
* a global section of `O(1)` on `Bl_I` restricting to
  `overlineTwoT` on `D₊(2t)` (`overline_2t_global_section_open`),
  and a map `ℕ → Bl_I` from a coprime even solution
  (`even_solution_implies_two_divides`). Both stay uninhabited.
  Mathlib v4.12.0 has no Serre twisting sheaf: `Proj.structureSheaf`
  on `D₊(f)` has degree-zero sections only, and `overlineTwoT`
  has degree one, so it is not a structure section. The chart
  variable `T₀` for the ratio `2t / (Xᵢ t)` lies outside `J_X`
  and outside `J_Y` (`two_t_ratio_not_mem_JX`,
  `two_t_ratio_not_mem_JY`). That non-membership is not a
  cocycle. On a point of the curve, every power of the class is
  nonzero (`overlineTwoT_pow_nonzero`); that graded calculation
  is not the section. The Rees element `2t` is not a polynomial
  in those chart rings;
* the claim that `(0,0)` lies only in `D₊(overline{2t})`;
* any implication from an even solution of `x^p + y^q = z^r`
  to `2 ∣ x` and `2 ∣ y`, or to a point of the blow-up.

The actual special-fibre pullback is identified with the quotient
`Proj` by `localSurfaceCentreSpecialFibreScheme_iso_ReesSpecialProj`.
The class `overlineTwoT` is degree one and nonzero in that quotient.
That identification is not a section of the structure sheaf and not
a point of `Bl_I` coming from a solution in `ℕ`.
-/

namespace Beal.Even

open Beal.General

/-! ## Checked chart regularity

`Bl_I_regular_at_even_branch` is the existing statement that the
base uniformizer `2` is regular on the divided chart ring. It is
not a proof that the blow-up is a regular scheme. -/

abbrev Bl_I_regular_at_even_branch := evenNodeTwoChart_two_regular

/-! ## Three-open cover and chart saturations

`localSurfaceCentreReesGenerator_cover` is joint surjectivity of
the source: `D₊(2t) ∪ D₊(Xt) ∪ D₊(Yt) = Proj`. Each basic open of
`Proj` is affine, by `projIsoSpecTopComponent`, homeomorphic to
the spectrum of the degree-zero localization. The divided `2`-chart
below is finite type over `ℤ_[2]`. A cover of the source is not an
open cover of `Spec(ℤ_[2])`, and it does not produce `IsProperMap`
of `Bl_I → Spec(R_Z)`. -/

abbrev three_open_cover := localSurfaceCentreReesGenerator_cover

abbrev Xt_chart_saturation := XtRelations_saturation

abbrev Yt_chart_saturation := YtRelations_saturation

/-! ## Finite type of the divided `2`-chart

`Algebra.FiniteType` is the checked substitute for a missing
`UniversallyClosed` proof. The quotient of `ℤ_[2][U,V]` by one
polynomial is a finitely generated algebra. That does not make
`Spec` of the chart universally closed over `Spec(ℤ_[2])`, and it
does not make the Rees `Proj` universally closed. -/

theorem twoChart_finiteType
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2]) :
    Algebra.FiniteType ℤ_[2] (evenNodeTwoChartRing W x a b c) := by
  exact Algebra.FiniteType.of_surjective
    (Algebra.FiniteType.mvPolynomial (R := ℤ_[2]) (Fin 2))
    (Ideal.Quotient.mkₐ ℤ_[2]
      (Ideal.span {evenNodeTwoChartPolynomial W x a b c}))
    (Ideal.Quotient.mkₐ_surjective _ _)

/-- The translated surface ring is a finite-type `ℤ_[2]`-algebra.
Over `D(2)` the blow-up is the spectrum of a localization of this
ring, not of `ℤ_[2]` itself. Finite type is not
`UniversallyClosed`. -/
theorem surfaceCoordinate_finiteType
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    Algebra.FiniteType ℤ_[2] (localSurfaceCoordinateRing W x y) := by
  exact Algebra.FiniteType.of_surjective
    (Algebra.FiniteType.mvPolynomial (R := ℤ_[2]) (Fin 2))
    (Ideal.Quotient.mkₐ ℤ_[2]
      (Ideal.span {localSurfaceEquation W x y}))
    (Ideal.Quotient.mkₐ_surjective _ _)

/-- The special-fibre `2t` chart, the divided ring modulo the scalar
`2`, is still a finite-type `ℤ_[2]`-algebra. Finite type of this
affine chart is not properness of `Proj(Rees / (2))` over `𝔽₂`. -/
theorem twoChartMod2_finiteType
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2]) :
    Algebra.FiniteType ℤ_[2] (evenNodeTwoChartMod2Ring W x a b c) := by
  let P := evenNodeTwoChartRing W x a b c
  let p : MvPolynomial (Fin 2) ℤ_[2] →+* P :=
    Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
  exact Algebra.FiniteType.of_surjective
    (twoChart_finiteType W x a b c)
    (Ideal.Quotient.mkₐ ℤ_[2]
      (Ideal.span {p (MvPolynomial.C (2 : ℤ_[2]))}))
    (Ideal.Quotient.mkₐ_surjective _ _)

/-! ## Generic fibre over `D(2)`

The isomorphism below is `Bl_I` pulled back along `D(2) ⊆ Spec(ℤ_[2])`,
identified with `Spec(R_Z[1/2])`. It is not a declaration that
`Bl_I → Spec(R_Z)` is birational. -/

noncomputable abbrev generic_fibre_iso := evenBranchBlowupGenericFibreIso

abbrev generic_fibre_iso_overBase := evenBranchBlowupGenericFibreIso_overBase

abbrev generic_centre_eq_top := evenBranchCentre_generic_eq_top

theorem base_D2_compl_eq_zeroLocus :
    ((PrimeSpectrum.basicOpen (2 : ℤ_[2])) : Set (PrimeSpectrum ℤ_[2]))ᶜ =
      PrimeSpectrum.zeroLocus {(2 : ℤ_[2])} := by
  rw [PrimeSpectrum.basicOpen_eq_zeroLocus_compl, compl_compl]

/-- In a domain, a basic open `D(f)` with `f ≠ 0` meets every nonempty
Zariski open, so it is dense. The proof uses that a nonempty open
contains a basic open `D(g)` with `g ≠ 0`, and `D(gf) = D(g) ∩ D(f)`
is nonempty because `gf` is not nilpotent. -/
theorem basicOpen_dense_of_ne_zero {R : Type*} [CommRing R] [IsDomain R]
    {f : R} (hf : f ≠ 0) :
    Dense ((PrimeSpectrum.basicOpen f : Set (PrimeSpectrum R))) := by
  refine dense_iff_inter_open.mpr ?_
  intro U hU hU_ne
  obtain ⟨x, hxU⟩ := hU_ne
  obtain ⟨V, hV, hxV, hVU⟩ :=
    PrimeSpectrum.isTopologicalBasis_basic_opens.exists_subset_of_mem_open hxU hU
  obtain ⟨g, rfl⟩ := hV
  have hg : g ≠ 0 := by
    intro hg0
    have hx0 : x ∈ (PrimeSpectrum.basicOpen (0 : R) : Set _) := by
      rw [hg0] at hxV
      exact hxV
    simp [PrimeSpectrum.basicOpen_zero] at hx0
  have hgf : g * f ≠ 0 := mul_ne_zero hg hf
  have hbot : PrimeSpectrum.basicOpen (g * f) ≠ ⊥ := by
    intro h
    rw [PrimeSpectrum.basicOpen_eq_bot_iff] at h
    exact hgf (IsNilpotent.eq_zero h)
  have hne : ((PrimeSpectrum.basicOpen (g * f)) : Set (PrimeSpectrum R)).Nonempty := by
    rw [Set.nonempty_iff_ne_empty]
    intro hempty
    apply hbot
    exact TopologicalSpace.Opens.ext hempty
  obtain ⟨y, hy⟩ := hne
  have hyg : y ∈ (PrimeSpectrum.basicOpen g : Set _) :=
    (SetLike.coe_subset_coe.mpr (PrimeSpectrum.basicOpen_mul_le_left g f)) hy
  have hyf : y ∈ (PrimeSpectrum.basicOpen f : Set _) :=
    (SetLike.coe_subset_coe.mpr (PrimeSpectrum.basicOpen_mul_le_right g f)) hy
  exact ⟨y, hVU hyg, hyf⟩

theorem padic_two_ne_zero : (2 : ℤ_[2]) ≠ 0 :=
  Nat.cast_ne_zero.mpr (by decide : (2 : ℕ) ≠ 0)

theorem base_D2_dense :
    Dense ((PrimeSpectrum.basicOpen (2 : ℤ_[2])) : Set (PrimeSpectrum ℤ_[2])) :=
  basicOpen_dense_of_ne_zero padic_two_ne_zero

theorem base_D2_ne_bot : PrimeSpectrum.basicOpen (2 : ℤ_[2]) ≠ ⊥ := by
  intro h
  rw [PrimeSpectrum.basicOpen_eq_bot_iff] at h
  exact padic_two_ne_zero (IsNilpotent.eq_zero h)

/-- The closed point of `Spec(ℤ_[2])` is the maximal ideal `(2)`. -/
theorem base_closedPoint_asIdeal :
    (LocalRing.closedPoint ℤ_[2]).asIdeal = Ideal.span {(2 : ℤ_[2])} := by
  simp [LocalRing.closedPoint, PadicInt.maximalIdeal_eq_span_p]

/-- `D(2)` does not contain the closed point. -/
theorem base_closedPoint_not_mem_D2 :
    LocalRing.closedPoint ℤ_[2] ∉
      (PrimeSpectrum.basicOpen (2 : ℤ_[2]) : Set (PrimeSpectrum ℤ_[2])) := by
  intro h
  rw [SetLike.mem_coe, PrimeSpectrum.mem_basicOpen, base_closedPoint_asIdeal] at h
  exact h (Ideal.mem_span_singleton.mpr ⟨1, by simp⟩)

/-- An open contains the closed point if and only if it is the whole
spectrum. Target-local `UniversallyClosed` can be checked on a proper
open only when that open misses the closed point. -/
theorem base_closedPoint_mem_open_iff_top
    (U : TopologicalSpace.Opens (PrimeSpectrum ℤ_[2])) :
    LocalRing.closedPoint ℤ_[2] ∈ U ↔ U = ⊤ :=
  LocalRing.closedPoint_mem_iff U

/-- The generic point lies outside `V(2)`, so `V(2)` is not the whole
spectrum. -/
theorem base_V2_ne_univ :
    PrimeSpectrum.zeroLocus {(2 : ℤ_[2])} ≠
      (Set.univ : Set (PrimeSpectrum ℤ_[2])) := by
  intro h
  have hpt : (⟨⊥, Ideal.bot_prime⟩ : PrimeSpectrum ℤ_[2]) ∈
      PrimeSpectrum.zeroLocus {(2 : ℤ_[2])} := by
    rw [h]
    trivial
  rw [PrimeSpectrum.mem_zeroLocus] at hpt
  have h2 : (2 : ℤ_[2]) ∈ (⊥ : Ideal ℤ_[2]) := hpt (Set.mem_singleton _)
  simp only [Ideal.mem_bot] at h2
  exact padic_two_ne_zero h2

/-- `V(2)` is not an open of `Spec(ℤ_[2])`. Together with
`base_closedPoint_not_mem_D2`, this says `{D(2), V(2)}` is not an
open cover, so `universallyClosed_isLocalAtTarget` does not split
the structure map into a generic check and a special check. -/
theorem base_V2_not_open :
    ¬ IsOpen (PrimeSpectrum.zeroLocus {(2 : ℤ_[2])} :
        Set (PrimeSpectrum ℤ_[2])) := by
  intro hopen
  let U : TopologicalSpace.Opens (PrimeSpectrum ℤ_[2]) := ⟨_, hopen⟩
  have hmem : LocalRing.closedPoint ℤ_[2] ∈ U := by
    refine (SetLike.mem_coe).mp ?_
    change LocalRing.closedPoint ℤ_[2] ∈
      PrimeSpectrum.zeroLocus {(2 : ℤ_[2])}
    rw [PrimeSpectrum.mem_zeroLocus]
    intro z hz
    simp only [Set.mem_singleton_iff] at hz
    subst hz
    rw [base_closedPoint_asIdeal]
    exact Ideal.mem_span_singleton.mpr ⟨1, by simp⟩
  have htop : U = ⊤ := (base_closedPoint_mem_open_iff_top U).mp hmem
  have hset : (U : Set (PrimeSpectrum ℤ_[2])) =
      PrimeSpectrum.zeroLocus {(2 : ℤ_[2])} := rfl
  rw [htop, TopologicalSpace.Opens.coe_top] at hset
  exact base_V2_ne_univ hset.symm

/-- The generic open of the 2-adic base: its complement is `V(2)`,
it is dense, and it is nonempty. This packages `D(2) ⊆ Spec(ℤ_[2])`.
It is not an open immersion `Bl_I → Spec(R_Z)`. -/
structure GenericOpenDense : Prop where
  compl_eq_zeroLocus :
    ((PrimeSpectrum.basicOpen (2 : ℤ_[2])) : Set (PrimeSpectrum ℤ_[2]))ᶜ =
      PrimeSpectrum.zeroLocus {(2 : ℤ_[2])}
  dense :
    Dense ((PrimeSpectrum.basicOpen (2 : ℤ_[2])) : Set (PrimeSpectrum ℤ_[2]))
  ne_bot : PrimeSpectrum.basicOpen (2 : ℤ_[2]) ≠ ⊥

theorem generic_open_dense : GenericOpenDense :=
  { compl_eq_zeroLocus := base_D2_compl_eq_zeroLocus
    dense := base_D2_dense
    ne_bot := base_D2_ne_bot }

/-! ## Checked special-fibre gluing

This is `Proj(ReesMod2) ≅ Glue(S_{2t}/(2), S_{Xt}/(2), S_{Yt}/(2))`
with abstract overlaps. It is not an isomorphism of the actual
special-fibre pullback with that gluing, and it is not `E ≅ ℙ¹`. -/

noncomputable abbrev special_fibre_glue_iso := specialFibreProjPolynomialGlueIso

noncomputable abbrev special_fibre_cocycle := specialFibreAbstractTripleCocycle

/-! ## The reduced chart equation is two lines through a node

Substituting `x = 2U`, `y = 2V` into `y² + xy - x³ - 8` produces
`4(V² + UV - 2U³ - 2)`. Reducing modulo `2` leaves `V² + UV`,
which factors as `V(V + U)` over any commutative ring. The two
factors vanish simultaneously only at the origin. Over `𝔽₂` that
zero set has three points. A reducible affine equation with three
rational points is not an isomorphism `E ≅ ℙ¹_{𝔽₂}`. -/

theorem example_twoChart_fourFactor (U V : ℤ) :
    (2 * V) ^ 2 + (2 * U) * (2 * V) - ((2 * U) ^ 3 + 8) =
      4 * (V ^ 2 + U * V - 2 * U ^ 3 - 2) := by
  ring

theorem reduced_equation_factors {R : Type*} [CommRing R] (U V : R) :
    V ^ 2 + U * V = V * (V + U) := by
  ring

theorem component_intersection_eq_origin {R : Type*} [CommRing R] (U V : R) :
    V = 0 ∧ V + U = 0 ↔ U = 0 ∧ V = 0 := by
  constructor
  · intro h
    refine ⟨?_, h.1⟩
    rw [h.1, zero_add] at h
    exact h.2
  · intro h
    refine ⟨h.2, ?_⟩
    simp [h.1, h.2]

theorem reduced_zero_iff_component (U V : ZMod 2) :
    V ^ 2 + U * V = 0 ↔ V = 0 ∨ V + U = 0 := by
  rw [reduced_equation_factors, mul_eq_zero]

theorem reduced_zero_iff_component_domain {R : Type*} [CommRing R] [IsDomain R]
    (U V : R) :
    V ^ 2 + U * V = 0 ↔ V = 0 ∨ V + U = 0 := by
  rw [reduced_equation_factors, mul_eq_zero]

theorem example_twoChart_divisible_by_four (U V : ℤ) :
    4 ∣ (2 * V) ^ 2 + (2 * U) * (2 * V) - ((2 * U) ^ 3 + 8) := by
  rw [example_twoChart_fourFactor]
  exact dvd_mul_right _ _

theorem example_mod_two_drops_two (U V : ZMod 2) :
    V ^ 2 + U * V - ((2 : ZMod 2) * U ^ 3 + 2) = V ^ 2 + U * V := by
  have h2 : (2 : ZMod 2) = 0 := by decide
  simp [h2]

theorem example_reduced_origin :
    (0 : ZMod 2) ^ 2 + (0 : ZMod 2) * 0 = 0 := by
  decide

theorem example_origin_is_the_node :
    ((0 : ZMod 2) = 0 ∧ (0 : ZMod 2) + 0 = 0) := by
  decide

theorem example_point_10_on_first_line_only :
    ((0 : ZMod 2) = 0 ∧ ¬ (0 : ZMod 2) + 1 = 0) := by
  decide

theorem example_point_11_on_second_line_only :
    (¬ (1 : ZMod 2) = 0 ∧ (1 : ZMod 2) + 1 = 0) := by
  decide

/-- The reduced equation `V² + UV = 0` over `𝔽₂` has three
solutions: `(0,0)`, `(1,0)`, and `(1,1)`. `(0,0)` is the
intersection of the two lines; the other two points lie on
exactly one line each. -/
theorem example_reduced_three_points :
    ∀ U V : ZMod 2, V ^ 2 + U * V = 0 ↔
      (U = 0 ∧ V = 0) ∨ (U = 1 ∧ V = 0) ∨ (U = 1 ∧ V = 1) := by
  decide

theorem example_components_cover_the_three_points :
    ∀ U V : ZMod 2, V = 0 ∨ V + U = 0 ↔
      (U = 0 ∧ V = 0) ∨ (U = 1 ∧ V = 0) ∨ (U = 1 ∧ V = 1) := by
  intro U V
  rw [← reduced_zero_iff_component, example_reduced_three_points]

/-! ## Nodal zero set, not `ℙ¹`

`E_nodal` is the affine zero set of `V² + UV`. Over any commutative
ring it contains the union of the lines `V = 0` and `V + U = 0`.
Over a domain, including `ℤ` and `𝔽₂`, the two sets agree. Their
intersection is the origin. None of this identifies
`V(overline{2t})` in `Proj(ReesMod2)`, and none of it is an
isomorphism with `ℙ¹`. -/

def lineV {R : Type*} [CommRing R] : Set (R × R) :=
  {q | q.2 = 0}

def lineVU {R : Type*} [CommRing R] : Set (R × R) :=
  {q | q.2 + q.1 = 0}

def E_nodal {R : Type*} [CommRing R] : Set (R × R) :=
  {q | q.2 ^ 2 + q.1 * q.2 = 0}

theorem line_union_subset_E_nodal {R : Type*} [CommRing R] :
    (lineV (R := R) ∪ lineVU) ⊆ E_nodal := by
  rintro ⟨U, V⟩ (hV | hS)
  · change V = 0 at hV
    show V ^ 2 + U * V = 0
    rw [reduced_equation_factors, hV, zero_mul]
  · change V + U = 0 at hS
    show V ^ 2 + U * V = 0
    rw [reduced_equation_factors, hS, mul_zero]

theorem E_nodal_subset_line_union {R : Type*} [CommRing R] [IsDomain R] :
    E_nodal (R := R) ⊆ lineV ∪ lineVU := by
  rintro ⟨U, V⟩ h
  change V ^ 2 + U * V = 0 at h
  exact (reduced_zero_iff_component_domain U V).mp h

theorem E_nodal_eq_union {R : Type*} [CommRing R] [IsDomain R] :
    E_nodal (R := R) = lineV ∪ lineVU :=
  Set.Subset.antisymm E_nodal_subset_line_union line_union_subset_E_nodal

theorem E_meets_only_at_origin {R : Type*} [CommRing R] :
    (lineV (R := R) ∩ lineVU) = {(0, 0)} := by
  ext ⟨U, V⟩
  constructor
  · intro h
    have hpt := (component_intersection_eq_origin U V).mp ⟨h.1, h.2⟩
    exact Prod.ext hpt.1 hpt.2
  · intro h
    have hU : U = 0 := congrArg Prod.fst h
    have hV : V = 0 := congrArg Prod.snd h
    change V = 0 ∧ V + U = 0
    rw [hU, hV]
    simp

theorem E_F2_points :
    ∀ U V : ZMod 2, (U, V) ∈ E_nodal ↔
      (U, V) = (0, 0) ∨ (U, V) = (1, 0) ∨ (U, V) = (1, 1) := by
  intro U V
  constructor
  · intro h
    rcases (example_reduced_three_points U V).mp h with
      ⟨hU, hV⟩ | ⟨hU, hV⟩ | ⟨hU, hV⟩
    · exact Or.inl (Prod.ext hU hV)
    · exact Or.inr (Or.inl (Prod.ext hU hV))
    · exact Or.inr (Or.inr (Prod.ext hU hV))
  · intro h
    have hEq : V ^ 2 + U * V = 0 :=
      (example_reduced_three_points U V).mpr <| by
        rcases h with h | h | h
        · exact Or.inl ⟨congrArg Prod.fst h, congrArg Prod.snd h⟩
        · exact Or.inr (Or.inl ⟨congrArg Prod.fst h, congrArg Prod.snd h⟩)
        · exact Or.inr (Or.inr ⟨congrArg Prod.fst h, congrArg Prod.snd h⟩)
    exact hEq

theorem E_F2_origin_on_both_lines :
    ((0, 0) : ZMod 2 × ZMod 2) ∈ lineV ∩ lineVU := by
  refine ⟨?_, ?_⟩
  · change (0 : ZMod 2) = 0
    rfl
  · change (0 : ZMod 2) + 0 = 0
    simp

theorem E_F2_point_10_one_component :
    ((1, 0) : ZMod 2 × ZMod 2) ∈ lineV ∧
      ((1, 0) : ZMod 2 × ZMod 2) ∉ lineVU := by
  refine ⟨?_, ?_⟩
  · change (0 : ZMod 2) = 0
    rfl
  · change ¬ (0 : ZMod 2) + 1 = 0
    exact example_point_10_on_first_line_only.2

theorem E_F2_point_11_one_component :
    ((1, 1) : ZMod 2 × ZMod 2) ∉ lineV ∧
      ((1, 1) : ZMod 2 × ZMod 2) ∈ lineVU := by
  refine ⟨?_, ?_⟩
  · change ¬ (1 : ZMod 2) = 0
    exact example_point_11_on_second_line_only.1
  · change (1 : ZMod 2) + 1 = 0
    exact example_point_11_on_second_line_only.2

/-! ## Obligations with no inhabitant

`even_Beal` is the even-exponent Diophantine claim. Defining it
does not prove it.

`even_solution_chart` and `even_solution_specializes_to_node` are
arithmetic shadows: even bases, and reduction to the origin in
`𝔽₂`. They are not a map into `D₊(2t)` and not a specialization
of a blow-up point onto `E_nodal`. `overlineTwoT` is degree one
and nonzero in `Rees / (2)` for a proper centre. That class is
not a point of `Bl_I` attached to a solution in `ℕ`. -/

def even_Beal : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Even p → Even q → Even r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    False

/-- Open. An even coprime solution is not shown to have even bases,
and even bases are not shown to be the `D₊(2t)` chart. -/
def even_solution_chart : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Even p → Even q → Even r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    2 ∣ x ∧ 2 ∣ y

/-- Open. Reduction of the bases to the origin is not a constructed
specialization into `E_nodal`. -/
def even_solution_specializes_to_node : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Even p → Even q → Even r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    ((x : ZMod 2), (y : ZMod 2)) = (0, 0)

/-- OPEN. Needs a varying family `Bl_{I_{a,b}}` parametrized by
`a^p` and `b^q`, not the fixed ring
`R = ℤ_[2][X, Y] / (surface)`. A tuple in `ℕ` gives no ring
homomorphism `R →+* ℤ_[2]`, so the Rees universal property
(`centreReesMap`) does not apply.
`coprimeBealSolution_to_BlI_point` is not defined.
The correct universal-closedness target for the blow-up is
`Bl_I → Spec(R)` (`localSurfaceCentreReesToSurfaceProper`), not
`Bl_I → Spec(ℤ_[2])`. -/
def even_solution_implies_two_divides : Prop :=
  even_solution_chart

/-! ## The class of `2t` in `Rees / (2)`

`localSurfaceCentreReesSpecialIdeal` is the principal ideal generated
by the degree-zero scalar `2`, not by the degree-one element `2t`.
When `2` is regular on the coordinate ring and `1` lies outside the
centre ideal, that scalar does not kill `2t`: a relation
`2t = 2 * f` would put `1` in the centre. This is membership in the
graded-quotient ring. It is not an identification of the actual
special-fibre pullback with `Proj(Rees/(2))`, and it is not a
nilpotence statement, so it does not make `D₊(overline{2t})` nonempty
on the pullback. -/

theorem one_not_mem_centre_of_maximal
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hF : localSurfaceEquation W x y ∈ localSurfaceCentre) :
    (1 : localSurfaceCoordinateRing W x y) ∉ localSurfaceClosedPoint W x y := by
  intro h1
  exact (localSurfaceClosedPoint_isMaximal W x y hF).ne_top
    (Ideal.eq_top_of_isUnit_mem (localSurfaceClosedPoint W x y) h1 isUnit_one)

theorem scalar_two_does_not_kill_two_t
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (h1 : (1 : localSurfaceCoordinateRing W x y) ∉
      localSurfaceClosedPoint W x y) :
    localSurfaceCentreReesTwo W x y ∉
      localSurfaceCentreReesSpecialIdeal W x y := by
  intro hmem
  let R := localSurfaceCoordinateRing W x y
  let I := localSurfaceClosedPoint W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let two : R := q (MvPolynomial.C (2 : ℤ_[2]))
  rw [localSurfaceCentreReesSpecialIdeal, Ideal.mem_span_singleton] at hmem
  obtain ⟨p, hp⟩ := hmem
  have hpoly :
      Polynomial.monomial 1 two = Polynomial.C two * (p : Polynomial R) := by
    have hcoe := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
    simpa [localSurfaceCentreReesTwo, centreReesDegreeOne, two] using hcoe
  have hcoeff : two = two * (p : Polynomial R).coeff 1 := by
    have hc := congrArg (fun z : Polynomial R => z.coeff 1) hpoly
    simpa [Polynomial.coeff_C_mul, Polynomial.coeff_monomial] using hc
  have hsub : two * ((p : Polynomial R).coeff 1 - 1) = 0 := by
    rw [mul_sub, ← hcoeff, mul_one, sub_self]
  have hreg := localSurfaceCoordinateRing_two_regular W x y
  have hone : (p : Polynomial R).coeff 1 = 1 := by
    have hz : (p : Polynomial R).coeff 1 - 1 = 0 := hreg _ hsub
    exact sub_eq_zero.mp hz
  have hI : (p : Polynomial R).coeff 1 ∈ I := by
    simpa [pow_one] using p.property 1
  rw [hone] at hI
  exact h1 hI

/-- The class of the degree-one element `2t` in `Rees / (2)`. -/
noncomputable def overlineTwoT
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreRees W x y ⧸
      localSurfaceCentreReesSpecialIdeal W x y :=
  Ideal.Quotient.mk (localSurfaceCentreReesSpecialIdeal W x y)
    (localSurfaceCentreReesTwo W x y)

set_option synthInstance.maxHeartbeats 200000 in
theorem overlineTwoT_mem_degree_one
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    overlineTwoT W x y ∈
      homogeneousQuotientComponent
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesSpecialIdeal W x y) 1 := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact Submodule.mem_map.mpr
    ⟨localSurfaceCentreReesTwo W x y,
      localSurfaceCentreReesTwo_mem_degree_one W x y, rfl⟩

/-- The degree-zero scalar `2` does not kill `2t` when the centre is
a proper ideal. The class in degree one of `Rees / (2)` is therefore
nonzero. This is ideal membership, not yet the scheme pullback. -/
theorem overlineTwoT_ne_zero
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hF : localSurfaceEquation W x y ∈ localSurfaceCentre) :
    overlineTwoT W x y ≠ 0 := by
  intro hz
  exact scalar_two_does_not_kill_two_t W x y
    (one_not_mem_centre_of_maximal W x y hF)
    (Ideal.Quotient.eq_zero_iff_mem.mp hz)

/-- When the surface equation lies in the square of the centre, the
square of `2t` is still outside the scalar ideal `(2)`. The class of
`2t` in `Rees / (2)` is therefore not killed by a single further
factor of itself. -/
theorem overlineTwoT_sq_ne_zero
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hF : localSurfaceEquation W x y ∈ localSurfaceCentre ^ 2) :
    (overlineTwoT W x y) ^ 2 ≠ 0 := by
  intro hz
  let R := localSurfaceCoordinateRing W x y
  let I := localSurfaceClosedPoint W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let two : R := q (MvPolynomial.C (2 : ℤ_[2]))
  have hmem :
      (localSurfaceCentreReesTwo W x y) ^ 2 ∈
        localSurfaceCentreReesSpecialIdeal W x y :=
    Ideal.Quotient.eq_zero_iff_mem.mp hz
  rw [localSurfaceCentreReesSpecialIdeal, Ideal.mem_span_singleton] at hmem
  obtain ⟨p, hp⟩ := hmem
  have hpoly :
      (Polynomial.monomial 1 two) ^ 2 =
        Polynomial.C two * (p : Polynomial R) := by
    have hcoe := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
    simpa [localSurfaceCentreReesTwo, centreReesDegreeOne, two] using hcoe
  have hmon :
      (Polynomial.monomial 1 two) ^ 2 =
        Polynomial.monomial 2 (two ^ 2) := by
    rw [pow_two, Polynomial.monomial_mul_monomial]
    simp [pow_two]
  have hcoeff : two ^ 2 = two * (p : Polynomial R).coeff 2 := by
    have hc := congrArg (fun z : Polynomial R => z.coeff 2) hpoly
    rw [hmon] at hc
    simpa [Polynomial.coeff_C_mul, Polynomial.coeff_monomial, pow_two] using hc
  have hone : (p : Polynomial R).coeff 2 = two := by
    have hreg := localSurfaceCoordinateRing_two_regular W x y
    have hpow : two ^ 2 = two * two := by simp [pow_two]
    have hsub : two * ((p : Polynomial R).coeff 2 - two) = 0 := by
      rw [mul_sub, ← hcoeff, hpow, sub_self]
    exact sub_eq_zero.mp (hreg _ hsub)
  have hI : (p : Polynomial R).coeff 2 ∈ I ^ 2 := by
    simpa [pow_two] using p.property 2
  rw [hone] at hI
  exact localSurfaceUniformizer_not_mem_closedPoint_sq W x y hF hI

/-- `(monomial 1 r) ^ n` is the degree-`n` monomial on `r ^ n`. -/
private lemma monomial_one_pow {R : Type} [CommRing R] (r : R) (n : ℕ) :
    (Polynomial.monomial 1 r) ^ n = Polynomial.monomial n (r ^ n) := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [pow_succ, ih, Polynomial.monomial_mul_monomial, pow_succ, mul_comm]

/-- `2` is not a unit of `ℤ_[2]`. -/
private lemma padic_two_not_unit : ¬ IsUnit (2 : ℤ_[2]) := by
  intro h
  have hnorm : ‖(2 : ℤ_[2])‖ = (2 : ℝ)⁻¹ := PadicInt.norm_p
  rw [PadicInt.isUnit_iff, hnorm] at h
  exact absurd h (by norm_num)

/-- On a point of the curve, no power of the class of `2t` in
`Rees / (2)` is zero. This is a calculation in the graded Rees
algebra: a relation `(2t) ^ n = 2 * f` puts `2 ^ (n - 1)` in the
`n`-th power of the centre, and evaluation at the centre then makes
`2` a unit of `ℤ_[2]`. It does not use a twisting sheaf. -/
theorem overlineTwoT_pow_nonzero
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hon : localWeierstrassEquation W x y = 0)
    (n : ℕ) :
    (overlineTwoT W x y) ^ n ≠ 0 := by
  intro hz
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := localSurfaceCoordinateRing W x y
  let I := localSurfaceClosedPoint W x y
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let two : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let εa : MvPolynomial (Fin 2) ℤ_[2] →ₐ[ℤ_[2]] ℤ_[2] :=
    MvPolynomial.aeval (fun _ : Fin 2 => (0 : ℤ_[2]))
  let ε : S →+* ℤ_[2] := εa.toRingHom
  have hεF : εa (localSurfaceEquation W x y) = 0 := by
    rw [localSurfaceEquation, localWeierstrassEquation]
    simp only [εa, WeierstrassCurve.map, map_sub, map_add, map_mul, map_pow,
      MvPolynomial.aeval_C, MvPolynomial.aeval_X]
    simp only [Algebra.id.map_eq_self, add_zero]
    exact hon
  let φ : R →+* ℤ_[2] :=
    Ideal.Quotient.lift (Ideal.span {localSurfaceEquation W x y}) ε
      (by
        intro a ha
        obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.mp ha
        have hε : ε (localSurfaceEquation W x y) = 0 := by
          simpa [ε] using hεF
        rw [hd, map_mul, hε, zero_mul])
  have hφtwo : φ two = 2 := by
    simp only [φ, two]
    rw [Ideal.Quotient.lift_mk]
    change εa (MvPolynomial.C (2 : ℤ_[2])) = 2
    rw [MvPolynomial.aeval_C]
    rfl
  have hunit_false (hunit : IsUnit (2 : ℤ_[2])) : False :=
    padic_two_not_unit hunit
  by_cases hn : n = 0
  · subst hn
    rw [pow_zero] at hz
    have hmem : (1 : localSurfaceCentreRees W x y) ∈
        localSurfaceCentreReesSpecialIdeal W x y :=
      Ideal.Quotient.eq_zero_iff_mem.mp hz
    rw [localSurfaceCentreReesSpecialIdeal, Ideal.mem_span_singleton] at hmem
    obtain ⟨p, hp⟩ := hmem
    have hpoly :
        (1 : Polynomial R) = Polynomial.C two * (p : Polynomial R) := by
      have hcoe := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
      simpa [two] using hcoe
    have hcoeff : (1 : R) = two * (p : Polynomial R).coeff 0 := by
      have hc := congrArg (fun z : Polynomial R => z.coeff 0) hpoly
      simpa [Polynomial.coeff_C_mul] using hc
    have hunit : IsUnit two :=
      isUnit_of_mul_eq_one _ _ hcoeff.symm
    have hunit2 : IsUnit (φ two) := hunit.map φ
    rw [hφtwo] at hunit2
    exact hunit_false hunit2
  · have hz' :
        Ideal.Quotient.mk (localSurfaceCentreReesSpecialIdeal W x y)
          ((localSurfaceCentreReesTwo W x y) ^ n) = 0 := by
      simp only [overlineTwoT] at hz
      rw [← map_pow] at hz
      exact hz
    have hmem :
        (localSurfaceCentreReesTwo W x y) ^ n ∈
          localSurfaceCentreReesSpecialIdeal W x y :=
      Ideal.Quotient.eq_zero_iff_mem.mp hz'
    rw [localSurfaceCentreReesSpecialIdeal, Ideal.mem_span_singleton] at hmem
    obtain ⟨p, hp⟩ := hmem
    have hpoly :
        (Polynomial.monomial 1 two) ^ n =
          Polynomial.C two * (p : Polynomial R) := by
      have hcoe := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
      simpa [localSurfaceCentreReesTwo, centreReesDegreeOne, two] using hcoe
    have hmon :
        (Polynomial.monomial 1 two) ^ n =
          Polynomial.monomial n (two ^ n) :=
      monomial_one_pow two n
    have hn1 : 0 < n := by omega
    have hcoeff : two ^ n = two * (p : Polynomial R).coeff n := by
      have hc := congrArg (fun z : Polynomial R => z.coeff n) hpoly
      rw [hmon] at hc
      simpa [Polynomial.coeff_C_mul, Polynomial.coeff_monomial] using hc
    have hreg := localSurfaceCoordinateRing_two_regular W x y
    have hexp : two ^ n = two * two ^ (n - 1) := by
      calc
        two ^ n = two ^ (n - 1 + 1) := by congr 1; omega
        _ = two ^ (n - 1) * two := by rw [pow_succ]
        _ = two * two ^ (n - 1) := mul_comm _ _
    have hone : (p : Polynomial R).coeff n = two ^ (n - 1) := by
      have hsub : two * ((p : Polynomial R).coeff n - two ^ (n - 1)) = 0 := by
        rw [mul_sub, ← hcoeff, hexp, sub_self]
      exact sub_eq_zero.mp (hreg _ hsub)
    have hI : (p : Polynomial R).coeff n ∈ I ^ n := p.property n
    rw [hone] at hI
    have hpowq : two ^ (n - 1) =
        q (MvPolynomial.C ((2 : ℤ_[2]) ^ (n - 1))) := by
      simp [two, map_pow]
    rw [hpowq] at hI
    have hmap : I ^ n = Ideal.map q (localSurfaceCentre ^ n) := by
      simp [I, localSurfaceClosedPoint, Ideal.map_pow]
    rw [hmap] at hI
    have hker : Ideal.comap q ⊥ =
        Ideal.span {localSurfaceEquation W x y} := by
      ext a
      simp only [Ideal.mem_comap, Ideal.mem_bot, q]
      exact Ideal.Quotient.eq_zero_iff_mem
    have hback : MvPolynomial.C ((2 : ℤ_[2]) ^ (n - 1)) ∈
        localSurfaceCentre ^ n ⊔
          Ideal.span {localSurfaceEquation W x y} := by
      have hcomap :=
        (Ideal.mem_comap (f := q)).2 hI
      rwa [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective,
        hker] at hcomap
    obtain ⟨g, hg, d, hd, hsum⟩ := Submodule.mem_sup.mp hback
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton.mp hd
    have heq : MvPolynomial.C ((2 : ℤ_[2]) ^ (n - 1)) - g =
        localSurfaceEquation W x y * c := by
      rw [← hc, ← hsum, add_sub_cancel_left]
    have hεg : ε g ∈ Ideal.span {((2 : ℤ_[2]) ^ n)} := by
      have hcent : Ideal.map ε localSurfaceCentre =
          Ideal.span {(2 : ℤ_[2])} := by
        simp only [localSurfaceCentre, Ideal.map_span, Set.image_insert_eq,
          Set.image_singleton]
        have hC : ε (MvPolynomial.C (2 : ℤ_[2])) = 2 := by
          change εa (MvPolynomial.C (2 : ℤ_[2])) = 2
          simp [MvPolynomial.aeval_C]
        have h0 : ε (MvPolynomial.X (0 : Fin 2)) = 0 := by
          change εa (MvPolynomial.X (0 : Fin 2)) = 0
          rw [MvPolynomial.aeval_X]
        have h1 : ε (MvPolynomial.X (1 : Fin 2)) = 0 := by
          change εa (MvPolynomial.X (1 : Fin 2)) = 0
          rw [MvPolynomial.aeval_X]
        rw [hC, h0, h1]
        refine le_antisymm ?_ (Ideal.span_mono ?_)
        · rw [Ideal.span_le]
          intro z hz
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
          rcases hz with rfl | rfl | rfl
          · exact Ideal.mem_span_singleton.mpr ⟨1, by simp⟩
          · exact Ideal.zero_mem _
          · exact Ideal.zero_mem _
        · intro z hz
          simp only [Set.mem_singleton_iff] at hz
          subst hz
          simp
      have hpow : Ideal.map ε (localSurfaceCentre ^ n) =
          Ideal.span {((2 : ℤ_[2]) ^ n)} := by
        rw [Ideal.map_pow, hcent, Ideal.span_singleton_pow]
      have hgmap : ε g ∈ Ideal.map ε (localSurfaceCentre ^ n) :=
        Ideal.mem_map_of_mem ε hg
      rwa [hpow] at hgmap
    have hval : (2 : ℤ_[2]) ^ (n - 1) = ε g := by
      have hdiff := congrArg ε heq
      have hε0 : ε (localSurfaceEquation W x y) = 0 := by
        simpa [ε] using hεF
      rw [map_sub, map_mul, hε0, zero_mul, sub_eq_zero] at hdiff
      have hCpow : ε (MvPolynomial.C ((2 : ℤ_[2]) ^ (n - 1))) =
          (2 : ℤ_[2]) ^ (n - 1) := by
        change εa (MvPolynomial.C ((2 : ℤ_[2]) ^ (n - 1))) =
          (2 : ℤ_[2]) ^ (n - 1)
        simp [MvPolynomial.aeval_C]
      rw [hCpow] at hdiff
      exact hdiff
    rw [← hval] at hεg
    obtain ⟨u, hu⟩ := Ideal.mem_span_singleton.mp hεg
    have hcancel : (1 : ℤ_[2]) = 2 * u := by
      have hne : (2 : ℤ_[2]) ^ (n - 1) ≠ 0 :=
        pow_ne_zero _ padic_two_ne_zero
      apply mul_left_cancel₀ hne
      calc
        (2 : ℤ_[2]) ^ (n - 1) * 1 = (2 : ℤ_[2]) ^ (n - 1) := by rw [mul_one]
        _ = (2 : ℤ_[2]) ^ n * u := hu
        _ = (2 : ℤ_[2]) ^ (n - 1 + 1) * u := by
            congr 1
            congr 1
            omega
        _ = (2 : ℤ_[2]) ^ (n - 1) * 2 * u := by rw [pow_succ]
        _ = (2 : ℤ_[2]) ^ (n - 1) * (2 * u) := by rw [mul_assoc]
    exact hunit_false (isUnit_of_mul_eq_one _ _ hcancel.symm)

/-! ## `UniversallyClosed` does not split along `D(2)` and `V(2)`

`UniversallyClosed` is `universally (topologically IsClosedMap)`.
In Mathlib v4.12.0 it is local on the target
(`universallyClosed_isLocalAtTarget`): if an open cover of the
target pulls the morphism back to universally closed maps, the
morphism is universally closed. There is no valuative criterion.

The source is already covered. `three_open_cover` is
`D₊(2t) ∪ D₊(Xt) ∪ D₊(Yt) = Proj`. That is not an open cover of
`Spec(ℤ_[2])`. Finite type of a chart (`twoChart_finiteType`) or
of the surface ring (`surfaceCoordinate_finiteType`) is not
`UniversallyClosed`.

The target-local split `D(2)` plus `V(2)` is not an open cover.
`base_closedPoint_not_mem_D2` says the closed point misses `D(2)`.
`base_closedPoint_mem_open_iff_top` says every open that contains
the closed point is the whole spectrum. `base_V2_not_open` says
the complement is not open. Checking the pullback on `D(2)` and
the fibre over `V(2)` is not an application of
`IsLocalAtTarget.iff_of_iSup_eq_top`.

Over `D(2)`, `generic_fibre_iso` identifies the pullback with
`Spec(R_Z[1/2])` as a scheme over `D(2)`, and
`generic_centre_eq_top` says the centre becomes the unit ideal.
The target of that isomorphism is the localized surface, not
`D(2)`. An isomorphism to the base would be universally closed.
This one is the structure map of a finite-type affine surface.

Over `V(2)`, `localSurfaceCentreSpecialFibreScheme_iso_ReesSpecialProj`
identifies the fibre with `Proj(Rees / (2))`. A closed immersion of
that `Proj` into `ℙ²` over `𝔽₂` is not a term in Mathlib v4.12.0.
There is no scheme `ℙⁿ`, and no morphism of `Proj` induced by a
graded surjection. `IsClosedImmersion` is not shown to be stable
under pullback, and it is not shown to be `UniversallyClosed`.
Three degree-one generators would present a closed subscheme of
`ℙ²` over the degree-zero ring `R/(2)`, not over `𝔽₂`.
`twoChartMod2_finiteType` is finite type of one affine chart of
that fibre. `overlineTwoT_pow_nonzero` is nilpotence on a point of
the curve. It is not a valuative criterion, and this library has
none. No instance is declared.

`genericPullback_universallyClosed_of_total` is the base-change
constraint. `UniversallyClosed` of `localSurfaceCentreReesToBase`
would force `UniversallyClosed` of the pullback to `D(2)`. That
pullback is the affine map to `D(2)` from `Spec(R_Z[1/2])`.
Properness of the special fibre would not remove that constraint,
and the target does not split into `D(2)` and `V(2)`.

The identity base change of `Spec(R_Z[1/2]) → D(2)` lands in a
one-point space, so that map is a closed map. Affine finite type
does not imply failure of `UniversallyClosed` in this Mathlib:
there is no theorem that an affine universally closed morphism is
integral. A further base change, the hyperbola `V(xT - 1)` over
`𝔸¹`, is the standard reason the surface is not proper, and it is
not formalized. `localSurfaceCentreReesToBase_universallyClosed_false`
records the negation and is not inhabited.

What is proved is the open immersion `D(2) ↪ Spec(ℤ_[2])`.
`localizationAway_not_isClosedMap` says that for a domain element
which is neither zero nor a unit, `Spec` of the localization away
from that element is not a closed map: its image is the basic
open, which is dense and not the whole spectrum.
`awayTwoInclusion_not_universallyClosed` is that fact for `2` on
`ℤ_[2]`. It is not a statement about `localSurfaceCentreReesToBase`.

The blow-up morphism whose universal closedness is the properness
of the centre in the surface is `localSurfaceCentreReesToSurface`,
the map `Bl_I → Spec(R)`. `localSurfaceCentreReesToSurfaceProper`
is that predicate.

The source cover does not prove it. `UniversallyClosed` is local
on the target. `D₊(2t) ∪ D₊(Xt) ∪ D₊(Yt)` covers `Proj`, not
`Spec(R)`, so `universallyClosed_isLocalAtTarget` does not apply.
A finite open cover of the source would make the total map a
closed map only if each restriction were a closed map. On
`D₊(f)` the restriction is the affine map from the degree-zero
localization. `reesDegreeZeroChart_finiteType` says that ring is
a quotient of `R[T₀,T₁,T₂]`, hence finite type over `R`. Finite
type is not a closed map. `overlineTwoT_pow_nonzero` does not
produce a specialization. The contraction statement, that the
image of `V₊(J)` is `V(J ∩ R)`, is not a lemma in this Mathlib.

The missing lemma is properness of `Proj` of a finitely generated
graded algebra over the Noetherian ring `R`. The usual proof
needs a graded surjection `R[T₀,T₁,T₂] → Rees` and the closed
immersion of that `Proj` into `ℙ²_R`. Mathlib v4.12.0 has no
scheme `ℙⁿ` and no morphism of `Proj` induced by a graded
surjection. `IsClosedImmersion` is not shown to be
`UniversallyClosed`. -/

/-- If the Rees structure map were universally closed, its base
change along `D(2) ↪ Spec(ℤ_[2])` would be universally closed.
`generic_fibre_iso` identifies that base change with the affine
map `Spec(R_Z[1/2]) → D(2)`. The hypothesis is not supplied. -/
theorem genericPullback_universallyClosed_of_total
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    [AlgebraicGeometry.UniversallyClosed
      (localSurfaceCentreReesToBase W x y)] :
    AlgebraicGeometry.UniversallyClosed
      (CategoryTheory.Limits.pullback.snd
        (localSurfaceCentreReesToBase W x y)
        (AlgebraicGeometry.Scheme.Opens.ι
          (X := AlgebraicGeometry.Spec (CommRingCat.of ℤ_[2]))
          (PrimeSpectrum.basicOpen (2 : ℤ_[2])))) :=
  inferInstance

/-- In any ring, `D(f)` is not the whole spectrum when `f` is not a
unit: a maximal ideal containing `(f)` is a point of the complement. -/
theorem basicOpen_ne_univ_of_not_isUnit {R : Type*} [CommRing R] {f : R}
    (hnu : ¬ IsUnit f) :
    (PrimeSpectrum.basicOpen f : Set (PrimeSpectrum R)) ≠ Set.univ := by
  intro heq
  have hspan : Ideal.span ({f} : Set R) ≠ ⊤ :=
    mt Ideal.span_singleton_eq_top.mp hnu
  obtain ⟨m, hm, hle⟩ := Ideal.exists_le_maximal (Ideal.span {f}) hspan
  have hmem : (⟨m, hm.isPrime⟩ : PrimeSpectrum R) ∈
      (PrimeSpectrum.basicOpen f : Set (PrimeSpectrum R)) := by
    rw [heq]
    exact Set.mem_univ _
  rw [SetLike.mem_coe, PrimeSpectrum.mem_basicOpen] at hmem
  exact hmem (hle (Ideal.mem_span_singleton.mpr ⟨1, by simp⟩))

/-- For a domain, localizing away from an element that is neither zero
nor a unit is not a closed map on prime spectra. The image is `D(f)`,
which is dense and not the whole space, so it is not closed. -/
theorem localizationAway_not_isClosedMap
    {R S : Type*} [CommRing R] [IsDomain R] [CommRing S] [Algebra R S]
    (f : R) [IsLocalization.Away f S] (hf0 : f ≠ 0) (hnu : ¬ IsUnit f) :
    ¬ IsClosedMap (PrimeSpectrum.comap (algebraMap R S)) := by
  intro hmap
  have himage :
      Set.range (PrimeSpectrum.comap (algebraMap R S)) =
        (PrimeSpectrum.basicOpen f : Set (PrimeSpectrum R)) :=
    PrimeSpectrum.localization_away_comap_range S f
  have hclosed_range :
      IsClosed (Set.range (PrimeSpectrum.comap (algebraMap R S))) := by
    rw [← Set.image_univ]
    exact hmap _ isClosed_univ
  have hdense : Dense (Set.range (PrimeSpectrum.comap (algebraMap R S))) := by
    rw [himage]
    exact basicOpen_dense_of_ne_zero hf0
  have huniv : Set.range (PrimeSpectrum.comap (algebraMap R S)) = Set.univ := by
    rw [← hclosed_range.closure_eq]
    exact hdense.closure_eq
  exact basicOpen_ne_univ_of_not_isUnit hnu (himage.symm.trans huniv)

/-- The open immersion `D(2) ↪ Spec(ℤ_[2])`, as `Spec` of
`ℤ_[2] → ℤ_[2][1/2]`. This is not `localSurfaceCentreReesToBase`. -/
noncomputable def awayTwoInclusion :
    AlgebraicGeometry.Spec (CommRingCat.of (Localization.Away (2 : ℤ_[2]))) ⟶
      AlgebraicGeometry.Spec (CommRingCat.of ℤ_[2]) :=
  AlgebraicGeometry.Spec.map
    (CommRingCat.ofHom (algebraMap ℤ_[2] (Localization.Away (2 : ℤ_[2]))))

/-- `D(2) ↪ Spec(ℤ_[2])` is not a closed map. The scheme morphism is
`Spec` of `algebraMap`, so its underlying map is
`PrimeSpectrum.comap` of that homomorphism. -/
theorem awayTwoInclusion_not_isClosedMap :
    ¬ IsClosedMap awayTwoInclusion.1.base := by
  intro hclosed
  apply localizationAway_not_isClosedMap (R := ℤ_[2])
    (S := Localization.Away (2 : ℤ_[2])) (2 : ℤ_[2])
    padic_two_ne_zero padic_two_not_unit
  change IsClosedMap (PrimeSpectrum.comap
    (algebraMap ℤ_[2] (Localization.Away (2 : ℤ_[2])))) at hclosed
  exact hclosed

/-- `D(2) ↪ Spec(ℤ_[2])` is not universally closed: the identity base
change is the map itself, and that map is not closed. -/
theorem awayTwoInclusion_not_universallyClosed :
    ¬ AlgebraicGeometry.UniversallyClosed awayTwoInclusion := by
  intro hUC
  apply awayTwoInclusion_not_isClosedMap
  exact (AlgebraicGeometry.universallyClosed_iff awayTwoInclusion).mp hUC
    (CategoryTheory.CategoryStruct.id _)
    (CategoryTheory.CategoryStruct.id _)
    awayTwoInclusion
    (CategoryTheory.IsPullback.id_vert awayTwoInclusion)

/-- The claim that `localSurfaceCentreReesToBase` fails to be
universally closed over `Spec(ℤ_[2])`.

`genericPullback_universallyClosed_of_total` and
`generic_fibre_iso` reduce an inhabitant of
`UniversallyClosed (localSurfaceCentreReesToBase)` to
`UniversallyClosed` of `Spec(R[1/2]) → D(2)`, and
`generic_centre_eq_top` says `I[1/2] = ⊤`. The target of that map
is a one-point space, so the identity base change is a closed map.
Affine finite type is not a proof that the map fails to be
universally closed. The missing step is a further base change
whose image is not closed. `awayTwoInclusion_not_universallyClosed`
is a different morphism. No inhabitant is given. -/
def localSurfaceCentreReesToBase_universallyClosed_false : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]),
    ¬ AlgebraicGeometry.UniversallyClosed (localSurfaceCentreReesToBase W x y)

/-- Each degree-zero Rees chart, presented as a quotient of
`R[T₀,T₁,T₂]` by the ratio relations at one centre generator, is
finite type over the translated surface ring `R`. For `i = 1, 2`
this quotient is the coordinate ring of `D₊(Xᵢ t)`
(`localSurfaceCentreCoordinateBasicSchemeIso`). For `i = 0` the
denominator is the image of `2`, and `centreReesRatioQuotientEquiv`
identifies the quotient with the degree-zero localization at `2t`.
Finite type of these affine charts is not `UniversallyClosed` of
`Bl_I → Spec(R)`. -/
theorem reesDegreeZeroChart_finiteType
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 3) :
    Algebra.FiniteType (localSurfaceCoordinateRing W x y)
      (MvPolynomial (Fin 3) (localSurfaceCoordinateRing W x y) ⧸
        centreReesRatioRelations (localSurfaceCentreScalars W x y)
          (localSurfaceCentreScalars W x y i)) := by
  exact Algebra.FiniteType.of_surjective
    (Algebra.FiniteType.mvPolynomial
      (R := localSurfaceCoordinateRing W x y) (Fin 3))
    (Ideal.Quotient.mkₐ (localSurfaceCoordinateRing W x y)
      (centreReesRatioRelations (localSurfaceCentreScalars W x y)
        (localSurfaceCentreScalars W x y i)))
    (Ideal.Quotient.mkₐ_surjective _ _)

/-- The structure map `Proj(A) → Spec(R)` given by degree-zero scalar
sections. This is the construction used for
`localSurfaceCentreReesToSurface`. The definition is not a proof
of `UniversallyClosed`. -/
noncomputable def gradedProjToBase
    {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜] :
    AlgebraicGeometry.«Proj» 𝒜 ⟶
      AlgebraicGeometry.Spec (CommRingCat.of R) :=
  (AlgebraicGeometry.ΓSpec.adjunction.homEquiv
      (AlgebraicGeometry.«Proj» 𝒜)
      (Opposite.op (CommRingCat.of R)))
    (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op

/-- OPEN. `Proj` of a finite-type graded algebra over a Noetherian
ring is universally closed over `Spec` of that ring.

The body is `Algebra.FiniteType` of the underlying algebra. The
degree-one generation used to land in `ℙⁿ` is not a separate
hypothesis: Mathlib v4.12.0 has no scheme `ℙⁿ`. The usual proof
needs a graded surjection `R[T₀,T₁,T₂] → A`, the closed immersion
of `Proj` into `ℙ²_R`, and properness of `ℙ²_R`. There is no
morphism of `Proj` induced by a graded surjection.
`IsClosedImmersion` is not shown to be stable under pullback and
is not shown to be `UniversallyClosed`. There is no valuative
criterion. `gradedProjToBase` only names the scalar structure map.
No inhabitant is given. -/
def proj_proper_of_fg_graded : Prop :=
  ∀ (R A : Type) [CommRing R] [IsNoetherianRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜],
    Algebra.FiniteType R A →
    AlgebraicGeometry.UniversallyClosed (gradedProjToBase 𝒜)

/-- OPEN. Properness of the blow-up of the centre in the translated
surface is `UniversallyClosed` of `Bl_I → Spec(R)`, the morphism
`localSurfaceCentreReesToSurface`. That morphism is the scalar
structure map `gradedProjToBase` of the Rees grading. The finite
affine cover `D₊(2t) ∪ D₊(Xt) ∪ D₊(Yt)` covers the source, and
`reesDegreeZeroChart_finiteType` makes each degree-zero chart a
finite-type `R`-algebra. `UniversallyClosed` is local on the
target, and an affine finite-type chart map is not a closed map,
so the cover does not prove the predicate. The missing general
lemma is `proj_proper_of_fg_graded`. No inhabitant is given. -/
def localSurfaceCentreReesToSurfaceProper : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]),
    AlgebraicGeometry.UniversallyClosed
      (localSurfaceCentreReesToSurface W x y)

/-! ## The ratio `2t / (Xᵢ t)` is outside the saturated chart ideals

`J_X` and `J_Y` are ideals of the polynomial ring
`R[T₀,T₁,T₂]`, not of the Rees algebra. The element `2t` itself is
not a term of that polynomial ring. On the chart `D₊(Xᵢ t)` the
degree-zero ratio `2t / (Xᵢ t)` is the class of the chart variable
`T₀`. That variable lies outside `J_{Xᵢ} = (G : Xᵢ^∞)`. -/

lemma coeff_single_eq_zero_of_degreeOf_lt
    {R : Type} [CommRing R] {i : Fin 2} {k : ℕ}
    {p : MvPolynomial (Fin 2) R}
    (hk : 0 < k) (h : MvPolynomial.degreeOf i p < k) :
    p.coeff (Finsupp.single i k) = 0 := by
  classical
  by_contra hn
  have hmem : Finsupp.single i k ∈ p.support :=
    (MvPolynomial.mem_support_iff).2 hn
  rw [MvPolynomial.degreeOf_lt_iff hk] at h
  have hlt := h _ hmem
  simp [Finsupp.single_eq_same] at hlt

lemma polynomial_mul_eq_X_pow_false
    {R : Type} [CommRing R] [IsDomain R]
    {f g : Polynomial R} {n : ℕ}
    (h : f * g = Polynomial.X ^ n)
    (h0 : Polynomial.eval (0 : R) f ≠ 0)
    (hdeg : 0 < f.natDegree) : False := by
  induction n generalizing g with
  | zero =>
      have hu : IsUnit f := isUnit_of_mul_eq_one f g (by simpa [pow_zero] using h)
      have hd : f.natDegree = 0 := Polynomial.natDegree_eq_zero_of_isUnit hu
      omega
  | succ n ih =>
      have he : Polynomial.eval (0 : R) f * Polynomial.eval 0 g = 0 := by
        have := congrArg (Polynomial.eval (0 : R)) h
        simpa [Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_X] using this
      have hg0 : Polynomial.eval 0 g = 0 :=
        (mul_eq_zero.mp he).resolve_left h0
      have hdiv : Polynomial.X ∣ g :=
        Polynomial.X_dvd_iff.mpr (by
          simpa [Polynomial.coeff_zero_eq_eval_zero] using hg0)
      obtain ⟨g1, rfl⟩ := hdiv
      have hcancel : f * g1 = Polynomial.X ^ n := by
        have hmul : Polynomial.X * (f * g1) = Polynomial.X * Polynomial.X ^ n := by
          calc
            Polynomial.X * (f * g1) = f * (Polynomial.X * g1) := by ring
            _ = Polynomial.X ^ (n + 1) := h
            _ = Polynomial.X * Polynomial.X ^ n := by rw [pow_succ']
        exact mul_left_cancel₀ Polynomial.X_ne_zero hmul
      exact ih hcancel

theorem localSurfaceEquation_coeff_Y_sq
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    (localSurfaceEquation W x y).coeff (Finsupp.single 1 2) = 1 := by
  classical
  let u : MvPolynomial (Fin 2) ℤ_[2] :=
    MvPolynomial.C x + MvPolynomial.X 0
  let v : MvPolynomial (Fin 2) ℤ_[2] :=
    MvPolynomial.C y + MvPolynomial.X 1
  let c : ℤ_[2] →+* MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.C
  let Wc := W.map c
  let m := Finsupp.single (1 : Fin 2) 2
  have heq : localSurfaceEquation W x y =
      v ^ 2 + Wc.a₁ * u * v + Wc.a₃ * v -
        (u ^ 3 + Wc.a₂ * u ^ 2 + Wc.a₄ * u + c W.a₆) := by
    simp [localSurfaceEquation, localWeierstrassEquation, u, v, Wc, c,
      WeierstrassCurve.map]
  have hzero {p : MvPolynomial (Fin 2) ℤ_[2]}
      (h : MvPolynomial.degreeOf 1 p < 2) : p.coeff m = 0 :=
    coeff_single_eq_zero_of_degreeOf_lt (by decide) h
  have hm : (0 : Fin 2 →₀ ℕ) ≠ m := by
    intro h
    have := congrArg (fun t : Fin 2 →₀ ℕ => t 1) h
    simp [m, Finsupp.single_eq_same] at this
  have hdeg_u : MvPolynomial.degreeOf 1 u ≤ 0 := by
    refine (MvPolynomial.degreeOf_add_le 1 _ _).trans ?_
    simp [u, MvPolynomial.degreeOf_C, MvPolynomial.degreeOf_X]
  have hdeg_v : MvPolynomial.degreeOf 1 v ≤ 1 := by
    refine (MvPolynomial.degreeOf_add_le 1 _ _).trans ?_
    simp [v, MvPolynomial.degreeOf_C, MvPolynomial.degreeOf_X]
  have hdeg_u_pow : ∀ k : ℕ, MvPolynomial.degreeOf 1 (u ^ k) ≤ 0 := by
    intro k
    induction k with
    | zero =>
        rw [pow_zero, ← MvPolynomial.C_1]
        exact (MvPolynomial.degreeOf_C (1 : ℤ_[2]) (1 : Fin 2)).le
    | succ k ih =>
        rw [pow_succ]
        refine (MvPolynomial.degreeOf_mul_le 1 (u ^ k) u).trans ?_
        omega
  have hdeg_uv : MvPolynomial.degreeOf 1 (u * v) ≤ 1 := by
    refine (MvPolynomial.degreeOf_mul_le 1 u v).trans ?_
    omega
  have hv2 : (v ^ 2).coeff m = 1 := by
    have hexp : v ^ 2 =
        (MvPolynomial.C y * MvPolynomial.X (1 : Fin 2)) * 2 +
          (MvPolynomial.C y) ^ 2 + MvPolynomial.X (1 : Fin 2) ^ 2 := by
      simp only [v, pow_two]
      ring_nf
    rw [hexp, MvPolynomial.coeff_add, MvPolynomial.coeff_add]
    have hlin : ((MvPolynomial.C y * MvPolynomial.X (1 : Fin 2)) * 2).coeff m = 0 := by
      apply hzero
      rw [mul_two]
      have hbase : MvPolynomial.degreeOf (1 : Fin 2)
          (MvPolynomial.C y * MvPolynomial.X (1 : Fin 2)) ≤ 1 := by
        refine (MvPolynomial.degreeOf_mul_le (1 : Fin 2)
          (MvPolynomial.C y) (MvPolynomial.X (1 : Fin 2))).trans ?_
        simp [MvPolynomial.degreeOf_C, MvPolynomial.degreeOf_X]
      have hle : MvPolynomial.degreeOf (1 : Fin 2)
          (MvPolynomial.C y * MvPolynomial.X (1 : Fin 2) +
            MvPolynomial.C y * MvPolynomial.X (1 : Fin 2)) ≤ 1 := by
        refine (MvPolynomial.degreeOf_add_le (1 : Fin 2)
          (MvPolynomial.C y * MvPolynomial.X (1 : Fin 2))
          (MvPolynomial.C y * MvPolynomial.X (1 : Fin 2))).trans ?_
        exact max_le hbase hbase
      omega
    have hC : ((MvPolynomial.C y) ^ 2).coeff m = 0 := by
      apply hzero
      rw [pow_two]
      have hle : MvPolynomial.degreeOf (1 : Fin 2)
          (MvPolynomial.C y * MvPolynomial.C y) ≤ 0 := by
        refine (MvPolynomial.degreeOf_mul_le (1 : Fin 2)
          (MvPolynomial.C y) (MvPolynomial.C y)).trans ?_
        simp [MvPolynomial.degreeOf_C]
      omega
    rw [hlin, hC]
    simp only [zero_add, add_zero]
    rw [MvPolynomial.coeff_X_pow, if_pos rfl]
  have hcross : (Wc.a₁ * u * v).coeff m = 0 := by
    have he : Wc.a₁ * u * v = MvPolynomial.C W.a₁ * (u * v) := by
      simp [Wc, c, WeierstrassCurve.map, mul_assoc]
    rw [he]
    exact hzero (by
      have hle := (MvPolynomial.degreeOf_C_mul_le (u * v) 1 W.a₁).trans hdeg_uv
      omega)
  have hlinY : (Wc.a₃ * v).coeff m = 0 := by
    have he : Wc.a₃ * v = MvPolynomial.C W.a₃ * v := by
      simp [Wc, c, WeierstrassCurve.map]
    rw [he]
    exact hzero (by
      have hle := (MvPolynomial.degreeOf_C_mul_le v 1 W.a₃).trans hdeg_v
      omega)
  have hrest : (u ^ 3 + Wc.a₂ * u ^ 2 + Wc.a₄ * u + c W.a₆).coeff m = 0 := by
    rw [MvPolynomial.coeff_add, MvPolynomial.coeff_add, MvPolynomial.coeff_add]
    have h3 : (u ^ 3).coeff m = 0 := by
      apply hzero
      have hu := hdeg_u_pow 3
      omega
    have h2 : (Wc.a₂ * u ^ 2).coeff m = 0 := by
      have he : Wc.a₂ * u ^ 2 = MvPolynomial.C W.a₂ * u ^ 2 := by
        simp [Wc, c, WeierstrassCurve.map]
      rw [he]
      exact hzero (by
        have hle :=
          (MvPolynomial.degreeOf_C_mul_le (u ^ 2) 1 W.a₂).trans (hdeg_u_pow 2)
        omega)
    have h1 : (Wc.a₄ * u).coeff m = 0 := by
      have he : Wc.a₄ * u = MvPolynomial.C W.a₄ * u := by
        simp [Wc, c, WeierstrassCurve.map]
      rw [he]
      exact hzero (by
        have hle := (MvPolynomial.degreeOf_C_mul_le u 1 W.a₄).trans hdeg_u
        omega)
    have h0 : (c W.a₆).coeff m = 0 := by
      rw [MvPolynomial.coeff_C, if_neg hm]
    simp only [h3, h2, h1, h0, zero_add, add_zero]
  rw [heq, MvPolynomial.coeff_sub, MvPolynomial.coeff_add, MvPolynomial.coeff_add]
  simp only [hv2, hcross, hlinY, hrest, add_zero, sub_zero]

theorem localSurfaceEquation_coeff_X_cube
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    (localSurfaceEquation W x y).coeff (Finsupp.single 0 3) = -1 := by
  classical
  let u : MvPolynomial (Fin 2) ℤ_[2] :=
    MvPolynomial.C x + MvPolynomial.X 0
  let v : MvPolynomial (Fin 2) ℤ_[2] :=
    MvPolynomial.C y + MvPolynomial.X 1
  let c : ℤ_[2] →+* MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.C
  let Wc := W.map c
  let m := Finsupp.single (0 : Fin 2) 3
  have heq : localSurfaceEquation W x y =
      v ^ 2 + Wc.a₁ * u * v + Wc.a₃ * v -
        (u ^ 3 + Wc.a₂ * u ^ 2 + Wc.a₄ * u + c W.a₆) := by
    simp [localSurfaceEquation, localWeierstrassEquation, u, v, Wc, c,
      WeierstrassCurve.map]
  have hzero {p : MvPolynomial (Fin 2) ℤ_[2]}
      (h : MvPolynomial.degreeOf 0 p < 3) : p.coeff m = 0 :=
    coeff_single_eq_zero_of_degreeOf_lt (by decide) h
  have hdeg_u : MvPolynomial.degreeOf 0 u ≤ 1 := by
    refine (MvPolynomial.degreeOf_add_le 0 _ _).trans ?_
    simp [u, MvPolynomial.degreeOf_C, MvPolynomial.degreeOf_X]
  have hdeg_v : MvPolynomial.degreeOf 0 v ≤ 0 := by
    refine (MvPolynomial.degreeOf_add_le 0 _ _).trans ?_
    simp [v, MvPolynomial.degreeOf_C, MvPolynomial.degreeOf_X]
  have hdeg_v_pow : ∀ k : ℕ, MvPolynomial.degreeOf 0 (v ^ k) ≤ 0 := by
    intro k
    induction k with
    | zero =>
        rw [pow_zero, ← MvPolynomial.C_1]
        exact (MvPolynomial.degreeOf_C (1 : ℤ_[2]) (0 : Fin 2)).le
    | succ k ih =>
        rw [pow_succ]
        refine (MvPolynomial.degreeOf_mul_le 0 (v ^ k) v).trans ?_
        omega
  have hdeg_u2 : MvPolynomial.degreeOf 0 (u ^ 2) ≤ 2 := by
    rw [pow_two]
    refine (MvPolynomial.degreeOf_mul_le 0 u u).trans ?_
    omega
  have hdeg_uv : MvPolynomial.degreeOf 0 (u * v) ≤ 1 := by
    refine (MvPolynomial.degreeOf_mul_le 0 u v).trans ?_
    omega
  have hu3 : (u ^ 3).coeff m = 1 := by
    have hexp : u ^ 3 =
        (MvPolynomial.C x * MvPolynomial.X (0 : Fin 2) ^ 2) * 3 +
          (MvPolynomial.C x ^ 2 * MvPolynomial.X (0 : Fin 2)) * 3 +
          MvPolynomial.C x ^ 3 + MvPolynomial.X (0 : Fin 2) ^ 3 := by
      simp only [u, pow_succ, pow_two, pow_one]
      ring_nf
    rw [hexp, MvPolynomial.coeff_add, MvPolynomial.coeff_add, MvPolynomial.coeff_add]
    have hmul3 (p : MvPolynomial (Fin 2) ℤ_[2]) : p * 3 = p + p + p := by ring
    have h1 : ((MvPolynomial.C x * MvPolynomial.X (0 : Fin 2) ^ 2) * 3).coeff m = 0 := by
      apply hzero
      rw [hmul3]
      set p : MvPolynomial (Fin 2) ℤ_[2] :=
        MvPolynomial.C x * MvPolynomial.X (0 : Fin 2) ^ 2
      have hp : MvPolynomial.degreeOf (0 : Fin 2) p ≤ 2 := by
        refine (MvPolynomial.degreeOf_mul_le (0 : Fin 2)
          (MvPolynomial.C x) (MvPolynomial.X (0 : Fin 2) ^ 2)).trans ?_
        have hX : MvPolynomial.degreeOf (0 : Fin 2)
            ((MvPolynomial.X (0 : Fin 2) : MvPolynomial (Fin 2) ℤ_[2]) ^ 2) ≤ 2 := by
          rw [pow_two]
          have hdegX : MvPolynomial.degreeOf (0 : Fin 2)
              (MvPolynomial.X (0 : Fin 2) : MvPolynomial (Fin 2) ℤ_[2]) = 1 := by
            rw [MvPolynomial.degreeOf_X, if_pos rfl]
          have hmul := MvPolynomial.degreeOf_mul_le (0 : Fin 2)
            (MvPolynomial.X (0 : Fin 2) : MvPolynomial (Fin 2) ℤ_[2])
            (MvPolynomial.X (0 : Fin 2))
          rw [hdegX] at hmul
          exact hmul.trans (by decide : (1 + 1 : ℕ) ≤ 2)
        have hC : MvPolynomial.degreeOf (0 : Fin 2) (MvPolynomial.C x) ≤ 0 := by
          simp [MvPolynomial.degreeOf_C]
        omega
      have hle : MvPolynomial.degreeOf (0 : Fin 2) (p + p + p) ≤ 2 := by
        refine (MvPolynomial.degreeOf_add_le (0 : Fin 2) (p + p) p).trans ?_
        refine max_le ?_ hp
        refine (MvPolynomial.degreeOf_add_le (0 : Fin 2) p p).trans ?_
        exact max_le hp hp
      omega
    have h2 : ((MvPolynomial.C x ^ 2 * MvPolynomial.X (0 : Fin 2)) * 3).coeff m = 0 := by
      apply hzero
      rw [hmul3]
      set p : MvPolynomial (Fin 2) ℤ_[2] :=
        MvPolynomial.C x ^ 2 * MvPolynomial.X (0 : Fin 2)
      have hp : MvPolynomial.degreeOf (0 : Fin 2) p ≤ 1 := by
        refine (MvPolynomial.degreeOf_mul_le (0 : Fin 2)
          (MvPolynomial.C x ^ 2) (MvPolynomial.X (0 : Fin 2))).trans ?_
        have hC : MvPolynomial.degreeOf (0 : Fin 2) (MvPolynomial.C x ^ 2) ≤ 0 := by
          rw [pow_two]
          refine (MvPolynomial.degreeOf_mul_le (0 : Fin 2)
            (MvPolynomial.C x) (MvPolynomial.C x)).trans ?_
          simp [MvPolynomial.degreeOf_C]
        have hX : MvPolynomial.degreeOf (0 : Fin 2)
            (MvPolynomial.X (0 : Fin 2) : MvPolynomial (Fin 2) ℤ_[2]) ≤ 1 := by
          rw [MvPolynomial.degreeOf_X, if_pos rfl]
        omega
      have hle : MvPolynomial.degreeOf (0 : Fin 2) (p + p + p) ≤ 1 := by
        refine (MvPolynomial.degreeOf_add_le (0 : Fin 2) (p + p) p).trans ?_
        refine max_le ?_ hp
        refine (MvPolynomial.degreeOf_add_le (0 : Fin 2) p p).trans ?_
        exact max_le hp hp
      omega
    have hC : (MvPolynomial.C x ^ 3).coeff m = 0 := by
      apply hzero
      rw [pow_succ, pow_two]
      have hle : MvPolynomial.degreeOf (0 : Fin 2)
          (MvPolynomial.C x * MvPolynomial.C x * MvPolynomial.C x) ≤ 0 := by
        refine (MvPolynomial.degreeOf_mul_le (0 : Fin 2)
          (MvPolynomial.C x * MvPolynomial.C x) (MvPolynomial.C x)).trans ?_
        have h2 : MvPolynomial.degreeOf (0 : Fin 2)
            (MvPolynomial.C x * MvPolynomial.C x) ≤ 0 := by
          refine (MvPolynomial.degreeOf_mul_le (0 : Fin 2)
            (MvPolynomial.C x) (MvPolynomial.C x)).trans ?_
          simp [MvPolynomial.degreeOf_C]
        have h1 : MvPolynomial.degreeOf (0 : Fin 2) (MvPolynomial.C x) ≤ 0 := by
          simp [MvPolynomial.degreeOf_C]
        omega
      omega
    rw [h1, h2, hC]
    simp only [zero_add, add_zero]
    rw [MvPolynomial.coeff_X_pow, if_pos rfl]
  have hv2 : (v ^ 2).coeff m = 0 := by
    apply hzero
    have hv := hdeg_v_pow 2
    omega
  have hcross : (Wc.a₁ * u * v).coeff m = 0 := by
    have he : Wc.a₁ * u * v = MvPolynomial.C W.a₁ * (u * v) := by
      simp [Wc, c, WeierstrassCurve.map, mul_assoc]
    rw [he]
    exact hzero (by
      have hle := (MvPolynomial.degreeOf_C_mul_le (u * v) 0 W.a₁).trans hdeg_uv
      omega)
  have hlin : (Wc.a₃ * v).coeff m = 0 := by
    have he : Wc.a₃ * v = MvPolynomial.C W.a₃ * v := by
      simp [Wc, c, WeierstrassCurve.map]
    rw [he]
    exact hzero (by
      have hle := (MvPolynomial.degreeOf_C_mul_le v 0 W.a₃).trans hdeg_v
      omega)
  have hsum : (u ^ 3 + Wc.a₂ * u ^ 2 + Wc.a₄ * u + c W.a₆).coeff m = 1 := by
    rw [MvPolynomial.coeff_add, MvPolynomial.coeff_add, MvPolynomial.coeff_add, hu3]
    have h2 : (Wc.a₂ * u ^ 2).coeff m = 0 := by
      have he : Wc.a₂ * u ^ 2 = MvPolynomial.C W.a₂ * u ^ 2 := by
        simp [Wc, c, WeierstrassCurve.map]
      rw [he]
      exact hzero (by
        have hle := (MvPolynomial.degreeOf_C_mul_le (u ^ 2) 0 W.a₂).trans hdeg_u2
        omega)
    have h4 : (Wc.a₄ * u).coeff m = 0 := by
      have he : Wc.a₄ * u = MvPolynomial.C W.a₄ * u := by
        simp [Wc, c, WeierstrassCurve.map]
      rw [he]
      exact hzero (by
        have hle := (MvPolynomial.degreeOf_C_mul_le u 0 W.a₄).trans hdeg_u
        omega)
    have hm : (0 : Fin 2 →₀ ℕ) ≠ m := by
      intro h
      have := congrArg (fun t : Fin 2 →₀ ℕ => t 0) h
      simp [m, Finsupp.single_eq_same] at this
    have h6 : (c W.a₆).coeff m = 0 := by
      rw [MvPolynomial.coeff_C, if_neg hm]
    simp only [h2, h4, h6, add_zero]
  rw [heq, MvPolynomial.coeff_sub, MvPolynomial.coeff_add, MvPolynomial.coeff_add]
  simp only [hv2, hcross, hlin, hsum, add_zero]
  ring

private lemma cons_zero_single (k : ℕ) :
    Finsupp.cons (0 : ℕ) (Finsupp.single (0 : Fin 1) k) =
      Finsupp.single (1 : Fin 2) k := by
  ext a
  have hlt : a.val < 2 := a.isLt
  have ha : a.val = 0 ∨ a.val = 1 := by omega
  rcases ha with h0 | h1
  · have : a = 0 := Fin.ext h0
    subst this
    simp [Finsupp.cons_zero, Finsupp.single_eq_of_ne]
  · have : a = 1 := Fin.ext h1
    subst this
    have hs : (1 : Fin 2) = Fin.succ (0 : Fin 1) := rfl
    rw [hs, Finsupp.cons_succ, Finsupp.single_eq_same, ← hs,
      Finsupp.single_eq_same]

private lemma cons_nat_zero (k : ℕ) :
    Finsupp.cons k (0 : Fin 1 →₀ ℕ) = Finsupp.single (0 : Fin 2) k := by
  ext a
  have hlt : a.val < 2 := a.isLt
  have ha : a.val = 0 ∨ a.val = 1 := by omega
  rcases ha with h0 | h1
  · have : a = 0 := Fin.ext h0
    subst this
    simp [Finsupp.cons_zero, Finsupp.single_eq_same]
  · have : a = 1 := Fin.ext h1
    subst this
    have hs : (1 : Fin 2) = Fin.succ (0 : Fin 1) := rfl
    rw [hs, Finsupp.cons_succ, Finsupp.zero_apply, ← hs,
      Finsupp.single_eq_of_ne (by decide : (0 : Fin 2) ≠ 1)]

/-- Neither translated coordinate is nilpotent on the surface. The
`Y²` term keeps `X` from dividing every power of itself, and the
`X³` term does the same for `Y`. -/
theorem localSurfaceCoordinate_not_nilpotent
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) (n : ℕ) :
    (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
      (MvPolynomial.X i)) ^ n ≠ 0 := by
  intro hz
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let F : S := localSurfaceEquation W x y
  have hmem : (MvPolynomial.X i) ^ n ∈ Ideal.span {F} :=
    Ideal.Quotient.eq_zero_iff_mem.mp (by simpa [map_pow, F] using hz)
  obtain ⟨g, hg⟩ := Ideal.mem_span_singleton.mp hmem
  let T := MvPolynomial (Fin 2) (ZMod 2)
  let φ : S →+* T := MvPolynomial.map PadicInt.toZMod
  have him : φ ((MvPolynomial.X i) ^ n) = φ F * φ g := by
    rw [hg, map_mul]
  let ψ : T →+* Polynomial (MvPolynomial (Fin 1) (ZMod 2)) :=
    MvPolynomial.finSuccEquiv (ZMod 2) 1
  let q : T := φ F
  have hY : q.coeff (Finsupp.single 1 2) = 1 := by
    rw [MvPolynomial.coeff_map, localSurfaceEquation_coeff_Y_sq]
    simp [q, φ]
  have hX : q.coeff (Finsupp.single 0 3) ≠ 0 := by
    rw [MvPolynomial.coeff_map, localSurfaceEquation_coeff_X_cube]
    simp [q, φ]
  have hψ0 : ψ (MvPolynomial.X 0) = Polynomial.X := by
    simpa only [ψ] using
      (MvPolynomial.finSuccEquiv_X_zero (R := ZMod 2) (n := 1))
  fin_cases i
  · have hmul : ψ (φ ((MvPolynomial.X 0) ^ n)) = ψ q * ψ (φ g) := by
      simpa [q, map_mul] using congrArg ψ him
    have hpow : ψ (φ ((MvPolynomial.X 0) ^ n)) = Polynomial.X ^ n := by
      rw [map_pow]
      have hX0 : φ (MvPolynomial.X 0) = MvPolynomial.X 0 :=
        MvPolynomial.map_X _ _
      rw [hX0, map_pow, hψ0]
    rw [hpow] at hmul
    let p : Polynomial (MvPolynomial (Fin 1) (ZMod 2)) := ψ q
    have hcoe : MvPolynomial.finSuccEquiv (ZMod 2) 1 q = ψ q := by
      simp only [ψ]
      rfl
    have h0 : Polynomial.eval (0 : MvPolynomial (Fin 1) (ZMod 2)) p ≠ 0 := by
      intro hz0
      have hcoeff := MvPolynomial.finSuccEquiv_coeff_coeff
        (Finsupp.single (0 : Fin 1) 2) q 0
      have hcons : Finsupp.cons (0 : ℕ) (Finsupp.single (0 : Fin 1) 2) =
          Finsupp.single (1 : Fin 2) 2 :=
        cons_zero_single 2
      rw [hcons, hcoe] at hcoeff
      have hp : (p.coeff 0).coeff (Finsupp.single (0 : Fin 1) 2) =
          q.coeff (Finsupp.single (1 : Fin 2) 2) := by
        simpa only [p] using hcoeff
      rw [hY] at hp
      have hz0' : p.coeff 0 = 0 := by
        simpa only [Polynomial.coeff_zero_eq_eval_zero] using hz0
      simp only [hz0', MvPolynomial.coeff_zero] at hp
      exact zero_ne_one hp
    have hdeg : 0 < p.natDegree := by
      have hcoeff := MvPolynomial.finSuccEquiv_coeff_coeff
        (0 : Fin 1 →₀ ℕ) q 3
      have hcons : Finsupp.cons (3 : ℕ) (0 : Fin 1 →₀ ℕ) =
          Finsupp.single (0 : Fin 2) 3 :=
        cons_nat_zero 3
      rw [hcons, hcoe] at hcoeff
      have hc : p.coeff 3 ≠ 0 := by
        intro hz3
        have : q.coeff (Finsupp.single 0 3) = 0 := by
          simpa only [p, hz3, MvPolynomial.coeff_zero] using hcoeff.symm
        exact hX this
      have hle : 3 ≤ p.natDegree := Polynomial.le_natDegree_of_ne_zero hc
      omega
    exact polynomial_mul_eq_X_pow_false (by simpa only [p] using hmul.symm) h0 hdeg
  · let e : Fin 2 ≃ Fin 2 := Equiv.swap 0 1
    let ρ : T →+* T := (MvPolynomial.rename e).toRingHom
    let xi : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X (Fin.succ (0 : Fin 1))
    have hmul : ψ (ρ (φ (xi ^ n))) = ψ (ρ q) * ψ (ρ (φ g)) := by
      have hρ := congrArg ρ him
      simpa [xi, q, map_mul] using congrArg ψ hρ
    have hpow : ψ (ρ (φ (xi ^ n))) = Polynomial.X ^ n := by
      rw [map_pow]
      have hXi : φ xi = MvPolynomial.X (Fin.succ (0 : Fin 1)) := by
        simp only [xi, φ]
        exact MvPolynomial.map_X _ _
      rw [hXi, map_pow]
      have hren : ρ (MvPolynomial.X (Fin.succ (0 : Fin 1))) = MvPolynomial.X 0 := by
        simp only [ρ]
        change (MvPolynomial.rename e) (MvPolynomial.X (Fin.succ (0 : Fin 1))) =
          MvPolynomial.X 0
        rw [MvPolynomial.rename_X]
        simp [e, Equiv.swap_apply_right]
      rw [hren, map_pow, hψ0]
    rw [hpow] at hmul
    let p : Polynomial (MvPolynomial (Fin 1) (ZMod 2)) := ψ (ρ q)
    have hcoe : MvPolynomial.finSuccEquiv (ZMod 2) 1 (ρ q) = ψ (ρ q) := by
      simp only [ψ]
      rfl
    have h0 : Polynomial.eval (0 : MvPolynomial (Fin 1) (ZMod 2)) p ≠ 0 := by
      intro hz0
      have hcoeff := MvPolynomial.finSuccEquiv_coeff_coeff
        (Finsupp.single (0 : Fin 1) 3) (ρ q) 0
      have hcons : Finsupp.cons (0 : ℕ) (Finsupp.single (0 : Fin 1) 3) =
          Finsupp.single (1 : Fin 2) 3 :=
        cons_zero_single 3
      rw [hcons, hcoe] at hcoeff
      have hdom : (Finsupp.single (0 : Fin 2) 3).mapDomain e =
          Finsupp.single (1 : Fin 2) 3 := by
        rw [Finsupp.mapDomain_single]
        simp [e, Equiv.swap_apply_left]
      have hqc : (ρ q).coeff (Finsupp.single 1 3) =
          q.coeff (Finsupp.single 0 3) := by
        simpa only [ρ, hdom] using
          (MvPolynomial.coeff_rename_mapDomain e e.injective q
            (Finsupp.single 0 3))
      have hp : (p.coeff 0).coeff (Finsupp.single (0 : Fin 1) 3) =
          q.coeff (Finsupp.single 0 3) := by
        simpa only [p, hqc] using hcoeff
      have hz0' : p.coeff 0 = 0 := by
        simpa only [Polynomial.coeff_zero_eq_eval_zero] using hz0
      have hnz : (p.coeff 0).coeff (Finsupp.single (0 : Fin 1) 3) ≠ 0 := by
        rw [hp]
        exact hX
      simp only [hz0', MvPolynomial.coeff_zero] at hnz
      exact hnz rfl
    have hdeg : 0 < p.natDegree := by
      have hcoeff := MvPolynomial.finSuccEquiv_coeff_coeff
        (0 : Fin 1 →₀ ℕ) (ρ q) 2
      have hcons : Finsupp.cons (2 : ℕ) (0 : Fin 1 →₀ ℕ) =
          Finsupp.single (0 : Fin 2) 2 :=
        cons_nat_zero 2
      rw [hcons, hcoe] at hcoeff
      have hdom : (Finsupp.single (1 : Fin 2) 2).mapDomain e =
          Finsupp.single (0 : Fin 2) 2 := by
        rw [Finsupp.mapDomain_single]
        simp [e, Equiv.swap_apply_right]
      have hqc : (ρ q).coeff (Finsupp.single 0 2) =
          q.coeff (Finsupp.single 1 2) := by
        simpa only [ρ, hdom] using
          (MvPolynomial.coeff_rename_mapDomain e e.injective q
            (Finsupp.single 1 2))
      have hc : p.coeff 2 ≠ 0 := by
        intro hz2
        have : q.coeff (Finsupp.single 1 2) = 0 := by
          simpa only [p, hqc, hz2, MvPolynomial.coeff_zero] using hcoeff.symm
        simp [hY] at this
      have hle : 2 ≤ p.natDegree := Polynomial.le_natDegree_of_ne_zero hc
      omega
    exact polynomial_mul_eq_X_pow_false (by simpa only [p] using hmul.symm) h0 hdeg


/-- On either coordinate chart, the class of `2t / (Xᵢ t)` is the
chart variable `T₀`, and that variable is not in the saturated
relation ideal `J_{Xᵢ} = (G : Xᵢ^∞)`. -/
theorem two_t_ratio_not_mem_coordinateRelations
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    MvPolynomial.X (0 : Fin 3) ∉
      localSurfaceCentreCoordinateRelations W x y i := by
  intro hmem
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let s := localSurfaceCentreScalars W x y
  let f := q (MvPolynomial.X i)
  have hker :
      MvPolynomial.eval₂Hom (algebraMap R (Localization.Away f))
        (fun j => Localization.mk (s j) ⟨f, Submonoid.mem_powers f⟩)
        (MvPolynomial.X 0) = 0 := by
    simpa [localSurfaceCentreCoordinateRelations, centreReesRatioRelations,
      s, f] using hmem
  rw [MvPolynomial.eval₂Hom_X'] at hker
  have hs0 : s 0 = q (MvPolynomial.C (2 : ℤ_[2])) := by
    simp [s, localSurfaceCentreScalars, q]
  rw [Localization.mk_eq_mk', IsLocalization.mk'_eq_zero_iff] at hker
  obtain ⟨t, ht⟩ := hker
  obtain ⟨k, hk⟩ := (Submonoid.mem_powers_iff t.1 f).mp t.2
  have hkill : f ^ k * s 0 = 0 := by
    simpa only [hk] using ht
  rw [hs0] at hkill
  have hzero : f ^ k = 0 :=
    localSurfaceCoordinateRing_two_regular W x y (f ^ k)
      (by simpa [mul_comm] using hkill)
  exact localSurfaceCoordinate_not_nilpotent W x y i k hzero

/-- `2t / (Xt)` is outside `J_X`. -/
theorem two_t_ratio_not_mem_JX
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    MvPolynomial.X (0 : Fin 3) ∉
      localSurfaceCentreCoordinateRelations W x y 0 :=
  two_t_ratio_not_mem_coordinateRelations W x y 0

/-- `2t / (Yt)` is outside `J_Y`. -/
theorem two_t_ratio_not_mem_JY
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    MvPolynomial.X (0 : Fin 3) ∉
      localSurfaceCentreCoordinateRelations W x y 1 :=
  two_t_ratio_not_mem_coordinateRelations W x y 1

/-! ## Degree-one `overline{2t}` and the chartwise pullback

`overlineTwoT` is the class of `2t` in `Rees / (2)`. It lies in
degree one. It is nonzero whenever the centre is proper, and its
square is nonzero when the surface equation lies in the square of
the centre. No generator of the scalar ideal `(2)` kills `2t`.

`basic_special_chart_iso` is that comparison on one Rees basic open:
the actual pullback of `D₊(f)` along `ℤ_[2] → ℤ/2ℤ` is the basic
open `D₊(f mod 2)` of `Proj(Rees / (2))`.
`twoAdicCoverChartIso_toProduct` and
`twoAdicCoverChartIso_toProduct_right` are the two projections of a
product overlap; the right-hand factor is the left-hand square after
`mul_comm`. `glueMorphisms` on `{D₊(2t), D₊(Xt), D₊(Yt)}` is
`localSurfaceCentreSpecialFibreScheme_iso_ReesSpecialProj`.
That isomorphism is a map of special-fibre schemes. It is not a
global section of `O(1)` on `Bl_I`, and it is not a map from a
coprime solution in `ℕ`.
-/

noncomputable abbrev basic_special_chart_iso := surfaceCentreBasicSpecialChartIso

/-- The actual special fibre, the pullback of the surface-centre Rees
`Proj` along `ℤ_[2] → ℤ/2ℤ`, is the `Proj` of the Rees algebra
modulo the degree-zero scalar `(2)`. -/
noncomputable def localSurfaceCentreSpecialFibreScheme_iso_ReesSpecialProj
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreSpecialFibreScheme W x y ≅
      localSurfaceCentreReesSpecialProj W x y :=
  surfaceCentreSpecialFibreSchemeIso W x y

/-- Proved. The actual `V(2)` pullback equals `Proj(Rees / (2))`.
This is not an uninhabited `Prop`. -/
theorem actualSpecialFibrePullback_eq_quotientProj
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    Nonempty (localSurfaceCentreSpecialFibreScheme W x y ≅
      localSurfaceCentreReesSpecialProj W x y) :=
  ⟨localSurfaceCentreSpecialFibreScheme_iso_ReesSpecialProj W x y⟩

abbrev integral_generators_degree_one :=
  localSurfaceCentreReesGenerator_mem_degree_one

/-! ## Global extension attempt

`actualSpecialFibrePullback_eq_quotientProj` places `overlineTwoT`
on the special fibre `Proj(Rees / (2))`. The preimage in the Rees
algebra is `localSurfaceCentreReesTwo`. On the blow-up chart
`D₊(2t)` the coordinate ring is `localSurfaceCentreTwoAway`, the
degree-zero localization at `2t`, so the tautological ratio
`2t / 2t` is the unit of that chart.

The next step would carry that trivialization to `D₊(Xt)` and
`D₊(Yt)` along `twoAdicCoverChartIso_toProduct` and
`twoAdicCoverChartIso_toProduct_right`. The right-hand factor is
the left-hand square after `mul_comm`. `glueMorphisms` already
used those two projections to identify the special-fibre schemes.

Obstruction. Those squares are isomorphisms of schemes. They do
not extend a section. Mathlib v4.12.0 builds `Proj.structureSheaf`
from same-degree fractions (`HomogeneousLocalization`). It has no
Serre twisting sheaf `O(1)`. The intended equation

`s | D₊(2t) = overlineTwoT`,

for a global section `s` of `O(1)` on `Bl_I`, is therefore not a
term: the left-hand side would have degree zero and `overlineTwoT`
has degree one. `two_t_ratio_not_mem_JX` and
`two_t_ratio_not_mem_JY` say only that the chart variable `T₀`
for `2t / (Xᵢ t)` lies outside `J_X` and `J_Y`. A nonzero ratio
is not a cocycle, and it does not produce the section.

`overlineTwoT_pow_nonzero` is the graded calculation that does
not need `O(1)`: on a point of the curve, no power of the class
vanishes. The hypothesis is `localWeierstrassEquation W x y = 0`.
The unconditional formula `∀ n, overlineTwoT ^ n ≠ 0` is not
that theorem. Off the curve the centre can be the unit ideal,
and the class need not stay nonzero. The coefficients `Y² = 1`
and `X³ = -1` are what make `2` regular. They are not a twisting
sheaf. The power theorem does not inhabit the section.

The finite affine cover does not prove `UniversallyClosed`
either. That failure is recorded above and is not this `Prop`.
The correct universal-closedness target is
`localSurfaceCentreReesToSurfaceProper`, the map `Bl_I → Spec(R)`,
not `Bl_I → Spec(ℤ_[2])`. Producing the section still needs a
family `Bl_{I_{a,b}}` only insofar as a solution in `ℕ` has to
land on some fibre; this `Prop` itself is about one fixed surface.
This `Prop` does not include `even_solution_implies_two_divides`. -/

/-- OPEN. Intended claim: a global section `s` of `O(1)` on
`Bl_I` with `s | D₊(2t) = overlineTwoT` and `s ≠ 0`.

Mathlib v4.12.0 has no `O(1)`. Sections of `Proj.structureSheaf`
on `D₊(f)` are degree zero, and `overlineTwoT` is degree one, so
that equation is not a term. `glueMorphisms` on
`{D₊(2t), D₊(Xt), D₊(Yt)}`, both product projections, and
`mul_comm` on the right factor identify special-fibre schemes.
They do not extend a section. `T₀ ∉ J_X` and `T₀ ∉ J_Y` are not
a cocycle.

No power formula is the body. On-curve powers are the separate
theorem `overlineTwoT_pow_nonzero`. The unconditional formula
`∀ n, overlineTwoT ^ n ≠ 0` is not a theorem. The body is not
`UniversallyClosed` and not `even_solution_implies_two_divides`.
An inhabitant of the body would not be a section of `O(1)`.
A solution in `ℕ` needs a family `Bl_{I_{a,b}}`, not this fixed
surface, and the correct universal-closedness target for the
blow-up is `Bl_I → Spec(R)`
(`localSurfaceCentreReesToSurfaceProper`), not `Spec(ℤ_[2])`.
No inhabitant is given.

`Beal/MathlibMissing/TwistingSheaf.lean` defines the sheaf `O1` of
degree-shift-one fractions on `Proj(Rees / (2))`.
`O1_restricted_iso_O` is the equivalence, by multiplication by
`overlineTwoT`, between sections of the Type-valued structure sheaf
and sections of `O1` on `D₊(overlineTwoT)`. `sectionsIso_natural`
says the same map commutes with restriction to smaller opens. That
file is not imported here. The equivalence is on one chart of the
special fibre. It is not a global section of `O(1)` on the integral
blow-up `Bl_I`, so it does not inhabit this `Prop`.
`Beal/MathlibMissing/Family.lean` defines `Bl_{I_{a,b}}`. There is
no ring hom from that surface ring to `ℤ_[2]` killing the centre,
because the centre contains `2`. A blow-up point is a direction on
the exceptional divisor of `Proj(Rees(I)/(2))` over `ZMod 2`, not a
prime that kills the centre in `ℤ_[2]`. `familySpecialFibrePoint`
stays uninhabited there and is not imported here. The chart
`D₊(2t)` of that special fibre is the degree-zero localization at
`2t`. Residue vanishing does not put an `𝔽₂` point in it: on
`Y² = X³ + 2` at `(0, 0)` the class of `(2t)²` is zero, so the
chart ring has one element, and every point of `Proj(Rees(I)/(2))`
contains that class: the basic open `D₊(2t)` is empty. On that
same curve no power of the class of `Xt` vanishes in `Rees/(2)`,
and the degree-zero chart `D₊(Xt)` is a nontrivial ring, so it has
a prime. That chart also contains the degree-zero classes of `X`
and `Y`. The candidate ideal is `⟨X, Y, 2t/Xt, Yt/Xt⟩`. The
relations `Y = X · (Yt/Xt)` and `X · (2t/Xt) = 0` are proved
there, so the quotient by `⟨X, 2t/Xt, Yt/Xt⟩` kills `Y`. On
`Y² = X³ + 2` at `(0, 0)`, `Y² = X³` holds in that chart. A
polynomial model of those relations, further quotiented by
`⟨X, U, V⟩`, is `𝔽₂`. On that node the class of `2t` squares to
zero and is not itself zero. In the chart, `(2t / Xt)² = 0` and
the ratio itself is not zero. The chart receives a ring hom from
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)`. That hom is not
shown to be bijective. The same polynomial model modulo
`⟨X, U, V⟩` is `𝔽₂[a,b]`, and modulo `⟨a, b, X, U, V⟩` is `𝔽₂`.
Those are quotients of the model. The parameter-free model has
no copy of `a, b`. `⟨X, 2t/Xt, Yt/Xt⟩` does not kill `a, b` in
the chart. The larger ideal `⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩` is
defined there, and the chart quotient by it is not shown to be
`𝔽₂`. The
prime is not shown to have residue field `𝔽₂`, and it is not a
point of `Proj`. -/
def overline_2t_global_section_open : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]),
    localWeierstrassEquation W x y = 0 →
    even_solution_specializes_to_node

end Beal.Even

#print axioms Beal.Even.Bl_I_regular_at_even_branch
#print axioms Beal.Even.three_open_cover
#print axioms Beal.Even.Xt_chart_saturation
#print axioms Beal.Even.Yt_chart_saturation
#print axioms Beal.Even.generic_fibre_iso
#print axioms Beal.Even.generic_fibre_iso_overBase
#print axioms Beal.Even.generic_centre_eq_top
#print axioms Beal.Even.base_D2_compl_eq_zeroLocus
#print axioms Beal.Even.basicOpen_dense_of_ne_zero
#print axioms Beal.Even.padic_two_ne_zero
#print axioms Beal.Even.base_D2_dense
#print axioms Beal.Even.base_D2_ne_bot
#print axioms Beal.Even.base_closedPoint_asIdeal
#print axioms Beal.Even.base_closedPoint_not_mem_D2
#print axioms Beal.Even.base_closedPoint_mem_open_iff_top
#print axioms Beal.Even.base_V2_ne_univ
#print axioms Beal.Even.base_V2_not_open
#print axioms Beal.Even.generic_open_dense
#print axioms Beal.Even.twoChart_finiteType
#print axioms Beal.Even.surfaceCoordinate_finiteType
#print axioms Beal.Even.twoChartMod2_finiteType
#print axioms Beal.Even.genericPullback_universallyClosed_of_total
#print axioms Beal.Even.basicOpen_ne_univ_of_not_isUnit
#print axioms Beal.Even.localizationAway_not_isClosedMap
#print axioms Beal.Even.awayTwoInclusion_not_isClosedMap
#print axioms Beal.Even.awayTwoInclusion_not_universallyClosed
#print axioms Beal.Even.localSurfaceCentreReesToBase_universallyClosed_false
#print axioms Beal.Even.reesDegreeZeroChart_finiteType
#print axioms Beal.Even.gradedProjToBase
#print axioms Beal.Even.proj_proper_of_fg_graded
#print axioms Beal.Even.localSurfaceCentreReesToSurfaceProper
#print axioms Beal.Even.special_fibre_glue_iso
#print axioms Beal.Even.special_fibre_cocycle
#print axioms Beal.Even.example_twoChart_fourFactor
#print axioms Beal.Even.reduced_equation_factors
#print axioms Beal.Even.component_intersection_eq_origin
#print axioms Beal.Even.reduced_zero_iff_component
#print axioms Beal.Even.reduced_zero_iff_component_domain
#print axioms Beal.Even.example_twoChart_divisible_by_four
#print axioms Beal.Even.example_mod_two_drops_two
#print axioms Beal.Even.example_reduced_origin
#print axioms Beal.Even.example_origin_is_the_node
#print axioms Beal.Even.example_point_10_on_first_line_only
#print axioms Beal.Even.example_point_11_on_second_line_only
#print axioms Beal.Even.example_reduced_three_points
#print axioms Beal.Even.example_components_cover_the_three_points
#print axioms Beal.Even.line_union_subset_E_nodal
#print axioms Beal.Even.E_nodal_subset_line_union
#print axioms Beal.Even.E_nodal_eq_union
#print axioms Beal.Even.E_meets_only_at_origin
#print axioms Beal.Even.E_F2_points
#print axioms Beal.Even.E_F2_origin_on_both_lines
#print axioms Beal.Even.E_F2_point_10_one_component
#print axioms Beal.Even.E_F2_point_11_one_component
#print axioms Beal.Even.one_not_mem_centre_of_maximal
#print axioms Beal.Even.scalar_two_does_not_kill_two_t
#print axioms Beal.Even.overlineTwoT_mem_degree_one
#print axioms Beal.Even.overlineTwoT_ne_zero
#print axioms Beal.Even.overlineTwoT_sq_ne_zero
#print axioms Beal.Even.overlineTwoT_pow_nonzero
#print axioms Beal.Even.localSurfaceEquation_coeff_Y_sq
#print axioms Beal.Even.localSurfaceEquation_coeff_X_cube
#print axioms Beal.Even.localSurfaceCoordinate_not_nilpotent
#print axioms Beal.Even.two_t_ratio_not_mem_coordinateRelations
#print axioms Beal.Even.two_t_ratio_not_mem_JX
#print axioms Beal.Even.two_t_ratio_not_mem_JY
#print axioms Beal.Even.localSurfaceCentreSpecialFibreScheme_iso_ReesSpecialProj
#print axioms Beal.Even.actualSpecialFibrePullback_eq_quotientProj
#print axioms Beal.Even.overline_2t_global_section_open
#print axioms Beal.Even.even_solution_implies_two_divides
