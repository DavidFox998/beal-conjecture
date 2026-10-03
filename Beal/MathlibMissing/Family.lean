import Beal.«Beal.General».TateEvenReesChart
import Beal.«Beal.General».GradedProjectiveSpecialFibre
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme
import Mathlib.Data.ZMod.Basic
import Mathlib.NumberTheory.Padics.RingHoms
import Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization
import Mathlib.Algebra.MvPolynomial.Equiv
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Algebra.Polynomial.RingDivision
import Mathlib.RingTheory.Ideal.QuotientOperations
import Mathlib.RingTheory.MvPolynomial.Ideal
import Mathlib.RingTheory.Polynomial.Basic
import Mathlib.RingTheory.PrimeSpectrum

/-!
# Isolated gap: the family `Bl_{I_{a,b}}`

`BealEven` does not import this file. `lake build BealEven` does not
elaborate it.

`S = ℤ_[2][a,b]`. `surfaceRing` is the Weierstrass coordinate ring
`R_{a,b}` over `S`. `centreIdeal` is `(2, X - a^p, Y - b^q)` in that
ring. `familyBlowup` is `Proj` of the Rees algebra of that ideal.

`coprimeBealSolution_to_family_point` and `family_point` are uninhabited.
No homogeneous prime of either Rees algebra is constructed.

`no_centre_evaluation_to_padic` is proved: there is no ring hom
`R_{a,b} → ℤ_[2]` vanishing on `I_{a,b}`. The ideal contains `2`, and
`2 ≠ 0` in `ℤ_[2]`. The same obstruction holds for the numeral centre
`(2, X - a^p, Y - b^q)` with `a^p, b^q : ℕ`.

A blow-up point does not vanish on the centre. It is a direction on the
exceptional divisor. `PadicInt.toZMod` kills `2`, so the centre can be
evaluated in `ZMod 2`. `centreResidueHom` is that closed point of the
base when the reduced Weierstrass equation vanishes. It is the image of
the blow-up point in `V(2)`, not the point of `Proj`.
`familySpecialFibre` is `Proj` of `Rees(I)/(2)`.
`chart_Dplus_2t_ring` is the degree-zero localization of that quotient
at powers of the class of `2t`. `chartU` and `chartV` are the ratios
`(X - ap) t / 2t` and `(Y - bq) t / 2t`, and `ideal_UV` is the ideal
they generate. The direction `[1:0:0]` would be a prime of this chart
with residue field `𝔽₂`. That fails when the constant term of the
equation has 2-adic valuation exactly one: for
`valuationOneCurve` (`Y² = X³ + 2`) at `(0, 0)`, the residue vanishes
and `(2t)² = 0` in `Rees/(2)`, so the chart ring has one element.
The class of `2t` itself is not zero (`valuationOne_specialTwo_ne_zero`):
the quotient is by the degree-zero scalar ideal `(2)`, and `2t` is not
a multiple of that scalar.
`familySpecialFibrePoint_Dplus_2t` is that false universal claim.
`basicOpen_pow` and `basicOpen_zero` turn `(2t)² = 0` into
`D₊(2t) = ⊥` as an open of `Proj(Rees(I)/(2))` on this curve.
On the same curve no power of `X t` vanishes in `Rees/(2)`, because
`X` remains `1` under the residue map at `(1, 1)`.
`chart_Dplus_Xt_ring` is the degree-zero localization at that class.
It contains the ratios `2t / Xt` and `Yt / Xt`, and also the
degree-zero classes `chart_X` and `chart_Y` of `X - ap` and
`Y - bq`. On every numeral centre, `chart_Y = chart_X * (Yt / Xt)`
and `chart_X * (2t / Xt) = 0` in `Rees/(2)`, so `Y` lies in
`⟨X, 2t/Xt, Yt/Xt⟩`. The quotient of the chart by that span
kills `Y` (`quotient_span_XUV_kills_Y`). The relation
`X · (2t/Xt) = 0` becomes `0 = 0` there and does not add a
nilpotent. On `Y² = X³ + 2` at `(0, 0)`, `chart_Y ^ 2 = chart_X ^ 3`
in the chart, because `Y² - X³ = -2` on the surface and the
scalar `2` is zero in `Rees/(2)`. The polynomial model without coefficients is
`𝔽₂[X,Y,U,V] / (X·U, Y - X·V, Y² - X³)`. Its further quotient
by `⟨X, U, V⟩` is `𝔽₂` (`modelXtChartModXUV_equiv_F2`):
`Y = X·V` puts `Y` in the ideal, so `Y² - X³` becomes `0 = 0`.
The quotient that drops `Y - X·V`, namely
`𝔽₂[X,Y,U,V] / (Y² - X³, X, U, V)`, still has a nonzero nilpotent
class of `Y` (`modelForgetY_class_Y_ne_zero`). On this node
`chart_two_over_X_sq_zero` says `(2t / Xt)² = 0` in the chart,
because `(2t)² = 0` in `Rees/(2)`.
`chart_two_over_X_ne_zero` says the ratio itself is not zero.
A relation `(Xt)^n · (2t) = 0` in `Rees/(2)` would put `X^n` in
`I^{n+1}`. `valuationOne_X_pow_not_mem_centre_succ` says that
fails: reducing modulo `2` lands on the cusp `Y² = X³` over
`𝔽₂[a,b]`, and `X ↦ t²`, `Y ↦ t³` sends `X^k` to `t^{2k}` while
`(X, Y)^{k+1}` lands in `(t^{2k+2})`. The coefficient model is
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)`.
`chartOfModelBase` is a ring hom from that quotient into the chart.
It is not shown to be bijective, and its kernel is not shown to be
exactly those four relations. Quotienting that model by
`⟨X, U, V⟩` leaves `𝔽₂[a,b]`
(`modelBaseModXUV_equiv_F2Polynomial`), because `Y = X·V`.
The further quotient by `⟨a, b⟩` is `𝔽₂`
(`modelF2PolynomialModAB_equiv_F2`). Together,
`modelBaseAtNode_equiv_F2` is the model modulo `⟨a, b, X, U, V⟩`,
and that ring is `𝔽₂`. These are quotients of the polynomial model.
The parameters `a, b` are not generators of
`⟨X, 2t/Xt, Yt/Xt⟩` in the chart. `ideal_ABXYUV` is the larger
ideal `⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩`, and `Y` is redundant in it.
`reesNodeHom` sums the cusp leading coefficients of a Rees
polynomial, with `a, b ↦ 0`. It sends `Xt` to `1`, `2t` and `Yt`
to `0`, and kills the scalar ideal `(2)`. `chartNodeHom` is the
induced map `chart_Dplus_Xt_ring →+* 𝔽₂`. It kills `a`, `b`,
`X`, `Y`, `2t/Xt`, and `Yt/Xt`, so `ideal_ABXYUV` sits in the
kernel. The map is surjective, the quotient by the kernel is
`𝔽₂`, and the kernel is maximal. `chartNodePrime` is that prime.
`familySpecialFibrePoint_XYUV` holds: the prime contains
`⟨X, Y, 2t/Xt, Yt/Xt⟩` and the residue ring is `𝔽₂`.
`familySpecialFibreProjPoint` is the image of that prime under
`FromSpec.toFun`, a point of `D₊(Xt)` inside `Proj(Rees(I)/(2))`.
`8f783ade` closes the chart generation and the kernel equality.
`centreReesRatioPolynomialMap_surjective` generates the integral
chart by the ratios of `2`, `X`, and `Y` against `Xt`.
`homogeneousQuotientAwayMap_surjective` carries that onto
`(Rees(I)/(2))_{(Xt)}₀` because `(Xt)ⁿ ≠ 0`. At `(0, 0)` those
ratios are `1`, `U = 2t/Xt`, and `V = Yt/Xt`, and the scalars
pass through `𝔽₂[a,b]` together with `X` and `Y`, so every element
of `D₊(Xt)` is a polynomial in `a, b, X, Y, U, V`.
`chartOfModelBase_surjective` is the resulting surjection from
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)`.
`ker_eq_ideal_ABXYUV_holds` identifies the kernel of `chartNodeHom`
with `⟨a, b, X, Y, U, V⟩`, and `Y = X·V` makes `Y` redundant.
`ideal_ABXYUV_quotient_F2_holds` transports
`chart_node_quotient_equiv` along `Ideal.quotEquivOfEq`, so the
quotient by that ideal is `𝔽₂`. `chartNodePrime` and
`familySpecialFibreProjPoint` are `FromSpec.toFun` of that prime,
a point of `D₊(Xt)` in `Proj(Rees(I)/(2))`.
`not_chartOfModelBase_injective` shows `chartOfModelBase` is not
injective. `chartKernelWitness` is `U + X² + X·V²`. It lies outside
`(X·U, Y − X·V, Y² − X³, U²)` (`chartKernelWitness_not_mem`), and
`chartModelEval` sends it to zero (`chartModelEval_kernelWitness`):
the degree-2 Rees numerator is `C(2) · (X⁴ t²)` and `X⁴ ∈ I²`, so
the numerator lies in the scalar ideal `(2)`. `Xⁿ ∉ Iⁿ⁺¹` does not
remove this class. The four-relation ideal is properly contained in
`ker chartModelEval`.
`chartTrueIdeal` is `(X·U, Y − X·V, Y² − X³, U + X² + X·V²)`.
`chartTrueIdeal_contains_U2` puts `U²` in that ideal, using
`X·U = 0`. `chartOfModelTrue_surjective` is the induced surjection
onto `D₊(Xt)`. `chartTrueIdeal_quotient_equiv_normal` identifies the
polynomial quotient with `𝔽₂[a,b][X,V] / (X²·(X + V²))`.
`valuationOne_X_fourth_sub_X_not_mem_centre_sq` shows `X⁴ − X ∉ I²`,
so the single class `X² + X·V²` does not die for degree reasons.
`centreIdeal_power_coeff_bound` in `CentrePower.lean` is the
coefficient bound: if `α + Y·β ∈ I^k` on `Y² = X³ − 2` at `(0, 0)`,
the coefficient of `X^i` in `α` has 2-adic norm at most
`2^{−⌈(k−i)/2⌉}` and the coefficient of `X^i` in `β` has norm at most
`2^{−⌊(k−i)/2⌋}`. A nonzero coefficient then has `v₂` at least that
integer. `centre_X_pow_mul_X_cube_sub_one_not_mem` gives
`X^m · (X³ − 1) ∉ I^{m+1}`, hence also `∉ I^{m+2}`.
`chart_X_add_V_sq_ne_zero` applies that obstruction on the chart: the
class `X + V²` has degree-2 numerator `2·(X³ − 1) t²`, and it is nonzero
in `D₊(Xt)`. Every class has a unique representative
`A(V) + X·B(V) + X²·C(V)`, and `chartOfModelTrue_injective` is the
statement that this representative dies in `D₊(Xt)` only when it is zero.
`bitReduced_signed_bound` is the coefficient step for a `0`-`1` pattern:
some index carries `(-1)^s · 2^q` against centre bound `q`.
`twice_centre_blocks_signed` says that series cannot satisfy
`X^m·α = 2·αₛ` and `X^m·β = 2·βₛ` with `αₛ + Y·βₛ ∈ I^{D+m}`.
The kernel condition stays open because chart vanishing is not yet
that Rees equation.
`chart_Dplus_Xt_true_presentation` stays open.
`chart_Dplus_Xt_presentation` stays open and names a different
ring: the parameter-free quotient
`𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)` drops `a`, `b`, and `U²`.
That ring is not the chart.
`ap` and `bq` are numeral centre coordinates.
`chart_Dplus_Xt_basicOpen_nonempty_valuationOne`,
`chart_Dplus_Xt_presentation`, `ideal_UV_maximal`,
`ideal_XYUV_quotient_F2`, `chartOfModelBase_injective`, and
`familySpecialFibrePoint_Dplus_Xt` stay uninhabited.
`familySpecialFibrePoint` stays uninhabited. No `sorry` is used.
-/

namespace Beal.MathlibMissing

open Beal.General

/-- `S = ℤ_[2][a, b]`. -/
abbrev S : Type := MvPolynomial (Fin 2) ℤ_[2]

/-- The indeterminate `a`. -/
noncomputable def paramA : S := MvPolynomial.X 0

/-- The indeterminate `b`. -/
noncomputable def paramB : S := MvPolynomial.X 1

/-- The Weierstrass polynomial in `S[X, Y]`. -/
noncomputable def surfacePolynomial (W : WeierstrassCurve ℤ_[2]) :
    MvPolynomial (Fin 2) S :=
  let φ : ℤ_[2] →+* MvPolynomial (Fin 2) S :=
    MvPolynomial.C.comp (MvPolynomial.C : ℤ_[2] →+* S)
  localWeierstrassEquation (W.map φ) (MvPolynomial.X 0) (MvPolynomial.X 1)

/-- `R_{a,b} = S[X, Y] / (Weierstrass)`. -/
abbrev surfaceRing (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) S ⧸ Ideal.span {surfacePolynomial W}

/-- `I_{a,b} = (2, X - a^p, Y - b^q)` in `R_{a,b}`. -/
noncomputable def centreIdeal (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    Ideal (surfaceRing W) :=
  Ideal.map (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
    (Ideal.span {
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
      MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (paramA ^ p),
      MvPolynomial.X (1 : Fin 2) - MvPolynomial.C (paramB ^ q) })

/-- `Bl_{I_{a,b}} = Proj(Rees(I_{a,b}))`. -/
noncomputable def familyBlowup (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    AlgebraicGeometry.Scheme :=
  let I := centreIdeal W p q
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  AlgebraicGeometry.«Proj» (centreReesComponent I)

/-- Points of `Bl_{I_{a,b}}`. -/
noncomputable def familyBlowupPoint (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    Type _ :=
  let I := centreIdeal W p q
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  ProjectiveSpectrum (centreReesComponent I)

/-- The scalar `2` in `R_{a,b}` is the class of the constant polynomial `2`. -/
theorem two_eq_quotient_mk (W : WeierstrassCurve ℤ_[2]) :
    (2 : surfaceRing W) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) := by
  simp [surfaceRing, map_ofNat]

/-- `(2 : R_{a,b})` lies in `I_{a,b}`. -/
theorem two_mem_centreIdeal (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    (2 : surfaceRing W) ∈ centreIdeal W p q := by
  have hgen : MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) ∈
      Ideal.span ({
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
        MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (paramA ^ p),
        MvPolynomial.X (1 : Fin 2) - MvPolynomial.C (paramB ^ q) } :
        Set (MvPolynomial (Fin 2) S)) :=
    Ideal.subset_span (by simp)
  rw [two_eq_quotient_mk]
  exact Ideal.mem_map_of_mem
    (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})) hgen

/-- No ring hom `R_{a,b} → ℤ_[2]` kills `I_{a,b}`. Any ring hom sends
`2` to `2`, and `2 ≠ 0` in `ℤ_[2]`, but `2 ∈ I_{a,b}`. -/
theorem no_centre_evaluation_to_padic
    (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    ¬ ∃ φ : surfaceRing W →+* ℤ_[2], ∀ a ∈ centreIdeal W p q, φ a = 0 := by
  rintro ⟨φ, hφ⟩
  have hzero : φ (2 : surfaceRing W) = 0 := hφ _ (two_mem_centreIdeal W p q)
  rw [map_ofNat] at hzero
  exact Nat.cast_ne_zero.mpr (by decide : (2 : ℕ) ≠ 0) hzero

/-- The numeral centre `(2, X - ap, Y - bq)` in `R_{a,b}`. -/
noncomputable def numeralCentreIdeal (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (surfaceRing W) :=
  Ideal.map (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
    (Ideal.span {
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
      MvPolynomial.X (0 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])),
      MvPolynomial.X (1 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])) })

theorem two_mem_numeralCentreIdeal (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    (2 : surfaceRing W) ∈ numeralCentreIdeal W ap bq := by
  have hgen : MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) ∈
      Ideal.span ({
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
        MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])),
        MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])) } :
        Set (MvPolynomial (Fin 2) S)) :=
    Ideal.subset_span (by simp)
  have hmap :
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
          (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) ∈
        numeralCentreIdeal W ap bq :=
    Ideal.mem_map_of_mem _ hgen
  rw [two_eq_quotient_mk]
  exact hmap

/-- The numeral centre cannot be evaluated in `ℤ_[2]` either. -/
theorem no_numeral_centre_evaluation_to_padic
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    ¬ ∃ φ : surfaceRing W →+* ℤ_[2],
        ∀ a ∈ numeralCentreIdeal W ap bq, φ a = 0 := by
  rintro ⟨φ, hφ⟩
  have hzero : φ (2 : surfaceRing W) = 0 :=
    hφ _ (two_mem_numeralCentreIdeal W ap bq)
  rw [map_ofNat] at hzero
  exact Nat.cast_ne_zero.mpr (by decide : (2 : ℕ) ≠ 0) hzero

/-- Points of `Proj(Rees(2, X - ap, Y - bq))`. -/
noncomputable def numeralFamilyPoint (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Type _ :=
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  ProjectiveSpectrum (centreReesComponent I)

/-- OPEN. Existence of some point of the integral `Proj(Rees(I))`.
A point of this `Proj` is a homogeneous prime that does not contain
the irrelevant ideal. It is not a prime containing the centre, and it
is not the kernel of a map to `ℤ_[2]`. The special-fibre direction is
`familySpecialFibrePoint`. No homogeneous prime is constructed. An
inhabitant would not be `even_solution_implies_two_divides`. -/
def family_point : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    Nonempty (numeralFamilyPoint W ap bq)

/-- `ℤ_[2] → 𝔽₂` kills `2`. -/
theorem residue_kills_two : PadicInt.toZMod (2 : ℤ_[2]) = 0 := by
  rw [← RingHom.mem_ker, PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p]
  exact Ideal.mem_span_singleton_self (2 : ℤ_[2])

/-- Coefficients `ℤ_[2][a, b] → 𝔽₂`, sending the indeterminates to `0`. -/
noncomputable def coeffToResidue : S →+* ZMod 2 :=
  MvPolynomial.eval₂Hom PadicInt.toZMod (fun _ : Fin 2 => (0 : ZMod 2))

theorem coeffToResidue_two : coeffToResidue (MvPolynomial.C (2 : ℤ_[2])) = 0 := by
  rw [coeffToResidue, MvPolynomial.eval₂Hom_C, residue_kills_two]

/-- Evaluate `X ↦ ap mod 2`, `Y ↦ bq mod 2`, and coefficients through `𝔽₂`. -/
noncomputable def numeralEval (ap bq : ℕ) : MvPolynomial (Fin 2) S →+* ZMod 2 :=
  MvPolynomial.eval₂Hom coeffToResidue
    (fun i : Fin 2 => if i = 0 then (ap : ZMod 2) else (bq : ZMod 2))

theorem numeralEval_two (ap bq : ℕ) :
    numeralEval ap bq (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) = 0 := by
  rw [numeralEval, MvPolynomial.eval₂Hom_C, coeffToResidue_two]

theorem numeralEval_X (ap bq : ℕ) :
    numeralEval ap bq
        (MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))) = 0 := by
  rw [numeralEval, map_sub, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C, if_pos rfl]
  rw [coeffToResidue, MvPolynomial.eval₂Hom_C, map_natCast]
  exact sub_self _

theorem numeralEval_Y (ap bq : ℕ) :
    numeralEval ap bq
        (MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))) = 0 := by
  rw [numeralEval, map_sub, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C,
    if_neg (by decide : (1 : Fin 2) ≠ 0)]
  rw [coeffToResidue, MvPolynomial.eval₂Hom_C, map_natCast]
  exact sub_self _

/-- The reduced Weierstrass equation vanishes at `(ap mod 2, bq mod 2)`. -/
def surfaceResidueVanishes (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) : Prop :=
  numeralEval ap bq (surfacePolynomial W) = 0

/-- The closed point of the base over `𝔽₂`, once the reduced equation vanishes.
This map kills the numeral centre. It is the image of a blow-up point in
`V(2)`, not a point of `Proj`. -/
noncomputable def centreResidueHom (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (hW : surfaceResidueVanishes W ap bq) :
    surfaceRing W ⧸ numeralCentreIdeal W ap bq →+* ZMod 2 :=
  let φ : surfaceRing W →+* ZMod 2 :=
    Ideal.Quotient.lift (Ideal.span {surfacePolynomial W}) (numeralEval ap bq)
      (by
        intro a ha
        obtain ⟨d, rfl⟩ := Ideal.mem_span_singleton.mp ha
        rw [map_mul, hW, zero_mul])
  Ideal.Quotient.lift (numeralCentreIdeal W ap bq) φ (by
    intro a ha
    obtain ⟨b, hb, rfl⟩ :=
      (Ideal.mem_map_iff_of_surjective
        (f := Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
        Ideal.Quotient.mk_surjective).mp ha
    have hb0 : numeralEval ap bq b = 0 := by
      have hker : Ideal.span ({
          MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
          MvPolynomial.X (0 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])),
          MvPolynomial.X (1 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])) } :
          Set (MvPolynomial (Fin 2) S)) ≤
          RingHom.ker (numeralEval ap bq) := by
        rw [Ideal.span_le]
        intro z hz
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
        rcases hz with rfl | rfl | rfl
        · simpa [RingHom.mem_ker] using numeralEval_two ap bq
        · simpa [RingHom.mem_ker] using numeralEval_X ap bq
        · simpa [RingHom.mem_ker] using numeralEval_Y ap bq
      simpa [RingHom.mem_ker] using hker hb
    simp [φ, Ideal.Quotient.lift_mk, hb0])

/-- The scalar ideal `(2)` in the numeral Rees algebra. This is degree `0`.
It is not the ideal generated by the degree-one element `2t`. -/
noncomputable def numeralReesSpecialIdeal (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (reesAlgebra (numeralCentreIdeal W ap bq)) :=
  Ideal.span {algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq))
    (2 : surfaceRing W)}

theorem numeralReesSpecialIdeal_isHomogeneous
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    let I := numeralCentreIdeal W ap bq
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    (numeralReesSpecialIdeal W ap bq).IsHomogeneous (centreReesComponent I) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  apply Ideal.homogeneous_span
  intro z hz
  rcases Set.mem_singleton_iff.mp hz with rfl
  exact ⟨0, SetLike.algebraMap_mem_graded _ _⟩

/-- The degree-one monomial `2t` in the numeral Rees algebra. -/
noncomputable def numeralReesTwo (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 1
    ⟨(2 : surfaceRing W), by
      rw [pow_one]
      exact two_mem_numeralCentreIdeal W ap bq⟩

theorem numeral_X_mem_centre (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))) ∈
      numeralCentreIdeal W ap bq := by
  apply Ideal.mem_map_of_mem
  apply Ideal.subset_span
  simp

theorem numeral_Y_mem_centre (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))) ∈
      numeralCentreIdeal W ap bq := by
  apply Ideal.mem_map_of_mem
  apply Ideal.subset_span
  simp

/-- The degree-one monomial `(X - ap) t`. -/
noncomputable def numeralReesXT (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 1
    ⟨Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (0 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))),
      by
        rw [pow_one]
        exact numeral_X_mem_centre W ap bq⟩

/-- The degree-one monomial `(Y - bq) t`. -/
noncomputable def numeralReesYT (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 1
    ⟨Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
        (MvPolynomial.X (1 : Fin 2) -
          MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))),
      by
        rw [pow_one]
        exact numeral_Y_mem_centre W ap bq⟩

/-- The class of `X - ap` in the surface ring. -/
noncomputable def surfaceNumeralX (W : WeierstrassCurve ℤ_[2]) (ap : ℕ) :
    surfaceRing W :=
  Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
    (MvPolynomial.X (0 : Fin 2) -
      MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2])))

/-- The class of `Y - bq` in the surface ring. -/
noncomputable def surfaceNumeralY (W : WeierstrassCurve ℤ_[2]) (bq : ℕ) :
    surfaceRing W :=
  Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
    (MvPolynomial.X (1 : Fin 2) -
      MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2])))

private lemma mem_centre_pow_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    r ∈ numeralCentreIdeal W ap bq ^ 0 := by
  simp only [pow_zero, Ideal.one_eq_top, Submodule.mem_top]

/-- The degree-zero Rees monomial `C r`. Every surface element lies in
`I^0 = ⊤`. -/
noncomputable def numeralReesConst (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) : reesAlgebra (numeralCentreIdeal W ap bq) :=
  centreReesMonomial (numeralCentreIdeal W ap bq) 0
    ⟨r, mem_centre_pow_zero W ap bq r⟩

/-- `Proj(Rees(I)/(2))`, the special fibre of the numeral blow-up. -/
noncomputable def familySpecialFibre (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    AlgebraicGeometry.Scheme := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  exact @AlgebraicGeometry.«Proj» (surfaceRing W) (reesAlgebra I ⧸ J) _ _ _ ℬ
    (homogeneousQuotientGrading (centreReesComponent I) J hJ)

/-- Points of `Proj(Rees(I)/(2))`. -/
noncomputable def familySpecialFibreSpectrum (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Type _ := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  exact @ProjectiveSpectrum (surfaceRing W) (reesAlgebra I ⧸ J) _ _ _ ℬ
    (homogeneousQuotientGrading (centreReesComponent I) J hJ)

/-- OPEN. Once `(ap, bq)` lies on the reduced curve, the special-fibre
`Proj` should have a point. The point sought is a direction in the
exceptional divisor: a homogeneous prime of `Rees(I)/(2)` that does not
contain the irrelevant ideal, contains the classes of
`numeralReesXT = (X - ap) t` and `numeralReesYT = (Y - bq) t`, and does
not contain the class of `numeralReesTwo = 2t`, so it lies in `D₊(2t)`.
The chart coordinates are the ratios `(X - ap)/2` and `(Y - bq)/2`,
evaluated in `ZMod 2` by `centreResidueHom`. That prime is not
constructed. `centreResidueHom` is only the closed point of the base.
An inhabitant would not be `even_solution_implies_two_divides`. -/
def familySpecialFibrePoint : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    Nonempty (familySpecialFibreSpectrum W ap bq)

/-- The degree-zero chart ring `(Rees(I)/(2))_(2t)`. -/
noncomputable def chart_Dplus_2t_ring
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) : Type :=
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  let _ : Algebra (surfaceRing W) (reesAlgebra I) := inferInstance
  let _ : Algebra (surfaceRing W) (reesAlgebra I ⧸ J) := inferInstance
  HomogeneousLocalization.Away
    (homogeneousQuotientComponent (centreReesComponent I) J)
    (Ideal.Quotient.mk J (numeralReesTwo W ap bq))

set_option synthInstance.maxHeartbeats 400000

private lemma specialClass_mem_degree_one
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) (hr : r ∈ numeralCentreIdeal W ap bq) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq))
        (centreReesMonomial (numeralCentreIdeal W ap bq) 1
          ⟨r, by rw [pow_one]; exact hr⟩) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 1 := by
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  have hy := centreReesComponent_monomial I 1 r (by rw [pow_one]; exact hr)
  change _ ∈ Submodule.map
    (Ideal.Quotient.mkₐ (surfaceRing W) J).toLinearMap (centreReesComponent I 1)
  exact Submodule.mem_map_of_mem hy

private lemma specialClass_mem_degree_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq))
        (numeralReesConst W ap bq r) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 0 := by
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  have hy := centreReesComponent_monomial I 0 r (mem_centre_pow_zero W ap bq r)
  change _ ∈ Submodule.map
    (Ideal.Quotient.mkₐ (surfaceRing W) J).toLinearMap (centreReesComponent I 0)
  exact Submodule.mem_map_of_mem hy

private lemma quotient_one_mem_degree_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    (1 : reesAlgebra (numeralCentreIdeal W ap bq) ⧸
        numeralReesSpecialIdeal W ap bq) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hy : (1 : reesAlgebra I) ∈ centreReesComponent I 0 := by
    change ∃ r : ↥(I ^ 0), centreReesMonomial I 0 r = 1
    refine ⟨⟨1, by simp⟩, ?_⟩
    apply Subtype.ext
    simp [centreReesMonomial]
  have hmem : (Ideal.Quotient.mk J) (1 : reesAlgebra I) ∈
      homogeneousQuotientComponent (centreReesComponent I) J 0 :=
    Submodule.mem_map_of_mem hy
  rwa [map_one (Ideal.Quotient.mk J)] at hmem

/-- `U = (X - ap) t / 2t` on the chart `D₊(2t)`. -/
noncomputable def chartU (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_2t_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesTwo W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesXT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (0 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
            (numeral_X_mem_centre W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesTwo] using
          specialClass_mem_degree_one W ap bq (2 : surfaceRing W)
            (two_mem_numeralCentreIdeal W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- `V = (Y - bq) t / 2t` on the chart `D₊(2t)`. -/
noncomputable def chartV (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_2t_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesTwo W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesYT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (1 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))))
            (numeral_Y_mem_centre W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesTwo] using
          specialClass_mem_degree_one W ap bq (2 : surfaceRing W)
            (two_mem_numeralCentreIdeal W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

noncomputable instance chartCommRing
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    CommRing (chart_Dplus_2t_ring W ap bq) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  unfold chart_Dplus_2t_ring
  infer_instance

/-- The ideal `(U, V)` of the chart `D₊(2t)`. -/
noncomputable def ideal_UV (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (chart_Dplus_2t_ring W ap bq) :=
  Ideal.span {chartU W ap bq, chartV W ap bq}

/-- `Y² = X³ + 2`. Its constant term has 2-adic valuation one. -/
noncomputable def valuationOneCurve : WeierstrassCurve ℤ_[2] where
  a₁ := 0
  a₂ := 0
  a₃ := 0
  a₄ := 0
  a₆ := -2

theorem valuationOne_surfacePolynomial :
    surfacePolynomial valuationOneCurve =
      MvPolynomial.X (1 : Fin 2) ^ 2 - MvPolynomial.X (0 : Fin 2) ^ 3 +
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) := by
  simp [surfacePolynomial, localWeierstrassEquation, valuationOneCurve,
    map_neg, map_ofNat]
  ring

theorem valuationOne_two_eq :
    (2 : surfaceRing valuationOneCurve) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2) ^ 3 - MvPolynomial.X (1 : Fin 2) ^ 2) := by
  rw [two_eq_quotient_mk]
  apply eq_of_sub_eq_zero
  rw [← (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})).map_sub]
  apply Ideal.Quotient.eq_zero_iff_mem.mpr
  have hpoly :
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) -
        (MvPolynomial.X (0 : Fin 2) ^ 3 - MvPolynomial.X (1 : Fin 2) ^ 2) =
      surfacePolynomial valuationOneCurve := by
    rw [valuationOne_surfacePolynomial]
    ring
  rw [hpoly]
  exact Ideal.subset_span (by simp)

theorem valuationOne_two_mem_sq :
    (2 : surfaceRing valuationOneCurve) ∈
      numeralCentreIdeal valuationOneCurve 0 0 ^ 2 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  have hX : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (0 : Fin 2)) ∈ I := by
    simpa using numeral_X_mem_centre valuationOneCurve 0 0
  have hY : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (1 : Fin 2)) ∈ I := by
    simpa using numeral_Y_mem_centre valuationOneCurve 0 0
  have hX3 : (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (0 : Fin 2))) ^ 3 ∈ I ^ 2 :=
    Ideal.pow_le_pow_right (by decide : (2 : ℕ) ≤ 3)
      (Ideal.pow_mem_pow hX 3)
  have hY2 : (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (1 : Fin 2))) ^ 2 ∈ I ^ 2 :=
    Ideal.pow_mem_pow hY 2
  have hdiff :
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2))) ^ 3 -
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (1 : Fin 2))) ^ 2 ∈ I ^ 2 :=
    Ideal.sub_mem _ hX3 hY2
  have heq :
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2))) ^ 3 -
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (1 : Fin 2))) ^ 2 =
      (2 : surfaceRing valuationOneCurve) := by
    rw [← map_pow, ← map_pow, ← map_sub, valuationOne_two_eq]
  simpa [heq] using hdiff

theorem valuationOne_reesTwo_sq :
    numeralReesTwo valuationOneCurve 0 0 ^ 2 =
      algebraMap (surfaceRing valuationOneCurve)
        (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0))
        (2 : surfaceRing valuationOneCurve) *
      centreReesMonomial (numeralCentreIdeal valuationOneCurve 0 0) 2
        ⟨(2 : surfaceRing valuationOneCurve), valuationOne_two_mem_sq⟩ := by
  apply Subtype.ext
  change (Polynomial.monomial 1 (2 : surfaceRing valuationOneCurve)) ^ 2 =
    Polynomial.C (2 : surfaceRing valuationOneCurve) *
      Polynomial.monomial 2 (2 : surfaceRing valuationOneCurve)
  rw [pow_two, Polynomial.monomial_mul_monomial, Polynomial.C_mul_monomial]

theorem valuationOne_specialTwo_sq_zero :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesTwo valuationOneCurve 0 0)) ^ 2 = 0 := by
  rw [← map_pow, valuationOne_reesTwo_sq, map_mul]
  have hzero :
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0))
        (algebraMap (surfaceRing valuationOneCurve)
          (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0))
          (2 : surfaceRing valuationOneCurve)) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  rw [hzero]
  exact zero_mul
    ((Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0))
      (centreReesMonomial (numeralCentreIdeal valuationOneCurve 0 0) 2
        ⟨(2 : surfaceRing valuationOneCurve), valuationOne_two_mem_sq⟩))

/-- `(0, 0)` lies on the reduction of `Y² = X³ + 2`. -/
theorem surfaceResidueVanishes_valuationOne :
    surfaceResidueVanishes valuationOneCurve 0 0 := by
  rw [surfaceResidueVanishes, valuationOne_surfacePolynomial, map_add, map_sub,
    map_pow, map_pow, numeralEval, MvPolynomial.eval₂Hom_X',
    MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C, coeffToResidue,
    MvPolynomial.eval₂Hom_C, residue_kills_two]
  simp

/-- `1` is not in the numeral centre at `(0, 0)` on `Y² = X³ + 2`.
`centreResidueHom` lands in `𝔽₂`, so the quotient by the centre is not
the zero ring. -/
theorem one_not_mem_numeralCentreIdeal_valuationOne :
    (1 : surfaceRing valuationOneCurve) ∉
      numeralCentreIdeal valuationOneCurve 0 0 := by
  intro hmem
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let φ := centreResidueHom valuationOneCurve 0 0 surfaceResidueVanishes_valuationOne
  have hquot : (1 : surfaceRing valuationOneCurve ⧸ I) = 0 := by
    rw [← map_one (Ideal.Quotient.mk I)]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr hmem
  have := congrArg φ hquot
  rw [map_one, map_zero] at this
  exact one_ne_zero this

/-- Swap the surface variables so `Y` becomes variable `0`. -/
private noncomputable def valuationOneSwap :
    MvPolynomial (Fin 2) S ≃ₐ[S] MvPolynomial (Fin 2) S :=
  MvPolynomial.renameEquiv S (Equiv.swap (0 : Fin 2) 1)

private lemma valuationOne_swapped_polynomial :
    valuationOneSwap (surfacePolynomial valuationOneCurve) =
      MvPolynomial.X (0 : Fin 2) ^ 2 - MvPolynomial.X (1 : Fin 2) ^ 3 +
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) := by
  rw [valuationOne_surfacePolynomial, valuationOneSwap, MvPolynomial.renameEquiv_apply]
  simp only [map_add, map_sub, map_pow, MvPolynomial.rename_X, MvPolynomial.rename_C,
    Equiv.swap_apply_left, Equiv.swap_apply_right]

/-- After the swap, `finSuccEquiv` writes the equation as a monic
quadratic in `Y`. -/
private lemma valuationOne_yPoly_eq :
    (MvPolynomial.finSuccEquiv S 1)
        (valuationOneSwap (surfacePolynomial valuationOneCurve)) =
      Polynomial.X ^ 2 +
        Polynomial.C
          (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) -
            (MvPolynomial.X (0 : Fin 1)) ^ 3) := by
  rw [valuationOne_swapped_polynomial]
  have hY : (MvPolynomial.finSuccEquiv S 1) (MvPolynomial.X (1 : Fin 2)) =
      Polynomial.C (MvPolynomial.X (0 : Fin 1)) := by
    have : (1 : Fin 2) = Fin.succ (0 : Fin 1) := rfl
    rw [this]
    exact MvPolynomial.finSuccEquiv_X_succ
  have hC : (MvPolynomial.finSuccEquiv S 1)
      (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) =
      Polynomial.C (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) :=
    (MvPolynomial.finSuccEquiv S 1).commutes _
  simp only [map_add, map_sub, map_pow, MvPolynomial.finSuccEquiv_X_zero, hY, hC]
  ring

private lemma valuationOne_yPoly_monic :
    ((MvPolynomial.finSuccEquiv S 1)
      (valuationOneSwap (surfacePolynomial valuationOneCurve))).Monic := by
  rw [valuationOne_yPoly_eq]
  refine Polynomial.monic_X_pow_add ?_
  exact (Polynomial.degree_C_le).trans_lt
    (WithBot.coe_lt_coe.mpr (by decide : (0 : ℕ) < 2))

set_option maxHeartbeats 2000000 in
/-- Multiplication by `2` is injective on `R = S[X,Y] / (Y² − X³ + 2)`.
The equation is monic of degree `2` in `Y`, and `2 ≠ 0` in `ℤ_[2]`. -/
theorem valuationOne_two_regular (r : surfaceRing valuationOneCurve)
    (hr : (2 : surfaceRing valuationOneCurve) * r = 0) : r = 0 := by
  obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective r
  have hmem : MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) * f ∈
      Ideal.span {surfacePolynomial valuationOneCurve} := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, ← two_eq_quotient_mk]
    exact hr
  obtain ⟨g, hg⟩ := Ideal.mem_span_singleton'.mp hmem
  let e := valuationOneSwap.trans (MvPolynomial.finSuccEquiv S 1)
  have hq : (e (surfacePolynomial valuationOneCurve)).Monic := valuationOne_yPoly_monic
  have hc : e (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) =
      Polynomial.C (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) := by
    change (MvPolynomial.finSuccEquiv S 1)
        (valuationOneSwap (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])))) = _
    have hswap : valuationOneSwap (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) =
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) := by
      rw [valuationOneSwap, MvPolynomial.renameEquiv_apply, MvPolynomial.rename_C]
    rw [hswap]
    exact (MvPolynomial.finSuccEquiv S 1).commutes (MvPolynomial.C (2 : ℤ_[2]))
  have hdiv : e (surfacePolynomial valuationOneCurve) ∣
      Polynomial.C (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) * e f := by
    refine ⟨e g, ?_⟩
    rw [mul_comm (e (surfacePolynomial valuationOneCurve)), ← map_mul e, hg, map_mul e, hc]
  set q := e (surfacePolynomial valuationOneCurve)
  set gf := e f
  set c : MvPolynomial (Fin 1) S := MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))
  have hc0 : c ≠ 0 := by
    intro hz
    have hzC : (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) : MvPolynomial (Fin 1) S) =
        MvPolynomial.C (0 : S) := by
      simpa [MvPolynomial.C_0] using hz
    have hS : (MvPolynomial.C (2 : ℤ_[2]) : S) = 0 :=
      MvPolynomial.C_injective (Fin 1) S hzC
    have h2 : (2 : ℤ_[2]) = 0 :=
      MvPolynomial.C_injective (Fin 2) ℤ_[2]
        (show MvPolynomial.C (2 : ℤ_[2]) = MvPolynomial.C 0 by
          simpa [MvPolynomial.C_0] using hS)
    exact Nat.cast_ne_zero.mpr (by decide : (2 : ℕ) ≠ 0) h2
  have hrem : (Polynomial.C c * gf) %ₘ q = 0 :=
    (Polynomial.modByMonic_eq_zero_iff_dvd hq).mpr hdiv
  have hprod : Polynomial.C c * (gf %ₘ q) = 0 := by
    have hsmul := Polynomial.smul_modByMonic (q := q) c gf
    simp only [Algebra.smul_def, Polynomial.algebraMap_eq] at hsmul
    rw [← hsmul, hrem]
  have hrem0 : gf %ₘ q = 0 := by
    apply Polynomial.ext
    intro n
    rw [Polynomial.coeff_zero]
    have hcoeff : c * (gf %ₘ q).coeff n = 0 := by
      rw [← Polynomial.coeff_C_mul, hprod, Polynomial.coeff_zero]
    exact (mul_eq_zero.mp hcoeff).resolve_left hc0
  have hgf : q ∣ gf := (Polynomial.modByMonic_eq_zero_iff_dvd hq).mp hrem0
  obtain ⟨t, ht⟩ := hgf
  have hf : f = surfacePolynomial valuationOneCurve * e.symm t := by
    apply e.injective
    rw [map_mul e, AlgEquiv.apply_symm_apply]
    exact ht
  rw [hf]
  exact Ideal.Quotient.eq_zero_iff_mem.mpr
    (Ideal.mem_span_singleton'.mpr ⟨e.symm t, mul_comm _ _⟩)

/-- On `Y² = X³ + 2` at `(0, 0)`, the class of `2t` in `Rees/(2)` is not
zero. `(2t)² = 0` because `2 ∈ I²`, so `(2t)²` is the scalar `2` times
`2 t²`. The scalar ideal is degree zero. Membership of `monomial 1 (2)`
in that ideal would give `a ∈ I` with `2 * a = 2`, hence `a = 1` by
`valuationOne_two_regular`, contradicting
`one_not_mem_numeralCentreIdeal_valuationOne`. -/
theorem valuationOne_specialTwo_ne_zero :
    Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesTwo valuationOneCurve 0 0) ≠ 0 := by
  intro hzero
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hmem : numeralReesTwo valuationOneCurve 0 0 ∈ J :=
    Ideal.Quotient.eq_zero_iff_mem.mp hzero
  obtain ⟨z, hz⟩ := Ideal.mem_span_singleton'.mp hmem
  have hzpoly :
      (z : Polynomial (surfaceRing valuationOneCurve)) *
        Polynomial.C (2 : surfaceRing valuationOneCurve) =
      Polynomial.monomial 1 (2 : surfaceRing valuationOneCurve) := by
    have hz' := congrArg
      (fun w : reesAlgebra I => (w : Polynomial (surfaceRing valuationOneCurve))) hz
    simpa [numeralReesTwo, centreReesMonomial] using hz'
  have hcoeff : (2 : surfaceRing valuationOneCurve) *
      (z : Polynomial (surfaceRing valuationOneCurve)).coeff 1 = 2 := by
    rw [mul_comm] at hzpoly
    have this := congrArg
      (fun p : Polynomial (surfaceRing valuationOneCurve) => p.coeff 1) hzpoly
    change (Polynomial.C (2 : surfaceRing valuationOneCurve) *
        (z : Polynomial (surfaceRing valuationOneCurve))).coeff 1 =
      (Polynomial.monomial 1 (2 : surfaceRing valuationOneCurve)).coeff 1 at this
    rw [Polynomial.coeff_C_mul, Polynomial.coeff_monomial_same] at this
    exact this
  have ha : (z : Polynomial (surfaceRing valuationOneCurve)).coeff 1 ∈ I := by
    simpa [pow_one] using z.property 1
  set a : surfaceRing valuationOneCurve :=
    (z : Polynomial (surfaceRing valuationOneCurve)).coeff 1
  have hsub : (2 : surfaceRing valuationOneCurve) * (a - 1) = 0 := by
    have h' : (2 : surfaceRing valuationOneCurve) * a - 2 = 0 := by
      rw [hcoeff, sub_self]
    convert h' using 1
    ring
  have ha1 : a = 1 := sub_eq_zero.mp (valuationOne_two_regular (a - 1) hsub)
  exact one_not_mem_numeralCentreIdeal_valuationOne (ha1 ▸ ha)

/-- On this curve the chart `D₊(2t)` is the zero ring: `(2t)²` dies in
`Rees/(2)`, so inverting `2t` collapses the ring. -/
theorem chart_Dplus_2t_subsingleton_valuationOne :
    Subsingleton (chart_Dplus_2t_ring valuationOneCurve 0 0) := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0)
  let f := Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0)
  have hf : f ^ 2 = 0 := valuationOne_specialTwo_sq_zero
  have h0 : (0 : reesAlgebra I ⧸ J) ∈ Submonoid.powers f :=
    (Submonoid.mem_powers_iff 0 f).mpr ⟨2, hf⟩
  unfold chart_Dplus_2t_ring
  exact @HomogeneousLocalization.subsingleton ℕ (surfaceRing valuationOneCurve)
    (reesAlgebra I ⧸ J) _ _ _
    (homogeneousQuotientComponent (centreReesComponent I) J)
    (Submonoid.powers f) h0

/-- A positive power equal to zero forces the basic open in `Proj` to be
empty: `D₊(f^n) = D₊(f)` and `D₊(0) = ⊥`. -/
theorem proj_basicOpen_bot_of_pow_eq_zero
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (f : A) {n : ℕ} (hn : 0 < n) (hfn : f ^ n = 0) :
    ProjectiveSpectrum.basicOpen 𝒜 f = ⊥ := by
  rw [← ProjectiveSpectrum.basicOpen_pow 𝒜 f n hn, hfn, ProjectiveSpectrum.basicOpen_zero]

set_option maxHeartbeats 2000000

/-- On `Y² = X³ + 2` at `(0, 0)`, `(2t)² = 0` in `Rees/(2)`, so every
point of `Proj(Rees(I)/(2))` contains the class of `2t`. That is
`D₊(2t) = ∅`. `proj_basicOpen_bot_of_pow_eq_zero` is the same fact
written with `basicOpen_pow` and `basicOpen_zero`. -/
noncomputable def chart_Dplus_2t_empty_pack : Σ' p : Prop, p := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := (Ideal.Quotient.mk J) (numeralReesTwo valuationOneCurve 0 0)
  refine ⟨∀ x : @ProjectiveSpectrum (surfaceRing valuationOneCurve) (reesAlgebra I ⧸ J)
      _ _ _ ℬ _, f ∈ x.asHomogeneousIdeal.toIdeal, ?_⟩
  intro x
  have hpow : f ^ 2 ∈ x.asHomogeneousIdeal.toIdeal := by
    rw [valuationOne_specialTwo_sq_zero]
    exact Submodule.zero_mem _
  exact x.isPrime.mem_of_pow_mem 2 hpow

/-- `D₊(2t) = ⊥` on this curve. -/
def chart_Dplus_2t_empty : Prop := chart_Dplus_2t_empty_pack.1

theorem chart_Dplus_2t_empty_holds : chart_Dplus_2t_empty :=
  chart_Dplus_2t_empty_pack.2

theorem chart_Dplus_2t_not_equiv_F2 :
    ¬ Nonempty (chart_Dplus_2t_ring valuationOneCurve 0 0 ≃ ZMod 2) := by
  intro ⟨e⟩
  haveI := chart_Dplus_2t_subsingleton_valuationOne
  exact zero_ne_one ((Equiv.injective e.symm).subsingleton.elim (0 : ZMod 2) 1)

/-- The claim that `W(ap, bq) ≡ 0 (mod 2)` produces a point of
`Spec` of the chart `D₊(2t)`. The direction `[1:0:0]` would be a prime
of `ideal_UV = (U, V)` with residue field `𝔽₂`. Valuation one of the
constant term makes `2t` nilpotent on the special fibre, and the chart
is then the zero ring. -/
def familySpecialFibrePoint_Dplus_2t : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    ¬ Subsingleton (chart_Dplus_2t_ring W ap bq)

theorem not_familySpecialFibrePoint_Dplus_2t :
    ¬ familySpecialFibrePoint_Dplus_2t := by
  intro h
  exact h valuationOneCurve 0 0 surfaceResidueVanishes_valuationOne
    chart_Dplus_2t_subsingleton_valuationOne

/-- The degree-zero chart ring `(Rees(I)/(2))_((X - ap) t)`. -/
noncomputable def chart_Dplus_Xt_ring
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) : Type :=
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  let _ : Algebra (surfaceRing W) (reesAlgebra I) := inferInstance
  let _ : Algebra (surfaceRing W) (reesAlgebra I ⧸ J) := inferInstance
  HomogeneousLocalization.Away
    (homogeneousQuotientComponent (centreReesComponent I) J)
    (Ideal.Quotient.mk J (numeralReesXT W ap bq))

/-- `2t / (X - ap) t` on the chart `D₊(Xt)`. -/
noncomputable def chart_two_over_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesTwo W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesTwo] using
          specialClass_mem_degree_one W ap bq (2 : surfaceRing W)
            (two_mem_numeralCentreIdeal W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesXT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (0 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
            (numeral_X_mem_centre W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- `(Y - bq) t / (X - ap) t` on the chart `D₊(Xt)`. -/
noncomputable def chart_Y_over_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesYT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (1 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))))
            (numeral_Y_mem_centre W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesXT] using
          specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (0 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
            (numeral_X_mem_centre W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- The degree-zero class of `X - ap` on the chart `D₊(Xt)`.
This is the fraction `C(X - ap) / 1`. It is not the ratio `2t / Xt`. -/
noncomputable def chart_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralX W ap))
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using
          specialClass_mem_degree_zero W ap bq (surfaceNumeralX W ap)⟩,
      ⟨(1 : reesAlgebra I ⧸ J), quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

/-- The degree-zero class of `Y - bq` on the chart `D₊(Xt)`.
This is the fraction `C(Y - bq) / 1`. It is not the ratio `Yt / Xt`. -/
noncomputable def chart_Y (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralY W bq))
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using
          specialClass_mem_degree_zero W ap bq (surfaceNumeralY W bq)⟩,
      ⟨(1 : reesAlgebra I ⧸ J), quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

noncomputable instance chartXtCommRing
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    CommRing (chart_Dplus_Xt_ring W ap bq) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  unfold chart_Dplus_Xt_ring
  infer_instance

/-- The ideal of ratios `(2t / Xt, Yt / Xt)` in the chart `D₊(Xt)`.
Its generators do not include the degree-zero classes of `X` and `Y`. -/
noncomputable def ideal_two_Y_over_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (chart_Dplus_Xt_ring W ap bq) :=
  Ideal.span {chart_two_over_X W ap bq, chart_Y_over_X W ap bq}

/-- The ideal `⟨X, Y, 2t/Xt, Yt/Xt⟩` in the chart `D₊(Xt)`.
`X` and `Y` are the degree-zero classes, not the ratios. -/
noncomputable def ideal_XYUV (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (chart_Dplus_Xt_ring W ap bq) :=
  Ideal.span
    {chart_X W ap bq, chart_Y W ap bq,
      chart_two_over_X W ap bq, chart_Y_over_X W ap bq}

/-- Evaluate `S[X, Y]` in `𝔽₂` at a chosen residue point. -/
noncomputable def residuePointEval (x y : ZMod 2) : MvPolynomial (Fin 2) S →+* ZMod 2 :=
  MvPolynomial.eval₂Hom coeffToResidue (fun i : Fin 2 => if i = 0 then x else y)

theorem residuePointEval_valuationOne :
    residuePointEval 1 1 (surfacePolynomial valuationOneCurve) = 0 := by
  rw [residuePointEval, valuationOne_surfacePolynomial, map_add, map_sub, map_pow, map_pow,
    MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C,
    if_pos rfl, if_neg (by decide : (1 : Fin 2) ≠ 0), coeffToResidue,
    MvPolynomial.eval₂Hom_C, residue_kills_two]
  simp

/-- The surface ring of `Y² = X³ + 2` maps to `𝔽₂` with `X ↦ 1` and `Y ↦ 1`. -/
noncomputable def valuationOne_X_residue : surfaceRing valuationOneCurve →+* ZMod 2 :=
  Ideal.Quotient.lift (Ideal.span {surfacePolynomial valuationOneCurve})
    (residuePointEval 1 1) (by
      intro a ha
      obtain ⟨d, rfl⟩ := Ideal.mem_span_singleton.mp ha
      rw [map_mul, residuePointEval_valuationOne, zero_mul])

theorem valuationOne_X_residue_X :
    valuationOne_X_residue
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2))) = 1 := by
  rw [valuationOne_X_residue, Ideal.Quotient.lift_mk, residuePointEval,
    MvPolynomial.eval₂Hom_X', if_pos rfl]

theorem valuationOne_X_residue_two :
    valuationOne_X_residue (2 : surfaceRing valuationOneCurve) = 0 := by
  rw [map_ofNat]
  decide

/-- No power of the class of `X t` vanishes in `Rees/(2)`. A relation
`(X t)^n = 2 · p` would force `X^n` to be divisible by `2`, but `X`
survives as `1` in the residue field. -/
theorem valuationOne_specialXT_pow_ne_zero (n : ℕ) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesXT valuationOneCurve 0 0)) ^ n ≠ 0 := by
  intro hzero
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let R := surfaceRing valuationOneCurve
  have hmem : (numeralReesXT valuationOneCurve 0 0) ^ n ∈
      numeralReesSpecialIdeal valuationOneCurve 0 0 := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_pow]
    exact hzero
  obtain ⟨p, hp⟩ := Ideal.mem_span_singleton'.mp hmem
  let x : R := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
    (MvPolynomial.X (0 : Fin 2))
  have hmono : ((numeralReesXT valuationOneCurve 0 0 : reesAlgebra I) : Polynomial R) =
      Polynomial.monomial 1 x := by
    simp [numeralReesXT, centreReesMonomial, x]
  have hpoly := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
  dsimp at hpoly
  rw [hmono, Polynomial.monomial_pow] at hpoly
  simp only [one_mul] at hpoly
  rw [mul_comm] at hpoly
  have hcoeff := congrArg (fun q : Polynomial R => q.coeff n) hpoly
  dsimp at hcoeff
  rw [Polynomial.coeff_C_mul, Polynomial.coeff_monomial, if_pos rfl] at hcoeff
  have hdiv : x ^ n = (2 : R) * (p : Polynomial R).coeff n := hcoeff.symm
  have hφ := congrArg valuationOne_X_residue hdiv
  rw [map_pow, valuationOne_X_residue_X, map_mul, valuationOne_X_residue_two,
    zero_mul, one_pow] at hφ
  exact one_ne_zero hφ

set_option maxHeartbeats 8000000

/-!
### The ratio `2t / Xt` is a nonzero nilpotent

`(Xt)^n * (2t) = 0` in `Rees/(2)` would put `X^n` in `I^{n+1}`.
Reducing modulo `2` lands in the cusp `Y² = X³` over `𝔽₂[a,b]`.
The parametrization `X ↦ t²`, `Y ↦ t³` sends `X^k` to `t^{2k}` and
sends `(X, Y)^{k+1}` into `(t^{2k+2})`.
-/

/-- `X ↦ t²`, `Y ↦ t³` on `𝔽₂[a,b][X,Y]`. -/
noncomputable def cuspParam :
    MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)) →+*
      Polynomial (MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.eval₂Hom Polynomial.C
    (fun i : Fin 2 => if i = 0 then Polynomial.X ^ 2 else Polynomial.X ^ 3)

private lemma cuspParam_X : cuspParam (MvPolynomial.X 0) = Polynomial.X ^ 2 := by
  simp [cuspParam]

private lemma cuspParam_Y : cuspParam (MvPolynomial.X 1) = Polynomial.X ^ 3 := by
  simp [cuspParam, show (1 : Fin 2) ≠ 0 by decide]

private lemma cuspParam_X_pow (k : ℕ) :
    cuspParam ((MvPolynomial.X (0 : Fin 2)) ^ k) = Polynomial.X ^ (2 * k) := by
  rw [map_pow, cuspParam_X, ← pow_mul]

private lemma cuspParam_rel :
    cuspParam ((MvPolynomial.X (1 : Fin 2)) ^ 2 - (MvPolynomial.X (0 : Fin 2)) ^ 3) = 0 := by
  rw [map_sub, map_pow, map_pow, cuspParam_Y, cuspParam_X, ← pow_mul, ← pow_mul]
  ring

private lemma cuspParam_span_XY :
    Ideal.map cuspParam (Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1}) =
      Ideal.span {Polynomial.X ^ 2} := by
  rw [Ideal.map_span]
  apply le_antisymm
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_image, Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    obtain ⟨w, hw, rfl⟩ := hz
    rcases hw with rfl | rfl
    · rw [cuspParam_X]
      exact Ideal.subset_span (by simp)
    · rw [cuspParam_Y, show Polynomial.X ^ 3 = Polynomial.X * Polynomial.X ^ 2 by ring]
      exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_singleton_iff] at hz
    subst hz
    rw [← cuspParam_X]
    refine Ideal.subset_span ?_
    refine Set.mem_image_of_mem cuspParam ?_
    simp [Set.mem_insert_iff, Set.mem_singleton_iff]

private lemma cuspParam_pow_span_XY (k : ℕ) :
    Ideal.map cuspParam
        (Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1} ^ k) =
      Ideal.span {Polynomial.X ^ (2 * k)} := by
  rw [Ideal.map_pow, cuspParam_span_XY, Ideal.span_singleton_pow]
  have hpow :
      ((Polynomial.X : Polynomial (MvPolynomial (Fin 2) (ZMod 2))) ^ 2) ^ k =
        Polynomial.X ^ (2 * k) :=
    (pow_mul _ 2 k).symm
  rw [hpow]

private lemma cuspParam_kills_low_coeff (k : ℕ)
    (g : MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)))
    (hg : g ∈ Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1} ^ (k + 1)) :
    (cuspParam g).coeff (2 * k) = 0 := by
  have hmem : cuspParam g ∈ Ideal.span {Polynomial.X ^ (2 * (k + 1))} := by
    rw [← cuspParam_pow_span_XY]
    exact Ideal.mem_map_of_mem _ hg
  rw [Ideal.mem_span_singleton] at hmem
  have hlt : 2 * k < 2 * (k + 1) := by
    rw [Nat.mul_succ]
    exact Nat.lt_add_of_pos_right (by decide : 0 < 2)
  exact (Polynomial.X_pow_dvd_iff.mp hmem) (2 * k) hlt

/-- On the cusp `Y² = X³` over `𝔽₂[a,b]`, `X^k` does not lie in
`(Y² − X³) + (X, Y)^{k+1}`. -/
theorem monomial_X_pow_not_mem_cusp (k : ℕ) :
    (MvPolynomial.X (0 : Fin 2) :
        MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2))) ^ k ∉
      Ideal.span
          ({(MvPolynomial.X (1 : Fin 2)) ^ 2 - (MvPolynomial.X (0 : Fin 2)) ^ 3} :
            Set (MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)))) ⊔
        Ideal.span
          ({MvPolynomial.X (0 : Fin 2), MvPolynomial.X (1 : Fin 2)} :
            Set (MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)))) ^ (k + 1) := by
  intro h
  obtain ⟨a, ha, b, hb, hab⟩ := Submodule.mem_sup.mp h
  have ha0 : cuspParam a = 0 := by
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
    rw [map_mul, cuspParam_rel, mul_zero]
  have hcoeff := congrArg (fun p => (cuspParam p).coeff (2 * k)) hab
  dsimp at hcoeff
  rw [map_add, ha0, zero_add, cuspParam_kills_low_coeff k b hb, map_pow, cuspParam_X,
    ← pow_mul, Polynomial.coeff_X_pow, if_pos rfl] at hcoeff
  exact zero_ne_one hcoeff

/-- Reduce coefficients of `S[X,Y]` modulo `2`. -/
noncomputable def surfacePolyModTwo :
    MvPolynomial (Fin 2) S →+*
      MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.map (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))

private lemma surfacePolyModTwo_surface :
    surfacePolyModTwo (surfacePolynomial valuationOneCurve) =
      (MvPolynomial.X (1 : Fin 2)) ^ 2 - (MvPolynomial.X (0 : Fin 2)) ^ 3 := by
  rw [valuationOne_surfacePolynomial]
  simp [surfacePolyModTwo, residue_kills_two, MvPolynomial.C_0]

private lemma surfacePolyModTwo_centreSpan :
    Ideal.map surfacePolyModTwo (Ideal.span {
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
      MvPolynomial.X (0 : Fin 2),
      MvPolynomial.X (1 : Fin 2) }) =
      Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1} := by
  rw [Ideal.map_span]
  apply le_antisymm
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_image, Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    obtain ⟨w, hw, rfl⟩ := hz
    rcases hw with rfl | rfl | rfl
    · simp [surfacePolyModTwo, residue_kills_two, MvPolynomial.C_0]
    · rw [surfacePolyModTwo, MvPolynomial.map_X]
      exact Ideal.subset_span (by simp [Set.mem_insert_iff, Set.mem_singleton_iff])
    · rw [surfacePolyModTwo, MvPolynomial.map_X]
      exact Ideal.subset_span (by simp [Set.mem_insert_iff, Set.mem_singleton_iff])
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl
    · rw [show (MvPolynomial.X (0 : Fin 2)) =
          surfacePolyModTwo (MvPolynomial.X (0 : Fin 2)) by
        rw [surfacePolyModTwo, MvPolynomial.map_X]]
      exact Ideal.subset_span (Set.mem_image_of_mem _
        (by simp [Set.mem_insert_iff, Set.mem_singleton_iff]))
    · rw [show (MvPolynomial.X (1 : Fin 2)) =
          surfacePolyModTwo (MvPolynomial.X (1 : Fin 2)) by
        rw [surfacePolyModTwo, MvPolynomial.map_X]]
      exact Ideal.subset_span (Set.mem_image_of_mem _
        (by simp [Set.mem_insert_iff, Set.mem_singleton_iff]))

private lemma valuationOne_centreSpan_zero :
    Ideal.span ({
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
      MvPolynomial.X (0 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C ((0 : ℕ) : ℤ_[2])),
      MvPolynomial.X (1 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C ((0 : ℕ) : ℤ_[2])) } :
        Set (MvPolynomial (Fin 2) S)) =
      Ideal.span ({
        MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
        MvPolynomial.X (0 : Fin 2),
        MvPolynomial.X (1 : Fin 2) } : Set (MvPolynomial (Fin 2) S)) := by
  simp [Nat.cast_zero, MvPolynomial.C_0, sub_zero]

/-- `X^k` is not in `I^{k+1}` at `(0, 0)` on `Y² = X³ + 2`. -/
theorem valuationOne_X_pow_not_mem_centre_succ (k : ℕ) :
    (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2))) ^ k ∉
      numeralCentreIdeal valuationOneCurve 0 0 ^ (k + 1) := by
  intro hmem
  let ψ := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
  have hsurj : Function.Surjective ψ := Ideal.Quotient.mk_surjective
  rw [numeralCentreIdeal, valuationOne_centreSpan_zero, ← Ideal.map_pow] at hmem
  rw [Ideal.mem_map_iff_of_surjective (f := ψ) hsurj] at hmem
  obtain ⟨g, hg, hgeq⟩ := hmem
  have hdiff : ψ ((MvPolynomial.X (0 : Fin 2)) ^ k - g) = 0 := by
    rw [map_sub, map_pow, hgeq, sub_self]
  rw [Ideal.Quotient.eq_zero_iff_mem] at hdiff
  obtain ⟨f, hf⟩ := Ideal.mem_span_singleton'.mp hdiff
  have hpoly : (MvPolynomial.X (0 : Fin 2)) ^ k =
      f * surfacePolynomial valuationOneCurve + g := by
    rw [hf, sub_add_cancel]
  have himg := congrArg surfacePolyModTwo hpoly
  have hx : surfacePolyModTwo (MvPolynomial.X (0 : Fin 2)) =
      MvPolynomial.X (0 : Fin 2) := by
    rw [surfacePolyModTwo, MvPolynomial.map_X]
  rw [map_add, map_mul, surfacePolyModTwo_surface, map_pow, hx] at himg
  have hgimg : surfacePolyModTwo g ∈
      Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1} ^ (k + 1) := by
    have hmap := Ideal.mem_map_of_mem surfacePolyModTwo hg
    rwa [Ideal.map_pow, surfacePolyModTwo_centreSpan] at hmap
  have hsup : (MvPolynomial.X (0 : Fin 2) :
        MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2))) ^ k ∈
      Ideal.span
          ({(MvPolynomial.X (1 : Fin 2)) ^ 2 - (MvPolynomial.X (0 : Fin 2)) ^ 3} :
            Set (MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)))) ⊔
        Ideal.span
          ({MvPolynomial.X (0 : Fin 2), MvPolynomial.X (1 : Fin 2)} :
            Set (MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2)))) ^ (k + 1) := by
    rw [himg]
    refine Submodule.mem_sup.mpr ⟨
      surfacePolyModTwo f *
        ((MvPolynomial.X (1 : Fin 2)) ^ 2 - (MvPolynomial.X (0 : Fin 2)) ^ 3), ?_,
      surfacePolyModTwo g, hgimg, rfl⟩
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
  exact monomial_X_pow_not_mem_cusp k hsup

/-- `(Xt)^n * (2t)` is not in the scalar ideal `(2)`. -/
theorem valuationOne_xt_pow_mul_two_not_special (n : ℕ) :
    (numeralReesXT valuationOneCurve 0 0) ^ n * numeralReesTwo valuationOneCurve 0 0 ∉
      numeralReesSpecialIdeal valuationOneCurve 0 0 := by
  intro hmem
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let R := surfaceRing valuationOneCurve
  obtain ⟨p, hp⟩ := Ideal.mem_span_singleton'.mp hmem
  let x : R := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
    (MvPolynomial.X (0 : Fin 2))
  have hxt : ((numeralReesXT valuationOneCurve 0 0 : reesAlgebra I) : Polynomial R) =
      Polynomial.monomial 1 x := by
    simp [numeralReesXT, centreReesMonomial, x, Nat.cast_zero, map_zero, sub_zero]
  have htwo : ((numeralReesTwo valuationOneCurve 0 0 : reesAlgebra I) : Polynomial R) =
      Polynomial.monomial 1 (2 : R) := by
    simp [numeralReesTwo, centreReesMonomial]
  have hpoly := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
  dsimp at hpoly
  rw [hxt, htwo, Polynomial.monomial_pow] at hpoly
  simp only [one_mul] at hpoly
  rw [Polynomial.monomial_mul_monomial, mul_comm] at hpoly
  have hcoeff := congrArg (fun q : Polynomial R => q.coeff (n + 1)) hpoly
  dsimp at hcoeff
  rw [Polynomial.coeff_C_mul, Polynomial.coeff_monomial, if_pos rfl,
    mul_comm (x ^ n) (2 : R)] at hcoeff
  have hsub : (2 : R) * ((p : Polynomial R).coeff (n + 1) - x ^ n) = 0 := by
    calc
      (2 : R) * ((p : Polynomial R).coeff (n + 1) - x ^ n)
          = (2 : R) * (p : Polynomial R).coeff (n + 1) - (2 : R) * x ^ n := by ring
        _ = (2 : R) * x ^ n - (2 : R) * x ^ n := by rw [hcoeff]
        _ = 0 := sub_self _
  have hx : (p : Polynomial R).coeff (n + 1) = x ^ n := by
    have := valuationOne_two_regular _ hsub
    rwa [sub_eq_zero] at this
  have hpow : (p : Polynomial R).coeff (n + 1) ∈ I ^ (n + 1) :=
    (mem_reesAlgebra_iff I (p : Polynomial R)).mp p.property (n + 1)
  rw [hx] at hpow
  exact valuationOne_X_pow_not_mem_centre_succ n hpow

/-!
## Node evaluation of `Rees(I)` on `Y² = X³ + 2`

`HomogeneousLocalization.Away` inverts powers of `Xt`. A ring hom out of
that localization has to send `Xt` to a unit. The assignment
`a, b, X, Y, 2t/Xt, Yt/Xt ↦ 0` does not extend to a graded map that
kills `X` and inverts `Xt`, because the naive substitution `X ↦ 0`
kills the denominator.

The hom below is not that substitution. On a Rees polynomial
`∑ rₙ tⁿ`, with `rₙ ∈ Iⁿ`, read the coefficient of `t^{2n}` in the
cusp parametrization `X ↦ t²`, `Y ↦ t³` of `rₙ` modulo `2`, then send
`a` and `b` to `0`. Call that scalar `vₙ(rₙ)`. The sum `∑ vₙ(rₙ)` is a
ring hom `Rees(I) → 𝔽₂`. It sends `Xt ↦ 1`, `2t ↦ 0`, `Yt ↦ 0`, and a
degree-zero element through the closed point `(a,b,X,Y) = (0,0,0,0)`.
The scalar ideal `(2)` is killed, so the hom descends to `Rees(I)/(2)`.
Since `Xt` maps to `1`, it extends through the localization at powers
of `Xt` and restricts to the degree-zero chart.
-/

/-- Evaluate the surface at the node `(a, b, X, Y) = (0, 0, 0, 0)`. -/
noncomputable def valuationOne_nodeEval :
    surfaceRing valuationOneCurve →+* ZMod 2 :=
  Ideal.Quotient.lift (Ideal.span {surfacePolynomial valuationOneCurve})
    (numeralEval 0 0) (by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul, surfaceResidueVanishes_valuationOne, mul_zero])

/-- The cusp parametrization on the surface ring, modulo `2`. -/
noncomputable def surfaceToCusp :
    surfaceRing valuationOneCurve →+*
      Polynomial (MvPolynomial (Fin 2) (ZMod 2)) :=
  Ideal.Quotient.lift (Ideal.span {surfacePolynomial valuationOneCurve})
    (cuspParam.comp surfacePolyModTwo) (by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul]
      simp only [RingHom.comp_apply]
      rw [surfacePolyModTwo_surface, cuspParam_rel, mul_zero])

private lemma surfaceToCusp_mk
    (g : MvPolynomial (Fin 2) S) :
    surfaceToCusp
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve}) g) =
      cuspParam (surfacePolyModTwo g) :=
  Ideal.Quotient.lift_mk _ _ _

private lemma surfaceToCusp_mem_pow (n : ℕ) {r : surfaceRing valuationOneCurve}
    (hr : r ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ n) :
    surfaceToCusp r ∈
      Ideal.span {(Polynomial.X : Polynomial (MvPolynomial (Fin 2) (ZMod 2))) ^ (2 * n)} := by
  let ψ := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
  have hsurj : Function.Surjective ψ := Ideal.Quotient.mk_surjective
  rw [numeralCentreIdeal, valuationOne_centreSpan_zero, ← Ideal.map_pow] at hr
  obtain ⟨g, hg, hgeq⟩ := (Ideal.mem_map_iff_of_surjective (f := ψ) hsurj).mp hr
  rw [← hgeq, surfaceToCusp_mk]
  have hgimg : surfacePolyModTwo g ∈
      Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1} ^ n := by
    have hmap := Ideal.mem_map_of_mem surfacePolyModTwo hg
    rwa [Ideal.map_pow, surfacePolyModTwo_centreSpan] at hmap
  rw [← cuspParam_pow_span_XY]
  exact Ideal.mem_map_of_mem _ hgimg

private lemma surfaceToCusp_coeff_lt {n k : ℕ} (hk : k < 2 * n)
    {r : surfaceRing valuationOneCurve}
    (hr : r ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ n) :
    (surfaceToCusp r).coeff k = 0 := by
  have hmem := surfaceToCusp_mem_pow n hr
  rw [Ideal.mem_span_singleton] at hmem
  exact (Polynomial.X_pow_dvd_iff.mp hmem) k hk

/-- Coefficient of `t^{2n}` after the cusp parametrization, with `a, b ↦ 0`. -/
noncomputable def reesLeading (n : ℕ) (r : surfaceRing valuationOneCurve) : ZMod 2 :=
  MvPolynomial.eval (fun _ : Fin 2 => (0 : ZMod 2)) ((surfaceToCusp r).coeff (2 * n))

private lemma reesLeading_zero (n : ℕ) :
    reesLeading n (0 : surfaceRing valuationOneCurve) = 0 := by
  simp [reesLeading]

private lemma reesLeading_add (n : ℕ) (x y : surfaceRing valuationOneCurve) :
    reesLeading n (x + y) = reesLeading n x + reesLeading n y := by
  simp [reesLeading, map_add, Polynomial.coeff_add]

private noncomputable def reesLeadingAdd (n : ℕ) :
    surfaceRing valuationOneCurve →+ ZMod 2 where
  toFun := reesLeading n
  map_zero' := reesLeading_zero n
  map_add' := reesLeading_add n

private lemma cusp_constantCoeff_eq_eval
    (q : MvPolynomial (Fin 2) (MvPolynomial (Fin 2) (ZMod 2))) :
    Polynomial.constantCoeff (cuspParam q) =
      MvPolynomial.eval (fun _ : Fin 2 => (0 : MvPolynomial (Fin 2) (ZMod 2))) q := by
  have hhom : Polynomial.constantCoeff.comp cuspParam =
      MvPolynomial.eval (fun _ : Fin 2 => (0 : MvPolynomial (Fin 2) (ZMod 2))) := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [cuspParam, Polynomial.constantCoeff_apply, Polynomial.coeff_C]
    · intro i
      have hi : i = 0 ∨ i = 1 := by
        fin_cases i
        · exact Or.inl (Fin.ext rfl)
        · exact Or.inr (Fin.ext rfl)
      rcases hi with rfl | rfl
      · rw [RingHom.comp_apply, cuspParam_X]
        simp [Polynomial.constantCoeff_apply, Polynomial.coeff_X_pow, MvPolynomial.eval_X]
      · rw [RingHom.comp_apply, cuspParam_Y]
        simp [Polynomial.constantCoeff_apply, Polynomial.coeff_X_pow, MvPolynomial.eval_X]
  simpa using DFunLike.congr_fun hhom q

private lemma coeffMap_eval_eq_coeffToResidue :
    (MvPolynomial.eval (fun _ : Fin 2 => (0 : ZMod 2))).comp
        (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)) =
      coeffToResidue := by
  apply MvPolynomial.ringHom_ext
  · intro z
    simp [coeffToResidue, MvPolynomial.eval_C]
  · intro i
    simp [coeffToResidue]

private lemma reesLeading_zero_eq (r : surfaceRing valuationOneCurve) :
    reesLeading 0 r = valuationOne_nodeEval r := by
  obtain ⟨g, rfl⟩ := Ideal.Quotient.mk_surjective r
  rw [valuationOne_nodeEval, Ideal.Quotient.lift_mk, reesLeading, Nat.mul_zero,
    surfaceToCusp_mk]
  have hcoeff :
      (cuspParam (surfacePolyModTwo g)).coeff 0 =
        Polynomial.constantCoeff (cuspParam (surfacePolyModTwo g)) :=
    (Polynomial.constantCoeff_apply _).symm
  rw [hcoeff, cusp_constantCoeff_eq_eval, surfacePolyModTwo, MvPolynomial.eval_map,
    MvPolynomial.eval_eval₂]
  have hvar :
      (fun s : Fin 2 =>
          MvPolynomial.eval (fun _ : Fin 2 => (0 : ZMod 2))
            ((fun _ : Fin 2 => (0 : MvPolynomial (Fin 2) (ZMod 2))) s)) =
        fun _ : Fin 2 => (0 : ZMod 2) := by
    funext
    simp
  rw [hvar, coeffMap_eval_eq_coeffToResidue, numeralEval]
  have hnodeFun :
      (fun i : Fin 2 => if i = 0 then ((0 : ℕ) : ZMod 2) else ((0 : ℕ) : ZMod 2)) =
        fun _ : Fin 2 => (0 : ZMod 2) := by
    funext i
    split_ifs <;> rfl
  rw [hnodeFun, ← MvPolynomial.coe_eval₂Hom]

private lemma reesLeading_mul {i j : ℕ} {a b : surfaceRing valuationOneCurve}
    (ha : a ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ i)
    (hb : b ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ j) :
    reesLeading (i + j) (a * b) = reesLeading i a * reesLeading j b := by
  have hdeg : 2 * (i + j) = 2 * i + 2 * j := by ring
  rw [reesLeading, reesLeading, reesLeading, map_mul, hdeg]
  have hcoeff :
      (surfaceToCusp a * surfaceToCusp b).coeff (2 * i + 2 * j) =
        (surfaceToCusp a).coeff (2 * i) * (surfaceToCusp b).coeff (2 * j) := by
    rw [Polynomial.coeff_mul]
    refine Finset.sum_eq_single (2 * i, 2 * j) ?_ ?_
    · intro x hx hxne
      have hxsum : x.1 + x.2 = 2 * i + 2 * j := Finset.mem_antidiagonal.mp hx
      by_cases hlt : x.1 < 2 * i
      · rw [surfaceToCusp_coeff_lt hlt ha, zero_mul]
      · have hne : x.1 ≠ 2 * i := by
          intro heq
          apply hxne
          have hsum : 2 * i + x.2 = 2 * i + 2 * j := by simpa [heq] using hxsum
          have h2 : x.2 = 2 * j := Nat.add_left_cancel hsum
          exact Prod.ext heq h2
        have hgt : 2 * i < x.1 :=
          Nat.lt_of_le_of_ne (Nat.not_lt.mp hlt) (Ne.symm hne)
        have h2lt : x.2 < 2 * j :=
          Nat.lt_of_add_lt_add_left <|
            calc
              2 * i + x.2 < x.1 + x.2 := Nat.add_lt_add_right hgt x.2
              _ = 2 * i + 2 * j := by rw [← hxsum]
        rw [surfaceToCusp_coeff_lt h2lt hb, mul_zero]
    · intro hnot
      exact (hnot (Finset.mem_antidiagonal.mpr rfl)).elim
  rw [hcoeff, map_mul]

private lemma reesLeading_X0 :
    reesLeading 1 (surfaceNumeralX valuationOneCurve 0) = 1 := by
  have hX : surfaceNumeralX valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X 0) := by
    simp [surfaceNumeralX, Nat.cast_zero, map_zero, sub_zero]
  rw [reesLeading, hX, surfaceToCusp_mk, surfacePolyModTwo, MvPolynomial.map_X, cuspParam_X]
  simp [Polynomial.coeff_X_pow]

private lemma reesLeading_two :
    reesLeading 1 (2 : surfaceRing valuationOneCurve) = 0 := by
  rw [reesLeading, two_eq_quotient_mk, surfaceToCusp_mk]
  have h2 : surfacePolyModTwo (MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2]))) = 0 := by
    simp [surfacePolyModTwo, residue_kills_two, MvPolynomial.C_0]
  simp [h2]

private lemma reesLeading_Y0 :
    reesLeading 1 (surfaceNumeralY valuationOneCurve 0) = 0 := by
  have hY : surfaceNumeralY valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X 1) := by
    simp [surfaceNumeralY, Nat.cast_zero, map_zero, sub_zero]
  rw [reesLeading, hY, surfaceToCusp_mk, surfacePolyModTwo, MvPolynomial.map_X, cuspParam_Y]
  simp [Polynomial.coeff_X_pow, show (2 : ℕ) ≠ 3 by decide]

/-- Sum of the cusp leading coefficients of a Rees polynomial. -/
noncomputable def reesNodeFun
    (p : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) : ZMod 2 :=
  (p : Polynomial (surfaceRing valuationOneCurve)).sum fun n r => reesLeading n r

private noncomputable def leadPoly
    (p : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
    Polynomial (ZMod 2) :=
  (p : Polynomial (surfaceRing valuationOneCurve)).sum fun n r =>
    Polynomial.C (reesLeading n r) * Polynomial.X ^ n

private lemma leadPoly_coeff
    (p : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) (k : ℕ) :
    (leadPoly p).coeff k =
      reesLeading k ((p : Polynomial (surfaceRing valuationOneCurve)).coeff k) := by
  classical
  rw [leadPoly, Polynomial.coeff_sum]
  simp_rw [Polynomial.coeff_C_mul_X_pow]
  by_cases hk : k ∈ (p : Polynomial (surfaceRing valuationOneCurve)).support
  · rw [Polynomial.sum, Finset.sum_eq_single k]
    · rw [if_pos rfl]
    · intro b _hb hbk
      rw [if_neg (Ne.symm hbk)]
    · intro h
      exact (h hk).elim
  · rw [Polynomial.not_mem_support_iff.mp hk, reesLeading_zero]
    rw [Polynomial.sum]
    apply Finset.sum_eq_zero
    intro b hb
    have hbk : k ≠ b := by
      intro h
      apply hk
      simpa [h] using hb
    rw [if_neg hbk]

private lemma leadPoly_mul
    (p q : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
    leadPoly (p * q) = leadPoly p * leadPoly q := by
  classical
  ext k
  rw [leadPoly_coeff, Subalgebra.coe_mul, Polynomial.coeff_mul]
  rw [show reesLeading k = ⇑(reesLeadingAdd k) from rfl, map_sum (reesLeadingAdd k)]
  rw [Polynomial.coeff_mul]
  refine Finset.sum_congr rfl ?_
  intro ij hij
  have hpair : ij.1 + ij.2 = k := Finset.mem_antidiagonal.mp hij
  have ha :
      (p : Polynomial (surfaceRing valuationOneCurve)).coeff ij.1 ∈
        numeralCentreIdeal valuationOneCurve 0 0 ^ ij.1 :=
    (mem_reesAlgebra_iff _ _).mp p.property ij.1
  have hb :
      (q : Polynomial (surfaceRing valuationOneCurve)).coeff ij.2 ∈
        numeralCentreIdeal valuationOneCurve 0 0 ^ ij.2 :=
    (mem_reesAlgebra_iff _ _).mp q.property ij.2
  rw [← hpair, leadPoly_coeff, leadPoly_coeff]
  exact reesLeading_mul ha hb

private lemma reesNodeFun_eq_eval
    (p : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
    reesNodeFun p = Polynomial.eval (1 : ZMod 2) (leadPoly p) := by
  simp only [reesNodeFun, leadPoly, Polynomial.sum]
  rw [Polynomial.eval_finset_sum]
  refine Finset.sum_congr rfl ?_
  intro n _hn
  simp [Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X, Polynomial.eval_pow, one_pow]

private lemma reesNodeFun_mul
    (p q : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
    reesNodeFun (p * q) = reesNodeFun p * reesNodeFun q := by
  rw [reesNodeFun_eq_eval, reesNodeFun_eq_eval, reesNodeFun_eq_eval, leadPoly_mul,
    Polynomial.eval_mul]

private lemma leadPoly_add
    (p q : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
    leadPoly (p + q) = leadPoly p + leadPoly q := by
  ext k
  rw [leadPoly_coeff, Subalgebra.coe_add, Polynomial.coeff_add, reesLeading_add,
    Polynomial.coeff_add, leadPoly_coeff, leadPoly_coeff]

private lemma reesNodeFun_add
    (p q : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
    reesNodeFun (p + q) = reesNodeFun p + reesNodeFun q := by
  rw [reesNodeFun_eq_eval, reesNodeFun_eq_eval, reesNodeFun_eq_eval, leadPoly_add,
    Polynomial.eval_add]

private lemma reesNodeFun_one :
    reesNodeFun (1 : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) = 1 := by
  rw [reesNodeFun, Subalgebra.coe_one, ← Polynomial.C_1,
    Polynomial.sum_C_index (reesLeading_zero 0), reesLeading_zero_eq, map_one]

/-- `Rees(I) → 𝔽₂` at the node. `Xt` goes to `1`. -/
noncomputable def reesNodeHom :
    reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0) →+* ZMod 2 where
  toFun := reesNodeFun
  map_one' := reesNodeFun_one
  map_mul' := reesNodeFun_mul
  map_zero' := by simp [reesNodeFun]
  map_add' := reesNodeFun_add

private lemma reesNodeHom_algebraMap (r : surfaceRing valuationOneCurve) :
    reesNodeHom
        (algebraMap (surfaceRing valuationOneCurve)
          (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) r) =
      valuationOne_nodeEval r := by
  have hcoe :
      ((algebraMap (surfaceRing valuationOneCurve)
            (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) r :
          reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
          Polynomial (surfaceRing valuationOneCurve)) =
        Polynomial.C r := by
    rw [Subalgebra.coe_algebraMap, Polynomial.algebraMap_eq]
  rw [show reesNodeHom (algebraMap _ _ r) = reesNodeFun (algebraMap _ _ r) from rfl,
    reesNodeFun, hcoe, Polynomial.sum_C_index (reesLeading_zero 0), reesLeading_zero_eq]

private lemma reesNodeHom_const (r : surfaceRing valuationOneCurve) :
    reesNodeHom (numeralReesConst valuationOneCurve 0 0 r) =
      valuationOne_nodeEval r := by
  have hcoe :
      ((numeralReesConst valuationOneCurve 0 0 r :
          reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
          Polynomial (surfaceRing valuationOneCurve)) =
        Polynomial.monomial 0 r := by
    simp [numeralReesConst, centreReesMonomial]
  rw [show reesNodeHom (numeralReesConst valuationOneCurve 0 0 r) =
      reesNodeFun (numeralReesConst valuationOneCurve 0 0 r) from rfl, reesNodeFun, hcoe,
    Polynomial.sum_monomial_index _ _ (reesLeading_zero 0), reesLeading_zero_eq]

private lemma reesNodeHom_XT :
    reesNodeHom (numeralReesXT valuationOneCurve 0 0) = 1 := by
  have hcoe :
      ((numeralReesXT valuationOneCurve 0 0 :
          reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
          Polynomial (surfaceRing valuationOneCurve)) =
        Polynomial.monomial 1 (surfaceNumeralX valuationOneCurve 0) := by
    simp [numeralReesXT, centreReesMonomial, surfaceNumeralX, Nat.cast_zero, map_zero, sub_zero]
  rw [show reesNodeHom (numeralReesXT valuationOneCurve 0 0) =
      reesNodeFun (numeralReesXT valuationOneCurve 0 0) from rfl, reesNodeFun, hcoe,
    Polynomial.sum_monomial_index _ _ (reesLeading_zero 1), reesLeading_X0]

private lemma reesNodeHom_two :
    reesNodeHom (numeralReesTwo valuationOneCurve 0 0) = 0 := by
  have hcoe :
      ((numeralReesTwo valuationOneCurve 0 0 :
          reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
          Polynomial (surfaceRing valuationOneCurve)) =
        Polynomial.monomial 1 (2 : surfaceRing valuationOneCurve) := by
    simp [numeralReesTwo, centreReesMonomial]
  rw [show reesNodeHom (numeralReesTwo valuationOneCurve 0 0) =
      reesNodeFun (numeralReesTwo valuationOneCurve 0 0) from rfl, reesNodeFun, hcoe,
    Polynomial.sum_monomial_index _ _ (reesLeading_zero 1), reesLeading_two]

private lemma reesNodeHom_YT :
    reesNodeHom (numeralReesYT valuationOneCurve 0 0) = 0 := by
  have hcoe :
      ((numeralReesYT valuationOneCurve 0 0 :
          reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)) :
          Polynomial (surfaceRing valuationOneCurve)) =
        Polynomial.monomial 1 (surfaceNumeralY valuationOneCurve 0) := by
    simp [numeralReesYT, centreReesMonomial, surfaceNumeralY, Nat.cast_zero, map_zero, sub_zero]
  rw [show reesNodeHom (numeralReesYT valuationOneCurve 0 0) =
      reesNodeFun (numeralReesYT valuationOneCurve 0 0) from rfl, reesNodeFun, hcoe,
    Polynomial.sum_monomial_index _ _ (reesLeading_zero 1), reesLeading_Y0]

private lemma reesNodeHom_mem_special
    {a : reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0)}
    (ha : a ∈ numeralReesSpecialIdeal valuationOneCurve 0 0) :
    reesNodeHom a = 0 := by
  obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
  rw [map_mul, reesNodeHom_algebraMap, valuationOne_nodeEval, two_eq_quotient_mk,
    Ideal.Quotient.lift_mk, numeralEval_two, mul_zero]

/-- The node hom descends to `Rees(I)/(2)`. -/
noncomputable def reesSpecialNodeHom :
    reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0) ⧸
        numeralReesSpecialIdeal valuationOneCurve 0 0 →+* ZMod 2 :=
  Ideal.Quotient.lift (numeralReesSpecialIdeal valuationOneCurve 0 0) reesNodeHom
    (fun _a ha => reesNodeHom_mem_special ha)

private lemma reesSpecialNodeHom_XT :
    reesSpecialNodeHom
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesXT valuationOneCurve 0 0)) = 1 := by
  rw [reesSpecialNodeHom, Ideal.Quotient.lift_mk, reesNodeHom_XT]

private lemma reesSpecialNodeHom_two :
    reesSpecialNodeHom
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesTwo valuationOneCurve 0 0)) = 0 := by
  rw [reesSpecialNodeHom, Ideal.Quotient.lift_mk, reesNodeHom_two]

private lemma reesSpecialNodeHom_YT :
    reesSpecialNodeHom
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesYT valuationOneCurve 0 0)) = 0 := by
  rw [reesSpecialNodeHom, Ideal.Quotient.lift_mk, reesNodeHom_YT]

private lemma reesSpecialNodeHom_const (r : surfaceRing valuationOneCurve) :
    reesSpecialNodeHom
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesConst valuationOneCurve 0 0 r)) =
      valuationOne_nodeEval r := by
  rw [reesSpecialNodeHom, Ideal.Quotient.lift_mk, reesNodeHom_const]

private lemma chartNodeDenomUnit :
    ∀ y : Submonoid.powers
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesXT valuationOneCurve 0 0)),
      IsUnit (reesSpecialNodeHom y) := by
  intro y
  obtain ⟨k, hk⟩ :=
    (Submonoid.mem_powers_iff (↑y)
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0))).mp y.property
  rw [← hk, map_pow, reesSpecialNodeHom_XT, one_pow]
  exact isUnit_one

/-- The chart `D₊(Xt)` does not collapse: no power of the denominator
is zero, so `0` and `1` stay distinct in the degree-zero localization. -/
theorem chart_Dplus_Xt_nontrivial_valuationOne :
    Nontrivial (chart_Dplus_Xt_ring valuationOneCurve 0 0) := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  letI : GradedAlgebra (homogeneousQuotientComponent (centreReesComponent I) J) :=
    homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  have hf : ∀ n, f ^ n ≠ 0 := valuationOne_specialXT_pow_ne_zero
  unfold chart_Dplus_Xt_ring
  refine ⟨0, 1, ?_⟩
  intro h
  have hval := congrArg HomogeneousLocalization.val h
  rw [HomogeneousLocalization.val_zero, HomogeneousLocalization.val_one] at hval
  rw [← Localization.mk_zero (1 : Submonoid.powers f), ← Localization.mk_one] at hval
  rw [Localization.mk_eq_mk_iff] at hval
  obtain ⟨c, hc⟩ := Localization.r_iff_exists.mp hval
  have hc0 : (c : reesAlgebra I ⧸ J) = 0 := by
    dsimp at hc
    rw [one_mul (0 : reesAlgebra I ⧸ J), one_mul (1 : reesAlgebra I ⧸ J),
      mul_zero (c : reesAlgebra I ⧸ J), mul_one (c : reesAlgebra I ⧸ J)] at hc
    exact hc.symm
  obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff (c : reesAlgebra I ⧸ J) f).mp c.property
  exact hf n (hn.trans hc0)

/-- `D₊(Xt)` has a prime on this curve. The prime is a maximal ideal of
the chart ring. It is not shown to be the ideal of ratios
`(2t / Xt, Yt / Xt)`, and the residue field is not shown to be `𝔽₂`. -/
theorem chart_Dplus_Xt_prime_valuationOne :
    Nonempty (PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0)) := by
  haveI := chart_Dplus_Xt_nontrivial_valuationOne
  infer_instance

private lemma const_X_mul_two_eq_scalar_two_mul_xt
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    numeralReesConst W ap bq (surfaceNumeralX W ap) * numeralReesTwo W ap bq =
      algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq))
          (2 : surfaceRing W) *
        numeralReesXT W ap bq := by
  apply Subtype.ext
  unfold numeralReesConst numeralReesTwo numeralReesXT centreReesMonomial surfaceNumeralX
  rw [Subalgebra.coe_mul, Subalgebra.coe_mul, Subalgebra.coe_algebraMap]
  dsimp
  rw [Polynomial.C_mul_monomial]
  have hcoef := mul_comm
    ((Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
      (MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
    (2 : surfaceRing W)
  rw [hcoef, ← Polynomial.C_mul_monomial]

private lemma xt_mul_const_Y_eq_const_X_mul_yt
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    numeralReesXT W ap bq * numeralReesConst W ap bq (surfaceNumeralY W bq) =
      numeralReesConst W ap bq (surfaceNumeralX W ap) * numeralReesYT W ap bq := by
  apply Subtype.ext
  unfold numeralReesXT numeralReesYT numeralReesConst centreReesMonomial
    surfaceNumeralX surfaceNumeralY
  rw [Subalgebra.coe_mul, Subalgebra.coe_mul]
  dsimp
  rw [Polynomial.monomial_mul_C, Polynomial.C_mul_monomial]

/-- In `Rees/(2)`, the degree-zero class of `X - ap` kills `2t / Xt`. -/
theorem chart_X_mul_two_over_X_eq_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_X W ap bq * chart_two_over_X W ap bq = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_mul, HomogeneousLocalization.val_zero]
  simp only [chart_X, chart_two_over_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_mul]
  have hnum :
      Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralX W ap)) *
        Ideal.Quotient.mk J (numeralReesTwo W ap bq) = 0 := by
    rw [← map_mul, const_X_mul_two_eq_scalar_two_mul_xt, map_mul]
    have h2 : Ideal.Quotient.mk J
        (algebraMap (surfaceRing W) (reesAlgebra I) (2 : surfaceRing W)) = 0 := by
      rw [Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.mem_span_singleton_self _
    rw [h2]
    exact zero_mul ((Ideal.Quotient.mk J) (numeralReesXT W ap bq))
  rw [hnum]
  rw [← Localization.mk_zero (1 : Submonoid.powers f)]
  rw [Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  dsimp
  rw [mul_zero ((1 : reesAlgebra I ⧸ J) *
    (Ideal.Quotient.mk J) (numeralReesXT W ap bq))]
  rw [mul_zero (1 : reesAlgebra I ⧸ J)]
  rw [mul_zero (1 : reesAlgebra I ⧸ J)]

/-- `C(Y - bq) / 1 = C(X - ap) / 1 · (Yt / Xt)` on the chart `D₊(Xt)`. -/
theorem chart_Y_eq_chart_X_mul_Y_over_X
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Y W ap bq = chart_X W ap bq * chart_Y_over_X W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_mul]
  simp only [chart_Y, chart_X, chart_Y_over_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_mul, Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  have hcomm := congrArg (Ideal.Quotient.mk J)
    (xt_mul_const_Y_eq_const_X_mul_yt W ap bq)
  rw [map_mul, map_mul] at hcomm
  dsimp
  rw [one_mul (((1 : reesAlgebra I ⧸ J) * (Ideal.Quotient.mk J) (numeralReesXT W ap bq)) *
    (Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralY W bq)))]
  rw [one_mul ((1 : reesAlgebra I ⧸ J) *
    ((Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralX W ap)) *
      (Ideal.Quotient.mk J) (numeralReesYT W ap bq)))]
  rw [one_mul ((Ideal.Quotient.mk J) (numeralReesXT W ap bq))]
  rw [one_mul ((Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralX W ap)) *
    (Ideal.Quotient.mk J) (numeralReesYT W ap bq))]
  exact hcomm

/-- `Y` kills `2t / Xt` as well, because `Y = X · (Yt / Xt)`. -/
theorem chart_Y_mul_two_over_X_eq_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Y W ap bq * chart_two_over_X W ap bq = 0 := by
  rw [chart_Y_eq_chart_X_mul_Y_over_X, mul_right_comm,
    chart_X_mul_two_over_X_eq_zero, zero_mul]

/-- `Y` is redundant in `⟨X, Y, 2t/Xt, Yt/Xt⟩`: it equals `X · (Yt / Xt)`. -/
theorem ideal_XYUV_eq_span_X_UV
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    ideal_XYUV W ap bq =
      Ideal.span {chart_X W ap bq, chart_two_over_X W ap bq,
        chart_Y_over_X W ap bq} := by
  apply le_antisymm
  · rw [ideal_XYUV, Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl | rfl
    · exact Ideal.subset_span (by simp)
    · rw [chart_Y_eq_chart_X_mul_Y_over_X]
      exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
  · rw [ideal_XYUV, Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)


/-- `Y` lies in `⟨X, 2t/Xt, Yt/Xt⟩`, because `Y = X · (Yt / Xt)`. -/
theorem chart_Y_mem_span_X_UV
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Y W ap bq ∈ Ideal.span {chart_X W ap bq, chart_two_over_X W ap bq,
      chart_Y_over_X W ap bq} := by
  rw [chart_Y_eq_chart_X_mul_Y_over_X]
  exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))

/-- Quotienting the chart by `⟨X, 2t/Xt, Yt/Xt⟩` kills `Y`.
The class of `Y` is not a leftover nilpotent. -/
theorem quotient_span_XUV_kills_Y
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal.Quotient.mk (Ideal.span {chart_X W ap bq, chart_two_over_X W ap bq,
        chart_Y_over_X W ap bq}) (chart_Y W ap bq) = 0 := by
  rw [Ideal.Quotient.eq_zero_iff_mem]
  exact chart_Y_mem_span_X_UV W ap bq

/-!
### Polynomial model of the chart

`𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`, then the further quotient by
`⟨X, U, V⟩`. This is not an isomorphism with `chart_Dplus_Xt_ring`.
-/

/-- `X` in the model `𝔽₂[X, Y, U, V]`. -/
noncomputable def modelX : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 0

/-- `Y` in the model `𝔽₂[X, Y, U, V]`. -/
noncomputable def modelY : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 1

/-- `U`, standing for `2t / Xt`. -/
noncomputable def modelU : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 2

/-- `V`, standing for `Yt / Xt`. -/
noncomputable def modelV : MvPolynomial (Fin 4) (ZMod 2) := MvPolynomial.X 3

/-- The relations `X·U = 0`, `Y = X·V`, and `Y² = X³`. -/
noncomputable def modelRelationIdeal : Ideal (MvPolynomial (Fin 4) (ZMod 2)) :=
  Ideal.span {modelX * modelU, modelY - modelX * modelV, modelY ^ 2 - modelX ^ 3}

/-- `⟨X, U, V⟩` in the polynomial model. -/
noncomputable def modelXUVIdeal : Ideal (MvPolynomial (Fin 4) (ZMod 2)) :=
  Ideal.span {modelX, modelU, modelV}

/-- `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`. -/
abbrev modelXtChart : Type :=
  MvPolynomial (Fin 4) (ZMod 2) ⧸ modelRelationIdeal

/-- The model chart modulo `⟨X, U, V⟩`. -/
abbrev modelXtChartModXUV : Type :=
  modelXtChart ⧸ modelXUVIdeal.map (Ideal.Quotient.mk modelRelationIdeal)

/-- `⟨Y² − X³, X, U, V⟩`, the model that drops `Y = X·V`. -/
noncomputable def modelForgetYIdeal : Ideal (MvPolynomial (Fin 4) (ZMod 2)) :=
  Ideal.span {modelY ^ 2 - modelX ^ 3, modelX, modelU, modelV}

private lemma modelRelation_sup_XUV_eq_named_span :
    modelRelationIdeal ⊔ modelXUVIdeal =
      Ideal.span ({modelX, modelY, modelU, modelV} :
        Set (MvPolynomial (Fin 4) (ZMod 2))) := by
  apply le_antisymm
  · refine sup_le ?_ ?_
    · rw [modelRelationIdeal, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl | rfl
      · exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))
      · exact Ideal.sub_mem _ (Ideal.subset_span (by simp))
          (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
      · exact Ideal.sub_mem _
          (Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) 2 (by decide))
          (Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) 3 (by decide))
    · rw [modelXUVIdeal, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl | rfl
      · exact Ideal.subset_span (by simp)
      · exact Ideal.subset_span (by simp)
      · exact Ideal.subset_span (by simp)
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl | rfl
    · exact Submodule.mem_sup_right (by
        rw [modelXUVIdeal]; exact Ideal.subset_span (by simp))
    · rw [← sub_add_cancel modelY (modelX * modelV)]
      refine Ideal.add_mem _ ?_ ?_
      · exact Submodule.mem_sup_left (by
          rw [modelRelationIdeal]; exact Ideal.subset_span (by simp))
      · exact Submodule.mem_sup_right (by
          rw [modelXUVIdeal]
          exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
    · exact Submodule.mem_sup_right (by
        rw [modelXUVIdeal]; exact Ideal.subset_span (by simp))
    · exact Submodule.mem_sup_right (by
        rw [modelXUVIdeal]; exact Ideal.subset_span (by simp))

private lemma model_named_span_eq_X_image :
    Ideal.span ({modelX, modelY, modelU, modelV} :
        Set (MvPolynomial (Fin 4) (ZMod 2))) =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) := by
  apply congrArg Ideal.span
  ext z
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff, Set.mem_image,
    Set.mem_univ, true_and]
  constructor
  · rintro (rfl | rfl | rfl | rfl)
    · exact ⟨0, rfl⟩
    · exact ⟨1, rfl⟩
    · exact ⟨2, rfl⟩
    · exact ⟨3, rfl⟩
  · rintro ⟨i, rfl⟩
    have hcov : ∀ j : Fin 4, j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by decide
    rcases hcov i with rfl | rfl | rfl | rfl
    · simp [modelX, modelY, modelU, modelV]
    · simp [modelX, modelY, modelU, modelV]
    · simp [modelX, modelY, modelU, modelV]
    · simp [modelX, modelY, modelU, modelV]

/-- `⟨X·U, Y − X·V, Y² − X³⟩` together with `⟨X, U, V⟩` is the ideal of
all four variables. `Y` enters through `Y = (Y − X·V) + X·V`. -/
theorem modelRelation_sup_XUV_eq_X_span :
    modelRelationIdeal ⊔ modelXUVIdeal =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) :=
  modelRelation_sup_XUV_eq_named_span.trans model_named_span_eq_X_image

/-- Evaluation at the origin of `𝔽₂⁴`. -/
noncomputable def modelEvalZero :
    MvPolynomial (Fin 4) (ZMod 2) →+* ZMod 2 :=
  MvPolynomial.eval (fun _ => (0 : ZMod 2))

theorem modelEvalZero_surjective : Function.Surjective modelEvalZero := by
  intro a
  exact ⟨MvPolynomial.C a, by simp [modelEvalZero]⟩

private lemma modelEvalZero_eq_coeff_zero
    (p : MvPolynomial (Fin 4) (ZMod 2)) :
    modelEvalZero p = p.coeff 0 := by
  classical
  rw [modelEvalZero, MvPolynomial.eval_eq]
  have hterm : ∀ d : Fin 4 →₀ ℕ, d ≠ 0 →
      p.coeff d * ∏ i ∈ d.support, (0 : ZMod 2) ^ d i = 0 := by
    intro d hd
    have hsup : d.support.Nonempty := by
      rw [Finset.nonempty_iff_ne_empty]
      intro hempty
      apply hd
      exact (Finsupp.support_eq_empty.mp hempty)
    obtain ⟨i, hi⟩ := hsup
    rw [Finset.prod_eq_zero hi (zero_pow (Finsupp.mem_support_iff.mp hi)), mul_zero]
  by_cases h0 : (0 : Fin 4 →₀ ℕ) ∈ p.support
  · rw [Finset.sum_eq_single (0 : Fin 4 →₀ ℕ)]
    · simp [Finsupp.support_zero]
    · intro d _hd hd0
      exact hterm d hd0
    · intro h
      exact (h h0).elim
  · rw [MvPolynomial.not_mem_support_iff.mp h0]
    apply Finset.sum_eq_zero
    intro d hd
    apply hterm d
    intro hd0
    apply h0
    simpa [hd0] using hd

theorem modelEvalZero_ker :
    RingHom.ker modelEvalZero =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) := by
  ext p
  rw [RingHom.mem_ker, modelEvalZero_eq_coeff_zero,
    MvPolynomial.mem_ideal_span_X_image]
  constructor
  · intro hcoeff m hm
    have hm0 : m ≠ 0 := by
      intro hm0
      subst hm0
      rw [MvPolynomial.mem_support_iff] at hm
      exact hm hcoeff
    have hex : ∃ i, m i ≠ 0 := by
      by_contra h
      push_neg at h
      apply hm0
      ext i
      exact h i
    obtain ⟨i, hi⟩ := hex
    exact ⟨i, Set.mem_univ _, hi⟩
  · intro h
    by_contra hnz
    have hmem : (0 : Fin 4 →₀ ℕ) ∈ p.support :=
      MvPolynomial.mem_support_iff.mpr hnz
    obtain ⟨i, -, hi⟩ := h 0 hmem
    exact hi rfl

/-- The model chart modulo `⟨X, U, V⟩` is `𝔽₂`. `Y` is zero because
`Y = X·V`, and `Y² − X³` becomes `0 = 0`. -/
noncomputable def modelXtChartModXUV_equiv_F2 :
    modelXtChartModXUV ≃+* ZMod 2 :=
  (DoubleQuot.quotQuotEquivQuotSup modelRelationIdeal modelXUVIdeal).trans <|
    (Ideal.quotEquivOfEq modelRelation_sup_XUV_eq_X_span).trans <|
      (Ideal.quotEquivOfEq modelEvalZero_ker.symm).trans <|
        RingHom.quotientKerEquivOfSurjective modelEvalZero_surjective

/-- In the quotient that drops `Y = X·V`, the class of `Y` squares to
zero, because `Y² = X³` and `X = 0`. -/
theorem modelForgetY_class_Y_sq_zero :
    (Ideal.Quotient.mk modelForgetYIdeal modelY) ^ 2 = 0 := by
  rw [← map_pow, Ideal.Quotient.eq_zero_iff_mem,
    ← sub_add_cancel (modelY ^ 2) (modelX ^ 3)]
  refine Ideal.add_mem _ ?_ ?_
  · rw [modelForgetYIdeal]
    exact Ideal.subset_span (by simp)
  · exact Ideal.pow_mem_of_mem _ (by
      rw [modelForgetYIdeal]
      exact Ideal.subset_span (by simp)) 3 (by decide)

/-- `X` is not divisible by `X²` in `𝔽₂[T]`. -/
theorem polynomial_X_not_mem_span_X_sq :
    (Polynomial.X : Polynomial (ZMod 2)) ∉
      Ideal.span ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
        Set (Polynomial (ZMod 2))) := by
  intro h
  rw [Ideal.mem_span_singleton, Polynomial.X_pow_dvd_iff] at h
  have h1 := h 1 (by decide)
  rw [Polynomial.coeff_X] at h1
  simp at h1

/-- `𝔽₂[T] / (T²)`. -/
abbrev modelNilpRing : Type :=
  Polynomial (ZMod 2) ⧸
    Ideal.span ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
      Set (Polynomial (ZMod 2)))

/-- Send `Y` to the class of `T` and `X`, `U`, `V` to `0`. -/
noncomputable def modelForgetYToNilp :
    MvPolynomial (Fin 4) (ZMod 2) →+* modelNilpRing :=
  MvPolynomial.eval₂Hom
    ((Ideal.Quotient.mk (Ideal.span
      ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} : Set (Polynomial (ZMod 2))))).comp
      Polynomial.C)
    (fun i : Fin 4 =>
      if i = 1 then
        Ideal.Quotient.mk (Ideal.span
          ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
            Set (Polynomial (ZMod 2)))) Polynomial.X
      else 0)

private lemma modelForgetYToNilp_X : modelForgetYToNilp modelX = 0 := by
  unfold modelForgetYToNilp modelX
  rw [MvPolynomial.eval₂Hom_X']
  simp

private lemma modelForgetYToNilp_U : modelForgetYToNilp modelU = 0 := by
  unfold modelForgetYToNilp modelU
  rw [MvPolynomial.eval₂Hom_X']
  simp

private lemma modelForgetYToNilp_V : modelForgetYToNilp modelV = 0 := by
  unfold modelForgetYToNilp modelV
  rw [MvPolynomial.eval₂Hom_X']
  simp

private lemma modelForgetYToNilp_Ysq_sub :
    modelForgetYToNilp (modelY ^ 2 - modelX ^ 3) = 0 := by
  rw [map_sub, map_pow, map_pow]
  unfold modelForgetYToNilp modelY modelX
  rw [MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X']
  simp
  rw [← map_pow, Ideal.Quotient.eq_zero_iff_mem]
  exact Ideal.mem_span_singleton_self _

private lemma modelForgetYIdeal_le_ker :
    modelForgetYIdeal ≤ RingHom.ker modelForgetYToNilp := by
  rw [modelForgetYIdeal, Ideal.span_le]
  intro z hz
  rw [SetLike.mem_coe, RingHom.mem_ker]
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · exact modelForgetYToNilp_Ysq_sub
  · exact modelForgetYToNilp_X
  · exact modelForgetYToNilp_U
  · exact modelForgetYToNilp_V

private lemma modelForgetYToNilp_Y :
    modelForgetYToNilp modelY =
      Ideal.Quotient.mk (Ideal.span
        ({(Polynomial.X : Polynomial (ZMod 2)) ^ 2} :
          Set (Polynomial (ZMod 2)))) Polynomial.X := by
  unfold modelForgetYToNilp modelY
  rw [MvPolynomial.eval₂Hom_X']
  simp

/-- The class of `Y` is nonzero in
`𝔽₂[X,Y,U,V] / (Y² − X³, X, U, V)`. Together with
`modelForgetY_class_Y_sq_zero`, it is a nonzero nilpotent, so
`⟨X, U, V⟩` does not kill `Y` unless the relation `Y = X·V` is used. -/
theorem modelForgetY_class_Y_ne_zero :
    Ideal.Quotient.mk modelForgetYIdeal modelY ≠ 0 := by
  intro h
  have hker : modelForgetYToNilp modelY = 0 := by
    rw [RingHom.mem_ker.mp (modelForgetYIdeal_le_ker
      ((Ideal.Quotient.eq_zero_iff_mem).mp h))]
  rw [modelForgetYToNilp_Y] at hker
  rw [Ideal.Quotient.eq_zero_iff_mem] at hker
  exact polynomial_X_not_mem_span_X_sq hker

/-- `𝔽₂[X,Y,U,V] / (Y² − X³, X, U, V)` is not a field. -/
theorem modelForgetYIdeal_not_maximal : ¬ modelForgetYIdeal.IsMaximal := by
  intro hmax
  rw [Ideal.Quotient.maximal_ideal_iff_isField_quotient] at hmax
  have hy := modelForgetY_class_Y_ne_zero
  have hsq := modelForgetY_class_Y_sq_zero
  rcases hmax.mul_inv_cancel hy with ⟨b, hb⟩
  apply hy
  calc
    Ideal.Quotient.mk modelForgetYIdeal modelY
        = Ideal.Quotient.mk modelForgetYIdeal modelY * 1 := by rw [mul_one]
    _ = Ideal.Quotient.mk modelForgetYIdeal modelY *
          (Ideal.Quotient.mk modelForgetYIdeal modelY * b) := by rw [hb]
    _ = (Ideal.Quotient.mk modelForgetYIdeal modelY *
          Ideal.Quotient.mk modelForgetYIdeal modelY) * b := by rw [mul_assoc]
    _ = 0 * b := by rw [← pow_two, hsq]
    _ = 0 := zero_mul _

private lemma numeralReesConst_pow
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) (n : ℕ) :
    numeralReesConst W ap bq r ^ n = numeralReesConst W ap bq (r ^ n) := by
  apply Subtype.ext
  unfold numeralReesConst centreReesMonomial
  rw [Subalgebra.coe_pow]
  dsimp
  exact (Polynomial.C_pow).symm

private lemma numeralReesConst_sub
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r s : surfaceRing W) :
    numeralReesConst W ap bq r - numeralReesConst W ap bq s =
      numeralReesConst W ap bq (r - s) := by
  unfold numeralReesConst
  rw [← map_sub (centreReesMonomial (numeralCentreIdeal W ap bq) 0)]
  congr 1

private lemma numeralReesConst_eq_algebraMap
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    numeralReesConst W ap bq r =
      algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq)) r := by
  apply Subtype.ext
  unfold numeralReesConst centreReesMonomial
  rw [Subalgebra.coe_algebraMap]
  dsimp

/-- On `Y² = X³ + 2` at `(0, 0)`, `Y² − X³ = −2` in the surface ring. -/
theorem valuationOne_node_Ysq_sub_Xcu :
    surfaceNumeralY valuationOneCurve 0 ^ 2 -
      surfaceNumeralX valuationOneCurve 0 ^ 3 =
      -(2 : surfaceRing valuationOneCurve) := by
  have hX : surfaceNumeralX valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2)) := by
    simp [surfaceNumeralX, map_zero, sub_zero]
  have hY : surfaceNumeralY valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (1 : Fin 2)) := by
    simp [surfaceNumeralY, map_zero, sub_zero]
  let φ := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
  rw [hX, hY, ← map_pow φ, ← map_pow φ, ← map_sub φ, valuationOne_two_eq,
    ← map_neg φ]
  apply congrArg
  ring

private lemma valuationOne_const_Ysq_sub_Xcu_mem_special :
    numeralReesConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0) ^ 2 -
      numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0) ^ 3 ∈
      numeralReesSpecialIdeal valuationOneCurve 0 0 := by
  let ψ := algebraMap (surfaceRing valuationOneCurve)
    (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0))
  rw [numeralReesConst_pow, numeralReesConst_pow, numeralReesConst_sub,
    valuationOne_node_Ysq_sub_Xcu, numeralReesConst_eq_algebraMap, map_neg ψ]
  exact Submodule.neg_mem _ (Ideal.mem_span_singleton_self _)

/-- In `Rees/(2)` on this node, `C(Y)² = C(X)³`. -/
theorem valuationOne_special_const_Ysq_eq_Xcu :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0))) ^ 2 =
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0))) ^ 3 := by
  let ψ := Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
  rw [← map_pow ψ, ← map_pow ψ, Ideal.Quotient.eq]
  exact valuationOne_const_Ysq_sub_Xcu_mem_special

/-- On the chart `D₊(Xt)` of `Y² = X³ + 2` at `(0, 0)`, `Y² = X³`. -/
theorem chart_Y_sq_eq_chart_X_cu_valuationOne :
    chart_Y valuationOneCurve 0 0 ^ 2 = chart_X valuationOneCurve 0 0 ^ 3 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_pow, HomogeneousLocalization.val_pow]
  simp only [chart_Y, chart_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_pow, Localization.mk_pow, Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  dsimp
  change (1 : reesAlgebra I ⧸ J) *
      ((1 : reesAlgebra I ⧸ J) ^ 3 *
        (Ideal.Quotient.mk J
          (numeralReesConst valuationOneCurve 0 0
            (surfaceNumeralY valuationOneCurve 0))) ^ 2) =
    (1 : reesAlgebra I ⧸ J) *
      ((1 : reesAlgebra I ⧸ J) ^ 2 *
        (Ideal.Quotient.mk J
          (numeralReesConst valuationOneCurve 0 0
            (surfaceNumeralX valuationOneCurve 0))) ^ 3)
  have h3 : (1 : reesAlgebra I ⧸ J) ^ 3 = 1 := one_pow _
  have h2 : (1 : reesAlgebra I ⧸ J) ^ 2 = 1 := one_pow _
  rw [h3, h2]
  set y := (Ideal.Quotient.mk J
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0))) ^ 2
  set x := (Ideal.Quotient.mk J
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0))) ^ 3
  rw [one_mul (1 * y), one_mul y, one_mul (1 * x), one_mul x]
  exact valuationOne_special_const_Ysq_eq_Xcu

/-- On `Y² = X³ + 2` at `(0, 0)`, `(2t / Xt)² = 0` in the chart `D₊(Xt)`.
The numerator is the class of `2t`, and that class squares to zero in
`Rees/(2)`. `chart_two_over_X_ne_zero` says the ratio itself is not zero. -/
theorem chart_two_over_X_sq_zero :
    chart_two_over_X valuationOneCurve 0 0 ^ 2 = 0 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_pow, HomogeneousLocalization.val_zero]
  simp only [chart_two_over_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_pow]
  have hsq :
      (Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0)) ^ 2 = 0 :=
    valuationOne_specialTwo_sq_zero
  rw [hsq, Localization.mk]
  simp

/-- On `Y² = X³ + 2` at `(0, 0)`, `2t / Xt` is not zero in the chart
`D₊(Xt)`. The square of the ratio is zero, so the chart is non-reduced.
`(Xt)^n · (2t) = 0` in `Rees/(2)` would put `X^n` in `I^{n+1}`. -/
theorem chart_two_over_X_ne_zero :
    chart_two_over_X valuationOneCurve 0 0 ≠ 0 := by
  intro hzero
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  have hval := congrArg HomogeneousLocalization.val hzero
  rw [HomogeneousLocalization.val_zero] at hval
  simp only [chart_two_over_X, HomogeneousLocalization.val_mk] at hval
  rw [← Localization.mk_zero (1 : Submonoid.powers f)] at hval
  rw [Localization.mk_eq_mk_iff] at hval
  obtain ⟨c, hc⟩ := Localization.r_iff_exists.mp hval
  have hc0 : (c : reesAlgebra I ⧸ J) *
      Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0) = 0 := by
    dsimp at hc
    rw [one_mul (Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0))] at hc
    rw [mul_zero (f : reesAlgebra I ⧸ J)] at hc
    rw [mul_zero (c : reesAlgebra I ⧸ J)] at hc
    exact hc
  obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff (c : reesAlgebra I ⧸ J) f).mp c.property
  have hkill : f ^ n *
      Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0) = 0 := by
    rw [hn, hc0]
  have hmem : (numeralReesXT valuationOneCurve 0 0) ^ n *
      numeralReesTwo valuationOneCurve 0 0 ∈ J := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, map_pow]
    exact hkill
  exact valuationOne_xt_pow_mul_two_not_special n hmem

/-- A quotient isomorphic to `𝔽₂` is a field, so the ideal is maximal. -/
theorem isMaximal_of_quotient_equiv_zmod_two
    {R : Type*} [CommRing R] (I : Ideal R) (e : R ⧸ I ≃+* ZMod 2) :
    I.IsMaximal := by
  refine Ideal.Quotient.maximal_of_isField I ?_
  have hcases : ∀ x : ZMod 2, x ≠ 0 → x = 1 := by decide
  refine ⟨⟨e.symm 0, e.symm 1, ?_⟩, mul_comm, ?_⟩
  · intro h
    have h01 : (0 : ZMod 2) = 1 := by
      have := congrArg e h
      rwa [e.apply_symm_apply, e.apply_symm_apply] at this
    exact zero_ne_one h01
  · intro a ha
    have ha' : e a ≠ 0 := by
      intro hz
      apply ha
      exact e.injective (hz.trans (map_zero e).symm)
    have hone : e a = 1 := hcases (e a) ha'
    refine ⟨e.symm (1 : ZMod 2), ?_⟩
    apply e.injective
    rw [map_mul e, e.apply_symm_apply, hone, map_one e, one_mul]

/-- `(Xt)^n ≠ 0` is necessary for `D₊(Xt)` to be nonempty. It is the
contrapositive of `proj_basicOpen_bot_of_pow_eq_zero`. It is not
sufficient: `basicOpen_pow` identifies `D₊(f^n)` with `D₊(f)`, and
`basicOpen_zero` kills `D₊(0)`, so a nilpotent element has empty
basic open. A non-nilpotent element need not lie outside some
homogeneous prime. -/
theorem pow_ne_zero_of_basicOpen_ne_bot
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    {f : A} {n : ℕ} (hn : 0 < n)
    (hopen : ProjectiveSpectrum.basicOpen 𝒜 f ≠ ⊥) : f ^ n ≠ 0 := by
  intro hfn
  exact hopen (proj_basicOpen_bot_of_pow_eq_zero 𝒜 f hn hfn)

/-- OPEN. The basic open `D₊(Xt)` is nonempty on this curve.
`valuationOne_specialXT_pow_ne_zero` gives `(Xt)^n ≠ 0`.
`pow_ne_zero_of_basicOpen_ne_bot` says that is necessary for
nonemptiness, not sufficient. `familySpecialFibreProjPoint` is one
point of the restricted space `Proj | D₊(Xt)`. This `Prop` asks for
an element of `ProjectiveSpectrum.basicOpen` itself, and that
carrier is not identified here. -/
def chart_Dplus_Xt_basicOpen_nonempty_valuationOne : Prop := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  exact Nonempty (↥(@ProjectiveSpectrum.basicOpen (surfaceRing valuationOneCurve)
    (reesAlgebra I ⧸ J) _ _ _ ℬ _
    ((Ideal.Quotient.mk J) (numeralReesXT valuationOneCurve 0 0))))

/-- OPEN. `(2t / Xt, Yt / Xt)` is a maximal ideal of the chart
`D₊(Xt)`, with quotient `𝔽₂`, whenever the reduced equation vanishes.
The chart has some prime on `Y² = X³ + 2`. That prime is not shown to
contain both ratios, and no evaluation `chart → 𝔽₂` is constructed.
The generators of this ideal are ratios. They are not `chart_X` or
`chart_Y`. Quotienting by the ratios is not shown to kill the
degree-zero class of `X`, and the chart is not presented as
`𝔽₂[X, Y] / (Y² - X³, X, Y)`. -/
def ideal_UV_maximal : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    (ideal_two_Y_over_X W ap bq).IsMaximal ∧
    Nonempty ((chart_Dplus_Xt_ring W ap bq ⧸ ideal_two_Y_over_X W ap bq) ≃+* ZMod 2)

/-- `S / (2) ≃ 𝔽₂[a,b]`. `PadicInt.toZMod` kills exactly the ideal `(2)`,
and `MvPolynomial.map` preserves that kernel. -/
theorem coeffModTwo_ker :
    RingHom.ker (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) :
        S →+* MvPolynomial (Fin 2) (ZMod 2)) =
      Ideal.span {MvPolynomial.C (2 : ℤ_[2])} := by
  apply le_antisymm
  · intro f hf
    rw [RingHom.mem_ker] at hf
    classical
    have hcoeff : ∀ m, f.coeff m ∈ Ideal.span {(2 : ℤ_[2])} := by
      intro m
      have h0 : PadicInt.toZMod (f.coeff m) = 0 := by
        rw [← MvPolynomial.coeff_map (f := (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)), hf,
          MvPolynomial.coeff_zero]
      have hker : f.coeff m ∈ RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
        rw [RingHom.mem_ker]
        exact h0
      rwa [PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p] at hker
    let d : (Fin 2 →₀ ℕ) → ℤ_[2] := fun m =>
      (Ideal.mem_span_singleton'.mp (hcoeff m)).choose
    have hd : ∀ m, d m * (2 : ℤ_[2]) = f.coeff m := fun m =>
      (Ideal.mem_span_singleton'.mp (hcoeff m)).choose_spec
    let g : S := ∑ m ∈ f.support, MvPolynomial.monomial m (d m)
    have hg : f = MvPolynomial.C (2 : ℤ_[2]) * g := by
      rw [MvPolynomial.as_sum f, Finset.mul_sum]
      refine Finset.sum_congr rfl ?_
      intro m _hm
      rw [MvPolynomial.C_mul_monomial, mul_comm (2 : ℤ_[2]) (d m), hd]
    rw [mul_comm] at hg
    exact Ideal.mem_span_singleton'.mpr ⟨g, hg.symm⟩
  · rw [Ideal.span_le]
    intro z hz
    rw [Set.mem_singleton_iff] at hz
    subst hz
    rw [SetLike.mem_coe, RingHom.mem_ker, MvPolynomial.map_C, residue_kills_two, map_zero]

private lemma padicToZMod_surjective :
    Function.Surjective (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
  intro y
  fin_cases y
  · exact ⟨0, map_zero _⟩
  · exact ⟨1, map_one _⟩

private lemma coeffModTwo_surjective :
    Function.Surjective (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) :
      S →+* MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.map_surjective (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) padicToZMod_surjective

/-- `ℤ_[2][a,b] / (2) ≃ 𝔽₂[a,b]`. -/
noncomputable def coeffModTwoEquiv :
    S ⧸ Ideal.span {MvPolynomial.C (2 : ℤ_[2])} ≃+*
      MvPolynomial (Fin 2) (ZMod 2) :=
  (Ideal.quotEquivOfEq coeffModTwo_ker.symm).trans
    (RingHom.quotientKerEquivOfSurjective coeffModTwo_surjective)

/-- The degree-zero class of a surface element on the chart `D₊(Xt)`. -/
noncomputable def chartConst (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) : chart_Dplus_Xt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq r)
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using specialClass_mem_degree_zero W ap bq r⟩,
      ⟨(1 : reesAlgebra I ⧸ J), quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

private lemma chartConst_val (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) :
    (chartConst W ap bq r).val =
      Localization.mk
        (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq)
          (numeralReesConst W ap bq r))
        (1 : Submonoid.powers
          (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq)
            (numeralReesXT W ap bq))) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  simp [chartConst, HomogeneousLocalization.val_mk]
  rfl

private lemma chartConst_mul (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r s : surfaceRing W) :
    chartConst W ap bq (r * s) = chartConst W ap bq r * chartConst W ap bq s := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_mul, chartConst_val, chartConst_val, chartConst_val,
    Localization.mk_mul]
  have hden : (1 : Submonoid.powers f) * 1 = 1 := mul_one _
  rw [hden]
  congr 1
  rw [← map_mul (Ideal.Quotient.mk J), numeralReesConst_eq_algebraMap,
    numeralReesConst_eq_algebraMap, numeralReesConst_eq_algebraMap, map_mul]

private lemma chartConst_add (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r s : surfaceRing W) :
    chartConst W ap bq (r + s) = chartConst W ap bq r + chartConst W ap bq s := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_add, chartConst_val, chartConst_val, chartConst_val]
  rw [Localization.add_mk_self
      (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq) (numeralReesConst W ap bq r))
      (1 : Submonoid.powers f)
      (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq) (numeralReesConst W ap bq s))]
  congr 1
  rw [← map_add (Ideal.Quotient.mk J), numeralReesConst_eq_algebraMap,
    numeralReesConst_eq_algebraMap, numeralReesConst_eq_algebraMap, map_add]

private lemma chartConst_one (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartConst W ap bq (1 : surfaceRing W) = 1 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartConst_val, HomogeneousLocalization.val_one, numeralReesConst_eq_algebraMap,
    map_one, map_one, Localization.mk_one]

private lemma chartConst_zero (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartConst W ap bq (0 : surfaceRing W) = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartConst_val, HomogeneousLocalization.val_zero, numeralReesConst_eq_algebraMap,
    map_zero, map_zero]
  exact Localization.mk_zero (1 : Submonoid.powers f)

/-- Constants of the surface ring, as degree-zero elements of the chart. -/
noncomputable def chartConstHom (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    surfaceRing W →+* chart_Dplus_Xt_ring W ap bq where
  toFun := chartConst W ap bq
  map_one' := chartConst_one W ap bq
  map_mul' := chartConst_mul W ap bq
  map_zero' := chartConst_zero W ap bq
  map_add' := chartConst_add W ap bq

/-- The chart `D₊(Xt)` is an algebra over `S = ℤ_[2][a,b]`. -/
noncomputable def chartScalar (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    S →+* chart_Dplus_Xt_ring W ap bq :=
  (chartConstHom W ap bq).comp (algebraMap S (surfaceRing W))

theorem chartScalar_C_two (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartScalar W ap bq (MvPolynomial.C (2 : ℤ_[2])) = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  rw [chartScalar, RingHom.comp_apply]
  have htwo : algebraMap S (surfaceRing W) (MvPolynomial.C (2 : ℤ_[2])) =
      (2 : surfaceRing W) := by
    rw [two_eq_quotient_mk]
    rfl
  rw [htwo]
  dsimp [chartConstHom]
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartConst_val, HomogeneousLocalization.val_zero, numeralReesConst_eq_algebraMap]
  have hJ0 : Ideal.Quotient.mk J
      (algebraMap (surfaceRing W) (reesAlgebra I) (2 : surfaceRing W)) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  rw [hJ0]
  exact Localization.mk_zero (1 : Submonoid.powers f)

/-- `2 = 0` in every chart `D₊(Xt)`. -/
theorem chart_two_eq_zero (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    (2 : chart_Dplus_Xt_ring W ap bq) = 0 := by
  have h := chartScalar_C_two W ap bq
  rw [chartScalar, RingHom.comp_apply] at h
  have htwo : algebraMap S (surfaceRing W) (MvPolynomial.C (2 : ℤ_[2])) =
      (2 : surfaceRing W) := by
    rw [two_eq_quotient_mk]
    rfl
  rw [htwo] at h
  rw [← map_ofNat (chartConstHom W ap bq)]
  exact h

/-- The structure map factors through `S / (2)`. -/
noncomputable def chartScalarModTwo (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    S ⧸ Ideal.span {MvPolynomial.C (2 : ℤ_[2])} →+* chart_Dplus_Xt_ring W ap bq :=
  Ideal.Quotient.lift (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) (chartScalar W ap bq)
    (by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul, chartScalar_C_two, mul_zero])

/-- The chart `D₊(Xt)` is an algebra over `𝔽₂[a,b]`. -/
noncomputable def chartFromF2Polynomial (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    MvPolynomial (Fin 2) (ZMod 2) →+* chart_Dplus_Xt_ring W ap bq :=
  (chartScalarModTwo W ap bq).comp coeffModTwoEquiv.symm.toRingHom

/-- The ideal `⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩` in the chart `D₊(Xt)`.
`a` and `b` are the images of the indeterminates of `𝔽₂[a,b]`.
`ideal_XYUV` does not contain those images. `Y` is redundant:
`Y = X · (Yt / Xt)`. -/
noncomputable def ideal_ABXYUV (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    Ideal (chart_Dplus_Xt_ring W ap bq) :=
  Ideal.span {
    chartFromF2Polynomial W ap bq (MvPolynomial.X 0),
    chartFromF2Polynomial W ap bq (MvPolynomial.X 1),
    chart_X W ap bq,
    chart_Y W ap bq,
    chart_two_over_X W ap bq,
    chart_Y_over_X W ap bq }

/-- `Y` is redundant in `⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩`. -/
theorem ideal_ABXYUV_eq_span_AB_X_UV
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    ideal_ABXYUV W ap bq =
      Ideal.span {
        chartFromF2Polynomial W ap bq (MvPolynomial.X 0),
        chartFromF2Polynomial W ap bq (MvPolynomial.X 1),
        chart_X W ap bq,
        chart_two_over_X W ap bq,
        chart_Y_over_X W ap bq } := by
  apply le_antisymm
  · rw [ideal_ABXYUV, Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl | rfl | rfl | rfl
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
    · rw [chart_Y_eq_chart_X_mul_Y_over_X]
      exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
  · rw [ideal_ABXYUV, Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl | rfl | rfl
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)
    · exact Ideal.subset_span (by simp)

/-- `⟨X, Y, 2t/Xt, Yt/Xt⟩` is contained in `⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩`. -/
theorem ideal_XYUV_le_ideal_ABXYUV
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    ideal_XYUV W ap bq ≤ ideal_ABXYUV W ap bq := by
  rw [ideal_XYUV, ideal_ABXYUV, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · exact Ideal.subset_span (by simp)
  · exact Ideal.subset_span (by simp)
  · exact Ideal.subset_span (by simp)
  · exact Ideal.subset_span (by simp)

private lemma coeffModTwoEquiv_mk (s : S) :
    coeffModTwoEquiv (Ideal.Quotient.mk (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) s) =
      MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) s := by
  rw [coeffModTwoEquiv, RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
    RingHom.quotientKerEquivOfSurjective, RingHom.quotientKerEquivOfRightInverse.apply,
    RingHom.kerLift_mk]

/-- Powers of `Xt` in `Rees(I)/(2)` satisfy the Ore condition because the
quotient is commutative. Instance search does not find this by itself. -/
private noncomputable instance chartNodeOreSet :
    OreLocalization.OreSet (Submonoid.powers
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0))) :=
  OreLocalization.oreSetComm
    (R := reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0) ⧸
      numeralReesSpecialIdeal valuationOneCurve 0 0) _

/-- The localization of `Rees(I)/(2)` at powers of `Xt` is a commutative ring. -/
private noncomputable instance chartNodeLocCommRing :
    CommRing (Localization (Submonoid.powers
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0)))) :=
  OreLocalization.instCommRing
    (R := reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0) ⧸
      numeralReesSpecialIdeal valuationOneCurve 0 0)
    (S := Submonoid.powers
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0)))

/-- `Rees(I)/(2)` is an algebra over the localization at powers of `Xt`. -/
private noncomputable instance chartNodeLocAlgebra :
    Algebra
      (reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0) ⧸
        numeralReesSpecialIdeal valuationOneCurve 0 0)
      (Localization (Submonoid.powers
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesXT valuationOneCurve 0 0)))) :=
  OreLocalization.instAlgebra
    (R₀ := reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0) ⧸
      numeralReesSpecialIdeal valuationOneCurve 0 0)
    (R := reesAlgebra (numeralCentreIdeal valuationOneCurve 0 0) ⧸
      numeralReesSpecialIdeal valuationOneCurve 0 0)
    (S := Submonoid.powers
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0)))

/-- `Xt` maps to `1` in `𝔽₂`, so the node hom of `Rees(I)/(2)` extends to
the localization at powers of `Xt`. -/
private noncomputable def chartNodeLiftHom :
    Localization (Submonoid.powers
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0))) →+* ZMod 2 :=
  IsLocalization.lift
    (M := Submonoid.powers
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0)))
    (S := Localization (Submonoid.powers
      (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
        (numeralReesXT valuationOneCurve 0 0))))
    chartNodeDenomUnit

/-- Evaluate a degree-zero fraction on `D₊(Xt)` by the node hom of its
numerator and denominator in the localization away from `Xt`. -/
private noncomputable def chartNodeToFun
    (z : chart_Dplus_Xt_ring valuationOneCurve 0 0) : ZMod 2 :=
  chartNodeLiftHom (HomogeneousLocalization.val z)

private lemma chartNodeToFun_val (z : chart_Dplus_Xt_ring valuationOneCurve 0 0) :
    chartNodeToFun z = chartNodeLiftHom (HomogeneousLocalization.val z) := rfl

private lemma chartNodeToFun_one : chartNodeToFun 1 = 1 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  letI : GradedAlgebra (homogeneousQuotientComponent (centreReesComponent I) J) :=
    homogeneousQuotientGrading (centreReesComponent I) J hJ
  rw [chartNodeToFun_val]
  unfold chart_Dplus_Xt_ring
  rw [HomogeneousLocalization.val_one]
  exact map_one chartNodeLiftHom

private lemma chartNodeToFun_mul (z w : chart_Dplus_Xt_ring valuationOneCurve 0 0) :
    chartNodeToFun (z * w) = chartNodeToFun z * chartNodeToFun w := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  letI : GradedAlgebra (homogeneousQuotientComponent (centreReesComponent I) J) :=
    homogeneousQuotientGrading (centreReesComponent I) J hJ
  rw [chartNodeToFun_val, chartNodeToFun_val, chartNodeToFun_val]
  unfold chart_Dplus_Xt_ring
  rw [HomogeneousLocalization.val_mul]
  exact map_mul chartNodeLiftHom _ _

private lemma chartNodeToFun_add (z w : chart_Dplus_Xt_ring valuationOneCurve 0 0) :
    chartNodeToFun (z + w) = chartNodeToFun z + chartNodeToFun w := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  letI : GradedAlgebra (homogeneousQuotientComponent (centreReesComponent I) J) :=
    homogeneousQuotientGrading (centreReesComponent I) J hJ
  rw [chartNodeToFun_val, chartNodeToFun_val, chartNodeToFun_val]
  unfold chart_Dplus_Xt_ring
  rw [HomogeneousLocalization.val_add]
  exact map_add chartNodeLiftHom _ _

private noncomputable def chartNodeMonoidHom :
    chart_Dplus_Xt_ring valuationOneCurve 0 0 →* ZMod 2 where
  toFun := chartNodeToFun
  map_one' := chartNodeToFun_one
  map_mul' := chartNodeToFun_mul

/-- `Xt` maps to `1` in `𝔽₂`, so the node hom of `Rees(I)/(2)` extends to
the localization at powers of `Xt` and restricts to the degree-zero chart
`D₊(Xt)`. -/
noncomputable def chartNodeHom :
    chart_Dplus_Xt_ring valuationOneCurve 0 0 →+* ZMod 2 :=
  RingHom.mk' chartNodeMonoidHom chartNodeToFun_add

private lemma chartNodeHom_apply (z : chart_Dplus_Xt_ring valuationOneCurve 0 0) :
    chartNodeHom z = chartNodeToFun z := rfl

private lemma chartNodeHom_const (r : surfaceRing valuationOneCurve) :
    chartNodeHom (chartConst valuationOneCurve 0 0 r) = valuationOne_nodeEval r := by
  rw [chartNodeHom_apply, chartNodeToFun_val, chartConst_val]
  unfold chartNodeLiftHom
  rw (config := { transparency := .default }) [IsLocalization.lift_eq]
  exact reesSpecialNodeHom_const r

private lemma nodeEval_surfaceX :
    valuationOne_nodeEval (surfaceNumeralX valuationOneCurve 0) = 0 := by
  rw [valuationOne_nodeEval, surfaceNumeralX, Ideal.Quotient.lift_mk]
  simp [Nat.cast_zero, map_zero, sub_zero, numeralEval, MvPolynomial.eval₂Hom_X']

private lemma nodeEval_surfaceY :
    valuationOne_nodeEval (surfaceNumeralY valuationOneCurve 0) = 0 := by
  rw [valuationOne_nodeEval, surfaceNumeralY, Ideal.Quotient.lift_mk]
  simp [Nat.cast_zero, map_zero, sub_zero, numeralEval, MvPolynomial.eval₂Hom_X']

private lemma chartNodeHom_X :
    chartNodeHom (chart_X valuationOneCurve 0 0) = 0 := by
  have hX : chart_X valuationOneCurve 0 0 =
      chartConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0) := by
    let I := numeralCentreIdeal valuationOneCurve 0 0
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    let J := numeralReesSpecialIdeal valuationOneCurve 0 0
    have hJ : J.IsHomogeneous (centreReesComponent I) :=
      numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
    letI : GradedAlgebra (homogeneousQuotientComponent (centreReesComponent I) J) :=
      homogeneousQuotientGrading (centreReesComponent I) J hJ
    let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
    apply HomogeneousLocalization.val_injective (Submonoid.powers f)
    rw [chartConst_val]
    simp [chart_X, HomogeneousLocalization.val_mk, Localization.mk_eq_mk']
    congr
  rw [hX, chartNodeHom_const, nodeEval_surfaceX]

private lemma chartNodeHom_Y :
    chartNodeHom (chart_Y valuationOneCurve 0 0) = 0 := by
  have hY : chart_Y valuationOneCurve 0 0 =
      chartConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0) := by
    let I := numeralCentreIdeal valuationOneCurve 0 0
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    let J := numeralReesSpecialIdeal valuationOneCurve 0 0
    have hJ : J.IsHomogeneous (centreReesComponent I) :=
      numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
    letI : GradedAlgebra (homogeneousQuotientComponent (centreReesComponent I) J) :=
      homogeneousQuotientGrading (centreReesComponent I) J hJ
    let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
    apply HomogeneousLocalization.val_injective (Submonoid.powers f)
    rw [chartConst_val]
    simp [chart_Y, HomogeneousLocalization.val_mk, Localization.mk_eq_mk']
    congr
  rw [hY, chartNodeHom_const, nodeEval_surfaceY]

private lemma chartNodeHom_U :
    chartNodeHom (chart_two_over_X valuationOneCurve 0 0) = 0 := by
  rw [chartNodeHom_apply, chartNodeToFun_val]
  unfold chartNodeLiftHom chart_two_over_X
  rw [HomogeneousLocalization.val_mk]
  let M := Submonoid.powers
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesXT valuationOneCurve 0 0))
  let x := Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
    (numeralReesTwo valuationOneCurve 0 0)
  let y : M := ⟨Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
    (numeralReesXT valuationOneCurve 0 0), ⟨1, pow_one _⟩⟩
  refine (congrArg (IsLocalization.lift (M := M) (S := Localization M) chartNodeDenomUnit)
      (Localization.mk_eq_mk'_apply x y)).trans ?_
  refine (IsLocalization.lift_mk' (M := M) (S := Localization M) chartNodeDenomUnit x y).trans ?_
  rw [reesSpecialNodeHom_two, zero_mul]

private lemma chartNodeHom_V :
    chartNodeHom (chart_Y_over_X valuationOneCurve 0 0) = 0 := by
  rw [chartNodeHom_apply, chartNodeToFun_val]
  unfold chartNodeLiftHom chart_Y_over_X
  rw [HomogeneousLocalization.val_mk]
  let M := Submonoid.powers
    (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
      (numeralReesXT valuationOneCurve 0 0))
  let x := Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
    (numeralReesYT valuationOneCurve 0 0)
  let y : M := ⟨Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
    (numeralReesXT valuationOneCurve 0 0), ⟨1, pow_one _⟩⟩
  refine (congrArg (IsLocalization.lift (M := M) (S := Localization M) chartNodeDenomUnit)
      (Localization.mk_eq_mk'_apply x y)).trans ?_
  refine (IsLocalization.lift_mk' (M := M) (S := Localization M) chartNodeDenomUnit x y).trans ?_
  rw [reesSpecialNodeHom_YT, zero_mul]

private lemma chartNodeHom_param (i : Fin 2) :
    chartNodeHom (chartFromF2Polynomial valuationOneCurve 0 0 (MvPolynomial.X i)) = 0 := by
  let z := coeffModTwoEquiv.symm (MvPolynomial.X i)
  obtain ⟨s, hs⟩ := Ideal.Quotient.mk_surjective z
  have hmap : MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) s = MvPolynomial.X i := by
    have hfwd := coeffModTwoEquiv_mk s
    rw [hs] at hfwd
    have hback : coeffModTwoEquiv z = MvPolynomial.X i := by
      simpa [z] using coeffModTwoEquiv.apply_symm_apply (MvPolynomial.X i)
    exact hfwd.symm.trans hback
  have heq : chartFromF2Polynomial valuationOneCurve 0 0 (MvPolynomial.X i) =
      chartConst valuationOneCurve 0 0 (algebraMap S (surfaceRing valuationOneCurve) s) := by
    rw [chartFromF2Polynomial, RingHom.comp_apply]
    change chartScalarModTwo valuationOneCurve 0 0 z = _
    rw [← hs, chartScalarModTwo, Ideal.Quotient.lift_mk, chartScalar, RingHom.comp_apply]
    rfl
  rw [heq, chartNodeHom_const]
  have hconst : algebraMap S (surfaceRing valuationOneCurve) s =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.C s) := by
    rw [IsScalarTower.algebraMap_apply S (MvPolynomial (Fin 2) S)
        (surfaceRing valuationOneCurve),
      MvPolynomial.algebraMap_eq, Ideal.Quotient.algebraMap_eq]
  rw [valuationOne_nodeEval, hconst, Ideal.Quotient.lift_mk, numeralEval,
    MvPolynomial.eval₂Hom_C]
  have hcoeff : coeffToResidue s =
      MvPolynomial.eval (fun _ : Fin 2 => (0 : ZMod 2))
        (MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) s) := by
    rw [← coeffMap_eval_eq_coeffToResidue]
    simp
  rw [hcoeff, hmap]
  simp

theorem chartNodeHom_surjective : Function.Surjective chartNodeHom := by
  intro y
  fin_cases y
  · exact ⟨0, map_zero _⟩
  · exact ⟨1, map_one _⟩

/-- The chart modulo the kernel of the node evaluation is `𝔽₂`. -/
noncomputable def chart_node_quotient_equiv :
    chart_Dplus_Xt_ring valuationOneCurve 0 0 ⧸ RingHom.ker chartNodeHom ≃+* ZMod 2 :=
  RingHom.quotientKerEquivOfSurjective chartNodeHom_surjective

theorem chartNodeKer_isMaximal : (RingHom.ker chartNodeHom).IsMaximal :=
  isMaximal_of_quotient_equiv_zmod_two _ chart_node_quotient_equiv

/-- The kernel of `chart → 𝔽₂` is a prime of the chart `D₊(Xt)`. -/
noncomputable def chartNodePrime :
    PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0) :=
  ⟨RingHom.ker chartNodeHom, chartNodeKer_isMaximal.isPrime⟩

/-- `⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩` is contained in that kernel.
Equality with the kernel is the statement that these elements generate
every function vanishing at the node. `chartOfModelBase` is not shown
to be surjective, so that equality stays open. -/
theorem ideal_ABXYUV_le_chartNodeKer :
    ideal_ABXYUV valuationOneCurve 0 0 ≤ RingHom.ker chartNodeHom := by
  rw [ideal_ABXYUV, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl | rfl | rfl
  · rw [SetLike.mem_coe, RingHom.mem_ker, chartNodeHom_param]
  · rw [SetLike.mem_coe, RingHom.mem_ker, chartNodeHom_param]
  · rw [SetLike.mem_coe, RingHom.mem_ker, chartNodeHom_X]
  · rw [SetLike.mem_coe, RingHom.mem_ker, chartNodeHom_Y]
  · rw [SetLike.mem_coe, RingHom.mem_ker, chartNodeHom_U]
  · rw [SetLike.mem_coe, RingHom.mem_ker, chartNodeHom_V]

/-!
### Explicit exceptional fibre point on `Y² = X³ + 2` at `(0, 0)`

`D₊(2t) = ⊥` because `(2t)² = 0` (`chart_Dplus_2t_empty_holds`).
`U = 2t/Xt` is a nonzero nilpotent (`chart_two_over_X_ne_zero`,
`chart_two_over_X_sq_zero`), from `Xⁿ ∉ Iⁿ⁺¹` by the cusp
`X ↦ t²`, `Y ↦ t³`.

`chartNodeHom` reads that leading coefficient on
`(Rees(I)/(2))_{(Xt)}₀`. `Xt ↦ 1`, so the map of `Rees(I)/(2)`
extends through the localization at powers of `Xt` and restricts
along `HomogeneousLocalization.val`. `ideal_ABXYUV` is
`⟨a, b, X, Y, U, V⟩`. `Y` is redundant because `Y = X · V`, and
`ideal_XYUV ≤ ideal_ABXYUV`.

Closed:
* `ideal_ABXYUV ≤ ker chartNodeHom` (`ker_contains_ABXYUV`)
* `chartNodeHom` is surjective (`chartNodeHom_surjective`)
* the quotient by the kernel is `𝔽₂` (`chart_node_quotient_equiv`)
* the kernel is maximal (`chartNodeKer_isMaximal`)
* `chartNodePrime` is that prime
* `familySpecialFibrePoint_XYUV_holds` is this prime in the chart
* `familySpecialFibreProjPoint` is `FromSpec.toFun` of that prime,
  a point of `D₊(Xt)` in `Proj(Rees(I)/(2))`
* `centreReesRatioPolynomialMap_surjective` generates the integral
  chart by the ratios of `2`, `X`, and `Y` against `Xt`
* `homogeneousQuotientAwayMap_surjective` carries that onto
  `(Rees(I)/(2))_{(Xt)}₀` because `(Xt)ⁿ ≠ 0`
* `chartOfModelBase_surjective`:
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²) ↠ D₊(Xt)`.
  At `(0, 0)` the ratios are `1`, `U = 2t/Xt`, and `V = Yt/Xt`
* `ker_eq_ideal_ABXYUV_holds`: `ker chartNodeHom = ⟨a, b, X, Y, U, V⟩`.
  `Y = X·V` makes `Y` redundant
* `ideal_ABXYUV_quotient_F2_holds`: the quotient by that ideal is
  `𝔽₂`, transported from `chart_node_quotient_equiv` by
  `Ideal.quotEquivOfEq`

False:
* `chartOfModelBase_injective`. `not_chartOfModelBase_injective`
  proves the map is not injective. `chartKernelWitness` is
  `U + X² + X·V²`. `chartModelEval_kernelWitness` sends it to `0`
  because the degree-2 Rees numerator is `2 · X⁴` and `X⁴ ∈ I²`.
  `chartKernelWitness_not_mem` shows it lies outside
  `(X·U, Y − X·V, Y² − X³, U²)`. That ideal is properly contained
  in `ker chartModelEval`. `Xⁿ ∉ Iⁿ⁺¹` does not kill this class.

Closed in `ChartTrueIdeal.lean`:
* `chartTrueIdeal = (X·U, Y − X·V, Y² − X³, U + X² + X·V²)`.
  `chartTrueIdeal_contains_U2` puts `U²` in this ideal.
* `chartOfModelTrue_surjective` covers `D₊(Xt)`.
* `chartTrueIdeal_quotient_equiv_normal`:
  `𝔽₂[a,b][X,Y,U,V] / chartTrueIdeal ≃ 𝔽₂[a,b][X,V] / (X²·(X + V²))`.
* `valuationOne_X_fourth_sub_X_not_mem_centre_sq`: `X⁴ − X ∉ I²`.

Closed in `CentrePower.lean`:
* `centreIdeal_power_coeff_bound`. If `α(X) + Y·β(X)` lies in `I^k`
  at `(0, 0)`, the coefficient of `X^i` in `α` has 2-adic norm at most
  `2^{−⌈(k−i)/2⌉}` and the coefficient of `X^i` in `β` has norm at most
  `2^{−⌊(k−i)/2⌋}`. `PadicInt.valuation 0 = 0`, so the statement is the
  norm bound; a nonzero coefficient has `v₂` at least that integer.
* `centre_X_pow_mul_X_cube_sub_one_not_mem`:
  `X^m · (X³ − 1) ∉ I^{m+1}`, and therefore `∉ I^{m+2}`. The coefficient
  of `X^m` is `-1` and `⌈1/2⌉ = 1`.

Closed in `ChartInjective.lean`:
* `chart_X_add_V_sq_ne_zero`. The class `X + V²` is nonzero in `D₊(Xt)`.
  Clearing `(Xt)²` produces the Rees numerator `2·(X³ − 1) t²`. A further
  factor `(Xt)^k` lies in the scalar ideal `(2)` only if
  `X^k · (X³ − 1) ∈ I^{k+2}`. That membership contradicts
  `centre_X_pow_mul_X_cube_sub_one_not_mem`, since `I^{k+2} ≤ I^{k+1}`.
* `chartOfModelTrue_normal_X_add_Vsq_ne_zero`: `chartOfModelTrue` does not
  send the normal-form class of `X + V²` to zero.
* `exists_chartNormalForm` and `chartNormalForm_eq_zero_iff`. Every class
  in `𝔽₂[a,b][X,V] / (X²·(X + V²))` is uniquely `A(V) + X·B(V) + X²·C(V)`.
  `chartNormal_X_add_Vsq_ne_zero` is the class of `X + V²` in that quotient:
  the representative has `B = 1`.
* `chartOfModelTrue_injective_iff_normalForm`. Injectivity is the statement
  that `A(V) + X·B(V) + X²·C(V)` dies in `D₊(Xt)` only when `A = B = C = 0`.

Closed in `ChartInjective.lean`, continued:
* `bitReduced_signed_bound`. A nonzero `0`-`1` form, reduced by
  `Y² = X³ − 2`, has a coefficient `(-1)^s · 2^q` at an index whose
  centre bound is `q`. The index is the lowest power of `X`, except when
  only `X²·C(V)` meets that power: the leading coefficient of `(X³ − 2)^q`
  is then `1`, and both centre bounds there are `0`.
* `chartSeriesAlpha_monomial` and `twice_centre_blocks_signed`. On each
  monomial of `𝔽₂[a,b]`, the `S`-series has the same coefficients as that
  integer series, and those coefficients cannot be `X^m·α = 2·αₛ`,
  `X^m·β = 2·βₛ` with `αₛ + Y·βₛ ∈ I^{D+m}`.

Open:
* `chartOfModelTrue_injective`. Vanishing in `D₊(Xt)` is not yet
  identified with `X^m·α = 2·αₛ`, `X^m·β = 2·βₛ` and
  `αₛ + Y·βₛ ∈ I^{D+m}`, so `A`, `B`, and `C` are not forced to vanish.
  `chart_Dplus_Xt_true_presentation` is the bijection with
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²)`.
* `chart_Dplus_Xt_presentation`, an isomorphism with
  `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`. That ring drops `a`, `b`,
  and `U²`. It is not the chart.
-/

theorem ker_contains_ABXYUV :
    ideal_ABXYUV valuationOneCurve 0 0 ≤ RingHom.ker chartNodeHom :=
  ideal_ABXYUV_le_chartNodeKer

/-- Equality of `ker chartNodeHom` with `⟨a, b, X, Y, U, V⟩`.
`ker_eq_ideal_ABXYUV_holds` proves it. -/
def ker_eq_ideal_ABXYUV : Prop :=
  RingHom.ker chartNodeHom = ideal_ABXYUV valuationOneCurve 0 0

/-- `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)`. The coefficient
ring is `𝔽₂[a,b]`, not `𝔽₂`. The generator `U²` is the chart relation
`(2t / Xt)² = 0` on `Y² = X³ + 2` at `(0, 0)`. -/
noncomputable def modelBaseRelationIdeal :
    Ideal (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2))) :=
  Ideal.span {
    MvPolynomial.X 0 * MvPolynomial.X 2,
    MvPolynomial.X 1 - MvPolynomial.X 0 * MvPolynomial.X 3,
    MvPolynomial.X 1 ^ 2 - MvPolynomial.X 0 ^ 3,
    MvPolynomial.X 2 ^ 2 }

/-- Send `X, Y, U, V` to `chart_X`, `chart_Y`, `2t/Xt`, `Yt/Xt`. -/
noncomputable def chartModelEval :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  MvPolynomial.eval₂Hom (chartFromF2Polynomial valuationOneCurve 0 0)
    (fun i : Fin 4 =>
      if i = 0 then chart_X valuationOneCurve 0 0
      else if i = 1 then chart_Y valuationOneCurve 0 0
      else if i = 2 then chart_two_over_X valuationOneCurve 0 0
      else chart_Y_over_X valuationOneCurve 0 0)

private lemma chartModelEval_X0 :
    chartModelEval (MvPolynomial.X 0) = chart_X valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

private lemma chartModelEval_X1 :
    chartModelEval (MvPolynomial.X 1) = chart_Y valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

private lemma chartModelEval_X2 :
    chartModelEval (MvPolynomial.X 2) = chart_two_over_X valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

private lemma chartModelEval_X3 :
    chartModelEval (MvPolynomial.X 3) = chart_Y_over_X valuationOneCurve 0 0 := by
  simp [chartModelEval, MvPolynomial.eval₂Hom_X']

theorem chartModelEval_relation :
    modelBaseRelationIdeal ≤ RingHom.ker chartModelEval := by
  rw [modelBaseRelationIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_mul, chartModelEval_X0, chartModelEval_X2,
      chart_X_mul_two_over_X_eq_zero]
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_sub, map_mul, chartModelEval_X1,
      chartModelEval_X0, chartModelEval_X3, chart_Y_eq_chart_X_mul_Y_over_X, sub_self]
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_sub, map_pow, map_pow, chartModelEval_X1,
      chartModelEval_X0, chart_Y_sq_eq_chart_X_cu_valuationOne, sub_self]
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_pow, chartModelEval_X2, chart_two_over_X_sq_zero]

/-- A ring hom from the `𝔽₂[a,b]`-algebra presentation into the chart
`D₊(Xt)` on `Y² = X³ + 2` at `(0, 0)`. The source includes `U² = 0`.
`chartOfModelBase_surjective` shows it is surjective. It is not shown
to be injective. `chart_Dplus_Xt_presentation`
still asks for an isomorphism with the parameter-free model
`modelXtChart`, which has neither `a, b` nor `U²`. -/
noncomputable def chartOfModelBase :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ modelBaseRelationIdeal →+*
      chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  Ideal.Quotient.lift modelBaseRelationIdeal chartModelEval chartModelEval_relation

/-!
### Quotients of the coefficient model

These are quotients of `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)`.
They are not quotients of `chart_Dplus_Xt_ring`. `chartOfModelBase` is
a surjective ring hom into the chart and is not shown to be injective,
so these isomorphisms do not transfer.
-/

/-- `⟨X, U, V⟩` in `𝔽₂[a,b][X,Y,U,V]`. -/
noncomputable def modelBaseXUVIdeal :
    Ideal (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2))) :=
  Ideal.span {MvPolynomial.X 0, MvPolynomial.X 2, MvPolynomial.X 3}

/-- `⟨a, b, X, U, V⟩` in `𝔽₂[a,b][X,Y,U,V]`. The coefficient indeterminates
are `C(a)` and `C(b)`. `Y` is not a generator: `Y = X·V` supplies it
once the relation ideal is added. -/
noncomputable def modelBaseNodeIdeal :
    Ideal (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2))) :=
  Ideal.span {
    MvPolynomial.C (MvPolynomial.X (0 : Fin 2)),
    MvPolynomial.C (MvPolynomial.X (1 : Fin 2)),
    MvPolynomial.X 0, MvPolynomial.X 2, MvPolynomial.X 3 }

private lemma mem_span_X_univ_iff_coeff_zero
    {σ R : Type*} [CommRing R] [DecidableEq σ] (p : MvPolynomial σ R) :
    p ∈ Ideal.span (MvPolynomial.X '' (Set.univ : Set σ)) ↔ p.coeff 0 = 0 := by
  rw [MvPolynomial.mem_ideal_span_X_image]
  constructor
  · intro h
    by_contra hnz
    have hmem : (0 : σ →₀ ℕ) ∈ p.support :=
      MvPolynomial.mem_support_iff.mpr hnz
    obtain ⟨i, -, hi⟩ := h 0 hmem
    exact hi rfl
  · intro hcoeff m hm
    have hm0 : m ≠ 0 := by
      intro hm0
      subst hm0
      rw [MvPolynomial.mem_support_iff] at hm
      exact hm hcoeff
    have hex : ∃ i, m i ≠ 0 := by
      by_contra h
      push_neg at h
      apply hm0
      ext i
      exact h i
    obtain ⟨i, hi⟩ := hex
    exact ⟨i, Set.mem_univ _, hi⟩

private lemma modelBaseRelation_sup_XUV_eq_named_span :
    modelBaseRelationIdeal ⊔ modelBaseXUVIdeal =
      Ideal.span ({MvPolynomial.X 0, MvPolynomial.X 1, MvPolynomial.X 2,
        MvPolynomial.X 3} :
          Set (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)))) := by
  apply le_antisymm
  · refine sup_le ?_ ?_
    · rw [modelBaseRelationIdeal, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl | rfl | rfl
      · exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))
      · exact Ideal.sub_mem _ (Ideal.subset_span (by simp))
          (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
      · exact Ideal.sub_mem _
          (Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) 2 (by decide))
          (Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) 3 (by decide))
      · exact Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) 2 (by decide)
    · rw [modelBaseXUVIdeal, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl | rfl
      · exact Ideal.subset_span (by simp)
      · exact Ideal.subset_span (by simp)
      · exact Ideal.subset_span (by simp)
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl | rfl
    · exact Submodule.mem_sup_right (by
        rw [modelBaseXUVIdeal]; exact Ideal.subset_span (by simp))
    · rw [← sub_add_cancel (MvPolynomial.X 1)
        (MvPolynomial.X 0 * MvPolynomial.X 3)]
      refine Ideal.add_mem _ ?_ ?_
      · exact Submodule.mem_sup_left (by
          rw [modelBaseRelationIdeal]; exact Ideal.subset_span (by simp))
      · exact Submodule.mem_sup_right (by
          rw [modelBaseXUVIdeal]
          exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
    · exact Submodule.mem_sup_right (by
        rw [modelBaseXUVIdeal]; exact Ideal.subset_span (by simp))
    · exact Submodule.mem_sup_right (by
        rw [modelBaseXUVIdeal]; exact Ideal.subset_span (by simp))

private lemma modelBase_named_span_eq_X_image :
    Ideal.span ({MvPolynomial.X 0, MvPolynomial.X 1, MvPolynomial.X 2,
        MvPolynomial.X 3} :
          Set (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)))) =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) := by
  apply congrArg Ideal.span
  ext z
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff, Set.mem_image,
    Set.mem_univ, true_and]
  constructor
  · rintro (rfl | rfl | rfl | rfl)
    · exact ⟨0, rfl⟩
    · exact ⟨1, rfl⟩
    · exact ⟨2, rfl⟩
    · exact ⟨3, rfl⟩
  · rintro ⟨i, rfl⟩
    have hcov : ∀ j : Fin 4, j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by decide
    rcases hcov i with rfl | rfl | rfl | rfl
    · simp
    · simp
    · simp
    · simp

/-- `(X·U, Y − X·V, Y² − X³, U²)` together with `⟨X, U, V⟩` is the ideal
of all four variables. `Y` enters through `Y = (Y − X·V) + X·V`, and
`U²` is already a power of `U`. -/
theorem modelBaseRelation_sup_XUV_eq_X_span :
    modelBaseRelationIdeal ⊔ modelBaseXUVIdeal =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) :=
  modelBaseRelation_sup_XUV_eq_named_span.trans modelBase_named_span_eq_X_image

/-- Kill `X, Y, U, V` and keep the coefficient ring `𝔽₂[a,b]`. -/
noncomputable def modelBaseEvalXUV :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) →+*
      MvPolynomial (Fin 2) (ZMod 2) :=
  MvPolynomial.eval₂Hom (RingHom.id _) (fun _ => 0)

theorem modelBaseEvalXUV_surjective : Function.Surjective modelBaseEvalXUV := by
  intro a
  exact ⟨MvPolynomial.C a, by simp [modelBaseEvalXUV]⟩

theorem modelBaseEvalXUV_ker :
    RingHom.ker modelBaseEvalXUV =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) := by
  rw [modelBaseEvalXUV, MvPolynomial.eval₂Hom_zero', RingHom.id_comp]
  ext p
  rw [RingHom.mem_ker, MvPolynomial.constantCoeff_eq, mem_span_X_univ_iff_coeff_zero]

/-- The coefficient model modulo `⟨X, U, V⟩` is `𝔽₂[a,b]`. `Y` is zero
because `Y = X·V`. This is not a quotient of the chart. -/
noncomputable def modelBaseModXUV_equiv_F2Polynomial :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸
      (modelBaseRelationIdeal ⊔ modelBaseXUVIdeal) ≃+*
      MvPolynomial (Fin 2) (ZMod 2) :=
  (Ideal.quotEquivOfEq modelBaseRelation_sup_XUV_eq_X_span).trans <|
    (Ideal.quotEquivOfEq modelBaseEvalXUV_ker.symm).trans <|
      RingHom.quotientKerEquivOfSurjective modelBaseEvalXUV_surjective

/-- Evaluate `𝔽₂[a,b]` at `(a, b) = (0, 0)`. -/
noncomputable def modelF2PolynomialEvalZero :
    MvPolynomial (Fin 2) (ZMod 2) →+* ZMod 2 :=
  MvPolynomial.eval (fun _ => (0 : ZMod 2))

theorem modelF2PolynomialEvalZero_surjective :
    Function.Surjective modelF2PolynomialEvalZero := by
  intro a
  exact ⟨MvPolynomial.C a, by simp [modelF2PolynomialEvalZero]⟩

theorem modelF2PolynomialEvalZero_ker :
    RingHom.ker modelF2PolynomialEvalZero =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 2))) := by
  rw [modelF2PolynomialEvalZero, MvPolynomial.eval_zero']
  ext p
  rw [RingHom.mem_ker, MvPolynomial.constantCoeff_eq, mem_span_X_univ_iff_coeff_zero]

private lemma modelF2Polynomial_ab_span_eq_X_image :
    Ideal.span ({MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1} :
        Set (MvPolynomial (Fin 2) (ZMod 2))) =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 2))) := by
  apply congrArg Ideal.span
  ext z
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff, Set.mem_image,
    Set.mem_univ, true_and]
  constructor
  · rintro (rfl | rfl)
    · exact ⟨0, rfl⟩
    · exact ⟨1, rfl⟩
  · rintro ⟨i, rfl⟩
    fin_cases i
    · simp
    · simp

/-- `𝔽₂[a,b] / (a, b) ≃ 𝔽₂`. This evaluates the coefficient ring. It is
not a prime of the chart. -/
noncomputable def modelF2PolynomialModAB_equiv_F2 :
    MvPolynomial (Fin 2) (ZMod 2) ⧸
      Ideal.span ({MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1} :
        Set (MvPolynomial (Fin 2) (ZMod 2))) ≃+* ZMod 2 :=
  (Ideal.quotEquivOfEq modelF2Polynomial_ab_span_eq_X_image).trans <|
    (Ideal.quotEquivOfEq modelF2PolynomialEvalZero_ker.symm).trans <|
      RingHom.quotientKerEquivOfSurjective modelF2PolynomialEvalZero_surjective

/-- Kill `X, Y, U, V` and then evaluate `(a, b)` at `(0, 0)`. -/
noncomputable def modelBaseEvalNode :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) →+* ZMod 2 :=
  modelF2PolynomialEvalZero.comp modelBaseEvalXUV

theorem modelBaseEvalNode_surjective : Function.Surjective modelBaseEvalNode := by
  rw [modelBaseEvalNode]
  exact modelF2PolynomialEvalZero_surjective.comp modelBaseEvalXUV_surjective

private lemma modelBase_comap_ab :
    Ideal.comap modelBaseEvalXUV
        (Ideal.span {MvPolynomial.X (0 : Fin 2), MvPolynomial.X 1}) =
      RingHom.ker modelBaseEvalXUV ⊔
        Ideal.span {MvPolynomial.C (MvPolynomial.X (0 : Fin 2)),
          MvPolynomial.C (MvPolynomial.X (1 : Fin 2))} := by
  apply le_antisymm
  · intro p hp
    rw [Ideal.mem_comap, Ideal.mem_span_pair] at hp
    obtain ⟨c, d, hcd⟩ := hp
    obtain ⟨c', hc'⟩ := modelBaseEvalXUV_surjective c
    obtain ⟨d', hd'⟩ := modelBaseEvalXUV_surjective d
    have hlift : modelBaseEvalXUV
        (p - (c' * MvPolynomial.C (MvPolynomial.X (0 : Fin 2)) +
          d' * MvPolynomial.C (MvPolynomial.X (1 : Fin 2)))) = 0 := by
      rw [map_sub, map_add, map_mul, map_mul, hc', hd']
      have ha : modelBaseEvalXUV (MvPolynomial.C (MvPolynomial.X (0 : Fin 2))) =
          MvPolynomial.X 0 := by
        simp [modelBaseEvalXUV]
      have hb : modelBaseEvalXUV (MvPolynomial.C (MvPolynomial.X (1 : Fin 2))) =
          MvPolynomial.X 1 := by
        simp [modelBaseEvalXUV]
      rw [ha, hb, hcd, sub_self]
    rw [← RingHom.mem_ker] at hlift
    rw [← sub_add_cancel p (c' * MvPolynomial.C (MvPolynomial.X (0 : Fin 2)) +
      d' * MvPolynomial.C (MvPolynomial.X (1 : Fin 2)))]
    refine Ideal.add_mem _ ?_ ?_
    · exact Submodule.mem_sup_left hlift
    · exact Submodule.mem_sup_right (by
        rw [Ideal.mem_span_pair]
        exact ⟨c', d', rfl⟩)
  · refine sup_le ?_ ?_
    · intro p hp
      rw [Ideal.mem_comap, RingHom.mem_ker.mp hp]
      exact Ideal.zero_mem _
    · rw [Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl
      · rw [SetLike.mem_coe, Ideal.mem_comap]
        simp [modelBaseEvalXUV]
        exact Ideal.subset_span (by simp)
      · rw [SetLike.mem_coe, Ideal.mem_comap]
        simp [modelBaseEvalXUV]
        exact Ideal.subset_span (by simp)

theorem modelBaseEvalNode_ker :
    RingHom.ker modelBaseEvalNode =
      Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 4))) ⊔
        Ideal.span {MvPolynomial.C (MvPolynomial.X (0 : Fin 2)),
          MvPolynomial.C (MvPolynomial.X (1 : Fin 2))} := by
  rw [modelBaseEvalNode, ← RingHom.comap_ker, modelF2PolynomialEvalZero_ker,
    ← modelF2Polynomial_ab_span_eq_X_image, modelBase_comap_ab, modelBaseEvalXUV_ker]

private lemma modelBaseNodeIdeal_eq_sup :
    modelBaseNodeIdeal =
      Ideal.span {MvPolynomial.C (MvPolynomial.X (0 : Fin 2)),
          MvPolynomial.C (MvPolynomial.X (1 : Fin 2))} ⊔
        modelBaseXUVIdeal := by
  rw [modelBaseNodeIdeal, modelBaseXUVIdeal, ← Ideal.span_union]
  apply congrArg Ideal.span
  ext z
  simp only [Set.mem_union, Set.mem_insert_iff, Set.mem_singleton_iff]
  constructor
  · rintro (rfl | rfl | rfl | rfl | rfl)
    · exact Or.inl (Or.inl rfl)
    · exact Or.inl (Or.inr rfl)
    · exact Or.inr (Or.inl rfl)
    · exact Or.inr (Or.inr (Or.inl rfl))
    · exact Or.inr (Or.inr (Or.inr rfl))
  · rintro (h | h)
    · rcases h with rfl | rfl
      · exact Or.inl rfl
      · exact Or.inr (Or.inl rfl)
    · rcases h with rfl | rfl | rfl
      · exact Or.inr (Or.inr (Or.inl rfl))
      · exact Or.inr (Or.inr (Or.inr (Or.inl rfl)))
      · exact Or.inr (Or.inr (Or.inr (Or.inr rfl)))

private lemma modelBaseRelation_sup_node_eq_ker :
    modelBaseRelationIdeal ⊔ modelBaseNodeIdeal = RingHom.ker modelBaseEvalNode := by
  rw [modelBaseNodeIdeal_eq_sup, sup_left_comm, modelBaseRelation_sup_XUV_eq_X_span,
    sup_comm]
  exact modelBaseEvalNode_ker.symm

/-- The coefficient model modulo `⟨a, b, X, U, V⟩` is `𝔽₂`. `Y` is zero
because `Y = X·V`, and `(a, b)` is evaluated at `(0, 0)`. This is a
quotient of the polynomial model, not a prime of the chart, and
`FromSpec.toFun` is not applied. -/
noncomputable def modelBaseAtNode_equiv_F2 :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸
      (modelBaseRelationIdeal ⊔ modelBaseNodeIdeal) ≃+* ZMod 2 :=
  (Ideal.quotEquivOfEq modelBaseRelation_sup_node_eq_ker).trans
    (RingHom.quotientKerEquivOfSurjective modelBaseEvalNode_surjective)

/-- OPEN. The chart `D₊(Xt)` on `Y² = X³ + 2` at `(0, 0)` is isomorphic
to the parameter-free ring `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`.
That target has no copy of `a, b` and does not impose `U² = 0`.
`chart_two_over_X_sq_zero` is `(2t / Xt)² = 0` in the chart, and
`chart_two_over_X_ne_zero` says the ratio is not zero.
`chartOfModelBase` is a surjective ring hom into the chart from
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)`. It is not shown
to be injective, and its kernel is not shown to be exactly
those relations, so it is not a presentation of the chart.
`ap` and `bq` are numeral centre coordinates, not evaluations of
the indeterminates `a, b`. -/
def chart_Dplus_Xt_presentation : Prop :=
  Nonempty (chart_Dplus_Xt_ring valuationOneCurve 0 0 ≃+* modelXtChart)

/-- OPEN. On `Y² = X³ + 2` at `(0, 0)`, the quotient of the chart
`D₊(Xt)` by `⟨X, Y, 2t/Xt, Yt/Xt⟩` is `𝔽₂`. `quotient_span_XUV_kills_Y`
puts `Y` in `⟨X, 2t/Xt, Yt/Xt⟩`, so the quotient does not keep a
nilpotent class of `Y`. `chart_Y_sq_eq_chart_X_cu_valuationOne` is
`Y² = X³` in the chart, `chart_two_over_X_sq_zero` is
`(2t / Xt)² = 0`, and `chart_two_over_X_ne_zero` says the ratio
is not zero. `modelXtChartModXUV_equiv_F2` is the same
quotient for the parameter-free polynomial model, and it is `𝔽₂`.
`modelBaseModXUV_equiv_F2Polynomial` is the quotient of the
`𝔽₂[a,b]` model by `⟨X, U, V⟩`, and that ring is `𝔽₂[a,b]`, not
`𝔽₂`: `Y = X·V` kills `Y`, and `a, b` remain. `modelBaseAtNode_equiv_F2`
kills `a, b` as well and is `𝔽₂`, as a quotient of the polynomial
model. `ideal_XYUV` does not contain the images of `a` and `b`.
`ideal_ABXYUV` does. The quotient of the chart by `ideal_ABXYUV`
is `ideal_ABXYUV_quotient_F2`, proved by `ideal_ABXYUV_quotient_F2_holds`.
`chart_node_quotient_equiv` is the quotient by the kernel of
`chartNodeHom`, and `ker_eq_ideal_ABXYUV_holds` identifies that kernel
with the ideal. `chartFromF2Polynomial` lands in the chart before the chart
quotient. The chart is not shown isomorphic to either model
(`chart_Dplus_Xt_presentation`).
`isMaximal_of_quotient_equiv_zmod_two` makes the kernel maximal.
`familySpecialFibreProjPoint` applies `FromSpec.toFun` to that
prime. -/
def ideal_XYUV_quotient_F2 : Prop :=
  Nonempty ((chart_Dplus_Xt_ring valuationOneCurve 0 0 ⧸
    ideal_XYUV valuationOneCurve 0 0) ≃+* ZMod 2)

/-- The quotient isomorphism would make `⟨X, Y, 2t/Xt, Yt/Xt⟩` prime
on this node. It would be a prime of the degree-zero chart, not yet
a point of `Proj`. -/
theorem chart_prime_of_ideal_XYUV_quotient_F2
    (h : ideal_XYUV_quotient_F2) :
    ∃ q : PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0),
      q.asIdeal = ideal_XYUV valuationOneCurve 0 0 := by
  obtain ⟨e⟩ := h
  refine ⟨⟨ideal_XYUV valuationOneCurve 0 0,
    (isMaximal_of_quotient_equiv_zmod_two _ e).isPrime⟩, rfl⟩

/-- The quotient of the chart `D₊(Xt)` by
`⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩` is `𝔽₂` on this node.
`ideal_ABXYUV_quotient_F2_holds` produces it from
`ker_eq_ideal_ABXYUV_holds` and `chart_node_quotient_equiv`. -/
def ideal_ABXYUV_quotient_F2 : Prop :=
  Nonempty ((chart_Dplus_Xt_ring valuationOneCurve 0 0 ⧸
    ideal_ABXYUV valuationOneCurve 0 0) ≃+* ZMod 2)

/-- The equality `ker = ideal_ABXYUV` transports the proved
quotient by the kernel to the quotient by the ideal. -/
theorem ideal_ABXYUV_quotient_F2_of_ker_eq
    (h : ker_eq_ideal_ABXYUV) : ideal_ABXYUV_quotient_F2 :=
  ⟨(Ideal.quotEquivOfEq h.symm).trans chart_node_quotient_equiv⟩

/-- That quotient isomorphism would make `⟨a, b, X, Y, 2t/Xt, Yt/Xt⟩`
a prime of the degree-zero chart. It would not yet be a point of
`Proj`. -/
theorem chart_prime_of_ideal_ABXYUV_quotient_F2
    (h : ideal_ABXYUV_quotient_F2) :
    ∃ q : PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0),
      q.asIdeal = ideal_ABXYUV valuationOneCurve 0 0 := by
  obtain ⟨e⟩ := h
  refine ⟨⟨ideal_ABXYUV valuationOneCurve 0 0,
    (isMaximal_of_quotient_equiv_zmod_two _ e).isPrime⟩, rfl⟩

/-- OPEN. The ideal `(2t / Xt, Yt / Xt)` is prime with residue field
`𝔽₂`, so `FromSpec.toFun` would carry it into `D₊(Xt)`. No such prime
is constructed. -/
def familySpecialFibrePoint_Dplus_Xt : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ),
    surfaceResidueVanishes W ap bq →
    ∃ q : PrimeSpectrum (chart_Dplus_Xt_ring W ap bq),
      ideal_two_Y_over_X W ap bq ≤ q.asIdeal ∧
      Nonempty ((chart_Dplus_Xt_ring W ap bq ⧸ q.asIdeal) ≃+* ZMod 2)

/-- A prime of the chart `D₊(Xt)` containing
`⟨X, Y, 2t/Xt, Yt/Xt⟩`, with residue ring `𝔽₂`, on the node
`Y² = X³ + 2` at `(0, 0)`. `familySpecialFibrePoint_XYUV_holds`
is `chartNodePrime`. `familySpecialFibreProjPoint` is that prime
under `FromSpec.toFun`. -/
def familySpecialFibrePoint_XYUV : Prop :=
  ∃ q : PrimeSpectrum (chart_Dplus_Xt_ring valuationOneCurve 0 0),
    ideal_XYUV valuationOneCurve 0 0 ≤ q.asIdeal ∧
    Nonempty ((chart_Dplus_Xt_ring valuationOneCurve 0 0 ⧸ q.asIdeal) ≃+* ZMod 2)

/-- The node evaluation is a prime of the chart containing
`⟨X, Y, 2t/Xt, Yt/Xt⟩`, with residue field `𝔽₂`. -/
theorem familySpecialFibrePoint_XYUV_holds : familySpecialFibrePoint_XYUV := by
  refine ⟨chartNodePrime, ?_, ⟨chart_node_quotient_equiv⟩⟩
  exact (ideal_XYUV_le_ideal_ABXYUV valuationOneCurve 0 0).trans ideal_ABXYUV_le_chartNodeKer

/-- The same prime, viewed in `D₊(Xt) ⊂ Proj(Rees(I)/(2))`. -/
noncomputable def familySpecialFibreProjPoint := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  have hf : f ∈ ℬ 1 := by
    simpa [f, numeralReesXT] using
      specialClass_mem_degree_one valuationOneCurve 0 0
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X (0 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C ((0 : ℕ) : ℤ_[2]))))
        (numeral_X_mem_centre valuationOneCurve 0 0)
  exact AlgebraicGeometry.ProjIsoSpecTopComponent.FromSpec.toFun
    hf (by decide : 0 < 1) chartNodePrime

/-- OPEN. A coprime Beal tuple `(a, b, p, q)` should determine a point of
`Bl_{I_{a,b}}` on the special fibre over `𝔽₂`, a direction on the
exceptional divisor, not a prime containing the centre. The scheme
`familyBlowup` depends on the exponents `p, q` and on the indeterminates
`a, b` of `S`. No homogeneous prime is constructed.
`no_centre_evaluation_to_padic` rules out a ring hom to `ℤ_[2]` killing
the centre. The residue map `PadicInt.toZMod` is the map that kills `2`.
An inhabitant would not yet be the arithmetic statement
`even_solution_implies_two_divides`. -/
def coprimeBealSolution_to_family_point : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (a b c p q r : ℕ),
    0 < a → 0 < b → 0 < c →
    1 < p → 1 < q → 1 < r →
    Nat.Coprime a b →
    a ^ p + b ^ q = c ^ r →
    Nonempty (familyBlowupPoint W p q)

end Beal.MathlibMissing

#print axioms Beal.MathlibMissing.familyBlowup
#print axioms Beal.MathlibMissing.two_eq_quotient_mk
#print axioms Beal.MathlibMissing.two_mem_centreIdeal
#print axioms Beal.MathlibMissing.no_centre_evaluation_to_padic
#print axioms Beal.MathlibMissing.no_numeral_centre_evaluation_to_padic
#print axioms Beal.MathlibMissing.family_point
#print axioms Beal.MathlibMissing.residue_kills_two
#print axioms Beal.MathlibMissing.centreResidueHom
#print axioms Beal.MathlibMissing.numeralReesSpecialIdeal_isHomogeneous
#print axioms Beal.MathlibMissing.familySpecialFibre
#print axioms Beal.MathlibMissing.familySpecialFibrePoint
#print axioms Beal.MathlibMissing.chartU
#print axioms Beal.MathlibMissing.ideal_UV
#print axioms Beal.MathlibMissing.valuationOne_specialTwo_sq_zero
#print axioms Beal.MathlibMissing.chart_Dplus_2t_subsingleton_valuationOne
#print axioms Beal.MathlibMissing.not_familySpecialFibrePoint_Dplus_2t
#print axioms Beal.MathlibMissing.valuationOne_specialXT_pow_ne_zero
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_nontrivial_valuationOne
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_prime_valuationOne
#print axioms Beal.MathlibMissing.proj_basicOpen_bot_of_pow_eq_zero
#print axioms Beal.MathlibMissing.chart_Dplus_2t_empty_pack
#print axioms Beal.MathlibMissing.chart_Dplus_2t_empty
#print axioms Beal.MathlibMissing.chart_Dplus_2t_empty_holds
#print axioms Beal.MathlibMissing.pow_ne_zero_of_basicOpen_ne_bot
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_basicOpen_nonempty_valuationOne
#print axioms Beal.MathlibMissing.chart_X
#print axioms Beal.MathlibMissing.chart_Y
#print axioms Beal.MathlibMissing.ideal_XYUV
#print axioms Beal.MathlibMissing.chart_X_mul_two_over_X_eq_zero
#print axioms Beal.MathlibMissing.chart_Y_eq_chart_X_mul_Y_over_X
#print axioms Beal.MathlibMissing.chart_Y_mul_two_over_X_eq_zero
#print axioms Beal.MathlibMissing.ideal_XYUV_eq_span_X_UV
#print axioms Beal.MathlibMissing.chart_Y_mem_span_X_UV
#print axioms Beal.MathlibMissing.quotient_span_XUV_kills_Y
#print axioms Beal.MathlibMissing.modelRelation_sup_XUV_eq_X_span
#print axioms Beal.MathlibMissing.modelEvalZero_ker
#print axioms Beal.MathlibMissing.modelXtChartModXUV_equiv_F2
#print axioms Beal.MathlibMissing.modelForgetY_class_Y_sq_zero
#print axioms Beal.MathlibMissing.modelForgetY_class_Y_ne_zero
#print axioms Beal.MathlibMissing.modelForgetYIdeal_not_maximal
#print axioms Beal.MathlibMissing.valuationOne_node_Ysq_sub_Xcu
#print axioms Beal.MathlibMissing.valuationOne_special_const_Ysq_eq_Xcu
#print axioms Beal.MathlibMissing.chart_Y_sq_eq_chart_X_cu_valuationOne
#print axioms Beal.MathlibMissing.one_not_mem_numeralCentreIdeal_valuationOne
#print axioms Beal.MathlibMissing.valuationOne_two_regular
#print axioms Beal.MathlibMissing.valuationOne_specialTwo_ne_zero
#print axioms Beal.MathlibMissing.coeffModTwo_ker
#print axioms Beal.MathlibMissing.coeffModTwoEquiv
#print axioms Beal.MathlibMissing.chartScalar_C_two
#print axioms Beal.MathlibMissing.chart_two_eq_zero
#print axioms Beal.MathlibMissing.chartFromF2Polynomial
#print axioms Beal.MathlibMissing.chart_two_over_X_sq_zero
#print axioms Beal.MathlibMissing.chart_two_over_X_ne_zero
#print axioms Beal.MathlibMissing.monomial_X_pow_not_mem_cusp
#print axioms Beal.MathlibMissing.valuationOne_X_pow_not_mem_centre_succ
#print axioms Beal.MathlibMissing.valuationOne_xt_pow_mul_two_not_special
#print axioms Beal.MathlibMissing.ideal_ABXYUV
#print axioms Beal.MathlibMissing.ideal_ABXYUV_eq_span_AB_X_UV
#print axioms Beal.MathlibMissing.ideal_XYUV_le_ideal_ABXYUV
#print axioms Beal.MathlibMissing.chartModelEval_relation
#print axioms Beal.MathlibMissing.chartOfModelBase
#print axioms Beal.MathlibMissing.modelBaseModXUV_equiv_F2Polynomial
#print axioms Beal.MathlibMissing.modelF2PolynomialModAB_equiv_F2
#print axioms Beal.MathlibMissing.modelBaseAtNode_equiv_F2
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_presentation
#print axioms Beal.MathlibMissing.isMaximal_of_quotient_equiv_zmod_two
#print axioms Beal.MathlibMissing.ideal_UV_maximal
#print axioms Beal.MathlibMissing.ideal_XYUV_quotient_F2
#print axioms Beal.MathlibMissing.chart_prime_of_ideal_XYUV_quotient_F2
#print axioms Beal.MathlibMissing.ideal_ABXYUV_quotient_F2
#print axioms Beal.MathlibMissing.chart_prime_of_ideal_ABXYUV_quotient_F2
#print axioms Beal.MathlibMissing.familySpecialFibrePoint_Dplus_Xt
#print axioms Beal.MathlibMissing.familySpecialFibrePoint_XYUV
#print axioms Beal.MathlibMissing.valuationOne_nodeEval
#print axioms Beal.MathlibMissing.reesNodeHom
#print axioms Beal.MathlibMissing.reesSpecialNodeHom
#print axioms Beal.MathlibMissing.chartNodeHom
#print axioms Beal.MathlibMissing.chartNodeHom_surjective
#print axioms Beal.MathlibMissing.chart_node_quotient_equiv
#print axioms Beal.MathlibMissing.chartNodeKer_isMaximal
#print axioms Beal.MathlibMissing.chartNodePrime
#print axioms Beal.MathlibMissing.ideal_ABXYUV_le_chartNodeKer
#print axioms Beal.MathlibMissing.ker_contains_ABXYUV
#print axioms Beal.MathlibMissing.ker_eq_ideal_ABXYUV
#print axioms Beal.MathlibMissing.ideal_ABXYUV_quotient_F2_of_ker_eq
#print axioms Beal.MathlibMissing.familySpecialFibrePoint_XYUV_holds
#print axioms Beal.MathlibMissing.familySpecialFibreProjPoint
#print axioms Beal.MathlibMissing.coprimeBealSolution_to_family_point
