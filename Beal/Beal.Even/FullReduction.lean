import Beal.«Beal.General».TateEvenBranch
import Beal.«Beal.General».SpecialFibreGluing
import Beal.«Beal.General».TateEvenBranchGenericFibre
import Beal.«Beal.General».CompatChartXt
import Beal.«Beal.General».CompatChartYt
import Mathlib.Algebra.Group.Even
import Mathlib.AlgebraicGeometry.PrimeSpectrum.Basic
import Mathlib.Data.ZMod.Basic
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
* For `y² + xy = x³ + 8`, the `2`-chart numerator is
  `4(V² + UV - 2U³ - 2)`. Over `𝔽₂` the equation `V² + UV = 0`
  is `V(V + U) = 0`: two lines, meeting only at `(0,0)`, with
  rational points `(0,0)`, `(1,0)`, and `(1,1)`.

Not checked, and not given inhabitants here:

* scheme-properness of `Bl_I → Spec(R_Z)` (`IsProperMap` in
  Mathlib v4.12.0 is a topological predicate, and this Mathlib
  has no properness theorem for `Proj` of a Rees algebra; an
  affine chart of a cover is not itself a proper morphism);
* birationality of that integral morphism, as opposed to the
  checked isomorphism over the dense open `D(2)` of the 2-adic base;
* `E = V(overline{2t}) ≅ ℙ¹_{𝔽₂}` (the reduced example is a node,
  two components through `(0,0)`, not a proved isomorphism with `ℙ¹`);
* the claim that `(0,0)` lies only in `D₊(overline{2t})`;
* any implication from an even solution of `x^p + y^q = z^r`
  to `2 ∣ X` and `2 ∣ Y`.

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

/-! ## Obligations with no inhabitant

`even_Beal` is the even-exponent Diophantine claim. Defining it
does not prove it. No theorem in this file produces `False` from
a hypothetical solution, and none concludes `2 ∣ X` or `2 ∣ Y`
for a Tate model of such a solution. The factorization
`V(V + U) = 0` is an identity on the illustrative chart, not a
specialization map from an even solution. -/

def even_Beal : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Even p → Even q → Even r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    False

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
