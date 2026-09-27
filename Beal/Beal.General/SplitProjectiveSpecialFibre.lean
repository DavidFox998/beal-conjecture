import Beal.«Beal.General».TateI1MinimalRegularModel

/-!
The homogeneous split nodal cubic over the residue field. The
actual projective equation reduces to this cubic after a reversible
homogeneous translation, giving equivalent reduced coordinate rings.
Identifying their Proj with the scheme-theoretic special fibre of
the integral model still requires a base-change proof.
-/

namespace Beal.General

/-- The homogeneous closure of `v(v+u)-u³` in coordinates `[u:v:z]`. -/
noncomputable def splitNodeProjectiveCubic :
    MvPolynomial (Fin 3) (ZMod 2) :=
  let U : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 0
  let V : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 1
  let Z : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 2
  Z * V * (V + U) - U ^ 3

/-- The standard `z = 1` dehomogenization in the canonical
split coordinates. -/
noncomputable def splitNodeProjective_dehomogenizeZ :
    MvPolynomial (Fin 3) (ZMod 2) →+*
      MvPolynomial (Fin 2) (ZMod 2) :=
  MvPolynomial.eval₂Hom MvPolynomial.C (fun i =>
    if i = 0 then MvPolynomial.X 0
    else if i = 1 then MvPolynomial.X 1 else 1)

theorem splitNodeProjectiveCubic_dehomogenizeZ :
    splitNodeProjective_dehomogenizeZ splitNodeProjectiveCubic =
      splitNodeCubic := by
  simp [splitNodeProjective_dehomogenizeZ, splitNodeProjectiveCubic,
    splitNodeCubic]

/-- Translation by multiples of `z` is a graded-compatible
automorphism of the homogeneous polynomial ring. -/
noncomputable def projectivePlaneTranslation
    (R : Type*) [CommRing R] (a b : R) :
    MvPolynomial (Fin 3) R ≃+* MvPolynomial (Fin 3) R := by
  let S := MvPolynomial (Fin 3) R
  let U : S := MvPolynomial.X 0
  let V : S := MvPolynomial.X 1
  let Z : S := MvPolynomial.X 2
  let s : S →+* S :=
    MvPolynomial.eval₂Hom MvPolynomial.C
      ![U + MvPolynomial.C a * Z, V + MvPolynomial.C b * Z, Z]
  let t : S →+* S :=
    MvPolynomial.eval₂Hom MvPolynomial.C
      ![U - MvPolynomial.C a * Z, V - MvPolynomial.C b * Z, Z]
  have hsC (r : R) : s (MvPolynomial.C r) = MvPolynomial.C r :=
    MvPolynomial.eval₂Hom_C _ _ _
  have htC (r : R) : t (MvPolynomial.C r) = MvPolynomial.C r :=
    MvPolynomial.eval₂Hom_C _ _ _
  have hsU : s U = U + MvPolynomial.C a * Z :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hsV : s V = V + MvPolynomial.C b * Z :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hsZ : s Z = Z :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have htU : t U = U - MvPolynomial.C a * Z :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have htV : t V = V - MvPolynomial.C b * Z :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have htZ : t Z = Z :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hst : s.comp t = RingHom.id S := by
    apply MvPolynomial.ringHom_ext
    · intro r
      change s (t (MvPolynomial.C r)) = MvPolynomial.C r
      rw [htC, hsC]
    · intro i
      fin_cases i
      · change s (t U) = U
        rw [htU, map_sub, map_mul, hsU, hsC, hsZ]
        ring
      · change s (t V) = V
        rw [htV, map_sub, map_mul, hsV, hsC, hsZ]
        ring
      · change s (t Z) = Z
        rw [htZ, hsZ]
  have hts : t.comp s = RingHom.id S := by
    apply MvPolynomial.ringHom_ext
    · intro r
      change t (s (MvPolynomial.C r)) = MvPolynomial.C r
      rw [hsC, htC]
    · intro i
      fin_cases i
      · change t (s U) = U
        rw [hsU, map_add, map_mul, htU, htC, htZ]
        ring
      · change t (s V) = V
        rw [hsV, map_add, map_mul, htV, htC, htZ]
        ring
      · change t (s Z) = Z
        rw [hsZ, htZ]
  have hleft (p : S) : s (t p) = p := by
    have h := congrArg (fun f : S →+* S => f p) hst
    simpa only [RingHom.comp_apply, RingHom.id_apply] using h
  have hright (p : S) : t (s p) = p := by
    have h := congrArg (fun f : S →+* S => f p) hts
    simpa only [RingHom.comp_apply, RingHom.id_apply] using h
  refine RingEquiv.ofBijective s ⟨?_, ?_⟩
  · intro p q hp
    calc
      p = t (s p) := (hright p).symm
      _ = t (s q) := by rw [hp]
      _ = q := hright q
  · intro p
    exact ⟨t p, hleft p⟩

/-- Translation by a scalar multiple of `z` preserves the total
degree of homogeneous polynomials. -/
theorem projectivePlaneTranslation_isHomogeneous
    (R : Type*) [CommRing R] (a b : R) (n : ℕ)
    (p : MvPolynomial (Fin 3) R) (hp : p.IsHomogeneous n) :
    ((projectivePlaneTranslation R a b) p).IsHomogeneous n := by
  let U : MvPolynomial (Fin 3) R := MvPolynomial.X 0
  let V : MvPolynomial (Fin 3) R := MvPolynomial.X 1
  let Z : MvPolynomial (Fin 3) R := MvPolynomial.X 2
  let g : Fin 3 → MvPolynomial (Fin 3) R :=
    ![U + MvPolynomial.C a * Z, V + MvPolynomial.C b * Z, Z]
  have hg : ∀ i : Fin 3, (g i).IsHomogeneous 1 := by
    intro i
    fin_cases i
    · exact (MvPolynomial.isHomogeneous_X _ _).add
        ((MvPolynomial.isHomogeneous_X _ _).C_mul a)
    · exact (MvPolynomial.isHomogeneous_X _ _).add
        ((MvPolynomial.isHomogeneous_X _ _).C_mul b)
    · exact MvPolynomial.isHomogeneous_X _ _
  have h := hp.eval₂ MvPolynomial.C g
    (fun r => MvPolynomial.isHomogeneous_C _ r) hg
  change (MvPolynomial.eval₂ MvPolynomial.C g p).IsHomogeneous n
  simpa only [one_mul] using h

/-- Translate the actual integral homogeneous cubic at the lifted node,
then reduce modulo `2`. This is an equality of homogeneous polynomials,
not merely an equality of their values at rational points. -/
theorem splitNode_projectiveCubic_translated_modTwo
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let φ : ℤ_[2] →+* ZMod 2 := PadicInt.toZMod
    let U : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 0
    let V : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 1
    let Z : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 2
    let c : ZMod 2 →+* MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.C
    let shift : MvPolynomial (Fin 3) ℤ_[2] →+*
        MvPolynomial (Fin 3) (ZMod 2) :=
      MvPolynomial.eval₂Hom (c.comp φ)
        ![U + c (φ W.a₃) * Z,
          V + c (φ (W.a₃ ^ 2 + W.a₄)) * Z, Z]
    shift (projectiveWeierstrassCubic W) = splitNodeProjectiveCubic := by
  let φ : ℤ_[2] →+* ZMod 2 := PadicInt.toZMod
  let x : ℤ_[2] := W.a₃
  let y : ℤ_[2] := W.a₃ ^ 2 + W.a₄
  let U : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 0
  let V : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 1
  let Z : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 2
  let c : ZMod 2 →+* MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.C
  let shift : MvPolynomial (Fin 3) ℤ_[2] →+*
      MvPolynomial (Fin 3) (ZMod 2) :=
    MvPolynomial.eval₂Hom (c.comp φ)
      ![U + c (φ x) * Z, V + c (φ y) * Z, Z]
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
  have hconst' : c (localWeierstrassEquation (W.map φ) (φ x) (φ y)) = 0 := by
    rw [hconst, map_zero]
  have hdx' : c ((W.map φ).a₁ * φ y -
      (3 * (φ x) ^ 2 + 2 * (W.map φ).a₂ * φ x + (W.map φ).a₄)) = 0 := by
    rw [hdx, map_zero]
  have hdy' : c (2 * φ y + (W.map φ).a₁ * φ x + (W.map φ).a₃) = 0 := by
    rw [hdy, map_zero]
  have hquad' : c (3 * φ x + (W.map φ).a₂) = 0 := by
    rw [hquad, map_zero]
  have ha' : c ((W.map φ).a₁) = 1 := by
    rw [ha, map_one]
  change shift (projectiveWeierstrassCubic W) = splitNodeProjectiveCubic
  have hX0 : shift (MvPolynomial.X (0 : Fin 3)) = U + c (φ x) * Z := by
    simp [shift]
  have hX1 : shift (MvPolynomial.X (1 : Fin 3)) = V + c (φ y) * Z := by
    simp [shift]
  have hX2 : shift (MvPolynomial.X (2 : Fin 3)) = Z := by
    simp [shift]
  have hc (a : ℤ_[2]) : shift (MvPolynomial.C a) = c (φ a) := by
    simp [shift]
  have hpoly : shift (projectiveWeierstrassCubic W) -
      splitNodeProjectiveCubic =
        c (localWeierstrassEquation (W.map φ) (φ x) (φ y)) * Z ^ 3 +
        c ((W.map φ).a₁ * φ y -
          (3 * (φ x) ^ 2 + 2 * (W.map φ).a₂ * φ x + (W.map φ).a₄)) *
          U * Z ^ 2 +
        c (2 * φ y + (W.map φ).a₁ * φ x + (W.map φ).a₃) * V * Z ^ 2 -
        c (3 * φ x + (W.map φ).a₂) * U ^ 2 * Z +
        (c ((W.map φ).a₁) - 1) * U * V * Z := by
    simp only [projectiveWeierstrassCubic, splitNodeProjectiveCubic,
      map_add, map_sub, map_mul, map_pow, hc, hX0, hX1, hX2,
      localWeierstrassEquation, WeierstrassCurve.map]
    simp only [map_add, map_sub, map_mul, map_pow, map_ofNat, map_one]
    ring
  have hz : shift (projectiveWeierstrassCubic W) -
      splitNodeProjectiveCubic = 0 := by
    rw [hpoly, hconst', hdx', hdy', hquad', ha']
    ring
  exact sub_eq_zero.mp hz

/-- The homogeneous split cubic is integral, including its
point at infinity. Specializing both remaining variables to `1`
after viewing it as a monic polynomial in `u` yields
`u³+u+1`, which is irreducible over the residue field. -/
theorem splitNodeProjectiveCubic_ideal_isPrime :
    (Ideal.span {splitNodeProjectiveCubic} :
      Ideal (MvPolynomial (Fin 3) (ZMod 2))).IsPrime := by
  let E := MvPolynomial.finSuccEquiv (ZMod 2) 2
  let v : MvPolynomial (Fin 2) (ZMod 2) := MvPolynomial.X 0
  let z : MvPolynomial (Fin 2) (ZMod 2) := MvPolynomial.X 1
  let p : Polynomial (MvPolynomial (Fin 2) (ZMod 2)) :=
    Polynomial.X ^ 3 + Polynomial.C (z * v) * Polynomial.X +
      Polynomial.C (z * v ^ 2)
  let ψ : MvPolynomial (Fin 2) (ZMod 2) →+* ZMod 2 :=
    MvPolynomial.eval₂Hom (RingHom.id (ZMod 2)) (fun _ => 1)
  have hX0 : E (MvPolynomial.X (0 : Fin 3)) = Polynomial.X :=
    MvPolynomial.finSuccEquiv_X_zero
  have hX1 : E (MvPolynomial.X (1 : Fin 3)) = Polynomial.C v := by
    convert MvPolynomial.finSuccEquiv_X_succ
      (R := ZMod 2) (n := 2) (j := 0) using 1
  have hX2 : E (MvPolynomial.X (2 : Fin 3)) = Polynomial.C z := by
    convert MvPolynomial.finSuccEquiv_X_succ
      (R := ZMod 2) (n := 2) (j := 1) using 1
  have hE : E splitNodeProjectiveCubic = p := by
    dsimp [splitNodeProjectiveCubic, p]
    simp only [map_sub, map_mul, map_add, map_pow, hX0, hX1, hX2]
    have htwo : (2 : Polynomial (MvPolynomial (Fin 2) (ZMod 2))) = 0 := by
      let c : ZMod 2 →+* Polynomial (MvPolynomial (Fin 2) (ZMod 2)) :=
        Polynomial.C.comp MvPolynomial.C
      have hz : (2 : ZMod 2) = 0 := by decide
      simpa only [map_ofNat, map_zero] using congrArg c hz
    linear_combination -htwo * Polynomial.X ^ 3
  have hmonic : p.Monic := by
    have hlt : (Polynomial.C (z * v) * Polynomial.X +
        Polynomial.C (z * v ^ 2)).degree < (3 : WithBot ℕ) :=
      lt_trans (Polynomial.degree_linear_lt (a := z * v) (b := z * v ^ 2))
        (by decide)
    simpa only [p, add_assoc] using
      (Polynomial.monic_X_pow_add (n := 3) hlt)
  have hspec :
      Polynomial.map ψ p =
        (Polynomial.X : Polynomial (ZMod 2)) ^ 3 +
          Polynomial.X + 1 := by
    simp [p, ψ, v, z]
  have hirr : Irreducible p :=
    hmonic.irreducible_of_irreducible_map ψ p
      (by rw [hspec]; exact splitNodeCubic_atOne_irreducible)
  haveI : (Ideal.span {E splitNodeProjectiveCubic} :
      Ideal (Polynomial (MvPolynomial (Fin 2) (ZMod 2)))).IsPrime := by
    rw [hE]
    exact (Ideal.span_singleton_prime hirr.ne_zero).mpr
      (UniqueFactorizationMonoid.irreducible_iff_prime.mp hirr)
  have hback := Ideal.map_isPrime_of_equiv (E.symm)
    (I := (Ideal.span {E splitNodeProjectiveCubic} :
      Ideal (Polynomial (MvPolynomial (Fin 2) (ZMod 2)))))
  simpa only [Ideal.map_span, Set.image_singleton, E.symm_apply_apply] using hback

/-- The full homogeneous coordinate ring of the canonical split
projective cubic is a domain; this does not identify the actual
integral model's base change with this quotient. -/
theorem splitNodeProjectiveCoordinateRing_isDomain :
    IsDomain (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {splitNodeProjectiveCubic}) :=
  (Ideal.Quotient.isDomain_iff_prime _).mpr
    splitNodeProjectiveCubic_ideal_isPrime

/-- The reversible residue-field translation sends the actual
homogeneous projective equation to the canonical split cubic. -/
theorem splitNode_projectiveCubic_modTwo_translate
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    projectivePlaneTranslation (ZMod 2)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄))
      (MvPolynomial.map PadicInt.toZMod (projectiveWeierstrassCubic W)) =
        splitNodeProjectiveCubic := by
  let φ : ℤ_[2] →+* ZMod 2 := PadicInt.toZMod
  change MvPolynomial.eval₂Hom MvPolynomial.C
    ![MvPolynomial.X 0 +
        MvPolynomial.C (φ W.a₃) * MvPolynomial.X 2,
      MvPolynomial.X 1 +
        MvPolynomial.C (φ (W.a₃ ^ 2 + W.a₄)) * MvPolynomial.X 2,
      MvPolynomial.X 2]
    (MvPolynomial.map φ (projectiveWeierstrassCubic W)) =
      splitNodeProjectiveCubic
  rw [MvPolynomial.eval₂Hom_map_hom]
  exact splitNode_projectiveCubic_translated_modTwo W hnode hsplit

/-- The reduced homogeneous coordinate ring of the actual
Weierstrass cubic is ring-equivalent to the canonical split one.
Compatibility of this equivalence with quotient gradings and
scheme-theoretic base change is not asserted here. -/
noncomputable def splitNode_projectiveCubic_modTwo_quotient_equiv
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {MvPolynomial.map PadicInt.toZMod
        (projectiveWeierstrassCubic W)}) ≃+*
    (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {splitNodeProjectiveCubic}) := by
  let E : MvPolynomial (Fin 3) (ZMod 2) ≃+*
      MvPolynomial (Fin 3) (ZMod 2) :=
    projectivePlaneTranslation (ZMod 2)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄))
  apply Ideal.quotientEquiv
    (Ideal.span {MvPolynomial.map PadicInt.toZMod
      (projectiveWeierstrassCubic W)})
    (Ideal.span {splitNodeProjectiveCubic}) E
  rw [Ideal.map_span]
  simp only [Set.image_singleton]
  rw [← splitNode_projectiveCubic_modTwo_translate W hnode hsplit]
  change Ideal.span {E (MvPolynomial.map PadicInt.toZMod
    (projectiveWeierstrassCubic W))} =
    Ideal.span {E (MvPolynomial.map PadicInt.toZMod
      (projectiveWeierstrassCubic W))}
  rfl

/-- The *actual* integral projective equation, after coefficient
reduction modulo `2`, generates a prime ideal. The proof transports
the canonical prime ideal through the homogeneous translation at
the lifted node. -/
theorem splitNode_projectiveCubic_modTwo_ideal_isPrime
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    (Ideal.span {MvPolynomial.map PadicInt.toZMod
      (projectiveWeierstrassCubic W)} :
        Ideal (MvPolynomial (Fin 3) (ZMod 2))).IsPrime := by
  let φ : ℤ_[2] →+* ZMod 2 := PadicInt.toZMod
  let F : MvPolynomial (Fin 3) (ZMod 2) :=
    MvPolynomial.map φ (projectiveWeierstrassCubic W)
  let E : MvPolynomial (Fin 3) (ZMod 2) ≃+*
      MvPolynomial (Fin 3) (ZMod 2) :=
    projectivePlaneTranslation (ZMod 2) (φ W.a₃)
      (φ (W.a₃ ^ 2 + W.a₄))
  have hE : E F = splitNodeProjectiveCubic :=
    splitNode_projectiveCubic_modTwo_translate W hnode hsplit
  haveI : (Ideal.span {E F} :
      Ideal (MvPolynomial (Fin 3) (ZMod 2))).IsPrime := by
    rw [hE]
    exact splitNodeProjectiveCubic_ideal_isPrime
  have hback := Ideal.map_isPrime_of_equiv E.symm
    (I := (Ideal.span {E F} :
      Ideal (MvPolynomial (Fin 3) (ZMod 2))))
  simpa only [Ideal.map_span, Set.image_singleton, E.symm_apply_apply]
    using hback

/-- The coordinate ring of the actual reduced homogeneous cubic
is integral. The scheme-theoretic fibre identification remains
a separate step. -/
theorem splitNode_projectiveCubic_modTwo_quotient_isDomain
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    IsDomain (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {MvPolynomial.map PadicInt.toZMod
        (projectiveWeierstrassCubic W)}) :=
  (Ideal.Quotient.isDomain_iff_prime _).mpr
    (splitNode_projectiveCubic_modTwo_ideal_isPrime W hnode hsplit)

end Beal.General