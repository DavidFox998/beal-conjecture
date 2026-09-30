import Beal.«Beal.General».TateEvenBranch
import Beal.«Beal.General».SpecialFibreGluing
import Beal.«Beal.General».TateEvenBranchGenericFibre
import Beal.«Beal.General».CompatChartXt
import Beal.«Beal.General».CompatChartYt
import Mathlib.Algebra.Group.Even
import Mathlib.AlgebraicGeometry.PrimeSpectrum.Basic
import Mathlib.Data.ZMod.Basic
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
  `Bl_I → Spec(ℤ_[2])` or `Bl_I → Spec(R_Z)`;
* an open immersion of `Bl_I` onto a dense open of `Spec(R_Z)`
  (the checked isomorphism is the generic fibre over `D(2)`, and
  `D(2)` is dense in `Spec(ℤ_[2])`);
* `V(overline{2t})` inside `Proj(ReesMod2)`, and any isomorphism
  of that locus with `ℙ¹_{𝔽₂}`;
* the claim that `(0,0)` lies only in `D₊(overline{2t})`;
* any implication from an even solution of `x^p + y^q = z^r`
  to `2 ∣ x` and `2 ∣ y`, or to a point of the blow-up.

The two v33 exclusions stay excluded: the actual special-fibre
pullback is not identified with the quotient `Proj`, and
`overline{2t}` is not shown to be degree one or nonzero on that
pullback. Overlaps stay abstract.
-/

namespace Beal.Even

open Beal.General

/-! ## Checked chart regularity

`Bl_I_regular_at_even_branch` is the existing statement that the
base uniformizer `2` is regular on the divided chart ring. It is
not a proof that the blow-up is a regular scheme. -/

abbrev Bl_I_regular_at_even_branch := evenNodeTwoChart_two_regular

/-! ## Three-open cover and chart saturations

These are the checked inputs named in a properness argument.
They do not produce `IsProperMap` of `Bl_I → Spec(R_Z)`. -/

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
of a blow-up point onto `E_nodal`. No Tate model `(X, Y, a₂, a₄, a₆)`
of a general even solution is defined in this module, so
`even_solution_implies_two_divides` cannot yet speak about those
coordinates. The missing step is a valuation of `overline{2t}`.
That element is not shown to be degree one or nonzero; that is a
v33 exclusion, and it stays excluded. -/

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

/-- Open. Needs a Tate model and a nonzero valuation of `overline{2t}`,
both absent here. The degree-one / nonzero claim for `overline{2t}`
remains excluded. -/
def even_solution_implies_two_divides : Prop :=
  even_solution_chart

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
#print axioms Beal.Even.generic_open_dense
#print axioms Beal.Even.twoChart_finiteType
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
