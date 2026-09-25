import Beal.«Beal.General».Minimal
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine
import Mathlib.Algebra.MvPolynomial.Basic
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.RingTheory.Localization.AtPrime
import Mathlib.RingTheory.Ideal.Cotangent
import Mathlib.RingTheory.KrullDimension.Basic
import Mathlib.RingTheory.DedekindDomain.Dvr

/-!
Explicit residue-characteristic-two smoothness and node tests for
unit-scale successors. These check the affine equation, its two
partials, and the quadratic tangent cone. They do not implement
Tate's algorithm or assign a Kodaira type or Néron conductor exponent.
-/

namespace Beal.General

open Order

/-- The two-adic integers have Krull dimension one. The lower bound
is the strict chain `(0) < (2)`; the upper bound uses that a discrete
valuation ring has no strictly intermediate prime ideal. -/
theorem padicInt_two_ringKrullDim : ringKrullDim ℤ_[2] = 1 := by
  let M : Ideal ℤ_[2] := LocalRing.maximalIdeal ℤ_[2]
  have hM : M.IsMaximal := LocalRing.maximalIdeal.isMaximal _
  have hne : M ≠ ⊥ := by
    intro he
    have htwo : (2 : ℤ_[2]) ∈ M := by
      change (2 : ℤ_[2]) ∈ LocalRing.maximalIdeal ℤ_[2]
      rw [PadicInt.maximalIdeal_eq_span_p]
      exact Ideal.subset_span (by simp)
    rw [he] at htwo
    have hz : (2 : ℤ_[2]) = 0 := Ideal.mem_bot.mp htwo
    norm_num at hz
  let P₀ : PrimeSpectrum ℤ_[2] := ⟨⊥, Ideal.bot_prime⟩
  let P₁ : PrimeSpectrum ℤ_[2] := ⟨M, hM.isPrime⟩
  have hlt : P₀ < P₁ := by
    change (⊥ : Ideal ℤ_[2]) < M
    exact bot_lt_iff_ne_bot.mpr hne
  have hlower : (1 : WithBot (WithTop ℕ)) ≤ ringKrullDim ℤ_[2] := by
    let s : LTSeries (PrimeSpectrum ℤ_[2]) :=
      (RelSeries.singleton (· < ·) P₀).snoc P₁ (by simpa using hlt)
    simpa [ringKrullDim, s] using Order.LTSeries.length_le_krullDim s
  have hupper : ringKrullDim ℤ_[2] ≤ (1 : WithBot (WithTop ℕ)) := by
    change krullDim (PrimeSpectrum ℤ_[2]) ≤ _
    rw [krullDim_eq_iSup_length]
    apply WithBot.coe_le_coe.mpr
    apply iSup_le
    intro s
    have hlen : s.length ≤ 1 := by
      by_contra hh
      have h2 : 2 ≤ s.length := by omega
      let Q : PrimeSpectrum ℤ_[2] := s ⟨1, by omega⟩
      have h01 : s ⟨0, by omega⟩ < Q := by
        exact s.step ⟨0, by omega⟩
      have h12 : Q < s ⟨2, by omega⟩ := by
        exact s.step ⟨1, by omega⟩
      have hqne : Q.asIdeal ≠ ⊥ := by
        intro he
        have hbad : (s ⟨0, by omega⟩).asIdeal < (⊥ : Ideal ℤ_[2]) := by
          have hh := (PrimeSpectrum.asIdeal_lt_asIdeal _ _).mpr h01
          simpa only [he] using hh
        exact not_lt_bot hbad
      have hqmax : Q.asIdeal.IsMaximal :=
        Ring.DimensionLEOne.maximalOfPrime hqne Q.isPrime
      have heq : Q.asIdeal = (s ⟨2, by omega⟩).asIdeal :=
        hqmax.eq_of_le (s ⟨2, by omega⟩).isPrime.ne_top h12.le
      exact (ne_of_lt h12) (PrimeSpectrum.ext heq)
    exact WithTop.coe_le_coe.mpr hlen
  exact le_antisymm hupper hlower

/-- Three successive special-fibre prime specializations give a lower
bound for the ambient polynomial ring. This does not provide the
missing upper bound or a dimension theorem for the hypersurface. -/
theorem localSurfaceAmbient_ringKrullDim_ge_three :
    (3 : WithBot (WithTop ℕ)) ≤ ringKrullDim (MvPolynomial (Fin 2) ℤ_[2]) := by
  let R := MvPolynomial (Fin 2) ℤ_[2]
  let S := MvPolynomial (Fin 2) (ZMod 2)
  let T := MvPolynomial (Fin 1) (ZMod 2)
  let φ : R →+* S := MvPolynomial.map PadicInt.toZMod
  let ψ : R →+* T :=
    MvPolynomial.eval₂Hom (MvPolynomial.C.comp PadicInt.toZMod)
      (fun i => if i = 0 then 0 else MvPolynomial.X 0)
  let u : S →+* T :=
    MvPolynomial.eval₂Hom MvPolynomial.C
      (fun i => if i = 0 then 0 else MvPolynomial.X 0)
  let v : T →+* ZMod 2 :=
    MvPolynomial.eval₂Hom (RingHom.id _) (fun _ => 0)
  let w : R →+* ZMod 2 :=
    MvPolynomial.eval₂Hom PadicInt.toZMod (fun _ => 0)
  have hψ : ψ = u.comp φ := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [ψ, u, φ, MvPolynomial.map]
      rw [MvPolynomial.eval₂Hom_C]
    · intro i
      simp [ψ, u, φ, MvPolynomial.map]
      rw [MvPolynomial.eval₂Hom_X']
  have he : w = v.comp ψ := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [w, ψ, v]
      rw [MvPolynomial.constantCoeff_C]
    · intro i
      fin_cases i <;> simp [w, ψ, v, MvPolynomial.constantCoeff]
  let P₀ : PrimeSpectrum R := ⟨⊥, Ideal.bot_prime⟩
  let P₁ : PrimeSpectrum R := ⟨RingHom.ker φ, RingHom.ker_isPrime φ⟩
  let P₂ : PrimeSpectrum R := ⟨RingHom.ker ψ, RingHom.ker_isPrime ψ⟩
  let P₃ : PrimeSpectrum R := ⟨RingHom.ker w, RingHom.ker_isPrime w⟩
  have h01 : P₀ < P₁ := by
    change (⊥ : Ideal R) < RingHom.ker φ
    apply bot_lt_iff_ne_bot.mpr
    intro heq
    have hm : MvPolynomial.C (2 : ℤ_[2]) ∈ (⊥ : Ideal R) := by
      rw [← heq]
      change φ (MvPolynomial.C (2 : ℤ_[2])) = 0
      simp [φ, MvPolynomial.map]
      rw [MvPolynomial.eval₂Hom_C]
      simp only [RingHom.comp_apply, map_ofNat]
      change (MvPolynomial.C (2 : ZMod 2) : S) = 0
      rw [show (2 : ZMod 2) = 0 by decide]
      simp
    have hz : MvPolynomial.C (2 : ℤ_[2]) = (0 : R) := Ideal.mem_bot.mp hm
    have hz' : (2 : ℤ_[2]) = 0 :=
      (MvPolynomial.C_injective (Fin 2) ℤ_[2]) (by simpa using hz)
    norm_num at hz'
  have h12 : P₁ < P₂ := by
    change RingHom.ker φ < RingHom.ker ψ
    apply lt_of_le_of_ne
    · intro p hp
      rw [RingHom.mem_ker] at hp ⊢
      rw [hψ, RingHom.comp_apply, hp, map_zero]
    · intro heq
      have hx : MvPolynomial.X (0 : Fin 2) ∈ RingHom.ker φ := by
        rw [heq]
        change ψ (MvPolynomial.X (0 : Fin 2)) = 0
        dsimp only [ψ]
        rw [MvPolynomial.eval₂Hom_X']
        simp
      have hz : (MvPolynomial.X (0 : Fin 2) : S) = 0 := by
        change φ (MvPolynomial.X (0 : Fin 2)) = 0 at hx
        dsimp only [φ] at hx
        rw [MvPolynomial.map_X] at hx
        exact hx
      exact (MvPolynomial.X_ne_zero (R := ZMod 2) (0 : Fin 2)) hz
  have h23 : P₂ < P₃ := by
    change RingHom.ker ψ < RingHom.ker w
    apply lt_of_le_of_ne
    · intro p hp
      rw [RingHom.mem_ker] at hp ⊢
      rw [he, RingHom.comp_apply, hp, map_zero]
    · intro heq
      have hx : MvPolynomial.X (1 : Fin 2) ∈ RingHom.ker ψ := by
        rw [heq]
        change w (MvPolynomial.X (1 : Fin 2)) = 0
        dsimp only [w]
        rw [MvPolynomial.eval₂Hom_X']
      have hz : (MvPolynomial.X (0 : Fin 1) : T) = 0 := by
        change ψ (MvPolynomial.X (1 : Fin 2)) = 0 at hx
        dsimp only [ψ] at hx
        rw [MvPolynomial.eval₂Hom_X'] at hx
        simpa only [if_neg (by decide : (1 : Fin 2) ≠ 0)] using hx
      exact (MvPolynomial.X_ne_zero (R := ZMod 2) (0 : Fin 1)) hz
  let s : LTSeries (PrimeSpectrum R) :=
    ((RelSeries.singleton (· < ·) P₀).snoc P₁ h01).snoc P₂ h12 |>.snoc P₃ h23
  simpa [ringKrullDim, s] using Order.LTSeries.length_le_krullDim s

/-- The affine Weierstrass equation over the residue field. -/
def reducedEquation (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : ZMod 2 :=
  y ^ 2 + W.a₁ * x * y + W.a₃ * y -
    (x ^ 3 + W.a₂ * x ^ 2 + W.a₄ * x + W.a₆)

/-- Its formal partial derivative with respect to `x`. -/
def reducedDx (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : ZMod 2 :=
  W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)

/-- Its formal partial derivative with respect to `y`. -/
def reducedDy (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : ZMod 2 :=
  2 * y + W.a₁ * x + W.a₃

/-- The degree-two part after translating a point of the affine equation
to the origin. Its slope quadratic has linear coefficient `W.a₁`;
in characteristic two, nonzero `W.a₁` makes its tangent directions
distinct over an algebraic closure. -/
def reducedTangentCone (W : WeierstrassCurve (ZMod 2))
    (x u v : ZMod 2) : ZMod 2 :=
  v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2

/-- The expansion certifies that `reducedTangentCone` is the actual
quadratic part of the translated Weierstrass equation. -/
theorem reducedEquation_shift (W : WeierstrassCurve (ZMod 2))
    (x y u v : ZMod 2) :
    reducedEquation W (x + u) (y + v) =
      reducedEquation W x y + reducedDx W x y * u + reducedDy W x y * v +
      reducedTangentCone W x u v - u ^ 3 := by
  simp only [reducedEquation, reducedDx, reducedDy, reducedTangentCone]
  ring

/-- The affine equation over the *integral* base ring. Keeping the
uniformizer in the coefficients is essential for studying the total
surface; its reduction alone cannot detect whether the total surface
is already regular at a node of the special fibre. -/
def localWeierstrassEquation {R : Type*} [CommRing R]
    (W : WeierstrassCurve R) (x y : R) : R :=
  y ^ 2 + W.a₁ * x * y + W.a₃ * y -
    (x ^ 3 + W.a₂ * x ^ 2 + W.a₄ * x + W.a₆)

/-- Exact translated equation before reduction, including the linear
terms which may be divisible by 2 but need not vanish in `ℤ_[2]`. -/
theorem localWeierstrassEquation_shift {R : Type*} [CommRing R]
    (W : WeierstrassCurve R) (x y u v : R) :
    localWeierstrassEquation W (x + u) (y + v) =
      localWeierstrassEquation W x y +
        (W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) * u +
        (2 * y + W.a₁ * x + W.a₃) * v +
        (v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2) - u ^ 3 := by
  simp only [localWeierstrassEquation]
  ring

/-- Pullback of the total-space equation to the substitution
`X = x + 2u, Y = y + 2v`. This is an exact *chart numerator*, not a
strict transform or a claim that a blow-up lowers `v₂(Δ)`. In
particular the constant and linear terms cannot be dropped merely
because they vanish after reduction modulo 2. -/
theorem localWeierstrassEquation_twoChart
    (W : WeierstrassCurve ℤ_[2]) (x y u v : ℤ_[2]) :
    localWeierstrassEquation W (x + 2 * u) (y + 2 * v) =
      localWeierstrassEquation W x y +
        2 * ((W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) * u +
          (2 * y + W.a₁ * x + W.a₃) * v) +
        4 * (v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2) -
        8 * u ^ 3 := by
  rw [localWeierstrassEquation_shift]
  ring

/-- Equation numerator on the `u`-chart substitution
`X = x + u, Y = y + u v`. The full blow-up chart additionally
imposes a relation of the form `2 = u w`; no exceptional divisor
or strict transform is inferred from this identity alone. -/
theorem localWeierstrassEquation_uChart
    (W : WeierstrassCurve ℤ_[2]) (x y u v : ℤ_[2]) :
    localWeierstrassEquation W (x + u) (y + u * v) =
      localWeierstrassEquation W x y +
        u * ((W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) +
          (2 * y + W.a₁ * x + W.a₃) * v) +
        u ^ 2 * (v ^ 2 + W.a₁ * v - (3 * x + W.a₂)) - u ^ 3 := by
  rw [localWeierstrassEquation_shift]
  ring

/-- Equation numerator on the `v`-chart substitution
`X = x + u v, Y = y + v`. The companion base relation is `2 = v w`;
this identity does not yet construct the strict transform. -/
theorem localWeierstrassEquation_vChart
    (W : WeierstrassCurve ℤ_[2]) (x y u v : ℤ_[2]) :
    localWeierstrassEquation W (x + u * v) (y + v) =
      localWeierstrassEquation W x y +
        v * ((W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) * u +
          (2 * y + W.a₁ * x + W.a₃)) +
        v ^ 2 * (1 + W.a₁ * u - (3 * x + W.a₂) * u ^ 2) -
        u ^ 3 * v ^ 3 := by
  rw [localWeierstrassEquation_shift]
  ring

/-- The translated total-space equation as a polynomial in the two
local affine coordinates, with the base uniformizer retained in its
coefficient ring. -/
noncomputable def localSurfaceEquation (W : WeierstrassCurve ℤ_[2])
    (x y : ℤ_[2]) : MvPolynomial (Fin 2) ℤ_[2] :=
  localWeierstrassEquation (W.map MvPolynomial.C)
    (MvPolynomial.C x + MvPolynomial.X 0)
    (MvPolynomial.C y + MvPolynomial.X 1)

/-- The centre ideal `(2, X, Y)` in the ambient affine plane over
`ℤ_[2]`. Membership of an equation in its square is a first-order
singularity certificate, not by itself a proof of singularity of the
quotient local ring. -/
noncomputable def localSurfaceCentre : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
  Ideal.span {MvPolynomial.C (2 : ℤ_[2]),
    MvPolynomial.X 0, MvPolynomial.X 1}

/-- When the lifted equation vanishes to order at least two at the
centre, its actual polynomial lies in the square of the centre ideal.
This is stronger than a numerical chart substitution: it records the
ambient ideal filtration needed before a blow-up. -/
theorem localSurfaceEquation_mem_centre_sq
    (W : WeierstrassCurve ℤ_[2]) (x y A B C : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * A)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * B)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * C) :
    localSurfaceEquation W x y ∈ localSurfaceCentre ^ 2 := by
  let c : ℤ_[2] →+* MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.C
  let π : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.C 2
  let U : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 0
  let V : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 1
  let J := localSurfaceCentre
  have hπ : π ∈ J := Ideal.subset_span (by simp [J, localSurfaceCentre, π])
  have hU : U ∈ J := Ideal.subset_span (by simp [J, localSurfaceCentre, U])
  have hV : V ∈ J := Ideal.subset_span (by simp [J, localSurfaceCentre, V])
  have hsq {a b : MvPolynomial (Fin 2) ℤ_[2]}
      (ha : a ∈ J) (hb : b ∈ J) : a * b ∈ J ^ 2 := by
    simpa only [pow_two] using Ideal.mul_mem_mul ha hb
  have hpoly :
      localSurfaceEquation W x y =
        (π * π) * MvPolynomial.C A +
        (π * U) * MvPolynomial.C B +
        (π * V) * MvPolynomial.C C +
        V ^ 2 + MvPolynomial.C W.a₁ * U * V -
        MvPolynomial.C (3 * x + W.a₂) * U ^ 2 - U ^ 3 := by
    have hFmap : localWeierstrassEquation (W.map c)
        (c x) (c y) = c (localWeierstrassEquation W x y) := by
      simp [localWeierstrassEquation, WeierstrassCurve.map]
    have hXmap :
        (W.map c).a₁ * c y -
          (3 * c x ^ 2 +
            2 * (W.map c).a₂ * c x +
            (W.map c).a₄) =
        c
          (W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) := by
      simp [WeierstrassCurve.map, map_ofNat]
    have hYmap :
        2 * c y + (W.map c).a₁ *
          c x + (W.map c).a₃ =
        c (2 * y + W.a₁ * x + W.a₃) := by
      simp [WeierstrassCurve.map, map_ofNat]
    change localWeierstrassEquation (W.map c)
      (c x + U) (c y + V) = _
    rw [localWeierstrassEquation_shift, hFmap, hXmap, hYmap, hF, hX, hY]
    simp only [WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂,
      map_mul, map_add, map_sub, map_pow, map_ofNat]
    dsimp only [c, π]
    simp only [map_ofNat]
    ring
  rw [hpoly]
  apply (J ^ 2).sub_mem
  · apply (J ^ 2).sub_mem
    · apply (J ^ 2).add_mem
      · apply (J ^ 2).add_mem
        · apply (J ^ 2).add_mem
          · apply (J ^ 2).add_mem
            · exact (J ^ 2).mul_mem_right _ (hsq hπ hπ)
            · exact (J ^ 2).mul_mem_right _ (hsq hπ hU)
          · exact (J ^ 2).mul_mem_right _ (hsq hπ hV)
        · convert hsq hV hV using 1 <;> ring
      · convert (J ^ 2).mul_mem_left (MvPolynomial.C W.a₁) (hsq hU hV)
          using 1 <;> ring
    · convert (J ^ 2).mul_mem_left (MvPolynomial.C (3 * x + W.a₂))
        (hsq hU hU) using 1 <;> ring
  · convert (J ^ 2).mul_mem_right U (hsq hU hU) using 1 <;> ring

/-- Conversely, an equation whose constant value is not divisible by
four cannot belong to the square of `(2, X, Y)`: evaluate both local
variables at zero and map the centre ideal to `(2)` in `ℤ_[2]`. -/
theorem localSurfaceEquation_not_mem_centre_sq
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hF : ¬ (4 : ℤ_[2]) ∣ localWeierstrassEquation W x y) :
    localSurfaceEquation W x y ∉ localSurfaceCentre ^ 2 := by
  let e : MvPolynomial (Fin 2) ℤ_[2] →+* ℤ_[2] :=
    MvPolynomial.eval₂Hom (RingHom.id ℤ_[2]) (fun _ => 0)
  have hle : Ideal.map e localSurfaceCentre ≤
      (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) := by
    rw [localSurfaceCentre, Ideal.map_span]
    apply Ideal.span_le.mpr
    rintro z ⟨p, hp, rfl⟩
    rcases (show p = MvPolynomial.C (2 : ℤ_[2]) ∨
        p = MvPolynomial.X (0 : Fin 2) ∨
        p = MvPolynomial.X (1 : Fin 2) from by simpa using hp) with hp | hp | hp
    · rw [hp]
      simpa [e] using
        (Ideal.subset_span (Set.mem_singleton (2 : ℤ_[2])))
    · rw [hp]
      simp [e]
    · rw [hp]
      simp [e]
  have hpow : Ideal.map e (localSurfaceCentre ^ 2) ≤
      (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) ^ 2 := by
    rw [pow_two, Ideal.map_mul, pow_two]
    exact Ideal.mul_le.mpr fun _ ha _ hb =>
      Ideal.mul_mem_mul (hle ha) (hle hb)
  have heq : e (localSurfaceEquation W x y) =
      localWeierstrassEquation W x y := by
    simp [e, localSurfaceEquation, localWeierstrassEquation,
      WeierstrassCurve.map]
  intro hp
  have hm := hpow (Ideal.mem_map_of_mem e hp)
  rw [Ideal.span_singleton_pow] at hm
  have hdiv : (4 : ℤ_[2]) ∣ localWeierstrassEquation W x y := by
    simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num,
      Ideal.mem_span_singleton, heq] using hm
  exact hF hdiv

/-- The base uniformizer has a nonzero first-order class at the
ambient centre: its value at the origin is not divisible by four. -/
theorem localSurfaceUniformizer_not_mem_centre_sq :
    MvPolynomial.C (2 : ℤ_[2]) ∉ localSurfaceCentre ^ 2 := by
  let e : MvPolynomial (Fin 2) ℤ_[2] →+* ℤ_[2] :=
    MvPolynomial.eval₂Hom (RingHom.id ℤ_[2]) (fun _ => 0)
  have hle : Ideal.map e localSurfaceCentre ≤
      (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) := by
    rw [localSurfaceCentre, Ideal.map_span]
    apply Ideal.span_le.mpr
    rintro z ⟨p, hp, rfl⟩
    rcases (show p = MvPolynomial.C (2 : ℤ_[2]) ∨
        p = MvPolynomial.X (0 : Fin 2) ∨
        p = MvPolynomial.X (1 : Fin 2) from by simpa using hp) with hp | hp | hp
    · rw [hp]
      simpa [e] using
        (Ideal.subset_span (Set.mem_singleton (2 : ℤ_[2])))
    · rw [hp]
      simp [e]
    · rw [hp]
      simp [e]
  have hpow : Ideal.map e (localSurfaceCentre ^ 2) ≤
      (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) ^ 2 := by
    rw [pow_two, Ideal.map_mul, pow_two]
    exact Ideal.mul_le.mpr fun _ ha _ hb =>
      Ideal.mul_mem_mul (hle ha) (hle hb)
  intro hp
  have hm := hpow (Ideal.mem_map_of_mem e hp)
  rw [Ideal.span_singleton_pow] at hm
  have hfour : (4 : ℤ_[2]) ∣ (2 : ℤ_[2]) := by
    simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num,
      Ideal.mem_span_singleton, show e (MvPolynomial.C (2 : ℤ_[2])) =
        (2 : ℤ_[2]) by simp [e]] using hm
  have hval : (2 : ℤ_[2]) ∈
      (Ideal.span {((2 : ℤ_[2]) ^ 2)} : Ideal ℤ_[2]) :=
    Ideal.mem_span_singleton.mpr
      (by simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num] using hfour)
  have htwo : (2 : ℤ_[2]) ≠ 0 := by norm_num
  have hval2 : 2 ≤ Padic.valuation ((2 : ℤ_[2]) : ℚ_[2]) :=
    (PadicInt.mem_span_pow_iff_le_valuation (2 : ℤ_[2]) htwo 2).mp hval
  have hvalone : Padic.valuation ((2 : ℤ_[2]) : ℚ_[2]) = 1 := by
    exact PadicInt.valuation_p
  omega

/-- A singular point whose translated quadratic term has nonzero
mixed coefficient: the explicit characteristic-two node test. -/
def ReducedNodalPoint (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : Prop :=
  reducedEquation W x y = 0 ∧
    reducedDx W x y = 0 ∧
    reducedDy W x y = 0 ∧
    W.a₁ ≠ 0

/-- Every lift of a node of the special fibre has integral equation
value and both linear coefficients in the maximal ideal of `ℤ_[2]`.
These are *residue* equalities: they do not assert divisibility by 4,
which is needed before dividing the `2`-chart numerator by 4. -/
theorem reducedNodalPoint_liftLocalCoefficients
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod x) (PadicInt.toZMod y)) :
    PadicInt.toZMod (localWeierstrassEquation W x y) = 0 ∧
      PadicInt.toZMod
        (W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) = 0 ∧
      PadicInt.toZMod (2 * y + W.a₁ * x + W.a₃) = 0 := by
  rcases hnode with ⟨he, hx, hy, _⟩
  constructor
  · simpa [localWeierstrassEquation, reducedEquation, WeierstrassCurve.map] using he
  constructor
  · simp only [map_sub, map_add, map_mul, map_pow, map_ofNat]
    simpa [reducedDx, WeierstrassCurve.map] using hx
  · simp only [map_sub, map_add, map_mul, map_ofNat]
    simpa [reducedDy, WeierstrassCurve.map] using hy

/-- In `ℤ_[2]`, vanishing modulo 2 means actual divisibility by 2. -/
private theorem two_dvd_of_toZMod_eq_zero (a : ℤ_[2])
    (h : PadicInt.toZMod a = (0 : ZMod 2)) : (2 : ℤ_[2]) ∣ a := by
  have hk : a ∈ RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) :=
    RingHom.mem_ker.mpr h
  rw [PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p] at hk
  exact Ideal.mem_span_singleton.mp hk

/-- Evaluation at the origin of the special fibre. Its kernel is the
ambient centre ideal, so the centre really is a closed point, not
merely a chosen set of three generators. -/
noncomputable def localSurfaceResidue :
    MvPolynomial (Fin 2) ℤ_[2] →+* ZMod 2 :=
  MvPolynomial.eval₂Hom PadicInt.toZMod (fun _ => 0)

theorem localSurfaceCentre_eq_ker_residue :
    localSurfaceCentre = RingHom.ker localSurfaceResidue := by
  let J := localSurfaceCentre
  let e := localSurfaceResidue
  let e₀ : MvPolynomial (Fin 2) ℤ_[2] →+* ℤ_[2] :=
    MvPolynomial.eval₂Hom (RingHom.id ℤ_[2]) (fun _ => 0)
  have hX (i : Fin 2) : MvPolynomial.X i ∈ J := by
    fin_cases i
    · exact Ideal.subset_span (by simp [J, localSurfaceCentre])
    · exact Ideal.subset_span (by simp [J, localSurfaceCentre])
  have hπ : MvPolynomial.C (2 : ℤ_[2]) ∈ J :=
    Ideal.subset_span (by simp [J, localSurfaceCentre])
  have hdecomp (p : MvPolynomial (Fin 2) ℤ_[2]) :
      p - MvPolynomial.C (e₀ p) ∈ J := by
    induction p using MvPolynomial.induction_on with
    | h_C a =>
        simp [e₀]
    | h_add p q hp hq =>
        have heq : p + q - MvPolynomial.C (e₀ (p + q)) =
            (p - MvPolynomial.C (e₀ p)) +
              (q - MvPolynomial.C (e₀ q)) := by
          simp only [map_add]
          ring
        rw [heq]
        exact J.add_mem hp hq
    | h_X p i hp =>
        have hz : e₀ (p * MvPolynomial.X i) = 0 := by simp [e₀]
        simpa only [hz, map_zero, sub_zero] using
          (J.mul_mem_left p (hX i))
  have hcomp :
      e = (PadicInt.toZMod : ℤ_[2] →+* ZMod 2).comp e₀ := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [e, e₀, localSurfaceResidue]
    · intro i
      simp [e, e₀, localSurfaceResidue]
  apply le_antisymm
  · change J ≤ RingHom.ker e
    apply Ideal.span_le.mpr
    intro p hp
    rcases (show p = MvPolynomial.C (2 : ℤ_[2]) ∨
        p = MvPolynomial.X (0 : Fin 2) ∨
        p = MvPolynomial.X (1 : Fin 2) from by simpa [J, localSurfaceCentre] using hp)
      with hp | hp | hp
    all_goals rw [hp]
    all_goals simp [RingHom.mem_ker, e, localSurfaceResidue]
    all_goals
      rw [map_ofNat]
      decide
  · change RingHom.ker e ≤ J
    intro p hp
    have hzero : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) (e₀ p) = 0 := by
      have hz := RingHom.mem_ker.mp hp
      simpa only [hcomp, RingHom.comp_apply] using hz
    obtain ⟨a, ha⟩ := two_dvd_of_toZMod_eq_zero (e₀ p) hzero
    have hc : MvPolynomial.C (e₀ p) ∈ J := by
      rw [ha, map_mul]
      exact J.mul_mem_right _ hπ
    have heq : p = (p - MvPolynomial.C (e₀ p)) +
        MvPolynomial.C (e₀ p) := by ring
    rw [heq]
    exact J.add_mem (hdecomp p) hc

theorem localSurfaceCentre_isMaximal : localSurfaceCentre.IsMaximal := by
  rw [localSurfaceCentre_eq_ker_residue]
  apply RingHom.ker_isMaximal_of_surjective localSurfaceResidue
  intro z
  fin_cases z
  · exact ⟨0, by simp [localSurfaceResidue]⟩
  · exact ⟨1, by simp [localSurfaceResidue]⟩

/-- The part of the translated equation beyond its constant term
belongs to the ideal generated by the two coordinate variables. -/
theorem localSurfaceEquation_sub_constant_mem_variables
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceEquation W x y -
      MvPolynomial.C (localWeierstrassEquation W x y) ∈
      (Ideal.span {MvPolynomial.X (0 : Fin 2),
        MvPolynomial.X (1 : Fin 2)} :
          Ideal (MvPolynomial (Fin 2) ℤ_[2])) := by
  let V : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X (1 : Fin 2)}
  let e₀ : MvPolynomial (Fin 2) ℤ_[2] →+* ℤ_[2] :=
    MvPolynomial.eval₂Hom (RingHom.id ℤ_[2]) (fun _ => 0)
  have hX (i : Fin 2) : MvPolynomial.X i ∈ V := by
    fin_cases i
    · exact Ideal.subset_span (by simp [V])
    · exact Ideal.subset_span (by simp [V])
  have hdecomp (p : MvPolynomial (Fin 2) ℤ_[2]) :
      p - MvPolynomial.C (e₀ p) ∈ V := by
    induction p using MvPolynomial.induction_on with
    | h_C a => simp [e₀]
    | h_add p q hp hq =>
        have heq : p + q - MvPolynomial.C (e₀ (p + q)) =
            (p - MvPolynomial.C (e₀ p)) +
              (q - MvPolynomial.C (e₀ q)) := by
          simp only [map_add]
          ring
        rw [heq]
        exact V.add_mem hp hq
    | h_X p i hp =>
        have hz : e₀ (p * MvPolynomial.X i) = 0 := by simp [e₀]
        simpa only [hz, map_zero, sub_zero] using
          (V.mul_mem_left p (hX i))
  have heval : e₀ (localSurfaceEquation W x y) =
      localWeierstrassEquation W x y := by
    simp [e₀, localSurfaceEquation, localWeierstrassEquation,
      WeierstrassCurve.map]
  simpa only [heval] using hdecomp (localSurfaceEquation W x y)

/-- The coordinate ring of the actual translated total-space
hypersurface, not the ambient polynomial ring. -/
abbrev localSurfaceCoordinateRing (W : WeierstrassCurve ℤ_[2])
    (x y : ℤ_[2]) :=
  (MvPolynomial (Fin 2) ℤ_[2]) ⧸ Ideal.span {localSurfaceEquation W x y}

/-- The image of `(2, X, Y)` on the hypersurface. It is a closed point
when the defining equation passes through the ambient centre. -/
noncomputable def localSurfaceClosedPoint (W : WeierstrassCurve ℤ_[2])
    (x y : ℤ_[2]) : Ideal (localSurfaceCoordinateRing W x y) :=
  Ideal.map (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
    localSurfaceCentre

theorem localSurfaceClosedPoint_isMaximal
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hF : localSurfaceEquation W x y ∈ localSurfaceCentre) :
    (localSurfaceClosedPoint W x y).IsMaximal := by
  let I : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {localSurfaceEquation W x y}
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk I
  have hI : I ≤ localSurfaceCentre :=
    Ideal.span_le.mpr (by simpa [I] using hF)
  have hker : Ideal.comap q ⊥ = I := by
    ext p
    simp only [Ideal.mem_comap, Ideal.mem_bot, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.Quotient.eq_zero_iff_mem
  have hcomap : (Ideal.map q localSurfaceCentre).comap q =
      localSurfaceCentre := by
    rw [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective,
      hker, sup_eq_left.mpr hI]
  have hproper : Ideal.map q localSurfaceCentre ≠ ⊤ := by
    intro htop
    have h' := congrArg (Ideal.comap q) htop
    rw [hcomap, Ideal.comap_top] at h'
    exact localSurfaceCentre_isMaximal.ne_top h'
  have hcases := Ideal.map_eq_top_or_isMaximal_of_surjective
    q Ideal.Quotient.mk_surjective localSurfaceCentre_isMaximal
  exact hcases.resolve_left hproper

/-- A reduced affine point is an actual closed point of the total
hypersurface's coordinate ring. This is the point whose localized
quotient ring must be studied before asserting regularity. -/
theorem reducedPoint_hasClosedSurfacePoint
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hpoint : reducedEquation (W.map PadicInt.toZMod)
      (PadicInt.toZMod x) (PadicInt.toZMod y) = 0) :
    (localSurfaceClosedPoint W x y).IsMaximal := by
  apply localSurfaceClosedPoint_isMaximal
  rw [localSurfaceCentre_eq_ker_residue, RingHom.mem_ker]
  simpa [localSurfaceResidue, localSurfaceEquation,
    localWeierstrassEquation, reducedEquation,
    WeierstrassCurve.map] using hpoint

/-- If the total-space equation vanishes to second order, the base
uniformizer remains nonzero modulo the square of the closed-point
ideal in the *hypersurface coordinate ring*. This statement is about
its first-order class, not a proof of singularity of the localization. -/
theorem localSurfaceUniformizer_not_mem_closedPoint_sq
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hF : localSurfaceEquation W x y ∈ localSurfaceCentre ^ 2) :
    (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
      (MvPolynomial.C (2 : ℤ_[2])) ∉
      (localSurfaceClosedPoint W x y) ^ 2 := by
  let I : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {localSurfaceEquation W x y}
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk I
  let M := localSurfaceClosedPoint W x y
  have hI : I ≤ localSurfaceCentre ^ 2 :=
    Ideal.span_le.mpr (by simpa [I] using hF)
  have hker : Ideal.comap q ⊥ = I := by
    ext p
    simp only [Ideal.mem_comap, Ideal.mem_bot]
    exact Ideal.Quotient.eq_zero_iff_mem
  have hsq : M ^ 2 = Ideal.map q (localSurfaceCentre ^ 2) := by
    change (Ideal.map q localSurfaceCentre) ^ 2 = _
    simp only [pow_two, Ideal.map_mul]
  intro hh
  have hback : MvPolynomial.C (2 : ℤ_[2]) ∈
      Ideal.comap q (Ideal.map q (localSurfaceCentre ^ 2)) := by
    exact hsq ▸ hh
  rw [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective,
    hker, sup_eq_left.mpr hI] at hback
  exact localSurfaceUniformizer_not_mem_centre_sq hback

/-- In the second-order branch the closed point of the actual
hypersurface has a nonzero cotangent space, witnessed by the
uniformizer. No dimension or regularity assertion is made. -/
theorem localSurfaceClosedPoint_cotangent_nontrivial
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hF : localSurfaceEquation W x y ∈ localSurfaceCentre ^ 2) :
    Nontrivial (localSurfaceClosedPoint W x y).Cotangent := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let M := localSurfaceClosedPoint W x y
  have hπ : MvPolynomial.C (2 : ℤ_[2]) ∈ localSurfaceCentre :=
    Ideal.subset_span (by simp [localSurfaceCentre])
  have hqπ : q (MvPolynomial.C (2 : ℤ_[2])) ∈ M :=
    Ideal.mem_map_of_mem q hπ
  have hne : M.toCotangent ⟨q (MvPolynomial.C (2 : ℤ_[2])), hqπ⟩ ≠ 0 := by
    intro hz
    exact (localSurfaceUniformizer_not_mem_closedPoint_sq W x y hF)
      ((M.toCotangent_eq_zero ⟨q (MvPolynomial.C (2 : ℤ_[2])), hqπ⟩).mp hz)
  exact nontrivial_of_ne _ _ hne

/-- If the constant value is twice a unit, the uniformizer is
eliminated by the actual hypersurface relation: the closed-point
ideal in its coordinate ring is generated by the two coordinate
images. This is not, by itself, a proof of regularity. -/
theorem localSurfaceClosedPoint_eq_span_coordinates_of_unit_constant
    (W : WeierstrassCurve ℤ_[2]) (x y A : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 2 * A)
    (hA : IsUnit A) :
    localSurfaceClosedPoint W x y =
      Ideal.span {
        (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
          (MvPolynomial.X (0 : Fin 2)),
        (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
          (MvPolynomial.X (1 : Fin 2))} := by
  let P := localSurfaceEquation W x y
  let I : Ideal (MvPolynomial (Fin 2) ℤ_[2]) := Ideal.span {P}
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk I
  let K : Ideal (localSurfaceCoordinateRing W x y) :=
    Ideal.span {q (MvPolynomial.X (0 : Fin 2)),
      q (MvPolynomial.X (1 : Fin 2))}
  have hqP : q P = 0 := by
    change Ideal.Quotient.mk I P = 0
    exact Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.subset_span (Set.mem_singleton P))
  have hvar : Ideal.map q
      (Ideal.span {MvPolynomial.X (0 : Fin 2),
        MvPolynomial.X (1 : Fin 2)}) = K := by
    rw [Ideal.map_span]
    change Ideal.span (q '' {MvPolynomial.X (0 : Fin 2),
      MvPolynomial.X (1 : Fin 2)}) =
      Ideal.span {q (MvPolynomial.X (0 : Fin 2)),
        q (MvPolynomial.X (1 : Fin 2))}
    congr 1
    ext z
    simp [eq_comm]
  have hdiff : q (P - MvPolynomial.C
      (localWeierstrassEquation W x y)) ∈ K := by
    rw [← hvar]
    exact Ideal.mem_map_of_mem q
      (localSurfaceEquation_sub_constant_mem_variables W x y)
  have hconst : q (MvPolynomial.C
      (localWeierstrassEquation W x y)) ∈ K := by
    have heq : q (MvPolynomial.C
        (localWeierstrassEquation W x y)) =
        -(q (P - MvPolynomial.C
          (localWeierstrassEquation W x y))) := by
      rw [map_sub, hqP]
      ring
    rw [heq]
    exact K.neg_mem hdiff
  obtain ⟨B, hB⟩ := isUnit_iff_dvd_one.mp hA
  have htwo : q (MvPolynomial.C (2 : ℤ_[2])) ∈ K := by
    rw [hF] at hconst
    have hmul := K.mul_mem_right (q (MvPolynomial.C B)) hconst
    have heq : q (MvPolynomial.C (2 : ℤ_[2])) =
        q (MvPolynomial.C (2 * A)) * q (MvPolynomial.C B) := by
      simp only [← map_mul]
      rw [mul_assoc, ← hB, mul_one]
    rw [heq]
    exact hmul
  change Ideal.map q localSurfaceCentre = K
  rw [localSurfaceCentre, Ideal.map_span]
  apply le_antisymm
  · apply Ideal.span_le.mpr
    rintro z ⟨p, hp, rfl⟩
    rcases (show p = MvPolynomial.C (2 : ℤ_[2]) ∨
        p = MvPolynomial.X (0 : Fin 2) ∨
        p = MvPolynomial.X (1 : Fin 2) from by simpa using hp) with hp | hp | hp
    · simpa only [hp] using htwo
    · rw [hp]
      exact Ideal.subset_span (by simp [K])
    · rw [hp]
      exact Ideal.subset_span (by simp [K])
  · apply Ideal.span_le.mpr
    intro z hz
    rcases (show z = q (MvPolynomial.X (0 : Fin 2)) ∨
        z = q (MvPolynomial.X (1 : Fin 2)) from by simpa [K] using hz) with hz | hz
    · rw [hz]
      exact Ideal.subset_span
        (Set.mem_image_of_mem q (by simp))
    · rw [hz]
      exact Ideal.subset_span
        (Set.mem_image_of_mem q (by simp))

/-- A lifted node makes the constant and linear coefficients of the
translated surface equation divisible by 2. This deliberately makes
no claim that the constant is divisible by 4: a nodal *special
fibre* can occur at a regular point of the total surface. -/
theorem reducedNodalPoint_liftEvenCoefficients
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod x) (PadicInt.toZMod y)) :
    ∃ A B C : ℤ_[2],
      localWeierstrassEquation W x y = 2 * A ∧
      W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * B ∧
      2 * y + W.a₁ * x + W.a₃ = 2 * C := by
  obtain ⟨hF, hX, hY⟩ :=
    reducedNodalPoint_liftLocalCoefficients W x y hnode
  obtain ⟨A, hA⟩ := two_dvd_of_toZMod_eq_zero _ hF
  obtain ⟨B, hB⟩ := two_dvd_of_toZMod_eq_zero _ hX
  obtain ⟨C, hC⟩ := two_dvd_of_toZMod_eq_zero _ hY
  exact ⟨A, B, C, hA, hB, hC⟩

/-- If the lifted constant term is divisible by 4 as well as the
linear terms by 2, the `2`-chart equation has a factor of 4 with
this explicit quotient. The extra divisibility is a hypothesis,
not a consequence of the residue node. This still does not assert
that the quotient defines the strict transform of a blow-up. -/
theorem localWeierstrassEquation_twoChart_factor
    (W : WeierstrassCurve ℤ_[2]) (x y u v A B C : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * A)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * B)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * C) :
    localWeierstrassEquation W (x + 2 * u) (y + 2 * v) =
      4 * (A + B * u + C * v +
        (v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2) -
        2 * u ^ 3) := by
  rw [localWeierstrassEquation_twoChart, hF, hX, hY]
  ring

/-- For an odd mixed coefficient, the discriminant and the value of
the equation at the canonical lift of the reduced node agree mod 4.
This is a calculation in the actual `ZMod 4` quotient, not a
conductor or fibre classification. -/
private theorem zmodFour_delta_eq_nodeConstant
    (W : WeierstrassCurve (ZMod 4))
    (ha : W.a₁ = 1 ∨ W.a₁ = 3) :
    W.Δ = localWeierstrassEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) := by
  have h4 : (4 : ZMod 4) = 0 := by decide
  have h8 : (8 : ZMod 4) = 0 := by decide
  have h27 : (27 : ZMod 4) = -1 := by decide
  have h9 : (9 : ZMod 4) = 1 := by decide
  have ha2 : W.a₁ ^ 2 = 1 := by
    rcases ha with ha | ha <;> rw [ha] <;> decide
  have hb2 : W.b₂ = 1 := by
    simp [WeierstrassCurve.b₂, ha2, h4]
  have hb6 : W.b₆ = W.a₃ ^ 2 := by
    simp [WeierstrassCurve.b₆, h4]
  have hb8 : W.b₈ =
      W.a₆ - W.a₁ * W.a₃ * W.a₄ +
        W.a₂ * W.a₃ ^ 2 - W.a₄ ^ 2 := by
    simp [WeierstrassCurve.b₈, ha2, h4]
  simp only [WeierstrassCurve.Δ, hb2, hb6, hb8,
    WeierstrassCurve.b₄, localWeierstrassEquation,
    one_pow, one_mul, h8, h27, h9, zero_mul, sub_zero]
  ring

/-- With odd `a₁`, the canonical lift of the reduced singular point
has equation value congruent to the discriminant modulo 4. No
positive-valuation hypothesis is smuggled into this congruence. -/
theorem nodeConstant_modFour_eq_delta
    (W : WeierstrassCurve ℤ_[2])
    (ha : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ ≠ 0) :
    (PadicInt.toZModPow 2)
        (localWeierstrassEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)) =
      (PadicInt.toZModPow 2) W.Δ := by
  let φ : ℤ_[2] →+* ZMod 4 := PadicInt.toZModPow 2
  have ha1 : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    rcases hcases ((PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁) with hz | hone
    · exact (ha hz).elim
    · exact hone
  have hminus :
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) (W.a₁ - 1) = 0 := by
    rw [map_sub, ha1, map_one, sub_self]
  obtain ⟨t, ht⟩ := two_dvd_of_toZMod_eq_zero (W.a₁ - 1) hminus
  have hA : W.a₁ = 1 + 2 * t := by linear_combination ht
  have hodd : (W.map φ).a₁ = 1 ∨ (W.map φ).a₁ = 3 := by
    have hcases (z : ZMod 4) : 2 * z = 0 ∨ 2 * z = 2 := by
      fin_cases z <;> decide
    have hφ : (W.map φ).a₁ = 1 + 2 * φ t := by
      simp only [WeierstrassCurve.map_a₁, hA, map_add, map_one, map_mul, map_ofNat]
    rcases hcases (φ t) with hz | hz
    · left; rw [hφ, hz]; ring
    · right; rw [hφ, hz]; norm_num
  have hid := zmodFour_delta_eq_nodeConstant (W.map φ) hodd
  rw [WeierstrassCurve.map_Δ] at hid
  have hmap :
      localWeierstrassEquation (W.map φ) (φ W.a₃)
        ((φ W.a₃) ^ 2 + φ W.a₄) =
      φ (localWeierstrassEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)) := by
    simp [localWeierstrassEquation, WeierstrassCurve.map]
  simp only [WeierstrassCurve.map_a₃, WeierstrassCurve.map_a₄] at hid
  rw [hmap] at hid
  exact hid.symm

/-- The extra divisibility needed for the `2`-chart follows from
`4 ∣ Δ`, rather than from `0 < v₂(Δ)` alone. The chosen lift is
`(a₃, a₃² + a₄)`; this theorem does not construct a blow-up. -/
theorem four_dvd_nodeConstant_of_four_dvd_delta
    (W : WeierstrassCurve ℤ_[2])
    (ha : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ ≠ 0)
    (hΔ : (4 : ℤ_[2]) ∣ W.Δ) :
    (4 : ℤ_[2]) ∣
      localWeierstrassEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) := by
  let φ : ℤ_[2] →+* ZMod 4 := PadicInt.toZModPow 2
  have hker : W.Δ ∈ RingHom.ker φ := by
    rw [PadicInt.ker_toZModPow]
    apply Ideal.mem_span_singleton.mpr
    simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num] using hΔ
  have hred : φ W.Δ = 0 := RingHom.mem_ker.mp hker
  have hconst :
      φ (localWeierstrassEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)) = 0 := by
    exact (nodeConstant_modFour_eq_delta W ha).trans hred
  have hker' :
      localWeierstrassEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) ∈ RingHom.ker φ :=
    RingHom.mem_ker.mpr hconst
  rw [PadicInt.ker_toZModPow] at hker'
  simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num] using
    (Ideal.mem_span_singleton.mp hker')

/-- A nonzero two-adic discriminant of valuation at least two is
divisible by four. Valuation one is intentionally excluded. -/
theorem four_dvd_delta_of_val_ge_two
    (W : WeierstrassCurve ℤ_[2]) (hne : W.Δ ≠ 0)
    (hval : 2 ≤ Padic.valuation (W.Δ : ℚ_[2])) :
    (4 : ℤ_[2]) ∣ W.Δ := by
  have hmem : W.Δ ∈
      (Ideal.span {((2 : ℤ_[2]) ^ 2)} : Ideal ℤ_[2]) :=
    (PadicInt.mem_span_pow_iff_le_valuation W.Δ hne 2).mpr hval
  simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num] using
    (Ideal.mem_span_singleton.mp hmem)

/-- At the canonical lift of a node, divisibility of the discriminant
by four supplies all three coefficients needed for the `2`-chart
numerator identity. This identifies a quotient *polynomial*, not the
strict transform of a scheme-theoretic blow-up. -/
theorem canonicalNodalPoint_twoChartHasFourFactor
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : (4 : ℤ_[2]) ∣ W.Δ) (u v : ℤ_[2]) :
    ∃ A B C : ℤ_[2],
      localWeierstrassEquation W (W.a₃ + 2 * u)
        (W.a₃ ^ 2 + W.a₄ + 2 * v) =
        4 * (A + B * u + C * v +
          (v ^ 2 + W.a₁ * u * v -
            (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3) := by
  obtain ⟨_, B, C, _, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha :
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  obtain ⟨A, hA⟩ := four_dvd_nodeConstant_of_four_dvd_delta W ha hΔ
  exact ⟨A, B, C,
    localWeierstrassEquation_twoChart_factor
      W W.a₃ (W.a₃ ^ 2 + W.a₄) u v A B C hA hX hY⟩

/-- The canonical node has a second-order zero in the ambient
three-dimensional local coordinates when `4 ∣ Δ`. This does not
establish regularity or nonregularity of the quotient local ring. -/
theorem canonicalNodalPoint_surfaceEquation_mem_centre_sq
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : (4 : ℤ_[2]) ∣ W.Δ) :
    localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) ∈
      localSurfaceCentre ^ 2 := by
  obtain ⟨_, B, C, _, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha :
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  obtain ⟨A, hF⟩ := four_dvd_nodeConstant_of_four_dvd_delta W ha hΔ
  exact localSurfaceEquation_mem_centre_sq
    W W.a₃ (W.a₃ ^ 2 + W.a₄) A B C hF hX hY

/-- For the even-valuation nodal branch, the uniformizer gives a
nonzero first-order class in the cotangent space of the actual
hypersurface closed point. It remains to compute the cotangent
dimension and the local ring's Krull dimension. -/
theorem canonicalNodalPoint_cotangent_nontrivial
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : (4 : ℤ_[2]) ∣ W.Δ) :
    Nontrivial
      (localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)).Cotangent :=
  localSurfaceClosedPoint_cotangent_nontrivial W W.a₃
    (W.a₃ ^ 2 + W.a₄)
    (canonicalNodalPoint_surfaceEquation_mem_centre_sq W hnode hΔ)

/-- At discriminant valuation exactly one, the canonical nodal lift
has a nonzero linear uniformizer term in the ambient local equation:
the equation does *not* lie in `(2, X, Y)²`. Thus the even-valuation
blow-up premise cannot be extended to this branch. This alone is not
a Lean construction of its regular local ring. -/
theorem valOne_surfaceEquation_not_mem_centre_sq
    (W : WeierstrassCurve ℤ_[2]) (hΔ : W.Δ ≠ 0)
    (ha : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) ∉
      localSurfaceCentre ^ 2 := by
  apply localSurfaceEquation_not_mem_centre_sq
  intro hF
  let φ : ℤ_[2] →+* ZMod 4 := PadicInt.toZModPow 2
  have hFker :
      localWeierstrassEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) ∈
        RingHom.ker φ := by
    rw [PadicInt.ker_toZModPow]
    exact Ideal.mem_span_singleton.mpr
      (by simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num] using hF)
  have hFzero : φ (localWeierstrassEquation W W.a₃
      (W.a₃ ^ 2 + W.a₄)) = 0 := RingHom.mem_ker.mp hFker
  have hΔzero : φ W.Δ = 0 :=
    (nodeConstant_modFour_eq_delta W ha).symm.trans hFzero
  have hΔker : W.Δ ∈ RingHom.ker φ := RingHom.mem_ker.mpr hΔzero
  rw [PadicInt.ker_toZModPow] at hΔker
  have hval2 : 2 ≤ Padic.valuation (W.Δ : ℚ_[2]) :=
    (PadicInt.mem_span_pow_iff_le_valuation W.Δ hΔ 2).mp hΔker
  omega

/-- For a lifted node with discriminant valuation one, its
hypersurface closed-point ideal is generated by the two translated
coordinate images: the uniformizer is eliminated by an equation with
unit linear uniformizer coefficient. This necessary first-order
regularity test does not prove regularity of the localized ring. -/
theorem valOne_closedPoint_eq_span_coordinates
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄) =
      Ideal.span {
        (Ideal.Quotient.mk (Ideal.span
          {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)}))
          (MvPolynomial.X (0 : Fin 2)),
        (Ideal.Quotient.mk (Ideal.span
          {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)}))
          (MvPolynomial.X (1 : Fin 2))} := by
  obtain ⟨A, B, C, hF, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  have hA : IsUnit A := by
    by_contra hn
    have hmem : A ∈ (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) := by
      have hm : A ∈ LocalRing.maximalIdeal ℤ_[2] := by
        rw [LocalRing.mem_maximalIdeal, mem_nonunits_iff]
        exact hn
      simpa only [PadicInt.maximalIdeal_eq_span_p] using hm
    obtain ⟨D, hD⟩ := Ideal.mem_span_singleton.mp hmem
    have hfour : localWeierstrassEquation W W.a₃
        (W.a₃ ^ 2 + W.a₄) = 4 * D := by
      rw [hF, hD]
      ring
    exact (valOne_surfaceEquation_not_mem_centre_sq W hΔ ha hval)
      (localSurfaceEquation_mem_centre_sq W W.a₃
        (W.a₃ ^ 2 + W.a₄) D B C hfour hX hY)
  exact localSurfaceClosedPoint_eq_span_coordinates_of_unit_constant
    W W.a₃ (W.a₃ ^ 2 + W.a₄) A hF hA

/-- Localizing the valuation-one total surface at its closed nodal
point gives a genuine local ring whose maximal ideal is generated
by the images of the two translated coordinates. The local ring's
Krull dimension is *not* determined by this equality. -/
theorem valOne_localMaximalIdeal_eq_span_coordinates
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
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk
        (Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    LocalRing.maximalIdeal (Localization.AtPrime P) =
      Ideal.span {
        (algebraMap R (Localization.AtPrime P)) (q (MvPolynomial.X 0)),
        (algebraMap R (Localization.AtPrime P)) (q (MvPolynomial.X 1))} := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk
      (Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  let L := Localization.AtPrime P
  let f : R →+* L := algebraMap R L
  change LocalRing.maximalIdeal L =
    Ideal.span {f (q (MvPolynomial.X 0)), f (q (MvPolynomial.X 1))}
  rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P)]
  have hspan : P = Ideal.span {q (MvPolynomial.X (0 : Fin 2)),
      q (MvPolynomial.X (1 : Fin 2))} :=
    valOne_closedPoint_eq_span_coordinates W hnode hΔ hval
  change Ideal.map f P =
    Ideal.span {f (q (MvPolynomial.X 0)), f (q (MvPolynomial.X 1))}
  calc
    Ideal.map f P =
        Ideal.map f (Ideal.span {q (MvPolynomial.X 0),
          q (MvPolynomial.X 1)}) :=
      congrArg (Ideal.map f) hspan
    _ = _ := by
      rw [Ideal.map_span]
      congr 1
      ext z
      simp [eq_comm]

/-- The explicit node test is an actual singular point for Mathlib's
affine Weierstrass geometry, not merely a label for the residue data.
The nonzero tangent cross term is retained by `ReducedNodalPoint`. -/
theorem reducedNodalPoint_mathlibSingular
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (h : ReducedNodalPoint W x y) :
    W.toAffine.Equation x y ∧ ¬ W.toAffine.Nonsingular x y := by
  rcases h with ⟨he, hx, hy, _⟩
  constructor
  · exact (W.toAffine.equation_iff' x y).mpr he
  · intro hs
    rcases (W.toAffine.nonsingular_iff' x y).mp hs with ⟨_, hdx | hdy⟩
    · exact hdx hx
    · exact hdy hy

/-- With a nonzero mixed tangent coefficient, the two partials have
only one common zero even after extending the residue field. This is
the geometric uniqueness of the singular candidate; it does not
resolve the node into components of a minimal regular model. -/
theorem reducedNodalPoint_uniqueGeometricCandidate
    (W : WeierstrassCurve (ZMod 2))
    (hnode : ∃ x y : ZMod 2, ReducedNodalPoint W x y)
    {K : Type*} [Field K] (φ : ZMod 2 →+* K) (x y : K)
    (hx : ((W.map φ).toAffine.polynomialX).evalEval x y = 0)
    (hy : ((W.map φ).toAffine.polynomialY).evalEval x y = 0) :
    x = φ W.a₃ ∧ y = (φ W.a₃) ^ 2 + φ W.a₄ := by
  obtain ⟨_, _, _, _, _, ha⟩ := hnode
  have ha1 : W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    rcases hcases W.a₁ with hz | hone
    · exact (ha hz).elim
    · exact hone
  have htwo : (2 : K) = 0 := by
    have h : (2 : ZMod 2) = 0 := by decide
    have hm := congrArg φ h
    simpa only [map_ofNat, map_zero] using hm
  have hthree : (3 : K) = 1 := by
    calc
      (3 : K) = 2 + 1 := by ring
      _ = 1 := by rw [htwo]; ring
  have hneg (z : K) : -z = z := by
    have hz : (2 : K) * z = 0 := by rw [htwo]; ring
    linear_combination -hz
  have hy' : x + φ W.a₃ = 0 := by
    simpa [WeierstrassCurve.Affine.evalEval_polynomialY,
      WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₃,
      ha1, htwo] using hy
  have hx' : x = φ W.a₃ := by
    have := eq_neg_of_add_eq_zero_left hy'
    simpa [hneg] using this
  have hx'' : y - (x ^ 2 + φ W.a₄) = 0 := by
    simpa [WeierstrassCurve.Affine.evalEval_polynomialX,
      WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂,
      WeierstrassCurve.map_a₄, ha1, htwo, hthree] using hx
  exact ⟨hx', by rw [hx'] at hx''; exact sub_eq_zero.mp hx''⟩

/-- Over an algebraically closed residue extension, the quadratic
tangent cone at the explicit node is a product of two *distinct*
linear directions. This concerns the singular cubic, not the
components of its minimal regular resolution. -/
theorem reducedNodalPoint_geometricallyDistinctTangents
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (hnode : ReducedNodalPoint W x y)
    {K : Type*} [Field K] [IsAlgClosed K] (φ : ZMod 2 →+* K) :
    ∃ slope other : K, slope ≠ other ∧ ∀ u v : K,
      v ^ 2 + φ W.a₁ * u * v - φ (3 * x + W.a₂) * u ^ 2 =
        (v - slope * u) * (v - other * u) := by
  have ha1 : W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    rcases hcases W.a₁ with hz | hone
    · exact (hnode.2.2.2 hz).elim
    · exact hone
  have htwo : (2 : K) = 0 := by
    have hm := congrArg φ (show (2 : ZMod 2) = 0 by decide)
    simpa only [map_ofNat, map_zero] using hm
  let c : K := φ (3 * x + W.a₂)
  let p : Polynomial K := Polynomial.X ^ 2 + Polynomial.X - Polynomial.C c
  have hcoeff : p.coeff 2 = 1 := by
    simp [p, Polynomial.coeff_X]
  have hpdeg : p.degree ≠ 0 := by
    intro hd
    have hlt : p.degree < (2 : WithBot ℕ) := by rw [hd]; decide
    have hz := Polynomial.coeff_eq_zero_of_degree_lt hlt
    exact one_ne_zero (hcoeff.symm.trans hz)
  obtain ⟨slope, hslope⟩ := IsAlgClosed.exists_root p hpdeg
  have hroot : slope ^ 2 + slope - c = 0 := by
    simpa [Polynomial.IsRoot, p] using hslope
  refine ⟨slope, slope + 1, ?_, ?_⟩
  · intro h
    have h' : slope + (0 : K) = slope + 1 := by simpa using h
    have hzero : (1 : K) = 0 := (add_left_cancel h').symm
    exact one_ne_zero hzero
  · intro u v
    rw [ha1, map_one]
    change v ^ 2 + (1 : K) * u * v - c * u ^ 2 =
      (v - slope * u) * (v - (slope + 1) * u)
    linear_combination -hroot * u ^ 2 +
      htwo * ((slope + 1) * u * v - c * u ^ 2)

/-- Nonzero `b₂` and zero discriminant give the singular point
`(a₃, a₃² + a₄)` in characteristic two. The mixed coefficient of
the actual tangent cone is nonzero, so this is a node, not a cusp. -/
theorem reduced_nodal_point_of_delta_zero_b2_ne_zero
    (W : WeierstrassCurve (ZMod 2))
    (hΔ : W.Δ = 0) (hb : W.b₂ ≠ 0) :
    ReducedNodalPoint W W.a₃ (W.a₃ ^ 2 + W.a₄) := by
  have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
    fin_cases z <;> simp
  have htwo : (2 : ZMod 2) = 0 := by decide
  have hfour : (4 : ZMod 2) = 0 := by decide
  have ha : W.a₁ = 1 := by
    rcases hcases W.a₁ with hzero | hone
    · have : W.b₂ = 0 := by simp [WeierstrassCurve.b₂, hzero, hfour]
      exact (hb this).elim
    · exact hone
  have hthree : (3 : ZMod 2) = 1 := by decide
  have hid : W.Δ = reducedEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) := by
    rcases hcases W.a₂ with h2 | h2 <;>
      rcases hcases W.a₃ with h3 | h3 <;>
      rcases hcases W.a₄ with h4 | h4 <;>
      rcases hcases W.a₆ with h6 | h6
    all_goals
      simp only [WeierstrassCurve.Δ, WeierstrassCurve.b₂,
        WeierstrassCurve.b₄, WeierstrassCurve.b₆,
        WeierstrassCurve.b₈, reducedEquation, ha, h2, h3, h4, h6]
      decide
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [← hid]
    exact hΔ
  · simp [reducedDx, ha, htwo, hthree]
  · simp only [reducedDy, ha, htwo, zero_mul, zero_add, one_mul]
    calc W.a₃ + W.a₃ = (2 : ZMod 2) * W.a₃ := by ring
      _ = 0 := by rw [htwo]; ring
  · rw [ha]
    exact one_ne_zero

/-- A nonzero reduced discriminant rules out every simultaneous zero
of the affine equation and both formal partials. The finite residue
field calculation makes this smoothness test independent of an
unavailable geometric Tate-algorithm API. -/
theorem reduced_no_singular_point_of_delta_ne_zero
    (W : WeierstrassCurve (ZMod 2))
    (hΔ : W.Δ ≠ 0) (x y : ZMod 2) :
    ¬(reducedEquation W x y = 0 ∧
      reducedDx W x y = 0 ∧ reducedDy W x y = 0) := by
  have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
    fin_cases z <;> simp
  rcases hcases W.a₁ with h1 | h1 <;>
    rcases hcases W.a₂ with h2 | h2 <;>
    rcases hcases W.a₃ with h3 | h3 <;>
    rcases hcases W.a₄ with h4 | h4 <;>
    rcases hcases W.a₆ with h6 | h6 <;>
    rcases hcases x with hx | hx <;>
    rcases hcases y with hy | hy
  all_goals
    simp only [WeierstrassCurve.Δ, WeierstrassCurve.b₂,
      WeierstrassCurve.b₄, WeierstrassCurve.b₆,
      WeierstrassCurve.b₈, reducedEquation, reducedDx, reducedDy,
      h1, h2, h3, h4, h6, hx, hy] at *
    first
    | exact (hΔ (by decide)).elim
    | decide

/-- A unit-discriminant successor has smooth affine reduction. This
does not yet assert Kodaira `I₀` or an actual Néron conductor exponent. -/
theorem LaterNonScalingTateValZeroHasSmoothReduction
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hval : Padic.valuation (M.Δ : ℚ_[2]) = 0)
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∀ x y : ZMod 2,
      ¬(reducedEquation (N.map PadicInt.toZMod) x y = 0 ∧
        reducedDx (N.map PadicInt.toZMod) x y = 0 ∧
        reducedDy (N.map PadicInt.toZMod) x y = 0) := by
  obtain ⟨hunit, _⟩ :=
    LaterNonScalingTateValZeroUnitDiscMinimal M hM hval ε r s t N hmodel
  have hred : (N.map PadicInt.toZMod).Δ ≠ 0 := by
    rw [WeierstrassCurve.map_Δ]
    exact (hunit.map PadicInt.toZMod).ne_zero
  exact reduced_no_singular_point_of_delta_ne_zero
    (N.map PadicInt.toZMod) hred

/-- A unit-discriminant integral Weierstrass equation gives an actual
elliptic curve over `ℤ_[2]`, rather than just a test on its residue
coefficients. This does not construct a Néron model or conductor. -/
theorem integralEllipticModelOfUnitDelta (N : WeierstrassCurve ℤ_[2])
    (hunit : IsUnit N.Δ) :
    ∃ E : EllipticCurve ℤ_[2], E.toWeierstrassCurve = N := by
  exact ⟨⟨N, hunit.unit, hunit.unit_spec⟩, rfl⟩

/-- Unit discriminant rules out singular affine points over *every*
extension of the residue field, not just the two rational residue
coordinates. This uses the Weierstrass discriminant criterion over
the extended field. -/
theorem unitDeltaGeometricallySmooth
    (N : WeierstrassCurve ℤ_[2]) (hunit : IsUnit N.Δ)
    {K : Type*} [Field K] (φ : ZMod 2 →+* K) (x y : K)
    (hpoint : ((N.map PadicInt.toZMod).map φ).toAffine.Equation x y) :
    ((N.map PadicInt.toZMod).map φ).toAffine.Nonsingular x y := by
  apply WeierstrassCurve.Affine.nonsingular_of_Δ_ne_zero _ hpoint
  rw [WeierstrassCurve.map_Δ, WeierstrassCurve.map_Δ]
  exact ((hunit.map PadicInt.toZMod).map φ).ne_zero

/-- The valuation-zero successor is an integral elliptic curve with
geometrically nonsingular reduction. Its Kodaira symbol and local
conductor still require the missing fibre/conductor theorems. -/
theorem LaterNonScalingTateValZeroHasIntegralEllipticModel
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hval : Padic.valuation (M.Δ : ℚ_[2]) = 0)
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∃ E : EllipticCurve ℤ_[2], E.toWeierstrassCurve = N ∧
      ∀ {K : Type*} [Field K] (φ : ZMod 2 →+* K) (x y : K),
        ((N.map PadicInt.toZMod).map φ).toAffine.Equation x y →
          ((N.map PadicInt.toZMod).map φ).toAffine.Nonsingular x y := by
  obtain ⟨hunit, _⟩ :=
    LaterNonScalingTateValZeroUnitDiscMinimal M hM hval ε r s t N hmodel
  obtain ⟨E, hE⟩ := integralEllipticModelOfUnitDelta N hunit
  exact ⟨E, hE, fun φ x y hpoint =>
    unitDeltaGeometricallySmooth N hunit φ x y hpoint⟩

/-- Positive discriminant valuation of a nonzero integral
discriminant forces its image in the residue field to vanish. -/
theorem positive_delta_reduces_zero (N : WeierstrassCurve ℤ_[2])
    (hne : N.Δ ≠ 0) (hpositive : 0 < Padic.valuation (N.Δ : ℚ_[2])) :
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) N.Δ = 0 := by
  have hN : (N.Δ : ℚ_[2]) ≠ 0 := (PadicInt.coe_ne_zero N.Δ).mpr hne
  have hnonunit : ¬IsUnit N.Δ := by
    intro h
    have hnorm : ‖(N.Δ : ℚ_[2])‖ = 1 := by
      simpa only [PadicInt.norm_def] using (PadicInt.isUnit_iff.mp h)
    have hpow : (2 : ℝ) ^ (-Padic.valuation (N.Δ : ℚ_[2])) =
        (2 : ℝ) ^ (0 : ℤ) := by
      calc
        _ = ‖(N.Δ : ℚ_[2])‖ := (Padic.norm_eq_pow_val hN).symm
        _ = 1 := hnorm
        _ = (2 : ℝ) ^ (0 : ℤ) := by norm_num
    have hv := (zpow_strictMono (show (1 : ℝ) < 2 by norm_num)).injective hpow
    omega
  have hmem : N.Δ ∈ LocalRing.maximalIdeal ℤ_[2] := by
    simpa only [LocalRing.mem_maximalIdeal, mem_nonunits_iff] using hnonunit
  have hker : N.Δ ∈ RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
    rw [PadicInt.ker_toZMod]
    exact hmem
  exact RingHom.mem_ker.mp hker

/-- Every positive-discriminant-valuation, unit-`c₄` successor in
the proved branch has a nodal reduced affine Weierstrass equation.
No type `Iₙ` or exponent `f₂=1` is inferred here. -/
theorem LaterNonScalingTatePosValHasNodalReduction
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hc4 : (M.c₄ : ℚ_[2]) ≠ 0)
    (hc4val : Padic.valuation (M.c₄ : ℚ_[2]) = 0)
    (hpositive : 0 < Padic.valuation (M.Δ : ℚ_[2]))
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∃ x y : ZMod 2, ReducedNodalPoint (N.map PadicInt.toZMod) x y := by
  obtain ⟨hN, hNpos, hb, _, _⟩ :=
    LaterNonScalingTatePosValMinimalB2C6Odd
      M hM hc4 hc4val hpositive ε r s t N hmodel
  have hred : (N.map PadicInt.toZMod).Δ = 0 := by
    rw [WeierstrassCurve.map_Δ]
    exact positive_delta_reduces_zero N hN hNpos
  have hb' : (N.map PadicInt.toZMod).b₂ ≠ 0 := by
    simpa only [WeierstrassCurve.map_b₂] using hb
  exact ⟨_, _, reduced_nodal_point_of_delta_zero_b2_ne_zero
    (N.map PadicInt.toZMod) hred hb'⟩

/-- The positive-valuation branch's explicit node is also singular in
the affine Weierstrass API. This does not identify components in the
minimal regular fibre or compute the Néron conductor. -/
theorem LaterNonScalingTatePosValHasSingularAffineFibre
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hc4 : (M.c₄ : ℚ_[2]) ≠ 0)
    (hc4val : Padic.valuation (M.c₄ : ℚ_[2]) = 0)
    (hpositive : 0 < Padic.valuation (M.Δ : ℚ_[2]))
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∃ x y : ZMod 2,
      (N.map PadicInt.toZMod).toAffine.Equation x y ∧
        ¬ (N.map PadicInt.toZMod).toAffine.Nonsingular x y := by
  obtain ⟨x, y, hnode⟩ :=
    LaterNonScalingTatePosValHasNodalReduction
      M hM hc4 hc4val hpositive ε r s t N hmodel
  exact ⟨x, y, reducedNodalPoint_mathlibSingular _ x y hnode⟩

/-- For a positive *even* discriminant valuation, a unit-`c₄`
successor has the extra divisibility needed at the canonical node.
The evenness premise holds for the Frey discriminants proved in the
earlier local calculations; it must not be dropped for an arbitrary
unit-`c₄` curve of valuation one. This is still not a strict transform
or a Kodaira classification. -/
theorem LaterNonScalingTatePosValEvenDiscHasFourDivisibleNodeConstant
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hc4 : (M.c₄ : ℚ_[2]) ≠ 0)
    (hc4val : Padic.valuation (M.c₄ : ℚ_[2]) = 0)
    (hpositive : 0 < Padic.valuation (M.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (M.Δ : ℚ_[2]) = 2 * k)
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    (4 : ℤ_[2]) ∣
      localWeierstrassEquation N N.a₃ (N.a₃ ^ 2 + N.a₄) := by
  obtain ⟨hN, hsame⟩ :=
    LaterNonScalingTatePreservesNonzeroValuation M hM ε r s t N hmodel
  obtain ⟨k, hk⟩ := heven
  have hval : 2 ≤ Padic.valuation (N.Δ : ℚ_[2]) := by
    rw [hsame, hk]
    omega
  obtain ⟨x, y, hnode⟩ :=
    LaterNonScalingTatePosValHasNodalReduction
      M hM hc4 hc4val hpositive ε r s t N hmodel
  have ha :
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) N.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  exact four_dvd_nodeConstant_of_four_dvd_delta N ha
    (four_dvd_delta_of_val_ge_two N hN hval)

/-- The positive even-valuation branch gives a genuine second-order
vanishing statement in the ambient polynomial ring at its canonical
node. It does not yet construct the local quotient ring, its blow-up,
or the minimal regular model. -/
theorem LaterNonScalingTatePosValEvenDiscSurfaceEquationInCentreSq
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hc4 : (M.c₄ : ℚ_[2]) ≠ 0)
    (hc4val : Padic.valuation (M.c₄ : ℚ_[2]) = 0)
    (hpositive : 0 < Padic.valuation (M.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (M.Δ : ℚ_[2]) = 2 * k)
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    localSurfaceEquation N N.a₃ (N.a₃ ^ 2 + N.a₄) ∈
      localSurfaceCentre ^ 2 := by
  have hfour := LaterNonScalingTatePosValEvenDiscHasFourDivisibleNodeConstant
    M hM hc4 hc4val hpositive heven ε r s t N hmodel
  obtain ⟨hN, hNpos, hb, _, _⟩ :=
    LaterNonScalingTatePosValMinimalB2C6Odd
      M hM hc4 hc4val hpositive ε r s t N hmodel
  have hred : (N.map PadicInt.toZMod).Δ = 0 := by
    rw [WeierstrassCurve.map_Δ]
    exact positive_delta_reduces_zero N hN hNpos
  have hb' : (N.map PadicInt.toZMod).b₂ ≠ 0 := by
    simpa only [WeierstrassCurve.map_b₂] using hb
  have hnode := reduced_nodal_point_of_delta_zero_b2_ne_zero
    (N.map PadicInt.toZMod) hred hb'
  have hnode' :
      ReducedNodalPoint (N.map PadicInt.toZMod)
        (PadicInt.toZMod N.a₃)
        (PadicInt.toZMod (N.a₃ ^ 2 + N.a₄)) := by
    simpa only [WeierstrassCurve.map_a₃, WeierstrassCurve.map_a₄,
      map_pow, map_add] using hnode
  obtain ⟨A, hF⟩ := hfour
  obtain ⟨_, B, C, _, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      N N.a₃ (N.a₃ ^ 2 + N.a₄) hnode'
  exact localSurfaceEquation_mem_centre_sq
    N N.a₃ (N.a₃ ^ 2 + N.a₄) A B C hF hX hY

/-- Any integral scale-two target of the nonzero Frey model has
even discriminant valuation. This supplies the extra parity premise
used above without claiming that every Frey input admits such an
integral scale-two change. -/
theorem freyScaleTwoTargetHasEvenDiscriminantValuation
    (U V : ℕ) (hU : 0 < U) (hV : 0 < V)
    (hF : (freyZ2 U V 0 1 1 0).Δ ≠ 0)
    (M : WeierstrassCurve ℤ_[2]) (C : WeierstrassCurve.VariableChange ℚ_[2])
    (hmodel : ((freyZ2 U V 0 1 1 0).map
      (algebraMap ℤ_[2] ℚ_[2])).variableChange C =
        M.map (algebraMap ℤ_[2] ℚ_[2]))
    (hscale : Padic.valuation (C.u : ℚ_[2]) = 1) :
    ∃ k : ℤ, Padic.valuation (M.Δ : ℚ_[2]) = 2 * k := by
  have hF' : ((freyZ2 U V 0 1 1 0).Δ : ℚ_[2]) ≠ 0 :=
    (PadicInt.coe_ne_zero _).mpr hF
  have hv := second_scale_two_delta_if_integral
    (freyZ2 U V 0 1 1 0) M C hF' hmodel hscale
  rw [freyZ2_delta_v2 U V 0 1 1 0 (by simpa using hU)
    (by simpa using hV)] at hv
  refine ⟨(padicValNat 2 (U * V * (U + V)) : ℤ) - 4, ?_⟩
  simp only [pow_one] at hv
  omega

/- TODO post-v31 — TateReductionValZeroIsI0F2Zero:
Construct a genuine Q₂ Kodaira classifier and Néron conductor exponent
for minimal integral models, then prove that the nonzero unit discriminant
and smooth reduction above give type I₀ and f₂ = 0. The valuation-zero
hypothesis alone must not include Δ = 0 (`Padic.valuation 0 = 0` here).

Mathlib at manifest revision 809c3fb has no Tate/Kodaira/Néron bridge.
The foundations tables through v31 have labels, not a theorem taking
these actual curves to fibres or conductor exponents. The conditional
criteria in Conductor.lean do not construct that classifier. -/

/- TODO post-v31 — TateReductionPosValUnitC4IsInF2One:
Prove the minimal-model node-to-fibre theorem for the explicit singular
point and separable tangent cone above: the Kodaira symbol must be Iₙ
with n = v₂(Δ) > 0, and a genuine Néron conductor theorem must give
f₂ = 1. The (U, V) = (32, 1) example is an I₂/f₂=1 obstruction to a
universal I₀ claim, not a replacement for the missing Lean bridge.
Do not assert either requested theorem from the existing residue tests
or from a definition that merely assigns the intended labels. -/

#print axioms padicInt_two_ringKrullDim
#print axioms localSurfaceAmbient_ringKrullDim_ge_three
#print axioms reducedNodalPoint_mathlibSingular
#print axioms reducedNodalPoint_uniqueGeometricCandidate
#print axioms reducedNodalPoint_geometricallyDistinctTangents
#print axioms localWeierstrassEquation_twoChart
#print axioms localWeierstrassEquation_uChart
#print axioms localWeierstrassEquation_vChart
#print axioms localSurfaceEquation_mem_centre_sq
#print axioms localSurfaceEquation_not_mem_centre_sq
#print axioms localSurfaceUniformizer_not_mem_centre_sq
#print axioms localSurfaceCentre_eq_ker_residue
#print axioms localSurfaceCentre_isMaximal
#print axioms localSurfaceEquation_sub_constant_mem_variables
#print axioms localSurfaceClosedPoint_isMaximal
#print axioms reducedPoint_hasClosedSurfacePoint
#print axioms localSurfaceUniformizer_not_mem_closedPoint_sq
#print axioms localSurfaceClosedPoint_cotangent_nontrivial
#print axioms localSurfaceClosedPoint_eq_span_coordinates_of_unit_constant
#print axioms reducedNodalPoint_liftEvenCoefficients
#print axioms localWeierstrassEquation_twoChart_factor
#print axioms nodeConstant_modFour_eq_delta
#print axioms four_dvd_nodeConstant_of_four_dvd_delta
#print axioms four_dvd_delta_of_val_ge_two
#print axioms canonicalNodalPoint_twoChartHasFourFactor
#print axioms canonicalNodalPoint_surfaceEquation_mem_centre_sq
#print axioms canonicalNodalPoint_cotangent_nontrivial
#print axioms valOne_surfaceEquation_not_mem_centre_sq
#print axioms valOne_closedPoint_eq_span_coordinates
#print axioms valOne_localMaximalIdeal_eq_span_coordinates
#print axioms LaterNonScalingTatePosValEvenDiscHasFourDivisibleNodeConstant
#print axioms LaterNonScalingTatePosValEvenDiscSurfaceEquationInCentreSq
#print axioms freyScaleTwoTargetHasEvenDiscriminantValuation
#print axioms integralEllipticModelOfUnitDelta
#print axioms unitDeltaGeometricallySmooth
#print axioms LaterNonScalingTateValZeroHasIntegralEllipticModel
#print axioms LaterNonScalingTatePosValHasSingularAffineFibre

end Beal.General