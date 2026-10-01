import Beal.«Beal.General».TateEvenSpecialFibre
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.StructureSheaf
import Mathlib.Topology.Sheaves.LocalPredicate

/-!
# Isolated gap: twisting sheaf `O(1)`

`BealEven` does not import this file. `lake build BealEven` does not
elaborate it.

Mathlib v4.12.0 builds `Proj.structureSheaf` from same-degree fractions.
There is no Serre twisting sheaf. This file defines the parallel sheaf
whose sections are locally fractions with numerator degree one more than
the denominator. That is the sheaf associated to the shifted graded
module `Rees(1)`, whose degree-`n` piece is the degree-`(n+1)` piece of
the Rees algebra, on the special-fibre quotient `Rees / (2)`.

`trivialization_Dplus_2t` is the isomorphism of homogeneous localizations
away from `overlineTwoT`, multiplication by that degree-one element.
Those localizations are the algebraic models of the sections of `O(1)`
and of `O` on `D₊(2t)`. It is not an isomorphism of the restricted
sheaves: Mathlib identifies `Γ(D₊(f), O)` with `HomogeneousLocalization.Away`
only through the basic-open scheme isomorphism, and that identification
is not rebuilt here for `O(1)`.

`overlineTwoT_as_degree_zero_section` is the section of `O1` on
`D₊(overlineTwoT)` given by the fraction `overlineTwoT / 1`.
Multiplication by `overlineTwoT` carries the degree-zero unit to that
fraction. This is a section on one chart of the special fibre. It is
not a global section of `O(1)` on the integral blow-up, and it does not
inhabit `overline_2t_global_section_open`.

No `sorry` is used.
-/

set_option synthInstance.maxHeartbeats 400000

namespace Beal.MathlibMissing

open Beal.General Polynomial HomogeneousLocalization

variable {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
variable (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]

/-- Degree-`n` piece of the shift `M(1)`: the degree-`(n+1)` piece of `𝒜`. -/
def gradedTwistOne (n : ℕ) : Submodule R A :=
  𝒜 (n + 1)

/-- A numerator of degree `deg + 1` and a denominator of degree `deg`. -/
structure NumDenShift (x : Submonoid A) where
  deg : ℕ
  num : 𝒜 (deg + 1)
  den : 𝒜 deg
  den_mem : (den : A) ∈ x

namespace NumDenShift

variable {𝒜}

def embedding {x : Submonoid A} (p : NumDenShift 𝒜 x) : Localization x :=
  Localization.mk (p.num : A) ⟨p.den, p.den_mem⟩

end NumDenShift

/-- Homogeneous fractions of degree shift one, at a multiplicative set. -/
def TwistOneLocalization (x : Submonoid A) : Type _ :=
  Quotient (Setoid.ker (NumDenShift.embedding (𝒜 := 𝒜) (x := x)))

namespace TwistOneLocalization

variable {𝒜}

def mk {x : Submonoid A} (p : NumDenShift 𝒜 x) : TwistOneLocalization 𝒜 x :=
  Quotient.mk'' p

def val {x : Submonoid A} (y : TwistOneLocalization 𝒜 x) : Localization x :=
  Quotient.liftOn' y (NumDenShift.embedding (𝒜 := 𝒜)) fun _ _ => id

theorem val_mk {x : Submonoid A} (p : NumDenShift 𝒜 x) :
    val (mk p) = NumDenShift.embedding p :=
  rfl

theorem val_injective {x : Submonoid A} :
    Function.Injective (val (𝒜 := 𝒜) (x := x)) :=
  fun a b => Quotient.recOnSubsingleton₂' a b fun _ _ h => Quotient.sound' h

end TwistOneLocalization

variable {𝒜}

/-- `mk' (a*f) s = mk' a s * f` in the localization at powers of `f`. -/
private theorem mk'_mul_right (f a : A) (s : Submonoid.powers f) :
    IsLocalization.mk' (Localization (Submonoid.powers f)) (a * f) s =
      IsLocalization.mk' (Localization (Submonoid.powers f)) a s *
        algebraMap A (Localization (Submonoid.powers f)) f := by
  rw [IsLocalization.mk'_eq_iff_eq_mul]
  have hspec :=
    IsLocalization.mk'_spec (Localization (Submonoid.powers f)) a s
  calc
    algebraMap A (Localization (Submonoid.powers f)) (a * f) =
        algebraMap A _ a * algebraMap A _ f := map_mul _ _ _
    _ = (IsLocalization.mk' (Localization (Submonoid.powers f)) a s *
          algebraMap A _ (s : A)) * algebraMap A _ f := by rw [hspec]
    _ = IsLocalization.mk' (Localization (Submonoid.powers f)) a s *
          algebraMap A _ f * algebraMap A _ (s : A) := by ring

/-- Multiplying the numerator by `f` respects equality of fractions. -/
private theorem localization_mul_num (f a b : A) (s t : Submonoid.powers f)
    (h : Localization.mk a s = Localization.mk b t) :
    Localization.mk (a * f) s = Localization.mk (b * f) t := by
  rw [Localization.mk_eq_mk'] at h ⊢
  have hmul := congrArg
    (fun z => z * algebraMap A (Localization (Submonoid.powers f)) f) h
  dsimp only at hmul
  rw [← mk'_mul_right f a s, ← mk'_mul_right f b t] at hmul
  exact hmul

/-- Cancelling a common factor `f` in a fraction at powers of `f`. -/
private theorem localization_cancel_factor (f a d : A)
    (hd : d ∈ Submonoid.powers f) (hdf : d * f ∈ Submonoid.powers f) :
    Localization.mk (a * f) ⟨d * f, hdf⟩ = Localization.mk a ⟨d, hd⟩ := by
  rw [Localization.mk_eq_mk', IsLocalization.mk'_eq_iff_eq_mul]
  have hspec :=
    IsLocalization.mk'_spec (Localization (Submonoid.powers f)) a ⟨d, hd⟩
  calc
    algebraMap A (Localization (Submonoid.powers f)) (a * f) =
        algebraMap A _ a * algebraMap A _ f := map_mul _ _ _
    _ = (IsLocalization.mk' (Localization (Submonoid.powers f)) a ⟨d, hd⟩ *
          algebraMap A _ d) * algebraMap A _ f := by rw [hspec]
    _ = IsLocalization.mk' (Localization (Submonoid.powers f)) a ⟨d, hd⟩ *
          (algebraMap A _ d * algebraMap A _ f) := by ring
    _ = IsLocalization.mk' (Localization (Submonoid.powers f)) a ⟨d, hd⟩ *
          algebraMap A _ (d * f) := by rw [← map_mul]
    _ = IsLocalization.mk' (Localization (Submonoid.powers f)) a ⟨d, hd⟩ *
          algebraMap A _ (⟨d * f, hdf⟩ : Submonoid.powers f) := by
        simp

/-- `a / (d*f) * f = a / d` at powers of `f`. -/
private theorem mk'_den_mul (f a d : A)
    (hd : d ∈ Submonoid.powers f) (hdf : d * f ∈ Submonoid.powers f) :
    IsLocalization.mk' (Localization (Submonoid.powers f)) a ⟨d * f, hdf⟩ *
        algebraMap A (Localization (Submonoid.powers f)) f =
      IsLocalization.mk' (Localization (Submonoid.powers f)) a ⟨d, hd⟩ := by
  set S := Localization (Submonoid.powers f)
  have hL := IsLocalization.mk'_spec S a ⟨d * f, hdf⟩
  have hR := IsLocalization.mk'_spec S a ⟨d, hd⟩
  have hdu : IsUnit (algebraMap A S (⟨d, hd⟩ : Submonoid.powers f)) :=
    IsLocalization.map_units S ⟨d, hd⟩
  apply hdu.mul_left_cancel
  calc
    algebraMap A S (⟨d, hd⟩ : Submonoid.powers f) *
        (IsLocalization.mk' S a ⟨d * f, hdf⟩ * algebraMap A S f) =
        IsLocalization.mk' S a ⟨d * f, hdf⟩ *
          (algebraMap A S d * algebraMap A S f) := by ring
    _ = IsLocalization.mk' S a ⟨d * f, hdf⟩ *
          algebraMap A S (⟨d * f, hdf⟩ : Submonoid.powers f) := by
        congr 1
        rw [← map_mul]
    _ = algebraMap A S a := hL
    _ = IsLocalization.mk' S a ⟨d, hd⟩ * algebraMap A S d := by
        simp [hR]
    _ = algebraMap A S (⟨d, hd⟩ : Submonoid.powers f) *
          IsLocalization.mk' S a ⟨d, hd⟩ := by ring

/-- Multiplying the denominator by `f` respects equality of fractions. -/
private theorem localization_mul_den (f a b d e : A)
    (hd : d ∈ Submonoid.powers f) (he : e ∈ Submonoid.powers f)
    (hdf : d * f ∈ Submonoid.powers f) (hef : e * f ∈ Submonoid.powers f)
    (h : Localization.mk a ⟨d, hd⟩ = Localization.mk b ⟨e, he⟩) :
    Localization.mk a ⟨d * f, hdf⟩ = Localization.mk b ⟨e * f, hef⟩ := by
  rw [Localization.mk_eq_mk'] at h ⊢
  have hu : IsUnit (algebraMap A (Localization (Submonoid.powers f)) f) :=
    IsLocalization.map_units _ ⟨f, Submonoid.mem_powers f⟩
  apply (hu.mul_right_inj).mp
  calc
    algebraMap A _ f * IsLocalization.mk' _ a ⟨d * f, hdf⟩ =
        IsLocalization.mk' _ a ⟨d * f, hdf⟩ * algebraMap A _ f := by ring
    _ = IsLocalization.mk' _ a ⟨d, hd⟩ := mk'_den_mul f a d hd hdf
    _ = IsLocalization.mk' _ b ⟨e, he⟩ := h
    _ = IsLocalization.mk' _ b ⟨e * f, hef⟩ * algebraMap A _ f :=
        (mk'_den_mul f b e he hef).symm
    _ = algebraMap A _ f * IsLocalization.mk' _ b ⟨e * f, hef⟩ := by ring

/-- Multiply a same-degree fraction by a degree-one element. -/
def mulNum {f : A} (hf : f ∈ 𝒜 1)
    (c : NumDenSameDeg 𝒜 (Submonoid.powers f)) :
    NumDenShift 𝒜 (Submonoid.powers f) where
  deg := c.deg
  num := ⟨(c.num : A) * f, SetLike.GradedMul.mul_mem c.num.2 hf⟩
  den := c.den
  den_mem := c.den_mem

/-- Divide a degree-shift-one fraction by a degree-one element. -/
def divDen {f : A} (hf : f ∈ 𝒜 1)
    (c : NumDenShift 𝒜 (Submonoid.powers f)) :
    NumDenSameDeg 𝒜 (Submonoid.powers f) where
  deg := c.deg + 1
  num := ⟨c.num, c.num.2⟩
  den := ⟨(c.den : A) * f, SetLike.GradedMul.mul_mem c.den.2 hf⟩
  den_mem := Submonoid.mul_mem _ c.den_mem (Submonoid.mem_powers f)

private theorem embedding_mulNum {f : A} (hf : f ∈ 𝒜 1)
    (c : NumDenSameDeg 𝒜 (Submonoid.powers f)) :
    NumDenShift.embedding (mulNum hf c) =
      Localization.mk ((c.num : A) * f) ⟨c.den, c.den_mem⟩ :=
  rfl

private theorem embedding_divDen {f : A} (hf : f ∈ 𝒜 1)
    (c : NumDenShift 𝒜 (Submonoid.powers f)) :
    NumDenSameDeg.embedding 𝒜 (Submonoid.powers f) (divDen hf c) =
      Localization.mk (c.num : A) ⟨(c.den : A) * f, (divDen hf c).den_mem⟩ :=
  rfl

/-- Multiplication by a degree-one element, on homogeneous localizations. -/
def mulBy {f : A} (hf : f ∈ 𝒜 1)
    (z : Away 𝒜 f) : TwistOneLocalization 𝒜 (Submonoid.powers f) :=
  Quotient.liftOn' z
    (fun c => TwistOneLocalization.mk (mulNum hf c))
    fun c1 c2 h =>
      Quotient.sound' <| by
        change NumDenShift.embedding (mulNum hf c1) = NumDenShift.embedding (mulNum hf c2)
        rw [embedding_mulNum, embedding_mulNum]
        exact localization_mul_num f (c1.num : A) (c2.num : A) ⟨c1.den, c1.den_mem⟩
          ⟨c2.den, c2.den_mem⟩ h

/-- Division by a degree-one element, on homogeneous localizations. -/
def divBy {f : A} (hf : f ∈ 𝒜 1)
    (z : TwistOneLocalization 𝒜 (Submonoid.powers f)) : Away 𝒜 f :=
  Quotient.liftOn' z
    (fun c => mk (divDen hf c))
    fun c1 c2 h =>
      Quotient.sound' <| by
        show NumDenSameDeg.embedding 𝒜 (Submonoid.powers f) (divDen hf c1) =
          NumDenSameDeg.embedding 𝒜 (Submonoid.powers f) (divDen hf c2)
        rw [embedding_divDen, embedding_divDen]
        exact localization_mul_den f (c1.num : A) (c2.num : A) (c1.den : A) (c2.den : A)
          c1.den_mem c2.den_mem (divDen hf c1).den_mem (divDen hf c2).den_mem h

/-- On `D₊(f)` for `deg f = 1`, multiplication by `f` identifies the
degree-zero homogeneous localization with the degree-shift-one localization. -/
noncomputable def trivializationAway {f : A} (hf : f ∈ 𝒜 1) :
    Away 𝒜 f ≃ TwistOneLocalization 𝒜 (Submonoid.powers f) where
  toFun := mulBy hf
  invFun := divBy hf
  left_inv z :=
    Quotient.inductionOn' z fun c => by
      apply HomogeneousLocalization.val_injective (Submonoid.powers f)
      show NumDenSameDeg.embedding 𝒜 (Submonoid.powers f) (divDen hf (mulNum hf c)) =
        NumDenSameDeg.embedding 𝒜 (Submonoid.powers f) c
      rw [embedding_divDen]
      exact localization_cancel_factor f (c.num : A) (c.den : A)
        c.den_mem (divDen hf (mulNum hf c)).den_mem
  right_inv z :=
    Quotient.inductionOn' z fun c => by
      apply TwistOneLocalization.val_injective (𝒜 := 𝒜)
      change NumDenShift.embedding (mulNum hf (divDen hf c)) = NumDenShift.embedding c
      simp only [embedding_mulNum, NumDenShift.embedding, divDen]
      convert localization_cancel_factor f (c.num : A) (c.den : A) c.den_mem
        (Submonoid.mul_mem _ c.den_mem (Submonoid.mem_powers f))

theorem trivializationAway_one {f : A} (hf : f ∈ 𝒜 1) :
    trivializationAway hf (1 : Away 𝒜 f) =
      TwistOneLocalization.mk
        { deg := 0
          num := ⟨f, hf⟩
          den := ⟨1, SetLike.one_mem_graded _⟩
          den_mem := Submonoid.one_mem _ } := by
  apply TwistOneLocalization.val_injective (𝒜 := 𝒜)
  change NumDenShift.embedding (mulNum hf (1 : NumDenSameDeg 𝒜 (Submonoid.powers f))) =
    NumDenShift.embedding _
  rw [embedding_mulNum, NumDenShift.embedding]
  simp [NumDenSameDeg.num_one, NumDenSameDeg.den_one, one_mul]

/-! ## The sheaf -/

open TopCat TopologicalSpace CategoryTheory Opposite

/-- A section is one fixed degree-shift-one fraction on the whole open. -/
def IsShiftedFraction {U : Opens (ProjectiveSpectrum.top 𝒜)}
    (f : ∀ x : U, TwistOneLocalization 𝒜
      (x.1.asHomogeneousIdeal.toIdeal.primeCompl)) : Prop :=
  ∃ (i : ℕ) (r : 𝒜 (i + 1)) (s : 𝒜 i)
    (s_nin : ∀ x : U, (s : A) ∉ x.1.asHomogeneousIdeal),
    ∀ x : U, f x = TwistOneLocalization.mk ⟨i, r, s, s_nin x⟩

/-- The shifted-fraction predicate restricts to smaller opens. -/
def isShiftedFractionPrelocal :
    PrelocalPredicate fun x : ProjectiveSpectrum.top 𝒜 =>
      TwistOneLocalization 𝒜 (x.asHomogeneousIdeal.toIdeal.primeCompl) where
  pred := IsShiftedFraction (𝒜 := 𝒜)
  res := by
    rintro V U i f ⟨j, r, s, h, w⟩
    exact ⟨j, r, s, (h <| i ·), (w <| i ·)⟩

/-- Sections that are locally degree-shift-one fractions. -/
def isLocallyShiftedFraction :
    LocalPredicate fun x : ProjectiveSpectrum.top 𝒜 =>
      TwistOneLocalization 𝒜 (x.asHomogeneousIdeal.toIdeal.primeCompl) :=
  isShiftedFractionPrelocal.sheafify

/-- The sheaf associated to the degree-one twist of `𝒜`. Sections are
dependent functions to degree-shift-one homogeneous localizations which
are locally a single fraction. This is the same local-predicate
construction as `Proj.structureSheaf`, with numerator degree shifted by one. -/
def twistingSheafOne : Sheaf (Type _) (ProjectiveSpectrum.top 𝒜) :=
  subsheafToTypes isLocallyShiftedFraction

/-! ## Special fibre `Proj(Rees / (2))` -/

/-- The degree-`n` piece of `Rees(1)` for the surface centre. -/
noncomputable def reesTwistOne (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (n : ℕ) :
    Submodule (localSurfaceCoordinateRing W x y) (localSurfaceCentreRees W x y) :=
  centreReesComponent (localSurfaceClosedPoint W x y) (n + 1)

/-- The class of `2t` in `Rees / (2)`. -/
noncomputable def overlineTwoT
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreRees W x y ⧸ localSurfaceCentreReesSpecialIdeal W x y :=
  Ideal.Quotient.mk (localSurfaceCentreReesSpecialIdeal W x y)
    (localSurfaceCentreReesTwo W x y)

set_option synthInstance.maxHeartbeats 400000 in
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

/-- `O(1)` on `Proj(Rees / (2))`: the sheaf of degree-shift-one fractions
of the quotient grading. The degree-`n` piece of that grading is the
image of `Rees_{n+1}`. -/
noncomputable def O1 (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let ℬ := homogeneousQuotientComponent
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesSpecialIdeal W x y)
  exact @twistingSheafOne
    (localSurfaceCoordinateRing W x y)
    (localSurfaceCentreRees W x y ⧸
      localSurfaceCentreReesSpecialIdeal W x y)
    _ _ _ ℬ
    (homogeneousQuotientGrading
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesSpecialIdeal W x y)
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y))

/-- Multiplication by `overlineTwoT` identifies the degree-zero localization
at powers of `overlineTwoT` with the degree-shift-one localization. This is
the algebraic trivialization of sections on `D₊(2t)`, not an isomorphism
of the restricted sheaves `O1` and `O`. -/
noncomputable def trivialization_Dplus_2t
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let ℬ := homogeneousQuotientComponent
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesSpecialIdeal W x y)
  exact @trivializationAway
    (localSurfaceCoordinateRing W x y)
    (localSurfaceCentreRees W x y ⧸
      localSurfaceCentreReesSpecialIdeal W x y)
    _ _ _ ℬ
    (homogeneousQuotientGrading
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesSpecialIdeal W x y)
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y))
    (overlineTwoT W x y)
    (overlineTwoT_mem_degree_one W x y)

/-- The section of `O1` on `D₊(overlineTwoT)` given by `overlineTwoT / 1`.
Under `trivialization_Dplus_2t`, the degree-zero unit is sent to the
algebraic class of this fraction (`trivializationAway_one`). -/
noncomputable def overlineTwoT_as_degree_zero_section
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  ((by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let ℬ := homogeneousQuotientComponent
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesSpecialIdeal W x y)
  let g : GradedRing ℬ :=
    homogeneousQuotientGrading
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesSpecialIdeal W x y)
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  letI : GradedRing ℬ := g
  let f := overlineTwoT W x y
  let T := @ProjectiveSpectrum.top
    (localSurfaceCoordinateRing W x y)
    (localSurfaceCentreRees W x y ⧸
      localSurfaceCentreReesSpecialIdeal W x y)
    _ _ _ ℬ g
  let U0 := @ProjectiveSpectrum.basicOpen
    (localSurfaceCoordinateRing W x y)
    (localSurfaceCentreRees W x y ⧸
      localSurfaceCentreReesSpecialIdeal W x y)
    _ _ _ ℬ g f
  have hty : (T : Type) =
      @ProjectiveSpectrum
        (localSurfaceCoordinateRing W x y)
        (localSurfaceCentreRees W x y ⧸
          localSurfaceCentreReesSpecialIdeal W x y)
        _ _ _ ℬ g := rfl
  let U : Opens T :=
    ⟨cast (congrArg Set hty.symm) U0.carrier,
      by simpa [hty] using U0.isOpen⟩
  have hf : f ∈ ℬ 1 := overlineTwoT_mem_degree_one W x y
  let r : ℬ 1 := ⟨f, hf⟩
  let s : ℬ 0 := ⟨1, g.one_mem⟩
  let s_nin : ∀ z : U, (s : localSurfaceCentreRees W x y ⧸
      localSurfaceCentreReesSpecialIdeal W x y) ∉
      z.1.asHomogeneousIdeal :=
    fun z h1 => (ProjectiveSpectrum.isPrime z.1).ne_top
      (z.1.asHomogeneousIdeal.toIdeal.eq_top_iff_one.mpr h1)
  letI (z : U) : z.1.asHomogeneousIdeal.toIdeal.IsPrime :=
    ProjectiveSpectrum.isPrime z.1
  let sec : ∀ z : U,
      @TwistOneLocalization
        (localSurfaceCoordinateRing W x y)
        (localSurfaceCentreRees W x y ⧸
          localSurfaceCentreReesSpecialIdeal W x y)
        _ _ _ ℬ
        (z.1.asHomogeneousIdeal.toIdeal.primeCompl) :=
    fun z => by
      refine @TwistOneLocalization.mk
        (localSurfaceCoordinateRing W x y)
        (localSurfaceCentreRees W x y ⧸
          localSurfaceCentreReesSpecialIdeal W x y)
        _ _ _ ℬ
        (z.1.asHomogeneousIdeal.toIdeal.primeCompl)
        { deg := 0, num := r, den := s, den_mem := ?_ }
      simpa [Ideal.primeCompl] using s_nin z
  have hfrac : @IsShiftedFraction
      (localSurfaceCoordinateRing W x y)
      (localSurfaceCentreRees W x y ⧸
        localSurfaceCentreReesSpecialIdeal W x y)
      _ _ _ ℬ g U sec :=
    ⟨0, r, s, s_nin, fun _ => rfl⟩
  exact (⟨(O1 W x y).val.obj (Opposite.op U),
    (⟨sec, PrelocalPredicate.sheafifyOf hfrac⟩ :
      (O1 W x y).val.obj (Opposite.op U))⟩ : Σ S : Type, S)
  ) : Σ S : Type, S).2

end Beal.MathlibMissing

#print axioms Beal.MathlibMissing.trivializationAway
#print axioms Beal.MathlibMissing.trivializationAway_one
#print axioms Beal.MathlibMissing.overlineTwoT_mem_degree_one
#print axioms Beal.MathlibMissing.O1
#print axioms Beal.MathlibMissing.trivialization_Dplus_2t
#print axioms Beal.MathlibMissing.overlineTwoT_as_degree_zero_section
