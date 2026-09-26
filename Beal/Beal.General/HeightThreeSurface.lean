import Beal.«Beal.General».HeightThree
import Beal.«Beal.General».TateReduction

/-!
The ambient closed-point height bound at the two-adic translated
surface centre. Hypersurface dimension requires a separate argument.
-/

namespace Beal.General

private instance : localSurfaceCentre.IsPrime :=
  localSurfaceCentre_isMaximal.isPrime

private theorem localSurfaceCentre_minimal_generators :
    localSurfaceCentre ∈
      (Ideal.span {MvPolynomial.C (2 : ℤ_[2]),
        MvPolynomial.X (0 : Fin 2), MvPolynomial.X (1 : Fin 2)}).minimalPrimes := by
  change localSurfaceCentre ∈ localSurfaceCentre.minimalPrimes
  exact ⟨⟨localSurfaceCentre_isMaximal.isPrime, le_rfl⟩,
    fun J hJ _ => hJ.2⟩

/-- The centre `(2, X, Y)` has height at most three for arbitrary
prime chains in the ambient polynomial ring. -/
theorem localSurfaceCentre_height_le_three :
    Order.height
      (⟨localSurfaceCentre, localSurfaceCentre_isMaximal.isPrime⟩ :
        PrimeSpectrum (MvPolynomial (Fin 2) ℤ_[2])) ≤ 3 := by
  let a : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.C 2
  let b : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 0
  let c : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 1
  exact minimal_prime_over_triple_height_le_three a b c
    localSurfaceCentre localSurfaceCentre_minimal_generators

/-- The origin's explicit prime chain reaches this same centre,
so its height is exactly three. -/
theorem localSurfaceCentre_height_eq_three :
    Order.height
      (⟨localSurfaceCentre, localSurfaceCentre_isMaximal.isPrime⟩ :
        PrimeSpectrum (MvPolynomial (Fin 2) ℤ_[2])) = 3 := by
  apply le_antisymm localSurfaceCentre_height_le_three
  simpa only [localSurfaceCentre_eq_ker_residue, localSurfaceResidue] using
    localSurfaceAmbient_origin_height_ge_three

/-- The ambient local ring at `(2, X, Y)` has dimension exactly three.
The lower bound localizes the explicit origin chain; the upper bound
applies the three-generator theorem to every local prime chain. -/
theorem localSurfaceAmbient_atCentre_ringKrullDim_eq_three :
    ringKrullDim (Localization.AtPrime localSurfaceCentre) = 3 := by
  let R := MvPolynomial (Fin 2) ℤ_[2]
  let p : Ideal R := localSurfaceCentre
  haveI : p.IsPrime := localSurfaceCentre_isMaximal.isPrime
  let L := Localization.AtPrime p
  let f : R →+* L := algebraMap R L
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing p.primeCompl _ inferInstance
  let a : R := MvPolynomial.C 2
  let b : R := MvPolynomial.X 0
  let c : R := MvPolynomial.X 1
  have hspan : (Ideal.span {f a, f b, f c} : Ideal L) =
      (Ideal.span {a, b, c} : Ideal R).map f := by
    rw [Ideal.map_span]
    simp only [Set.image_insert_eq, Set.image_singleton]
  have hminloc : LocalRing.maximalIdeal L ∈
      (Ideal.span {f a, f b, f c}).minimalPrimes := by
    rw [hspan]
    exact minimal_ideal_atPrime _ p localSurfaceCentre_minimal_generators
  let M : PrimeSpectrum L :=
    ⟨LocalRing.maximalIdeal L, (LocalRing.maximalIdeal.isMaximal L).isPrime⟩
  have hUpper : Order.height M ≤ 3 :=
    local_triple_minimal_height_le_three (f a) (f b) (f c) hminloc
  have hLower : (3 : ℕ∞) ≤ Order.height M := by
    rw [← localSurfaceCentre_height_eq_three]
    exact height_le_atPrime_maximal_height p
  have hEq : Order.height M = 3 := le_antisymm hUpper hLower
  have hDim : ringKrullDim L = (↑(Order.height M) : WithBot ℕ∞) := by
    change Order.krullDim (PrimeSpectrum L) =
      (↑(Order.height M) : WithBot ℕ∞)
    rw [Order.krullDim_eq_iSup_height]
    apply le_antisymm
    · apply iSup_le
      intro Q
      exact WithBot.coe_le_coe.mpr
        (Order.height_mono (show Q ≤ M from
          LocalRing.le_maximalIdeal Q.isPrime.ne_top))
    · exact le_iSup_of_le M le_rfl
  simpa only [hEq] using hDim

/-- In the valuation-one branch, the local hypersurface closed point
has height at most two. This upper bound does not assert that its
height is two or that the local ring is regular. -/
theorem valOne_local_surface_maximal_height_le_two
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    Order.height
      (⟨LocalRing.maximalIdeal (Localization.AtPrime P),
        (LocalRing.maximalIdeal.isMaximal _).isPrime⟩ :
        PrimeSpectrum (Localization.AtPrime P)) ≤ 2 := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk
      (Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective
      (MvPolynomial (Fin 2) ℤ_[2]) R q Ideal.Quotient.mk_surjective
  let L := Localization.AtPrime P
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  let f : R →+* L := algebraMap R L
  have hspan : LocalRing.maximalIdeal L =
      Ideal.span {f (q (MvPolynomial.X 0)), f (q (MvPolynomial.X 1))} :=
    valOne_localMaximalIdeal_eq_span_coordinates W hnode hΔ hval
  have hmin : LocalRing.maximalIdeal L ∈
      (Ideal.span {f (q (MvPolynomial.X 0)),
        f (q (MvPolynomial.X 1))}).minimalPrimes := by
    rw [← hspan]
    exact ⟨⟨(LocalRing.maximalIdeal.isMaximal L).isPrime, le_rfl⟩,
      fun J hJ _ => hJ.2⟩
  exact local_pair_minimal_height_le_two _ _ hmin

#print axioms localSurfaceCentre_height_eq_three
#print axioms localSurfaceAmbient_atCentre_ringKrullDim_eq_three
#print axioms valOne_local_surface_maximal_height_le_two

end Beal.General