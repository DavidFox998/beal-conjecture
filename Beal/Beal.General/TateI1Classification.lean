import Beal.«Beal.General».TateI1Split
import Mathlib.Algebra.Polynomial.SpecificDegree
import Mathlib.RingTheory.Ideal.QuotientOperations
import Mathlib.RingTheory.Localization.Ideal
import Mathlib.RingTheory.DiscreteValuationRing.TFAE
import Mathlib.AlgebraicGeometry.EllipticCurve.Projective

/-!
Polynomial-level special-fibre prerequisites for a future `I₁`
classification. The local fibre must be obtained by localization;
an affine polynomial identity alone is not a Kodaira classification.
At a nodal closed point, regularity does not make the uniformizer a
local parameter: for example, `xy = 2` has `2` in the square of the
maximal ideal. Component multiplicity is measured at its generic
point, not by maximal-ideal order at the node.
-/

namespace Beal.General

/-- A regular principal prime in a Noetherian local ring detects
zero divisors: repeatedly divide one factor by its generator and
use Krull intersection for the other. -/
theorem isDomain_of_regular_principal_prime_local
    (A : Type*) [CommRing A] [LocalRing A] [IsNoetherianRing A]
    (t : A) (ht : ∀ a : A, t * a = 0 → a = 0)
    (hp : (Ideal.span {t} : Ideal A).IsPrime) : IsDomain A := by
  let I : Ideal A := Ideal.span {t}
  have hsep : (⨅ n : ℕ, I ^ n) = ⊥ :=
    Ideal.iInf_pow_eq_bot_of_localRing I hp.ne_top
  have hprimitive (x y : A) (hx : x ∉ I) (hxy : x * y = 0) : y = 0 := by
    have hdiv : ∀ n : ℕ, ∃ z : A, y = t ^ n * z ∧ x * z = 0 := by
      intro n
      induction n with
      | zero => exact ⟨y, by simp, hxy⟩
      | succ n ih =>
        obtain ⟨z, hyz, hxz⟩ := ih
        have hzmem : z ∈ I :=
          (hp.mem_or_mem (by rw [hxz]; exact I.zero_mem)).resolve_left hx
        obtain ⟨w, hw⟩ := Ideal.mem_span_singleton.mp hzmem
        refine ⟨w, ?_, ?_⟩
        · rw [hyz, hw, pow_succ]
          ring
        · apply ht
          calc
            t * (x * w) = x * z := by rw [hw]; ring
            _ = 0 := hxz
    have hall : y ∈ ⨅ n : ℕ, I ^ n := Ideal.mem_iInf.mpr (by
      intro n
      obtain ⟨z, hyz, _⟩ := hdiv n
      change y ∈ (Ideal.span {t} : Ideal A) ^ n
      rw [Ideal.span_singleton_pow]
      exact Ideal.mem_span_singleton.mpr ⟨z, hyz⟩)
    rw [hsep] at hall
    exact Ideal.mem_bot.mp hall
  have hnondiv : ∀ n : ℕ, ∀ x y : A, x ∉ I ^ n → x * y = 0 → y = 0 := by
    intro n
    induction n with
    | zero =>
        intro x y hx _
        exact (hx (by simp)).elim
    | succ n ih =>
        intro x y hx hxy
        by_cases hxm : x ∈ I
        · obtain ⟨z, hz⟩ := Ideal.mem_span_singleton.mp hxm
          have hznot : z ∉ I ^ n := by
            intro hzmem
            apply hx
            change z ∈ (Ideal.span {t} : Ideal A) ^ n at hzmem
            change x ∈ (Ideal.span {t} : Ideal A) ^ (n + 1)
            rw [Ideal.span_singleton_pow] at hzmem ⊢
            obtain ⟨w, hw⟩ := Ideal.mem_span_singleton.mp hzmem
            exact Ideal.mem_span_singleton.mpr ⟨w, by rw [hz, hw, pow_succ]; ring⟩
          have hzy : z * y = 0 := by
            apply ht
            calc
              t * (z * y) = x * y := by rw [hz]; ring
              _ = 0 := hxy
          exact ih z y hznot hzy
        · exact hprimitive x y hxm hxy
  haveI : NoZeroDivisors A := ⟨by
    intro x y hxy
    by_cases hx : x = 0
    · exact Or.inl hx
    · right
      have hex : ∃ n : ℕ, x ∉ I ^ n := by
        by_contra h
        have hall : x ∈ ⨅ n : ℕ, I ^ n := Ideal.mem_iInf.mpr (by
          intro n
          by_contra hn
          exact h ⟨n, hn⟩)
        rw [hsep] at hall
        exact hx (Ideal.mem_bot.mp hall)
      obtain ⟨n, hn⟩ := hex
      exact hnondiv n x y hn hxy⟩
  exact ⟨⟩

/-- The translated split nodal cubic in two formal coordinates. -/
noncomputable def splitNodeCubic : MvPolynomial (Fin 2) (ZMod 2) :=
  MvPolynomial.X 1 * (MvPolynomial.X 1 + MvPolynomial.X 0) -
    MvPolynomial.X 0 ^ 3

/-- The defining cubic is a nonzero polynomial, not merely a nonzero
function on the residue-field points. -/
theorem splitNodeCubic_ne_zero : splitNodeCubic ≠ 0 := by
  intro h
  have he := congrArg
    (MvPolynomial.eval (fun i : Fin 2 => if i = 0 then (1 : ZMod 2) else 0)) h
  norm_num [splitNodeCubic] at he

/-- The origin `(u,v)` in the coordinate ring of the split cubic. -/
noncomputable def splitNode_originIdeal :
    Ideal (MvPolynomial (Fin 2) (ZMod 2) ⧸
      Ideal.span {splitNodeCubic}) :=
  Ideal.span {
    (Ideal.Quotient.mk (Ideal.span {splitNodeCubic}))
      (MvPolynomial.X (0 : Fin 2)),
    (Ideal.Quotient.mk (Ideal.span {splitNodeCubic}))
      (MvPolynomial.X (1 : Fin 2))}

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

/-- The affine special-fibre ideal is generated by the image of the
base uniformizer in the surface quotient. -/
theorem localSurfaceSpecialFibreIdeal_eq_span_two
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceSpecialFibreIdeal W x y =
      Ideal.span {(Ideal.Quotient.mk
        (Ideal.span {localSurfaceEquation W x y}))
          (MvPolynomial.C (2 : ℤ_[2]))} := by
  simp only [localSurfaceSpecialFibreIdeal, Ideal.map_span,
    Set.image_singleton]

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

/-- On polynomial representatives, the affine special-fibre
equivalence is coefficient reduction followed by the cubic quotient. -/
theorem splitNode_affineSpecialFibre_equiv_mk
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (a : MvPolynomial (Fin 2) ℤ_[2]) :
    let I : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
      Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)}
    let K : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
      Ideal.span {MvPolynomial.C (2 : ℤ_[2])}
    (splitNode_affineSpecialFibre_equiv W hnode hsplit)
      (DoubleQuot.quotQuotMk I K a) =
        (Ideal.Quotient.mk (Ideal.span {splitNodeCubic}))
          (MvPolynomial.map PadicInt.toZMod a) := by
  rfl

/-- The centre of the affine surface specializes to the origin
ideal of the nodal cubic under the affine fibre equivalence. -/
theorem splitNode_fibreClosedPoint_eq_origin
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let F := localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let e := splitNode_affineSpecialFibre_equiv W hnode hsplit
    Ideal.map e.toRingHom (Ideal.map (Ideal.Quotient.mk F) P) =
      Ideal.span {
        (Ideal.Quotient.mk (Ideal.span {splitNodeCubic}))
          (MvPolynomial.X (0 : Fin 2)),
        (Ideal.Quotient.mk (Ideal.span {splitNodeCubic}))
          (MvPolynomial.X (1 : Fin 2))} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let T := MvPolynomial (Fin 2) (ZMod 2)
  let I : Ideal S :=
    Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)}
  let K : Ideal S := Ideal.span {MvPolynomial.C (2 : ℤ_[2])}
  let J : Ideal T := Ideal.span {splitNodeCubic}
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let F : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let e := splitNode_affineSpecialFibre_equiv W hnode hsplit
  let Q : Ideal (R ⧸ F) := Ideal.map (Ideal.Quotient.mk F) P
  let φ : S →+* T := MvPolynomial.map PadicInt.toZMod
  have hQ : Q = Ideal.map (DoubleQuot.quotQuotMk I K) localSurfaceCentre := by
    dsimp [Q, P, F, localSurfaceClosedPoint,
      localSurfaceSpecialFibreIdeal, I, K]
    rw [Ideal.map_map]
    rfl
  have he : e.toRingHom.comp (DoubleQuot.quotQuotMk I K) =
      (Ideal.Quotient.mk J).comp φ := by
    apply RingHom.ext
    intro a
    exact splitNode_affineSpecialFibre_equiv_mk W hnode hsplit a
  change Ideal.map e.toRingHom Q =
    Ideal.span {(Ideal.Quotient.mk J) (MvPolynomial.X (0 : Fin 2)),
      (Ideal.Quotient.mk J) (MvPolynomial.X (1 : Fin 2))}
  calc
    Ideal.map e.toRingHom Q =
        Ideal.map (e.toRingHom.comp (DoubleQuot.quotQuotMk I K))
          localSurfaceCentre := by rw [hQ, Ideal.map_map]
    _ = Ideal.map ((Ideal.Quotient.mk J).comp φ) localSurfaceCentre := by
      rw [he]
    _ = _ := by
      have hz : φ (MvPolynomial.C (2 : ℤ_[2])) = 0 := by
        have htwo : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) 2 = 0 := by
          have h : (2 : ZMod 2) = 0 := by decide
          simpa only [map_ofNat] using h
        change MvPolynomial.map PadicInt.toZMod
          (MvPolynomial.C (2 : ℤ_[2])) = 0
        rw [MvPolynomial.map_C, htwo, map_zero]
      change Ideal.map ((Ideal.Quotient.mk J).comp φ)
        (Ideal.span {MvPolynomial.C (2 : ℤ_[2]),
          MvPolynomial.X 0, MvPolynomial.X 1}) = _
      rw [Ideal.map_span]
      simp only [Set.image_insert_eq, Set.image_singleton,
        RingHom.coe_comp, Function.comp_apply, hz, map_zero]
      have hX (i : Fin 2) : φ (MvPolynomial.X i) = MvPolynomial.X i :=
        MvPolynomial.map_X PadicInt.toZMod i
      rw [hX 0, hX 1]
      simp only [Ideal.span_insert]
      have hzero : (Ideal.span ({(0 : T ⧸ J)} : Set (T ⧸ J))) = ⊥ :=
        Ideal.span_singleton_eq_bot.mpr rfl
      rw [hzero]
      simp only [bot_sup_eq]

/-- The origin is the prime below the chosen node, transported
through the affine special-fibre equivalence. -/
theorem splitNode_originIdeal_isPrime
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    splitNode_originIdeal.IsPrime := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let F := localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let Q : Ideal (R ⧸ F) := Ideal.map (Ideal.Quotient.mk F) P
  have hker : RingHom.ker (Ideal.Quotient.mk F) ≤ P := by
    rw [Ideal.mk_ker]
    change localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄) ≤
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    unfold localSurfaceSpecialFibreIdeal localSurfaceClosedPoint
    apply Ideal.map_mono
    apply (Ideal.span_singleton_le_iff_mem _).mpr
    exact Ideal.subset_span (by simp [localSurfaceCentre])
  letI : Q.IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
  let e := splitNode_affineSpecialFibre_equiv W hnode hsplit
  have he : Ideal.map e.toRingHom Q = splitNode_originIdeal := by
    exact splitNode_fibreClosedPoint_eq_origin W hnode hsplit
  rw [← he]
  exact Ideal.map_isPrime_of_equiv e

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

/-- The image of the base uniformizer is a non-zero-divisor on the
translated affine surface. This is a flatness step, independent of
the singularity order at its closed point. -/
theorem splitNode_surfaceTwo_regular
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span
        {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    ∀ a : R, q (MvPolynomial.C (2 : ℤ_[2])) * a = 0 → a = 0 := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let T := MvPolynomial (Fin 2) (ZMod 2)
  let f : S := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let q : S →+* R := Ideal.Quotient.mk (Ideal.span {f})
  let φ : S →+* T := MvPolynomial.map PadicInt.toZMod
  let t : S := MvPolynomial.C (2 : ℤ_[2])
  have htφ : φ t = 0 := by
    change MvPolynomial.map PadicInt.toZMod
      (MvPolynomial.C (2 : ℤ_[2])) = 0
    rw [MvPolynomial.map_C]
    have htwo : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) 2 = 0 := by
      have hz : (2 : ZMod 2) = 0 := by decide
      simpa only [map_ofNat] using hz
    rw [htwo, map_zero]
  have htf : φ f ≠ 0 := by
    rw [splitNode_surfaceEquation_modTwo W hnode hsplit]
    exact splitNodeCubic_ne_zero
  have ht : t ≠ 0 := by
    intro hz
    have htwo : (2 : ℤ_[2]) = 0 :=
      (MvPolynomial.C_injective (Fin 2) ℤ_[2])
        (by simpa only [t, map_zero] using hz)
    norm_num at htwo
  change ∀ a : R, q t * a = 0 → a = 0
  intro a ha
  obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective a
  have hb : t * b ∈ Ideal.span {f} := by
    apply Ideal.Quotient.eq_zero_iff_mem.mp
    simpa only [map_mul] using ha
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton.mp hb
  have hfc : t * b = f * c := hc
  have hφc : φ c = 0 := by
    have hprod : φ f * φ c = 0 := by
      calc
        φ f * φ c = φ (f * c) := (map_mul φ f c).symm
        _ = φ (t * b) := congrArg φ hfc.symm
        _ = 0 := by rw [map_mul, htφ, zero_mul]
    exact (mul_eq_zero.mp hprod).resolve_left htf
  have hc : c ∈ Ideal.span {t} := by
    rw [← localSurfaceAmbient_reduction_kernel_eq_span_two]
    exact hφc
  obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.mp hc
  have hcancel : b = f * d := by
    apply mul_left_cancel₀ ht
    calc
      t * b = f * c := hfc
      _ = t * (f * d) := by rw [hd]; ring
  apply Ideal.Quotient.eq_zero_iff_mem.mpr
  exact Ideal.mem_span_singleton.mpr ⟨d, by simpa only [mul_comm] using hcancel⟩

/-- The base-uniformizer fibre ideal passes through the specified
closed point of the affine hypersurface. -/
theorem localSurfaceSpecialFibreIdeal_le_closedPoint
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceSpecialFibreIdeal W x y ≤
      localSurfaceClosedPoint W x y := by
  unfold localSurfaceSpecialFibreIdeal localSurfaceClosedPoint
  apply Ideal.map_mono
  apply (Ideal.span_singleton_le_iff_mem _).mpr
  change MvPolynomial.C (2 : ℤ_[2]) ∈ localSurfaceCentre
  exact Ideal.subset_span (by simp [localSurfaceCentre])

/-- After localizing the total surface at the node, its quotient by
the base-uniformizer ideal remains a domain. This is a local-fibre
integrality statement; it does not yet identify the localized
quotient with the localization of the affine nodal cubic. -/
theorem splitNode_localSpecialFibre_isDomain
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    IsDomain (L ⧸ Ideal.map (algebraMap R L)
      (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))) := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let K : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  have hK : K.IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime K).mp
      (splitNode_affineSpecialFibre_isDomain W hnode hsplit)
  have hKP : K ≤ P :=
    localSurfaceSpecialFibreIdeal_le_closedPoint W W.a₃
      (W.a₃ ^ 2 + W.a₄)
  have hd : Disjoint (↑P.primeCompl : Set R) (↑K : Set R) := by
    apply Set.disjoint_left.mpr
    intro r hr hk
    exact (show r ∉ P from hr) (hKP hk)
  haveI : (Ideal.map (algebraMap R L) K).IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint P.primeCompl L K hK hd
  exact Ideal.Quotient.isDomain _

/-- The localized total hypersurface is a domain. The proof uses
flatness over `2`, the prime integral special fibre, and Krull
intersection in this Noetherian local ring; it does not assume that
regularity at the node alone implies domainhood. -/
theorem splitNode_localSurface_isDomain
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    IsDomain (Localization.AtPrime P) := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  let t : L := (algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))
  let K : Ideal L := Ideal.map (algebraMap R L)
    (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective
      (MvPolynomial (Fin 2) ℤ_[2]) R q Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing P.primeCompl L inferInstance
  have hregR : q (MvPolynomial.C (2 : ℤ_[2])) ∈
      nonZeroDivisors R := by
    rw [mem_nonZeroDivisors_iff]
    intro a ha
    exact splitNode_surfaceTwo_regular W hnode hsplit a
      (by simpa only [mul_comm] using ha)
  have hregL : t ∈ nonZeroDivisors L :=
    IsLocalization.nonZeroDivisors_le_comap P.primeCompl L hregR
  have hK : K = Ideal.span {t} := by
    simp only [K, t, localSurfaceSpecialFibreIdeal_eq_span_two,
      Ideal.map_span, Set.image_singleton]
  have hprime : (Ideal.span {t} : Ideal L).IsPrime := by
    rw [← hK]
    exact (Ideal.Quotient.isDomain_iff_prime K).mp
      (splitNode_localSpecialFibre_isDomain W hnode hsplit)
  have hreg : ∀ a : L, t * a = 0 → a = 0 := by
    intro a ha
    exact hregL a (by simpa only [mul_comm] using ha)
  exact isDomain_of_regular_principal_prime_local L t hreg hprime

/-- In the localized hypersurface the literal quotient by the image
of `2` is a domain. This makes the base-uniformizer ideal explicit;
the stronger localization/quotient ring equivalence remains separate. -/
theorem splitNode_localTwoQuotient_isDomain
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span
        {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    IsDomain (L ⧸ Ideal.span
      {(algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))}) := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  let K : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  have h : IsDomain (L ⧸ Ideal.map (algebraMap R L) K) :=
    splitNode_localSpecialFibre_isDomain W hnode hsplit
  have heq : Ideal.map (algebraMap R L) K =
      Ideal.span {(algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))} := by
    simp only [K, localSurfaceSpecialFibreIdeal_eq_span_two,
      Ideal.map_span, Set.image_singleton]
  have hprime : (Ideal.map (algebraMap R L) K).IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime _).mp h
  haveI : (Ideal.span
      {(algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))}).IsPrime := by
    rw [← heq]
    exact hprime
  exact Ideal.Quotient.isDomain _

/-- The canonical map from the affine fibre into the fibre of the
surface localized at its node is injective. Identifying its target
as a localization requires an additional universal-property step. -/
theorem splitNode_affineToLocalFibre_injective
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    let K := localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
    Function.Injective (Ideal.quotientMap
      (Ideal.map (algebraMap R L) K) (algebraMap R L)
        (Ideal.le_comap_map : K ≤
          Ideal.comap (algebraMap R L) (Ideal.map (algebraMap R L) K))) := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let K : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  have hK : K.IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime K).mp
      (splitNode_affineSpecialFibre_isDomain W hnode hsplit)
  have hKP : K ≤ P :=
    localSurfaceSpecialFibreIdeal_le_closedPoint W W.a₃
      (W.a₃ ^ 2 + W.a₄)
  have hd : Disjoint (↑P.primeCompl : Set R) (↑K : Set R) := by
    apply Set.disjoint_left.mpr
    intro r hr hk
    exact (show r ∉ P from hr) (hKP hk)
  have hc : Ideal.comap (algebraMap R L)
      (Ideal.map (algebraMap R L) K) = K :=
    IsLocalization.comap_map_of_isPrime_disjoint P.primeCompl L K hK hd
  exact Ideal.quotientMap_injective' (le_of_eq hc)

/-- The closed point of the surface descends to a prime of the affine
special fibre; its inverse image is precisely the original point.
This is the prime at which the fibre must be localized. -/
theorem splitNode_fibreClosedPoint_comap
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄))) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let K := localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let q : R →+* R ⧸ K := Ideal.Quotient.mk K
    let Q : Ideal (R ⧸ K) := Ideal.map q P
    Q.IsPrime ∧ Ideal.comap q Q = P := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let K : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let q : R →+* R ⧸ K := Ideal.Quotient.mk K
  let Q : Ideal (R ⧸ K) := Ideal.map q P
  have hKP : K ≤ P :=
    localSurfaceSpecialFibreIdeal_le_closedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  have hker : RingHom.ker q ≤ P := by
    rw [Ideal.mk_ker]
    exact hKP
  haveI : Q.IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
  refine ⟨inferInstance, ?_⟩
  change Ideal.comap q (Ideal.map q P) = P
  rw [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective P,
    ← RingHom.ker_eq_comap_bot q]
  exact sup_eq_left.mpr hker

/-- Quotienting a localization at a prime by the extension of a
contained prime ideal is the localization of the quotient at the
image of the original prime. -/
noncomputable def quotientAtPrime_equiv
    (R : Type*) [CommRing R] (P K : Ideal R) [P.IsPrime] [K.IsPrime]
    (hKP : K ≤ P) :
    let Q : Ideal (R ⧸ K) := Ideal.map (Ideal.Quotient.mk K) P
    letI : Q.IsPrime :=
      Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective
        (by rw [Ideal.mk_ker]; exact hKP)
    (Localization.AtPrime P ⧸ Ideal.map
      (algebraMap R (Localization.AtPrime P)) K) ≃+*
      Localization.AtPrime Q := by
  let S := Localization.AtPrime P
  let J : Ideal S := Ideal.map (algebraMap R S) K
  let T := R ⧸ K
  let q : R →+* T := Ideal.Quotient.mk K
  let Q : Ideal T := Ideal.map q P
  have hker : RingHom.ker q ≤ P := by
    rw [Ideal.mk_ker]
    exact hKP
  letI : Q.IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
  have hQ : Ideal.comap q Q = P := by
    change Ideal.comap q (Ideal.map q P) = P
    rw [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective P,
      ← RingHom.ker_eq_comap_bot q]
    exact sup_eq_left.mpr hker
  let f : T →+* S ⧸ J :=
    Ideal.quotientMap J (algebraMap R S) Ideal.le_comap_map
  letI : Algebra T (S ⧸ J) := f.toAlgebra
  have hf (r : R) :
      algebraMap T (S ⧸ J) (q r) =
        (Ideal.Quotient.mk J) ((algebraMap R S) r) := by
    change f (q r) = _
    exact Ideal.quotientMap_mk
  have hd : Disjoint (↑P.primeCompl : Set R) (↑K : Set R) := by
    apply Set.disjoint_left.mpr
    intro r hr hk
    exact (show r ∉ P from hr) (hKP hk)
  have hc : Ideal.comap (algebraMap R S) J = K :=
    IsLocalization.comap_map_of_isPrime_disjoint P.primeCompl S K inferInstance hd
  have hinj : Function.Injective f :=
    Ideal.quotientMap_injective' (le_of_eq hc)
  haveI : IsLocalization Q.primeCompl (S ⧸ J) := by
    refine ⟨?_, ?_, ?_⟩
    · intro s
      obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective (s : T)
      have hrP : r ∉ P := by
        intro hp
        apply s.property
        rw [← hr]
        change r ∈ Ideal.comap q Q
        rw [hQ]
        exact hp
      rw [← hr, hf]
      exact (IsLocalization.map_units S (⟨r, hrP⟩ : P.primeCompl)).map
        (Ideal.Quotient.mk J)
    · intro z
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective z
      obtain ⟨r, s, hs⟩ := IsLocalization.mk'_surjective P.primeCompl a
      have hnot : q s ∉ Q := by
        intro h
        have hsP : (s : R) ∈ P := by
          exact (congrArg (fun I : Ideal R => (s : R) ∈ I) hQ).mp h
        exact s.property hsP
      refine ⟨(q r, (⟨q s, hnot⟩ : Q.primeCompl)), ?_⟩
      change (Ideal.Quotient.mk J) a *
        algebraMap T (S ⧸ J) (q s) = algebraMap T (S ⧸ J) (q r)
      rw [hf, hf, ← map_mul]
      exact congrArg (Ideal.Quotient.mk J)
        ((IsLocalization.mk'_eq_iff_eq_mul).mp hs).symm
    · intro x y hxy
      exact ⟨1, by simpa using hinj hxy⟩
  exact (IsLocalization.algEquiv Q.primeCompl (S ⧸ J)
    (Localization.AtPrime Q)).toRingEquiv

/-- The actual local special fibre is the localization of the
affine special fibre at the closed point induced by the node. -/
noncomputable def splitNode_localFibre_equiv_atClosedPoint
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let K := localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let Q : Ideal (R ⧸ K) := Ideal.map (Ideal.Quotient.mk K) P
    letI : Q.IsPrime := (splitNode_fibreClosedPoint_comap W hnode).1
    (Localization.AtPrime P ⧸ Ideal.map
      (algebraMap R (Localization.AtPrime P)) K) ≃+*
      Localization.AtPrime Q := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let K : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : K.IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime K).mp
      (splitNode_affineSpecialFibre_isDomain W hnode hsplit)
  exact quotientAtPrime_equiv R P K
    (localSurfaceSpecialFibreIdeal_le_closedPoint W W.a₃
      (W.a₃ ^ 2 + W.a₄))

/-- The fibre of the localized surface is exactly the local ring
of `v(v+u)-u³` at its origin, not merely an integral ring with the
same affine reduction. -/
noncomputable def splitNode_localFibre_equiv_origin
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let K := localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : splitNode_originIdeal.IsPrime :=
      splitNode_originIdeal_isPrime W hnode hsplit
    (Localization.AtPrime P ⧸ Ideal.map
      (algebraMap R (Localization.AtPrime P)) K) ≃+*
      Localization.AtPrime splitNode_originIdeal := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let K : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let Q : Ideal (R ⧸ K) := Ideal.map (Ideal.Quotient.mk K) P
  letI : Q.IsPrime := (splitNode_fibreClosedPoint_comap W hnode).1
  letI : splitNode_originIdeal.IsPrime :=
    splitNode_originIdeal_isPrime W hnode hsplit
  let e := splitNode_affineSpecialFibre_equiv W hnode hsplit
  have hcomap : splitNode_originIdeal =
      Ideal.comap e.symm.toRingHom Q := by
    calc
      splitNode_originIdeal = Ideal.map e.toRingHom Q :=
        (splitNode_fibreClosedPoint_eq_origin W hnode hsplit).symm
      _ = Ideal.comap e.symm.toRingHom Q :=
        Ideal.map_comap_of_equiv Q e
  have hm (x : MvPolynomial (Fin 2) (ZMod 2) ⧸
      Ideal.span {splitNodeCubic}) :
      x ∈ splitNode_originIdeal ↔ e.symm x ∈ Q := by
    rw [hcomap, Ideal.mem_comap]
    rfl
  have hs : Submonoid.map e.toMonoidHom Q.primeCompl =
      splitNode_originIdeal.primeCompl := by
    ext x
    rw [Submonoid.mem_map]
    constructor
    · rintro ⟨y, hy, rfl⟩
      change y ∉ Q at hy
      change e y ∉ splitNode_originIdeal
      intro hz
      exact hy (by simpa using (hm (e y)).mp hz)
    · intro hx
      change x ∉ splitNode_originIdeal at hx
      refine ⟨e.symm x, ?_, by simp⟩
      change e.symm x ∉ Q
      intro hz
      exact hx ((hm x).mpr hz)
  exact (splitNode_localFibre_equiv_atClosedPoint W hnode hsplit).trans
    (IsLocalization.ringEquivOfRingEquiv
      (Localization.AtPrime Q)
      (Localization.AtPrime splitNode_originIdeal) e hs)

/-- The explicit base-uniformizer quotient of the localized surface
is the nodal cubic's local ring at `(u,v)`. -/
noncomputable def splitNode_localTwoQuotient_equiv_origin
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span
        {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    letI : splitNode_originIdeal.IsPrime :=
      splitNode_originIdeal_isPrime W hnode hsplit
    (L ⧸ Ideal.span {(algebraMap R L)
      (q (MvPolynomial.C (2 : ℤ_[2])))}) ≃+*
      Localization.AtPrime splitNode_originIdeal := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  let K : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : splitNode_originIdeal.IsPrime :=
    splitNode_originIdeal_isPrime W hnode hsplit
  have hK : Ideal.map (algebraMap R L) K =
      Ideal.span {(algebraMap R L)
        (q (MvPolynomial.C (2 : ℤ_[2])))} := by
    simp only [K, localSurfaceSpecialFibreIdeal_eq_span_two,
      Ideal.map_span, Set.image_singleton]
  exact (Ideal.quotEquivOfEq hK.symm).trans
    (splitNode_localFibre_equiv_origin W hnode hsplit)

/-- At the generic prime of the integral local special fibre, the
maximal ideal of the further localization is generated by the
image of `2`. The next theorem supplies the domain/DVR bridge. -/
theorem splitNode_fibreGeneric_maximalIdeal_span_two
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    let K : Ideal L := Ideal.map (algebraMap R L)
      (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))
    letI : K.IsPrime :=
      (Ideal.Quotient.isDomain_iff_prime K).mp
        (splitNode_localSpecialFibre_isDomain W hnode hsplit)
    let G := Localization.AtPrime K
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span
        {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    LocalRing.maximalIdeal G =
      Ideal.span {(algebraMap L G)
        ((algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2]))))} := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let K : Ideal L := Ideal.map (algebraMap R L)
    (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))
  letI : K.IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime K).mp
      (splitNode_localSpecialFibre_isDomain W hnode hsplit)
  let G := Localization.AtPrime K
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  have hK : K = Ideal.span
      {(algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))} := by
    simp only [K, localSurfaceSpecialFibreIdeal_eq_span_two,
      Ideal.map_span, Set.image_singleton]
  calc
    LocalRing.maximalIdeal G = Ideal.map (algebraMap L G) K :=
      (Localization.AtPrime.map_eq_maximalIdeal (I := K)).symm
    _ = Ideal.map (algebraMap L G)
        (Ideal.span {(algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))}) :=
      congrArg (Ideal.map (algebraMap L G)) hK
    _ = _ := by simp only [Ideal.map_span, Set.image_singleton]

/-- The total surface at the generic prime of its integral special
fibre is a discrete valuation ring. Its maximal ideal is generated
by the image of the base uniformizer `2`, so the component has
generic multiplicity one. This remains a local statement, not a
minimal-regular-model or Kodaira classification. -/
theorem splitNode_fibreGeneric_discreteValuationRing
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    letI : IsDomain L :=
      splitNode_localSurface_isDomain W hnode hsplit
    let K : Ideal L := Ideal.map (algebraMap R L)
      (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))
    letI : K.IsPrime :=
      (Ideal.Quotient.isDomain_iff_prime K).mp
        (splitNode_localSpecialFibre_isDomain W hnode hsplit)
    letI : IsDomain (Localization.AtPrime K) :=
      IsLocalization.isDomain_of_local_atPrime (P := K) inferInstance
    DiscreteValuationRing (Localization.AtPrime K) := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  letI : IsDomain L :=
    splitNode_localSurface_isDomain W hnode hsplit
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  let t : L := (algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))
  let K : Ideal L := Ideal.map (algebraMap R L)
    (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))
  letI : K.IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime K).mp
      (splitNode_localSpecialFibre_isDomain W hnode hsplit)
  let G := Localization.AtPrime K
  letI : IsDomain G :=
    IsLocalization.isDomain_of_local_atPrime (P := K) inferInstance
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective
      (MvPolynomial (Fin 2) ℤ_[2]) R q Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing P.primeCompl L inferInstance
  haveI : IsNoetherianRing G :=
    IsLocalization.isNoetherianRing K.primeCompl G inferInstance
  have hregR : q (MvPolynomial.C (2 : ℤ_[2])) ∈
      nonZeroDivisors R := by
    rw [mem_nonZeroDivisors_iff]
    intro a ha
    exact splitNode_surfaceTwo_regular W hnode hsplit a
      (by simpa only [mul_comm] using ha)
  have hregL : t ∈ nonZeroDivisors L :=
    IsLocalization.nonZeroDivisors_le_comap P.primeCompl L hregR
  have ht : t ≠ 0 := by
    intro hz
    have h1 : (1 : L) * t = 0 := by rw [hz, mul_zero]
    exact one_ne_zero (hregL 1 h1)
  have hK : K = Ideal.span {t} := by
    simp only [K, t, localSurfaceSpecialFibreIdeal_eq_span_two,
      Ideal.map_span, Set.image_singleton]
  have hKne : K ≠ ⊥ := by
    intro hz
    apply ht
    have hmem : t ∈ K := by
      rw [hK]
      exact Ideal.subset_span (by simp)
    rw [hz] at hmem
    exact Ideal.mem_bot.mp hmem
  have hmax : LocalRing.maximalIdeal G =
      Ideal.span {(algebraMap L G) t} :=
    splitNode_fibreGeneric_maximalIdeal_span_two W hnode hsplit
  have hprincipal : (LocalRing.maximalIdeal G).IsPrincipal := by
    rw [hmax]
    exact Submodule.IsPrincipal.mk ⟨_, rfl⟩
  change DiscreteValuationRing G
  exact ((DiscreteValuationRing.TFAE G
    (IsLocalization.AtPrime.not_isField L hKne G)).out 4 0).mp hprincipal

/-- The image of `2` is a uniformizer at the special fibre's generic
point: it is irreducible in the DVR, so its generic order is one. -/
theorem splitNode_fibreGeneric_two_irreducible
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R :=
      localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    let K : Ideal L := Ideal.map (algebraMap R L)
      (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))
    letI : K.IsPrime :=
      (Ideal.Quotient.isDomain_iff_prime K).mp
        (splitNode_localSpecialFibre_isDomain W hnode hsplit)
    let G := Localization.AtPrime K
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span
        {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    Irreducible ((algebraMap L G)
      ((algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2]))))) := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R :=
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  letI : IsDomain L :=
    splitNode_localSurface_isDomain W hnode hsplit
  let K : Ideal L := Ideal.map (algebraMap R L)
    (localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄))
  letI : K.IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime K).mp
      (splitNode_localSpecialFibre_isDomain W hnode hsplit)
  let G := Localization.AtPrime K
  letI : IsDomain G :=
    IsLocalization.isDomain_of_local_atPrime (P := K) inferInstance
  letI : DiscreteValuationRing G :=
    splitNode_fibreGeneric_discreteValuationRing W hnode hsplit
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  let t : G := (algebraMap L G)
    ((algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2]))))
  have hmax : LocalRing.maximalIdeal G = Ideal.span {t} :=
    splitNode_fibreGeneric_maximalIdeal_span_two W hnode hsplit
  have ht : t ≠ 0 := by
    intro hz
    apply DiscreteValuationRing.not_a_field G
    rw [hmax, hz]
    exact Ideal.span_singleton_eq_bot.mpr rfl
  change Irreducible t
  exact DiscreteValuationRing.irreducible_of_span_eq_maximalIdeal t ht hmax

/-- Every nonzero projective representative at infinity on a
Weierstrass cubic over a field is smooth. This excludes an additional
singularity outside the affine chart, without constructing a model. -/
theorem weierstrass_projective_infinity_nonsingular
    {K : Type*} [Field K] (W : WeierstrassCurve K)
    (P : Fin 3 → K) (hP : P ≠ 0)
    (heq : W.toProjective.Equation P) (hz : P 2 = 0) :
    W.toProjective.Nonsingular P := by
  have hx : P 0 = 0 :=
    WeierstrassCurve.Projective.X_eq_zero_of_Z_eq_zero heq hz
  have hy : P 1 ≠ 0 := by
    intro hy
    apply hP
    funext i
    fin_cases i <;> simp [hx, hy, hz]
  apply (WeierstrassCurve.Projective.nonsingular_of_Z_eq_zero hz).mpr
  refine ⟨heq, Or.inr ?_⟩
  simpa [hx] using (pow_ne_zero 2 hy)

/-- A projective geometric singularity of the split-node fibre can
only be the known affine node. In particular there is no hidden
geometric singularity at infinity. This does not identify the
minimal regular model or a Kodaira symbol. -/
theorem splitNode_projective_singular_only_at_node
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    {K : Type*} [Field K] (φ : ZMod 2 →+* K)
    (P : Fin 3 → K) (hP : P ≠ 0)
    (heq : ((W.map PadicInt.toZMod).map φ).toProjective.Equation P)
    (hsing : ¬ ((W.map PadicInt.toZMod).map φ).toProjective.Nonsingular P) :
    P 2 ≠ 0 ∧
      P 0 / P 2 = φ (PadicInt.toZMod W.a₃) ∧
      P 1 / P 2 = φ (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)) := by
  let W₀ := W.map PadicInt.toZMod
  let V := W₀.map φ
  have hz : P 2 ≠ 0 := by
    intro hz
    exact hsing
      (weierstrass_projective_infinity_nonsingular V P hP heq hz)
  have haff : V.toAffine.Equation (P 0 / P 2) (P 1 / P 2) :=
    (WeierstrassCurve.Projective.equation_of_Z_ne_zero hz).mp heq
  have hnot : ¬ V.toAffine.Nonsingular (P 0 / P 2) (P 1 / P 2) := by
    intro h
    exact hsing
      ((WeierstrassCurve.Projective.nonsingular_of_Z_ne_zero hz).mpr h)
  have hdx : (V.toAffine.polynomialX).evalEval
      (P 0 / P 2) (P 1 / P 2) = 0 := by
    by_contra hx
    exact hnot ⟨haff, Or.inl hx⟩
  have hdy : (V.toAffine.polynomialY).evalEval
      (P 0 / P 2) (P 1 / P 2) = 0 := by
    by_contra hy
    exact hnot ⟨haff, Or.inr hy⟩
  obtain ⟨hx, hy⟩ :=
    reducedNodalPoint_uniqueGeometricCandidate W₀
      ⟨PadicInt.toZMod W.a₃,
        PadicInt.toZMod (W.a₃ ^ 2 + W.a₄), hnode⟩ φ
      (P 0 / P 2) (P 1 / P 2) hdx hdy
  exact ⟨hz, hx, by simpa only [map_pow, map_add] using hy⟩

/-- In the integral `Y = 1` chart of the projective Weierstrass
equation, `U = X/Y` and `V = Z/Y`. This retains the base coefficients;
unlike a residue-field point test it is an equation over `ℤ_[2]`. -/
noncomputable def weierstrassInfinityChartEquation
    (W : WeierstrassCurve ℤ_[2]) :
    MvPolynomial (Fin 2) ℤ_[2] :=
  let U : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 0
  let V : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 1
  V + MvPolynomial.C W.a₁ * U * V + MvPolynomial.C W.a₃ * V ^ 2 -
    (U ^ 3 + MvPolynomial.C W.a₂ * U ^ 2 * V +
      MvPolynomial.C W.a₄ * U * V ^ 2 +
      MvPolynomial.C W.a₆ * V ^ 3)

/-- The integral infinity-chart polynomial is exactly the
dehomogenization `Y = 1` of the projective equation. -/
theorem weierstrassInfinityChartEquation_iff
    (W : WeierstrassCurve ℤ_[2]) (u v : ℤ_[2]) :
    W.toProjective.Equation ![u, 1, v] ↔
      MvPolynomial.eval
        (fun i : Fin 2 => if i = 0 then u else v)
        (weierstrassInfinityChartEquation W) = 0 := by
  simp [WeierstrassCurve.Projective.equation_iff,
    weierstrassInfinityChartEquation]

/-- The total equation at infinity has linear term `V` with unit
coefficient, modulo the square of the coordinate ideal `(U,V)`.
This is a first-order chart certificate, not a scheme-theoretic
regularity or proper-model theorem. -/
theorem weierstrassInfinityChartEquation_linear
    (W : WeierstrassCurve ℤ_[2]) :
    let S := MvPolynomial (Fin 2) ℤ_[2]
    let m : Ideal S := Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1}
    weierstrassInfinityChartEquation W - MvPolynomial.X 1 ∈ m ^ 2 := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let U : S := MvPolynomial.X 0
  let V : S := MvPolynomial.X 1
  let m : Ideal S := Ideal.span {U, V}
  have hU : U ∈ m := Ideal.subset_span (by simp [m, U])
  have hV : V ∈ m := Ideal.subset_span (by simp [m, V])
  have hproduct (a b : S) (ha : a ∈ m) (hb : b ∈ m) :
      a * b ∈ m ^ 2 := by
    simpa only [pow_two] using (Ideal.mul_mem_mul ha hb)
  have htriple (c a b : S) (ha : a ∈ m) (hb : b ∈ m) :
      c * a * b ∈ m ^ 2 := by
    convert Ideal.mul_mem_left (m ^ 2) c (hproduct a b ha hb) using 1 <;> ring
  have h1 : MvPolynomial.C W.a₁ * U * V ∈ m ^ 2 :=
    htriple _ _ _ hU hV
  have h2 : MvPolynomial.C W.a₃ * V ^ 2 ∈ m ^ 2 := by
    convert htriple (MvPolynomial.C W.a₃) V V hV hV using 1 <;> ring
  have h3 : U ^ 3 ∈ m ^ 2 := by
    convert htriple U U U hU hU using 1 <;> ring
  have h4 : MvPolynomial.C W.a₂ * U ^ 2 * V ∈ m ^ 2 := by
    convert Ideal.mul_mem_left (m ^ 2)
      (MvPolynomial.C W.a₂ * V) (hproduct U U hU hU) using 1 <;> ring
  have h5 : MvPolynomial.C W.a₄ * U * V ^ 2 ∈ m ^ 2 := by
    convert Ideal.mul_mem_left (m ^ 2)
      (MvPolynomial.C W.a₄ * U) (hproduct V V hV hV) using 1 <;> ring
  have h6 : MvPolynomial.C W.a₆ * V ^ 3 ∈ m ^ 2 := by
    convert Ideal.mul_mem_left (m ^ 2)
      (MvPolynomial.C W.a₆ * V) (hproduct V V hV hV) using 1 <;> ring
  change weierstrassInfinityChartEquation W - V ∈ m ^ 2
  convert Ideal.sub_mem (m ^ 2)
    (Ideal.add_mem (m ^ 2) h1 h2)
    (Ideal.add_mem (m ^ 2)
      (Ideal.add_mem (m ^ 2)
        (Ideal.add_mem (m ^ 2) h3 h4) h5) h6) using 1 <;>
    simp only [weierstrassInfinityChartEquation, U, V] <;> ring

#print axioms splitNode_surfaceEquation_modTwo
#print axioms splitNodeCubic_atOne_irreducible
#print axioms splitNodeCubic_ne_zero
#print axioms splitNodeCubic_ideal_isPrime
#print axioms splitNode_affineSpecialFibre_equiv
#print axioms splitNode_affineSpecialFibre_isDomain
#print axioms splitNode_surfaceTwo_regular
#print axioms splitNode_localSpecialFibre_isDomain
#print axioms splitNode_localSurface_isDomain
#print axioms splitNode_localTwoQuotient_isDomain
#print axioms splitNode_affineToLocalFibre_injective
#print axioms splitNode_fibreClosedPoint_comap
#print axioms quotientAtPrime_equiv
#print axioms splitNode_localFibre_equiv_atClosedPoint
#print axioms splitNode_affineSpecialFibre_equiv_mk
#print axioms splitNode_fibreClosedPoint_eq_origin
#print axioms splitNode_originIdeal_isPrime
#print axioms splitNode_localFibre_equiv_origin
#print axioms splitNode_localTwoQuotient_equiv_origin
#print axioms splitNode_fibreGeneric_maximalIdeal_span_two
#print axioms splitNode_fibreGeneric_discreteValuationRing
#print axioms splitNode_fibreGeneric_two_irreducible
#print axioms weierstrass_projective_infinity_nonsingular
#print axioms splitNode_projective_singular_only_at_node
#print axioms weierstrassInfinityChartEquation_iff
#print axioms weierstrassInfinityChartEquation_linear

end Beal.General