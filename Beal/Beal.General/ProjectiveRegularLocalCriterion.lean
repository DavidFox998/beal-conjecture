import Beal.«Beal.General».ProjectiveChartStalks

/-!
A dimension-matched generator predicate for Noetherian local rings.
The pinned Mathlib does not provide a ring-level regular-local-ring
predicate. In particular, a dimension-at-most-one bound and a
principal maximal ideal do not suffice without ruling out
zero-dimensional non-field rings.
-/

namespace Beal.General

/-- The usual embedding-dimension criterion, expressed without
assuming the dimension is at most two: the maximal ideal has a
generating family indexed by the (finite) Krull dimension. -/
def IsRegularLocalRing (L : Type*) [CommRing L] [LocalRing L] : Prop :=
  IsNoetherianRing L ∧
    ∃ n : ℕ, ringKrullDim L = n ∧
      ∃ f : Fin n → L,
        LocalRing.maximalIdeal L = Ideal.span (Set.range f)

theorem isRegularLocalRing_of_field
    (L : Type*) [CommRing L] [LocalRing L]
    (hn : IsNoetherianRing L) (hf : IsField L) :
    IsRegularLocalRing L := by
  have hd : ringKrullDim L = 0 :=
    @Order.krullDim_eq_zero_of_unique _ _ (@PrimeSpectrum.instUnique _ hf.toField)
  refine ⟨hn, 0, hd, fun i : Fin 0 => i.elim0, ?_⟩
  have hm : LocalRing.maximalIdeal L = ⊥ :=
    (LocalRing.isField_iff_maximalIdeal_eq).mp hf
  simpa using hm

theorem isRegularLocalRing_of_dim_one_principal
    (L : Type*) [CommRing L] [LocalRing L]
    (hn : IsNoetherianRing L) (hd : ringKrullDim L = 1)
    (hp : (LocalRing.maximalIdeal L).IsPrincipal) :
    IsRegularLocalRing L := by
  letI : (LocalRing.maximalIdeal L).IsPrincipal := hp
  let a := Submodule.IsPrincipal.generator (LocalRing.maximalIdeal L)
  refine ⟨hn, 1, hd, fun _ : Fin 1 => a, ?_⟩
  have hm : Ideal.span {a} = LocalRing.maximalIdeal L :=
    Submodule.IsPrincipal.span_singleton_generator (LocalRing.maximalIdeal L)
  have hr : Set.range (fun _ : Fin 1 => a) = {a} := by
    ext c
    simp
  rw [hr]
  exact hm.symm

theorem isRegularLocalRing_of_dim_two_generators
    (L : Type*) [CommRing L] [LocalRing L]
    (hn : IsNoetherianRing L) (hd : ringKrullDim L = 2)
    (a b : L)
    (hm : LocalRing.maximalIdeal L = Ideal.span {a, b}) :
    IsRegularLocalRing L := by
  let f : Fin 2 → L := fun i => if i = 0 then a else b
  have hr : Set.range f = {a, b} := by
    ext c
    constructor
    · rintro ⟨i, rfl⟩
      by_cases hi : i = 0
      · simp [f, hi]
      · simp [f, hi]
    · intro hc
      rcases (by simpa using hc : c = a ∨ c = b) with rfl | rfl
      · exact ⟨0, by simp [f]⟩
      · exact ⟨1, by simp [f]⟩
  exact ⟨hn, 2, hd, f, by rw [hr]; exact hm⟩

/-- The checked projective-stalk data already gives the formal
regular-local predicate in both exact-dimension cases. The remaining
alternative records exactly the dimension-at-most-one case; promoting
it requires a separate reducedness/domain or field argument. -/
theorem valOne_splitNode_projective_regular_or_generic_gap
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (x : projectiveWeierstrassScheme W) :
    let L := (projectiveWeierstrassScheme W).presheaf.stalk x
    IsRegularLocalRing L ∨
      (IsNoetherianRing L ∧ Ring.DimensionLEOne L ∧
        (LocalRing.maximalIdeal L).IsPrincipal) := by
  let L := (projectiveWeierstrassScheme W).presheaf.stalk x
  obtain ⟨hn, hcases⟩ :=
    valOne_splitNode_projective_allStalk_parameters
      W hnode hsplit hΔ hval x
  rcases hcases with ⟨hd, hp⟩ | ⟨hd, hp⟩ | ⟨hd, a, b, hm⟩
  · exact Or.inr ⟨hn, hd, hp⟩
  · exact Or.inl (isRegularLocalRing_of_dim_one_principal L hn hd hp)
  · exact Or.inl (isRegularLocalRing_of_dim_two_generators L hn hd a b hm)

/-- A precise remaining premise for regularity at every projective
stalk: each low-dimensional alternative must either be a field
or have dimension exactly one. Neither conclusion follows from a
principal maximal ideal and a dimension upper bound alone. -/
theorem valOne_splitNode_projective_allStalk_regular_of_lowDim
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (hlow : ∀ x : projectiveWeierstrassScheme W,
      let L := (projectiveWeierstrassScheme W).presheaf.stalk x
      Ring.DimensionLEOne L →
        (LocalRing.maximalIdeal L).IsPrincipal →
          IsField L ∨ ringKrullDim L = 1)
    (x : projectiveWeierstrassScheme W) :
    IsRegularLocalRing
      ((projectiveWeierstrassScheme W).presheaf.stalk x) := by
  let L := (projectiveWeierstrassScheme W).presheaf.stalk x
  rcases valOne_splitNode_projective_regular_or_generic_gap
      W hnode hsplit hΔ hval x with hreg | ⟨hn, hd, hp⟩
  · exact hreg
  · rcases hlow x hd hp with hf | hone
    · exact isRegularLocalRing_of_field L hn hf
    · exact isRegularLocalRing_of_dim_one_principal L hn hone hp

end Beal.General