import Beal.«Beal.General».TateI1Split
import Mathlib.Algebra.Polynomial.SpecificDegree
import Mathlib.RingTheory.Ideal.QuotientOperations

/-!
Polynomial-level special-fibre prerequisites for a future `I₁`
classification. The local fibre must be obtained by localization;
an affine polynomial identity alone is not a Kodaira classification.
-/

namespace Beal.General

/-- The translated split nodal cubic in two formal coordinates. -/
noncomputable def splitNodeCubic : MvPolynomial (Fin 2) (ZMod 2) :=
  MvPolynomial.X 1 * (MvPolynomial.X 1 + MvPolynomial.X 0) -
    MvPolynomial.X 0 ^ 3

/-- The specialization of the split nodal cubic at `v = 1` is
an irreducible cubic over `ZMod 2`. -/
theorem splitNodeCubic_atOne_irreducible :
    Irreducible ((Polynomial.X : Polynomial (ZMod 2)) ^ 3 +
      Polynomial.X + 1) := by
  let p : Polynomial (ZMod 2) := Polynomial.X ^ 3 + Polynomial.X + 1
  have hd : p.natDegree = 3 := by
    dsimp [p]
    compute_degree!
  have hne : p ≠ 0 := by
    intro h
    have hz : p.natDegree = 0 := by simp [h]
    omega
  have hno (a : ZMod 2) : ¬p.IsRoot a := by
    fin_cases a <;> norm_num [Polynomial.IsRoot, p]
    all_goals decide
  have hr : p.roots = 0 := by
    apply Multiset.eq_zero_iff_forall_not_mem.mpr
    intro a ha
    exact hno a ((Polynomial.mem_roots hne).mp ha)
  exact (Polynomial.irreducible_iff_roots_eq_zero_of_degree_le_three
    (by simp [hd]) (by simp [hd])).mpr hr

/-- The reduction of the *polynomial defining the total surface* is
the split nodal cubic, not merely a function with the same values
on the four affine points over `ZMod 2`. -/
theorem splitNode_surfaceEquation_modTwo
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    MvPolynomial.map PadicInt.toZMod
      (localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)) =
    (MvPolynomial.X (1 : Fin 2) : MvPolynomial (Fin 2) (ZMod 2)) *
      (MvPolynomial.X 1 + MvPolynomial.X 0) -
        MvPolynomial.X 0 ^ 3 := by
  let φ : ℤ_[2] →+* ZMod 2 := PadicInt.toZMod
  let x : ℤ_[2] := W.a₃
  let y : ℤ_[2] := W.a₃ ^ 2 + W.a₄
  let U : MvPolynomial (Fin 2) (ZMod 2) := MvPolynomial.X 0
  let V : MvPolynomial (Fin 2) (ZMod 2) := MvPolynomial.X 1
  let c : ZMod 2 →+* MvPolynomial (Fin 2) (ZMod 2) := MvPolynomial.C
  have ha : (W.map φ).a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases (W.map φ).a₁).resolve_left hnode.2.2.2
  have hconst : localWeierstrassEquation (W.map φ) (φ x) (φ y) = 0 := by
    simpa [localWeierstrassEquation, reducedEquation, φ, x, y,
      WeierstrassCurve.map] using hnode.1
  have hdx : (W.map φ).a₁ * φ y -
      (3 * (φ x) ^ 2 + 2 * (W.map φ).a₂ * φ x + (W.map φ).a₄) = 0 := by
    simpa [reducedDx, φ, x, y] using hnode.2.1
  have hdy : 2 * φ y + (W.map φ).a₁ * φ x + (W.map φ).a₃ = 0 := by
    simpa [reducedDy, φ, x, y] using hnode.2.2.1
  have hquad : 3 * φ x + (W.map φ).a₂ = 0 := by
    simpa [φ, x] using hsplit
  have hmap :
      MvPolynomial.map φ (localSurfaceEquation W x y) =
      localWeierstrassEquation ((W.map φ).map c)
        (c (φ x) + U) (c (φ y) + V) := by
    simp [localSurfaceEquation, localWeierstrassEquation,
      WeierstrassCurve.map, U, V, c]
  have hconst' : localWeierstrassEquation ((W.map φ).map c)
      (c (φ x)) (c (φ y)) = 0 := by
    simpa [localWeierstrassEquation, WeierstrassCurve.map, c] using
      congrArg c hconst
  have hdx' :
      ((W.map φ).map c).a₁ * c (φ y) -
        (3 * c (φ x) ^ 2 +
          2 * ((W.map φ).map c).a₂ * c (φ x) +
          ((W.map φ).map c).a₄) = 0 := by
    simpa [WeierstrassCurve.map, c] using congrArg c hdx
  have hdy' :
      2 * c (φ y) +
        ((W.map φ).map c).a₁ * c (φ x) +
          ((W.map φ).map c).a₃ = 0 := by
    simpa [WeierstrassCurve.map, c] using congrArg c hdy
  have ha' : ((W.map φ).map c).a₁ = 1 := by
    simpa [WeierstrassCurve.map, c] using congrArg c ha
  have hquad' :
      3 * c (φ x) +
        ((W.map φ).map c).a₂ = 0 := by
    simpa [WeierstrassCurve.map, c] using congrArg c hquad
  change MvPolynomial.map φ (localSurfaceEquation W x y) =
    V * (V + U) - U ^ 3
  rw [hmap, localWeierstrassEquation_shift]
  rw [hconst', hdx', hdy', hquad', ha']
  ring

/-- The whole split cubic is irreducible, hence its affine coordinate
ring is a domain. This uses a monic cubic in `u` whose specialization
at `v = 1` has no root over `ZMod 2`. -/
theorem splitNodeCubic_ideal_isPrime :
    (Ideal.span {splitNodeCubic} :
      Ideal (MvPolynomial (Fin 2) (ZMod 2))).IsPrime := by
  let E := MvPolynomial.finSuccEquiv (ZMod 2) 1
  let a : MvPolynomial (Fin 1) (ZMod 2) := MvPolynomial.X 0
  let p : Polynomial (MvPolynomial (Fin 1) (ZMod 2)) :=
    Polynomial.X ^ 3 + Polynomial.C a * Polynomial.X +
      Polynomial.C (a ^ 2)
  let ψ : MvPolynomial (Fin 1) (ZMod 2) →+* ZMod 2 :=
    MvPolynomial.eval₂Hom (RingHom.id (ZMod 2)) (fun _ => 1)
  have hX0 : E (MvPolynomial.X (0 : Fin 2)) = Polynomial.X :=
    MvPolynomial.finSuccEquiv_X_zero
  have hX1 : E (MvPolynomial.X (1 : Fin 2)) = Polynomial.C a := by
    convert MvPolynomial.finSuccEquiv_X_succ
      (R := ZMod 2) (n := 1) (j := 0) using 1
  have hE : E splitNodeCubic = p := by
    dsimp [splitNodeCubic, p]
    simp only [map_sub, map_mul, map_add, map_pow,
      hX0, hX1]
    have htwo : (2 : Polynomial (MvPolynomial (Fin 1) (ZMod 2))) = 0 := by
      let c : ZMod 2 →+* Polynomial (MvPolynomial (Fin 1) (ZMod 2)) :=
        Polynomial.C.comp MvPolynomial.C
      have hz : (2 : ZMod 2) = 0 := by decide
      simpa only [map_ofNat, map_zero] using congrArg c hz
    linear_combination -htwo * Polynomial.X ^ 3
  have hmonic : p.Monic := by
    have hlt : (Polynomial.C a * Polynomial.X +
        Polynomial.C (a ^ 2)).degree < (3 : WithBot ℕ) :=
      lt_trans (Polynomial.degree_linear_lt (a := a) (b := a ^ 2))
        (by decide)
    simpa only [p, add_assoc] using
      (Polynomial.monic_X_pow_add (n := 3) hlt)
  have hspec :
      Polynomial.map ψ p =
        (Polynomial.X : Polynomial (ZMod 2)) ^ 3 +
          Polynomial.X + 1 := by
    simp [p, ψ, a]
  have hirr : Irreducible p :=
    hmonic.irreducible_of_irreducible_map ψ p
      (by rw [hspec]; exact splitNodeCubic_atOne_irreducible)
  haveI : (Ideal.span {E splitNodeCubic} :
      Ideal (Polynomial (MvPolynomial (Fin 1) (ZMod 2)))).IsPrime := by
    rw [hE]
    exact (Ideal.span_singleton_prime hirr.ne_zero).mpr
      (UniqueFactorizationMonoid.irreducible_iff_prime.mp hirr)
  have hback := Ideal.map_isPrime_of_equiv (E.symm)
    (I := (Ideal.span {E splitNodeCubic} :
      Ideal (Polynomial (MvPolynomial (Fin 1) (ZMod 2)))))
  simpa only [Ideal.map_span, Set.image_singleton, E.symm_apply_apply] using hback

/-- The ideal of the special fibre in the affine total-space
coordinate ring. This is the image of the base ideal `(2)`. -/
noncomputable def localSurfaceSpecialFibreIdeal
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    Ideal (localSurfaceCoordinateRing W x y) :=
  Ideal.map
    (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
    (Ideal.span {MvPolynomial.C (2 : ℤ_[2])})

/-- The entire affine special-fibre coordinate ring, prior to
localization at its node, is the quotient by the split nodal cubic.
In particular this is not the two-line tangent cone. -/
noncomputable def splitNode_affineSpecialFibre_equiv
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    (localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄) ⧸
      localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)) ≃+*
      (MvPolynomial (Fin 2) (ZMod 2) ⧸
        Ideal.span {splitNodeCubic}) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let T := MvPolynomial (Fin 2) (ZMod 2)
  let I : Ideal S :=
    Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)}
  let K : Ideal S := Ideal.span {MvPolynomial.C (2 : ℤ_[2])}
  let φ : S →+* T := MvPolynomial.map PadicInt.toZMod
  let J : Ideal T := Ideal.span {splitNodeCubic}
  let h : S →+* T ⧸ J := (Ideal.Quotient.mk J).comp φ
  have hz : Function.Surjective (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
    intro z
    fin_cases z
    · exact ⟨0, by simp⟩
    · exact ⟨1, by simp⟩
  have hφ : Function.Surjective φ :=
    MvPolynomial.map_surjective PadicInt.toZMod hz
  have hK : RingHom.ker φ = K :=
    localSurfaceAmbient_reduction_kernel_eq_span_two
  have hJ : J = Ideal.map φ I := by
    simp only [J, I, Ideal.map_span, Set.image_singleton]
    exact congrArg (fun f : T => Ideal.span {f})
      (splitNode_surfaceEquation_modTwo W hnode hsplit).symm
  have hker : RingHom.ker h = I ⊔ K := by
    calc
      RingHom.ker h =
          Ideal.comap φ (RingHom.ker (Ideal.Quotient.mk J)) := by
        simp only [RingHom.ker_eq_comap_bot, ← Ideal.comap_comap, h]
      _ = Ideal.comap φ J := by rw [Ideal.mk_ker]
      _ = Ideal.comap φ (Ideal.map φ I) := by rw [← hJ]
      _ = I ⊔ RingHom.ker φ := by
        rw [Ideal.comap_map_of_surjective φ hφ I, RingHom.ker_eq_comap_bot]
      _ = I ⊔ K := by rw [hK]
  have hh : Function.Surjective h := by
    simpa only [h] using
      (Ideal.Quotient.mk_surjective : Function.Surjective (Ideal.Quotient.mk J)).comp hφ
  change (S ⧸ I) ⧸ Ideal.map (Ideal.Quotient.mk I) K ≃+* T ⧸ J
  exact ((DoubleQuot.quotQuotEquivQuotSup I K).trans
    (Ideal.quotEquivOfEq hker.symm)).trans
      (RingHom.quotientKerEquivOfSurjective hh)

/-- The actual affine special fibre is integral. This concerns the
quotient by the base uniformizer, not just the tangent cone at the
node or a finite-field equality of functions. -/
theorem splitNode_affineSpecialFibre_isDomain
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    IsDomain (localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄) ⧸
      localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)) := by
  letI : (Ideal.span {splitNodeCubic} :
    Ideal (MvPolynomial (Fin 2) (ZMod 2))).IsPrime :=
      splitNodeCubic_ideal_isPrime
  let e := splitNode_affineSpecialFibre_equiv W hnode hsplit
  exact e.injective.isDomain e.toRingHom

#print axioms splitNode_surfaceEquation_modTwo
#print axioms splitNodeCubic_atOne_irreducible
#print axioms splitNodeCubic_ideal_isPrime
#print axioms splitNode_affineSpecialFibre_equiv
#print axioms splitNode_affineSpecialFibre_isDomain

end Beal.General