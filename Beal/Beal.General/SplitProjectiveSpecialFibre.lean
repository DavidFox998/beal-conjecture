import Beal.«Beal.General».TateI1Classification

/-!
The homogeneous split nodal cubic over the residue field. This
is a polynomial-level irreducibility result; identifying its Proj
with the scheme-theoretic special fibre of the integral model
requires a separate base-change and coordinate-translation proof.
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

end Beal.General