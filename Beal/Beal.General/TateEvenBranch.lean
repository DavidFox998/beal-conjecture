import Beal.«Beal.General».TateI1Split
import Beal.«Beal.General».TateEvenReesChart
import Beal.«Beal.General».ProjectiveFibreChartBaseChange
import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.RingTheory.Ideal.QuotientOperations

/-!
Checked inputs for the even-valuation nodal chart. Dividing the
pulled-back equation by four is justified here, but this polynomial
identity is not yet a scheme-theoretic blow-up, a resolution, or an
`Iₙ` classification.
-/

namespace Beal.General

/-- A positive, nonzero, even discriminant valuation supplies `4 ∣ Δ`.
At a reduced node the mixed coefficient is odd, the ambient
translated equation has second-order vanishing, and the `2`-chart
numerator is exactly four times the displayed polynomial. -/
theorem evenVal_node_fourFactor_data
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    PadicInt.toZMod W.a₁ ≠ 0 ∧
      (4 : ℤ_[2]) ∣ W.Δ ∧
      localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) ∈
        localSurfaceCentre ^ 2 ∧
      ∀ u v : ℤ_[2], ∃ A B C : ℤ_[2],
        localWeierstrassEquation W (W.a₃ + 2 * u)
          (W.a₃ ^ 2 + W.a₄ + 2 * v) =
        4 * (A + B * u + C * v +
          (v ^ 2 + W.a₁ * u * v -
            (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3) := by
  obtain ⟨k, hk⟩ := heven
  have hge : 2 ≤ Padic.valuation (W.Δ : ℚ_[2]) := by omega
  have hfour : (4 : ℤ_[2]) ∣ W.Δ :=
    four_dvd_delta_of_val_ge_two W hΔ hge
  refine ⟨?_, hfour, canonicalNodalPoint_surfaceEquation_mem_centre_sq
    W hnode hfour, ?_⟩
  · simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  · exact fun u v => canonicalNodalPoint_twoChartHasFourFactor
      W hnode hfour u v

/-- Unlike a pointwise factorization, this chooses the three divided
coefficients once for the whole `2`-chart. It is the uniform equation
needed before studying that chart as a polynomial hypersurface; no
strict-transform assertion is made. -/
theorem evenVal_node_twoChart_uniform
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    ∃ A B C : ℤ_[2],
      ∀ u v : ℤ_[2],
        localWeierstrassEquation W (W.a₃ + 2 * u)
          (W.a₃ ^ 2 + W.a₄ + 2 * v) =
        4 * (A + B * u + C * v +
          (v ^ 2 + W.a₁ * u * v -
            (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3) := by
  obtain ⟨k, hk⟩ := heven
  have hge : 2 ≤ Padic.valuation (W.Δ : ℚ_[2]) := by omega
  have hfour : (4 : ℤ_[2]) ∣ W.Δ :=
    four_dvd_delta_of_val_ge_two W hΔ hge
  obtain ⟨_, B, C, _, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha : PadicInt.toZMod W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  obtain ⟨A, hF⟩ := four_dvd_nodeConstant_of_four_dvd_delta W ha hfour
  exact ⟨A, B, C, fun u v =>
    localWeierstrassEquation_twoChart_factor
      W W.a₃ (W.a₃ ^ 2 + W.a₄) u v A B C hF hX hY⟩

/-- The reduced equation of the uniformly divided `2`-chart, with
`D` the reduction of `3a₃+a₂`. The cubic term disappears modulo two. -/
def evenNodeTwoChartReduced (A B C D u v : ZMod 2) : ZMod 2 :=
  A + B * u + C * v + (v ^ 2 + u * v - D * u ^ 2)

/-- Reducing the actual uniformly divided equation kills the cubic
term and yields the displayed characteristic-two chart equation. -/
theorem evenNodeTwoChartReduced_eq_reduction
    (W : WeierstrassCurve ℤ_[2]) (A B C u v : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1) :
    PadicInt.toZMod
      (A + B * u + C * v +
        (v ^ 2 + W.a₁ * u * v -
          (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3) =
      evenNodeTwoChartReduced (PadicInt.toZMod A)
        (PadicInt.toZMod B) (PadicInt.toZMod C)
        (PadicInt.toZMod (3 * W.a₃ + W.a₂))
        (PadicInt.toZMod u) (PadicInt.toZMod v) := by
  have htwo : PadicInt.toZMod (2 : ℤ_[2]) = 0 := by
    have hz : (2 : ZMod 2) = 0 := by decide
    simpa only [map_ofNat] using hz
  simp [evenNodeTwoChartReduced, map_add, map_sub, map_mul, map_pow, htwo, ha]

/-- In the genuinely even, positive, nonzero discriminant-valuation
branch, one fixed normalized equation factors the substituted integral
equation for every point, and its reduction is the displayed nodal-chart
quadratic. This is equation-level geometry, not a scheme blow-up. -/
theorem evenVal_node_twoChart_reduced_equation
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    ∃ A B C : ℤ_[2], ∀ u v : ℤ_[2],
      let F := A + B * u + C * v +
        (v ^ 2 + W.a₁ * u * v -
          (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3
      localWeierstrassEquation W (W.a₃ + 2 * u)
        (W.a₃ ^ 2 + W.a₄ + 2 * v) = 4 * F ∧
      PadicInt.toZMod F =
        evenNodeTwoChartReduced (PadicInt.toZMod A)
          (PadicInt.toZMod B) (PadicInt.toZMod C)
          (PadicInt.toZMod (3 * W.a₃ + W.a₂))
          (PadicInt.toZMod u) (PadicInt.toZMod v) := by
  obtain ⟨A, B, C, hfactor⟩ :=
    evenVal_node_twoChart_uniform W hnode hΔ hpositive heven
  have ha0 : PadicInt.toZMod W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  have ha : PadicInt.toZMod W.a₁ = 1 := by
    have hcases (a : ZMod 2) : a = 0 ∨ a = 1 := by
      fin_cases a <;> simp
    exact (hcases _).resolve_left ha0
  exact ⟨A, B, C, fun u v =>
    ⟨hfactor u v, evenNodeTwoChartReduced_eq_reduction W A B C u v ha⟩⟩

/-- The equation of the candidate divided `2`-chart as an actual
polynomial over the integral base, not just a function on points. -/
noncomputable def evenNodeTwoChartPolynomial
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2]) :
    MvPolynomial (Fin 2) ℤ_[2] :=
  let U : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 0
  let V : MvPolynomial (Fin 2) ℤ_[2] := MvPolynomial.X 1
  MvPolynomial.C a + MvPolynomial.C b * U + MvPolynomial.C c * V +
    (V ^ 2 + MvPolynomial.C W.a₁ * U * V -
      MvPolynomial.C (3 * x + W.a₂) * U ^ 2) - 2 * U ^ 3

/-- The reduced polynomial evaluates to the characteristic-two
quadratic, not just to a function with the same values at the lifted
integral points. -/
theorem evenNodeTwoChartPolynomial_reduced_eval
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1) (u v : ZMod 2) :
    MvPolynomial.eval (fun i : Fin 2 => if i = 0 then u else v)
      (MvPolynomial.map PadicInt.toZMod
        (evenNodeTwoChartPolynomial W x a b c)) =
      evenNodeTwoChartReduced (PadicInt.toZMod a)
        (PadicInt.toZMod b) (PadicInt.toZMod c)
        (PadicInt.toZMod (3 * x + W.a₂)) u v := by
  have htwo : (2 : ZMod 2) = 0 := by decide
  have hev2 :
      MvPolynomial.eval₂ PadicInt.toZMod
        (fun i : Fin 2 => if i = 0 then u else v)
        (2 : MvPolynomial (Fin 2) ℤ_[2]) = 0 := by
    change (MvPolynomial.eval₂Hom PadicInt.toZMod
      (fun i : Fin 2 => if i = 0 then u else v)) 2 = 0
    simpa only [map_ofNat] using htwo
  simp [evenNodeTwoChartPolynomial, evenNodeTwoChartReduced,
    MvPolynomial.eval_map, ha, htwo, hev2]

/-- The mixed `UV` term cannot be cancelled by the constant, linear,
or pure-square terms. Four-point polarization detects its nonzero
coefficient, proving the divided chart has nonzero reduction. -/
theorem evenNodeTwoChartPolynomial_reduction_ne_zero
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1) :
    MvPolynomial.map PadicInt.toZMod
      (evenNodeTwoChartPolynomial W x a b c) ≠ 0 := by
  intro hz
  let e (u v : ZMod 2) :=
    MvPolynomial.eval (fun i : Fin 2 => if i = 0 then u else v)
      (MvPolynomial.map PadicInt.toZMod
        (evenNodeTwoChartPolynomial W x a b c))
  have heval (u v : ZMod 2) :
      e u v = evenNodeTwoChartReduced
        (PadicInt.toZMod a) (PadicInt.toZMod b)
        (PadicInt.toZMod c) (PadicInt.toZMod (3 * x + W.a₂)) u v :=
    evenNodeTwoChartPolynomial_reduced_eval W x a b c ha u v
  have hdiff : e 1 1 - e 1 0 - e 0 1 + e 0 0 = (1 : ZMod 2) := by
    rw [heval, heval, heval, heval]
    simp only [evenNodeTwoChartReduced]
    ring
  have hzero (u v : ZMod 2) : e u v = 0 := by
    simp [e, hz]
  rw [hzero, hzero, hzero, hzero] at hdiff
  norm_num at hdiff

/-- Under the explicit nonzero, positive even discriminant valuation,
the uniformly divided canonical chart has a nonzero special-fibre
polynomial. This does not prove the chart is a strict transform. -/
theorem evenVal_node_twoChart_uniform_reduction_ne_zero
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    ∃ a b c : ℤ_[2],
      (∀ u v : ℤ_[2],
        localWeierstrassEquation W (W.a₃ + 2 * u)
          (W.a₃ ^ 2 + W.a₄ + 2 * v) =
          4 * (a + b * u + c * v +
            (v ^ 2 + W.a₁ * u * v -
              (3 * W.a₃ + W.a₂) * u ^ 2) - 2 * u ^ 3)) ∧
      MvPolynomial.map PadicInt.toZMod
        (evenNodeTwoChartPolynomial W W.a₃ a b c) ≠ 0 := by
  obtain ⟨a, b, c, hfactor⟩ :=
    evenVal_node_twoChart_uniform W hnode hΔ hpositive heven
  have ha0 : PadicInt.toZMod W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  have ha : PadicInt.toZMod W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases _).resolve_left ha0
  exact ⟨a, b, c, hfactor,
    evenNodeTwoChartPolynomial_reduction_ne_zero W W.a₃ a b c ha⟩

/-- Substitute `X = 2U` and `Y = 2V` in the ambient translated
coordinate ring. -/
noncomputable def evenNodeTwoChartSubstitution :
    MvPolynomial (Fin 2) ℤ_[2] →+* MvPolynomial (Fin 2) ℤ_[2] :=
  MvPolynomial.eval₂Hom MvPolynomial.C
    (fun i => MvPolynomial.C (2 : ℤ_[2]) * MvPolynomial.X i)

/-- The ambient equation pulls back to four times the candidate chart
polynomial. This polynomial identity supplies a well-defined morphism
on the corresponding quotient schemes. -/
theorem evenNodeTwoChartSubstitution_surface
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    evenNodeTwoChartSubstitution (localSurfaceEquation W x y) =
      MvPolynomial.C (4 : ℤ_[2]) * evenNodeTwoChartPolynomial W x a b c := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let U : S := MvPolynomial.X 0
  let V : S := MvPolynomial.X 1
  let c₀ : ℤ_[2] →+* S := MvPolynomial.C
  have hm :
      evenNodeTwoChartSubstitution (localSurfaceEquation W x y) =
      localWeierstrassEquation (W.map MvPolynomial.C)
        (MvPolynomial.C x + MvPolynomial.C (2 : ℤ_[2]) * U)
        (MvPolynomial.C y + MvPolynomial.C (2 : ℤ_[2]) * V) := by
    simp [evenNodeTwoChartSubstitution, localSurfaceEquation,
      localWeierstrassEquation, WeierstrassCurve.map, U, V]
  have hF' :
      localWeierstrassEquation (W.map c₀)
        (MvPolynomial.C x) (MvPolynomial.C y) =
        MvPolynomial.C (4 * a) := by
    simpa [localWeierstrassEquation, WeierstrassCurve.map] using
      congrArg c₀ hF
  have hX' :
      (W.map c₀).a₁ * MvPolynomial.C y -
        (3 * (MvPolynomial.C x) ^ 2 +
          2 * (W.map c₀).a₂ * MvPolynomial.C x +
          (W.map c₀).a₄) =
        MvPolynomial.C (2 * b) := by
    simpa [WeierstrassCurve.map] using
      congrArg c₀ hX
  have hY' :
      2 * MvPolynomial.C y +
        (W.map c₀).a₁ * MvPolynomial.C x +
          (W.map c₀).a₃ =
        MvPolynomial.C (2 * c) := by
    simpa [WeierstrassCurve.map] using
      congrArg c₀ hY
  rw [hm, localWeierstrassEquation_shift, hF', hX', hY']
  simp only [evenNodeTwoChartPolynomial, map_mul, map_ofNat, map_add]
  simp only [WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂, U, V]
  ring

/-- The candidate divided `2`-chart as an affine scheme's coordinate
ring. Being a quotient ring does not yet identify it with a chart of
the blow-up or its strict transform. -/
abbrev evenNodeTwoChartRing
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) ℤ_[2] ⧸
    Ideal.span {evenNodeTwoChartPolynomial W x a b c}

/-- A nonzero reduction of the divided equation makes the base
uniformizer a non-zero-divisor in its quotient coordinate ring. -/
theorem evenNodeTwoChart_two_regular
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1) :
    let R := evenNodeTwoChartRing W x a b c
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
    ∀ z : R, q (MvPolynomial.C (2 : ℤ_[2])) * z = 0 → z = 0 := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let T := MvPolynomial (Fin 2) (ZMod 2)
  let f : S := evenNodeTwoChartPolynomial W x a b c
  let R := evenNodeTwoChartRing W x a b c
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
  have htf : φ f ≠ 0 :=
    evenNodeTwoChartPolynomial_reduction_ne_zero W x a b c ha
  have ht : t ≠ 0 := by
    intro hz
    have htwo : (2 : ℤ_[2]) = 0 :=
      (MvPolynomial.C_injective (Fin 2) ℤ_[2])
        (by simpa only [t, map_zero] using hz)
    norm_num at htwo
  change ∀ z : R, q t * z = 0 → z = 0
  intro z hz
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective z
  have hp : t * p ∈ Ideal.span {f} := by
    apply Ideal.Quotient.eq_zero_iff_mem.mp
    simpa only [map_mul] using hz
  obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.mp hp
  have hfd : t * p = f * d := hd
  have hφd : φ d = 0 := by
    have hprod : φ f * φ d = 0 := by
      calc
        φ f * φ d = φ (f * d) := (map_mul φ f d).symm
        _ = φ (t * p) := congrArg φ hfd.symm
        _ = 0 := by rw [map_mul, htφ, zero_mul]
    exact (mul_eq_zero.mp hprod).resolve_left htf
  have hdmem : d ∈ Ideal.span {t} := by
    rw [← localSurfaceAmbient_reduction_kernel_eq_span_two]
    exact hφd
  obtain ⟨e, he⟩ := Ideal.mem_span_singleton.mp hdmem
  have hcancel : p = f * e := by
    apply mul_left_cancel₀ ht
    calc
      t * p = f * d := hfd
      _ = t * (f * e) := by rw [he]; ring
  apply Ideal.Quotient.eq_zero_iff_mem.mpr
  exact Ideal.mem_span_singleton.mpr
    ⟨e, by simpa only [mul_comm] using hcancel⟩

/-- The divided equation generates an ideal saturated with respect
to the base uniformizer. This checks the closure condition in the
candidate ambient `2`-chart, without constructing the blow-up. -/
theorem evenNodeTwoChart_ideal_two_saturated
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (p : MvPolynomial (Fin 2) ℤ_[2]) :
    (∃ n : ℕ,
      (MvPolynomial.C (2 : ℤ_[2])) ^ n * p ∈
        Ideal.span {evenNodeTwoChartPolynomial W x a b c}) ↔
      p ∈ Ideal.span {evenNodeTwoChartPolynomial W x a b c} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let f : S := evenNodeTwoChartPolynomial W x a b c
  let R := evenNodeTwoChartRing W x a b c
  let q : S →+* R := Ideal.Quotient.mk (Ideal.span {f})
  let t : S := MvPolynomial.C (2 : ℤ_[2])
  have hreg : ∀ z : R, q t * z = 0 → z = 0 :=
    evenNodeTwoChart_two_regular W x a b c ha
  have hpower : ∀ n : ℕ, ∀ z : R, (q t) ^ n * z = 0 → z = 0 := by
    intro n
    induction n with
    | zero =>
        intro z hz
        simpa using hz
    | succ n ih =>
        intro z hz
        apply ih z
        apply hreg ((q t) ^ n * z)
        calc
          q t * ((q t) ^ n * z) = ((q t) ^ n * q t) * z := by ac_rfl
          _ = 0 := by simpa only [pow_succ] using hz
  constructor
  · rintro ⟨n, hn⟩
    have hq : (q t) ^ n * q p = 0 := by
      rw [← map_pow, ← map_mul]
      exact Ideal.Quotient.eq_zero_iff_mem.mpr hn
    exact Ideal.Quotient.eq_zero_iff_mem.mp (hpower n (q p) hq)
  · intro hp
    exact ⟨0, by simpa using hp⟩

/-- Saturating the pullback equation `4F` by powers of `2`
recovers exactly the divided equation `F` in the candidate affine
ambient chart. Identification of that ambient chart with an open of
the Rees-algebra blow-up is still separate. -/
theorem evenNodeTwoChart_pulledEquation_saturation
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (p : MvPolynomial (Fin 2) ℤ_[2]) :
    (∃ n : ℕ,
      (MvPolynomial.C (2 : ℤ_[2])) ^ n * p ∈
        Ideal.span {MvPolynomial.C (4 : ℤ_[2]) *
          evenNodeTwoChartPolynomial W x a b c}) ↔
      p ∈ Ideal.span {evenNodeTwoChartPolynomial W x a b c} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let f : S := evenNodeTwoChartPolynomial W x a b c
  let t : S := MvPolynomial.C (2 : ℤ_[2])
  have ht2 : t ^ 2 = MvPolynomial.C (4 : ℤ_[2]) := by
    change MvPolynomial.C (2 : ℤ_[2]) ^ 2 = MvPolynomial.C (4 : ℤ_[2])
    rw [← map_pow]
    norm_num
  constructor
  · rintro ⟨n, hn⟩
    apply (evenNodeTwoChart_ideal_two_saturated W x a b c ha p).mp
    refine ⟨n, ?_⟩
    obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.mp hn
    apply Ideal.mem_span_singleton.mpr
    refine ⟨MvPolynomial.C (4 : ℤ_[2]) * d, ?_⟩
    rw [hd]
    ring
  · intro hp
    obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.mp hp
    refine ⟨2, Ideal.mem_span_singleton.mpr ⟨d, ?_⟩⟩
    change t ^ 2 * p = (MvPolynomial.C (4 : ℤ_[2]) * f) * d
    rw [hd, ht2]
    ring

/-- The substituted surface equation vanishes on the divided chart,
so ambient substitution descends to an actual map of coordinate
rings. -/
noncomputable def evenNodeTwoChartToSurfaceRing
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    localSurfaceCoordinateRing W x y →+*
      evenNodeTwoChartRing W x a b c := by
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {evenNodeTwoChartPolynomial W x a b c}
  let q := Ideal.Quotient.mk J
  let f := q.comp evenNodeTwoChartSubstitution
  have hf : f (localSurfaceEquation W x y) = 0 := by
    change q (evenNodeTwoChartSubstitution (localSurfaceEquation W x y)) = 0
    rw [evenNodeTwoChartSubstitution_surface W x y a b c hF hX hY,
      map_mul]
    have hzero : q (evenNodeTwoChartPolynomial W x a b c) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (by simp [J]))
    rw [hzero, mul_zero]
  apply Ideal.Quotient.lift (Ideal.span {localSurfaceEquation W x y}) f
  intro p hp
  obtain ⟨g, hg⟩ := Ideal.mem_span_singleton.mp hp
  rw [hg]
  simp [hf]

/-- On the translated surface coordinates, the quotient map is
exactly `X ↦ 2U`, `Y ↦ 2V`. -/
theorem evenNodeTwoChartToSurfaceRing_X
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (i : Fin 2) :
    evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY
      ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
        (MvPolynomial.X i)) =
    (Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c}))
      (MvPolynomial.C (2 : ℤ_[2]) * MvPolynomial.X i) := by
  simp [evenNodeTwoChartToSurfaceRing, evenNodeTwoChartSubstitution,
    MvPolynomial.eval₂Hom_X]

/-- The chart map fixes the integral base coefficients; this is a
base-preserving candidate map, not an independently chosen fibre map. -/
theorem evenNodeTwoChartToSurfaceRing_C
    (W : WeierstrassCurve ℤ_[2]) (x y a b c r : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY
      ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
        (MvPolynomial.C r)) =
    (Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c}))
      (MvPolynomial.C r) := by
  simp [evenNodeTwoChartToSurfaceRing, evenNodeTwoChartSubstitution,
    MvPolynomial.eval₂Hom_C]

/-- The ideal of the *actual substituted equation* becomes the
divided hypersurface ideal after saturation by powers of `2`.
This is a closure calculation inside the candidate affine ambient
chart, not yet an identification with a Rees-algebra blow-up. -/
theorem evenNodeTwoChart_substitutedEquation_saturation
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (p : MvPolynomial (Fin 2) ℤ_[2]) :
    (∃ n : ℕ, (MvPolynomial.C (2 : ℤ_[2])) ^ n * p ∈
      Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)}) ↔
      p ∈ Ideal.span {evenNodeTwoChartPolynomial W x a b c} := by
  rw [evenNodeTwoChartSubstitution_surface W x y a b c hF hX hY]
  exact evenNodeTwoChart_pulledEquation_saturation W x a b c ha p

/-- Coordinate ring of the pulled-back hypersurface *before*
removing its exceptional `2`-torsion. -/
abbrev evenNodeTwoChartPullbackRing
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) ℤ_[2] ⧸
    Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)}

/-- The substitution `X = 2U`, `Y = 2V` induces a map from the
original surface quotient to the pulled-back hypersurface quotient. -/
noncomputable def evenNodeTwoChartSurfaceToPullback
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCoordinateRing W x y →+*
      evenNodeTwoChartPullbackRing W x y := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let Q := evenNodeTwoChartPullbackRing W x y
  let q : S →+* Q := Ideal.Quotient.mk
    (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  apply Ideal.Quotient.lift
    (Ideal.span {localSurfaceEquation W x y})
    (q.comp evenNodeTwoChartSubstitution)
  intro p hp
  obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.mp hp
  rw [hd, RingHom.comp_apply, map_mul]
  have hz : q (evenNodeTwoChartSubstitution
      (localSurfaceEquation W x y)) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.subset_span (by simp))
  simp only [map_mul, hz, zero_mul]

/-- The divided equation cuts out the scheme-theoretic closure of the
away-from-`2` part of the pulled-back hypersurface inside the candidate
affine ambient chart. This is a kernel equality, not only a pointwise
equation. It does not construct the ambient blow-up chart. -/
theorem evenNodeTwoChart_localizedPullback_kernel
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    let S := MvPolynomial (Fin 2) ℤ_[2]
    let Q := evenNodeTwoChartPullbackRing W x y
    let q : S →+* Q := Ideal.Quotient.mk
      (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
    let t : Q := q (MvPolynomial.C (2 : ℤ_[2]))
    RingHom.ker ((algebraMap Q (Localization.Away t)).comp q) =
      Ideal.span {evenNodeTwoChartPolynomial W x a b c} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let Q := evenNodeTwoChartPullbackRing W x y
  let q : S →+* Q := Ideal.Quotient.mk
    (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  let t : Q := q (MvPolynomial.C (2 : ℤ_[2]))
  ext p
  change (algebraMap Q (Localization.Away t)) (q p) = 0 ↔
    p ∈ Ideal.span {evenNodeTwoChartPolynomial W x a b c}
  rw [IsLocalization.map_eq_zero_iff
    (Submonoid.powers t) (Localization.Away t)]
  constructor
  · rintro ⟨m, hm⟩
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff m.1 t).mp m.2
    have hq : t ^ n * q p = 0 := by
      rw [hn]
      exact hm
    have hmem :
        (MvPolynomial.C (2 : ℤ_[2])) ^ n * p ∈
          Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)} := by
      apply Ideal.Quotient.eq_zero_iff_mem.mp
      simpa only [map_pow, map_mul] using hq
    exact (evenNodeTwoChart_substitutedEquation_saturation
      W x y a b c ha hF hX hY p).mp ⟨n, hmem⟩
  · intro hp
    obtain ⟨n, hn⟩ :=
      (evenNodeTwoChart_substitutedEquation_saturation
        W x y a b c ha hF hX hY p).mpr hp
    have hq : t ^ n * q p = 0 := by
      simpa only [map_pow, map_mul] using
        (Ideal.Quotient.eq_zero_iff_mem.mpr hn :
          q ((MvPolynomial.C (2 : ℤ_[2])) ^ n * p) = 0)
    exact ⟨⟨t ^ n, (Submonoid.mem_powers_iff (t ^ n) t).mpr ⟨n, rfl⟩⟩, hq⟩

/-- The divided chart coordinate ring embeds into the generic part
of the pulled-back hypersurface. The embedding is the affine
schematic-closure comparison, not a Rees `Proj` chart equivalence. -/
noncomputable def evenNodeTwoChart_closureMap
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    let Q := evenNodeTwoChartPullbackRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* Q := Ideal.Quotient.mk
      (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
    evenNodeTwoChartRing W x a b c →+*
      Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let Q := evenNodeTwoChartPullbackRing W x y
  let q : S →+* Q := Ideal.Quotient.mk
    (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  let t : Q := q (MvPolynomial.C (2 : ℤ_[2]))
  let h : S →+* Localization.Away t :=
    (algebraMap Q (Localization.Away t)).comp q
  have hk : RingHom.ker h =
      Ideal.span {evenNodeTwoChartPolynomial W x a b c} :=
    evenNodeTwoChart_localizedPullback_kernel W x y a b c ha hF hX hY
  apply Ideal.Quotient.lift (Ideal.span {evenNodeTwoChartPolynomial W x a b c}) h
  intro p hp
  exact RingHom.mem_ker.mp (hk.symm ▸ hp)

theorem evenNodeTwoChart_closureMap_injective
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    Function.Injective
      (evenNodeTwoChart_closureMap W x y a b c ha hF hX hY) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let Q := evenNodeTwoChartPullbackRing W x y
  let q : S →+* Q := Ideal.Quotient.mk
    (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  let t : Q := q (MvPolynomial.C (2 : ℤ_[2]))
  let h : S →+* Localization.Away t :=
    (algebraMap Q (Localization.Away t)).comp q
  have hk : RingHom.ker h =
      Ideal.span {evenNodeTwoChartPolynomial W x a b c} :=
    evenNodeTwoChart_localizedPullback_kernel W x y a b c ha hF hX hY
  unfold evenNodeTwoChart_closureMap
  apply RingHom.lift_injective_of_ker_le_ideal
  exact hk.le

/-- Compare the actual degree-zero Rees chart with the pulled-back
surface after inverting `2`: evaluate the Rees parameter at one,
then substitute the original surface coordinates `X = 2U`,
`Y = 2V`. -/
noncomputable def evenNodeTwoAwayToPullbackLocalization
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let Q := evenNodeTwoChartPullbackRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
      Ideal.Quotient.mk
        (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    localSurfaceCentreTwoAway W x y →+*
      Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))) := by
  let R := localSurfaceCoordinateRing W x y
  let qR : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let Q := evenNodeTwoChartPullbackRing W x y
  let qQ : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
    Ideal.Quotient.mk
      (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  let tR : R := qR (MvPolynomial.C (2 : ℤ_[2]))
  let tQ : Q := qQ (MvPolynomial.C (2 : ℤ_[2]))
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let k : R →+* Q := evenNodeTwoChartSurfaceToPullback W x y
  have ht : k tR = tQ := by
    change qQ (evenNodeTwoChartSubstitution
        (MvPolynomial.C (2 : ℤ_[2]))) =
      qQ (MvPolynomial.C (2 : ℤ_[2]))
    simp [evenNodeTwoChartSubstitution]
  let g : R →+* Localization.Away tQ :=
    (algebraMap Q (Localization.Away tQ)).comp k
  have hg : ∀ s : Submonoid.powers tR, IsUnit (g s) := by
    intro s
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff s.1 tR).mp s.2
    have hu : IsUnit (algebraMap Q (Localization.Away tQ) tQ) :=
      IsLocalization.map_units (Localization.Away tQ)
        ⟨tQ, Submonoid.mem_powers tQ⟩
    change IsUnit ((algebraMap Q (Localization.Away tQ)) (k s))
    rw [← hn, map_pow, ht, map_pow]
    exact hu.pow n
  exact (IsLocalization.lift (S := Localization.Away tR) (g := g) hg).comp
    (localSurfaceCentreTwoAwayToSurfaceLocalization W x y)

theorem localSurfaceCentreTwoAwayToSurfaceLocalization_scalar
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (r : localSurfaceCoordinateRing W x y) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    localSurfaceCentreTwoAwayToSurfaceLocalization W x y
      (homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) r) =
      algebraMap (localSurfaceCoordinateRing W x y)
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2])))) r := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let R := localSurfaceCoordinateRing W x y
  let I := localSurfaceClosedPoint W x y
  let A := localSurfaceCentreRees W x y
  let f : A := localSurfaceCentreReesTwo W x y
  let 𝒜 := centreReesComponent I
  let L := Localization.Away f
  have hv :
      ((homogeneousScalarAwayHom 𝒜 f) r).val =
        algebraMap A L (algebraMap R A r) :=
    homogeneousScalarAway_val 𝒜 f r
  simp only [localSurfaceCentreTwoAwayToSurfaceLocalization,
    RingHom.comp_apply, HomogeneousLocalization.algebraMap_apply]
  rw [hv, IsLocalization.lift_eq]
  have he : centreReesEvalOne I (algebraMap R A r) = r :=
    centreReesEvalOne_scalar I r
  simp only [RingHom.comp_apply, he]

/-- The comparison with the pulled-back hypersurface respects
scalars from the original surface quotient. -/
theorem evenNodeTwoAwayToPullbackLocalization_scalar
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (r : localSurfaceCoordinateRing W x y) :
    let Q := evenNodeTwoChartPullbackRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
      Ideal.Quotient.mk
        (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    evenNodeTwoAwayToPullbackLocalization W x y
      (homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) r) =
      algebraMap Q
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))
          (evenNodeTwoChartSurfaceToPullback W x y r) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  simp only [evenNodeTwoAwayToPullbackLocalization, RingHom.comp_apply,
    localSurfaceCentreTwoAwayToSurfaceLocalization_scalar,
    IsLocalization.lift_eq]

/-- In the genuinely positive even-valuation nodal branch, one
uniform divided polynomial is the saturated pullback of the surface
equation in the candidate `2`-chart. The remaining identification
of the ambient chart with a blow-up open is not asserted. -/
theorem evenVal_node_twoChart_substitutedEquation_saturation
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    ∃ a b c : ℤ_[2],
      ∀ p : MvPolynomial (Fin 2) ℤ_[2],
        (∃ n : ℕ, (MvPolynomial.C (2 : ℤ_[2])) ^ n * p ∈
          Ideal.span {evenNodeTwoChartSubstitution
            (localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄))}) ↔
          p ∈ Ideal.span {evenNodeTwoChartPolynomial W W.a₃ a b c} := by
  obtain ⟨k, hk⟩ := heven
  have hge : 2 ≤ Padic.valuation (W.Δ : ℚ_[2]) := by omega
  have hfour : (4 : ℤ_[2]) ∣ W.Δ :=
    four_dvd_delta_of_val_ge_two W hΔ hge
  obtain ⟨_, b, c, _, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha0 : PadicInt.toZMod W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  have ha : PadicInt.toZMod W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases _).resolve_left ha0
  obtain ⟨a, hF⟩ :=
    four_dvd_nodeConstant_of_four_dvd_delta W ha0 hfour
  exact ⟨a, b, c, fun p =>
    evenNodeTwoChart_substitutedEquation_saturation W W.a₃
      (W.a₃ ^ 2 + W.a₄) a b c ha hF hX hY p⟩

/-- Under the genuine even-valuation assumptions the chart equation
is the actual kernel of the ambient map to the pulled-back
hypersurface localized away from `2`. This is a schematic-closure
calculation in a candidate chart, not a Rees `D₊` identification. -/
theorem evenVal_node_twoChart_localizedPullback_kernel
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hpositive : 0 < Padic.valuation (W.Δ : ℚ_[2]))
    (heven : ∃ k : ℤ, Padic.valuation (W.Δ : ℚ_[2]) = 2 * k) :
    ∃ a b c : ℤ_[2],
      let S := MvPolynomial (Fin 2) ℤ_[2]
      let Q := evenNodeTwoChartPullbackRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
      let q : S →+* Q := Ideal.Quotient.mk
        (Ideal.span {evenNodeTwoChartSubstitution
          (localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄))})
      let t : Q := q (MvPolynomial.C (2 : ℤ_[2]))
      RingHom.ker ((algebraMap Q (Localization.Away t)).comp q) =
        Ideal.span {evenNodeTwoChartPolynomial W W.a₃ a b c} := by
  obtain ⟨k, hk⟩ := heven
  have hge : 2 ≤ Padic.valuation (W.Δ : ℚ_[2]) := by omega
  have hfour : (4 : ℤ_[2]) ∣ W.Δ :=
    four_dvd_delta_of_val_ge_two W hΔ hge
  obtain ⟨_, b, c, _, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha0 : PadicInt.toZMod W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  have ha : PadicInt.toZMod W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases _).resolve_left ha0
  obtain ⟨a, hF⟩ :=
    four_dvd_nodeConstant_of_four_dvd_delta W ha0 hfour
  exact ⟨a, b, c, evenNodeTwoChart_localizedPullback_kernel W W.a₃
    (W.a₃ ^ 2 + W.a₄) a b c ha hF hX hY⟩

/-- Under the candidate chart map, the image of the entire centre
ideal `(2,X,Y)` is generated by `2`. Together with regularity of
`2` on the chart, this is the expected Cartier-centre condition for
a blow-up chart; the universal blow-up scheme is not constructed here. -/
theorem evenNodeTwoChart_centre_image
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    Ideal.map
      ((evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY).comp
        (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})))
      localSurfaceCentre =
      Ideal.span
        {(Ideal.Quotient.mk
          (Ideal.span {evenNodeTwoChartPolynomial W x a b c}))
          (MvPolynomial.C (2 : ℤ_[2]))} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let q : S →+* evenNodeTwoChartRing W x a b c :=
    Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
  let g : S →+* evenNodeTwoChartRing W x a b c :=
    (evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY).comp
      (Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
  have hc : g (MvPolynomial.C (2 : ℤ_[2])) =
      q (MvPolynomial.C (2 : ℤ_[2])) :=
    evenNodeTwoChartToSurfaceRing_C W x y a b c 2 hF hX hY
  have hx (i : Fin 2) :
      g (MvPolynomial.X i) =
        q (MvPolynomial.C (2 : ℤ_[2]) * MvPolynomial.X i) :=
    evenNodeTwoChartToSurfaceRing_X W x y a b c hF hX hY i
  change Ideal.map g
    (Ideal.span {MvPolynomial.C (2 : ℤ_[2]),
      MvPolynomial.X 0, MvPolynomial.X 1}) =
    Ideal.span {q (MvPolynomial.C (2 : ℤ_[2]))}
  rw [Ideal.map_span]
  simp only [Set.image_insert_eq, Set.image_singleton]
  rw [hc, hx 0, hx 1]
  apply le_antisymm
  · apply Ideal.span_le.mpr
    rintro z (rfl | rfl | rfl)
    · exact Ideal.subset_span (by simp)
    · rw [map_mul]
      exact Ideal.mem_span_singleton.mpr
        ⟨q (MvPolynomial.X 0), by ring⟩
    · rw [map_mul]
      exact Ideal.mem_span_singleton.mpr
        ⟨q (MvPolynomial.X 1), by ring⟩
  · exact Ideal.span_mono (by simp)

/-- The centre-image equality in the surface coordinate ring, so
the degree-one Rees elements map into the principal ideal `(2)` on
the divided chart. -/
theorem evenNodeTwoChart_surfaceCentre_image
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    Ideal.map (evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY)
      (localSurfaceClosedPoint W x y) =
    Ideal.span
      {(Ideal.Quotient.mk
        (Ideal.span {evenNodeTwoChartPolynomial W x a b c}))
        (MvPolynomial.C (2 : ℤ_[2]))} := by
  rw [localSurfaceClosedPoint, Ideal.map_map]
  exact evenNodeTwoChart_centre_image W x y a b c hF hX hY

/-- The actual Rees algebra of the surface centre maps to the Rees
algebra of the principal image ideal `(2)` on the candidate chart.
This is coefficientwise and not yet a morphism of graded `Proj`
schemes or a `D₊(2t)` chart equivalence. -/
noncomputable def evenNodeTwoChart_reesMap
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    localSurfaceCentreRees W x y →+*
      reesAlgebra (Ideal.span
        {(Ideal.Quotient.mk
          (Ideal.span {evenNodeTwoChartPolynomial W x a b c}))
          (MvPolynomial.C (2 : ℤ_[2]))}) := by
  let f := evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY
  have hi : Ideal.map f (localSurfaceClosedPoint W x y) =
      Ideal.span
        {(Ideal.Quotient.mk
          (Ideal.span {evenNodeTwoChartPolynomial W x a b c}))
          (MvPolynomial.C (2 : ℤ_[2]))} :=
    evenNodeTwoChart_surfaceCentre_image W x y a b c hF hX hY
  exact hi ▸ centreReesMap f (localSurfaceClosedPoint W x y)

/-- The candidate ambient coordinates map into the *actual* Rees
`D₊(2t)` coordinate ring via `U = Xt/(2t)` and `V = Yt/(2t)`.
The divided equation has not yet been proved to lie in its kernel. -/
noncomputable def evenNodeTwoReesPolynomialMap
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    MvPolynomial (Fin 2) ℤ_[2] →+*
      HomogeneousLocalization.Away
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let R := localSurfaceCoordinateRing W x y
  exact MvPolynomial.eval₂Hom
    ((homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)).comp
      (algebraMap ℤ_[2] R))
    (localSurfaceCentreTwoRatio W x y)

theorem evenNodeTwoReesPolynomialMap_X
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    evenNodeTwoReesPolynomialMap W x y (MvPolynomial.X i) =
      localSurfaceCentreTwoRatio W x y i := by
  simp only [evenNodeTwoReesPolynomialMap, MvPolynomial.eval₂Hom_X']

/-- The fractions on the actual Rees basic open satisfy `2 ·
(Xᵢt/(2t)) = Xᵢ`. This checks compatibility with the original
surface coordinates, independently of the still-missing chart
quotient equivalence. -/
theorem localSurfaceCentreTwoRatio_relation
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)
        (q (MvPolynomial.C (2 : ℤ_[2]))) *
      localSurfaceCentreTwoRatio W x y i =
    homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)
        (q (MvPolynomial.X i)) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let A := localSurfaceCentreRees W x y
  let f : A := localSurfaceCentreReesTwo W x y
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  letI : GradedAlgebra 𝒜 :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let L := Localization.Away f
  have hrel :
      algebraMap R A (q (MvPolynomial.C (2 : ℤ_[2]))) *
          localSurfaceCentreReesCoordinate W x y i =
        algebraMap R A (q (MvPolynomial.X i)) * f :=
    localSurfaceCentreRees_relation W x y i
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_mul]
  change (homogeneousScalarAway 𝒜 f (q (MvPolynomial.C (2 : ℤ_[2])))).val *
      (localSurfaceCentreTwoRatio W x y i).val =
    (homogeneousScalarAway 𝒜 f (q (MvPolynomial.X i))).val
  rw [homogeneousScalarAway_val, homogeneousScalarAway_val]
  change (algebraMap A L (algebraMap R A (q (MvPolynomial.C (2 : ℤ_[2]))))) *
      Localization.mk (localSurfaceCentreReesCoordinate W x y i)
        ⟨f, Submonoid.mem_powers _⟩ =
    algebraMap A L (algebraMap R A (q (MvPolynomial.X i)))
  rw [Localization.mk_eq_mk', IsLocalization.mul_mk'_eq_mk'_of_mul]
  exact (IsLocalization.eq_mk'_of_mul_eq (S := L) hrel.symm).symm

/-- After forgetting the Rees parameter and substituting `X = 2U`,
the ratio `Xᵢt/(2t)` becomes the corresponding pulled-back coordinate. -/
theorem evenNodeTwoAwayToPullbackLocalization_ratio
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    let Q := evenNodeTwoChartPullbackRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
      Ideal.Quotient.mk
        (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    evenNodeTwoAwayToPullbackLocalization W x y
      (localSurfaceCentreTwoRatio W x y i) =
      algebraMap Q (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))
        (q (MvPolynomial.X i)) := by
  let R := localSurfaceCoordinateRing W x y
  let qR : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let Q := evenNodeTwoChartPullbackRing W x y
  let qQ : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
    Ideal.Quotient.mk
      (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  let t : Q := qQ (MvPolynomial.C (2 : ℤ_[2]))
  let L := Localization.Away t
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let k := evenNodeTwoChartSurfaceToPullback W x y
  let m := evenNodeTwoAwayToPullbackLocalization W x y
  have ht : k (qR (MvPolynomial.C (2 : ℤ_[2]))) = t := by
    change qQ (evenNodeTwoChartSubstitution
      (MvPolynomial.C (2 : ℤ_[2]))) = t
    simp [evenNodeTwoChartSubstitution, t]
  have hx : k (qR (MvPolynomial.X i)) = t * qQ (MvPolynomial.X i) := by
    change qQ (evenNodeTwoChartSubstitution (MvPolynomial.X i)) =
      t * qQ (MvPolynomial.X i)
    simp [evenNodeTwoChartSubstitution, t]
  have hrel := congrArg m (localSurfaceCentreTwoRatio_relation W x y i)
  rw [map_mul, evenNodeTwoAwayToPullbackLocalization_scalar,
    evenNodeTwoAwayToPullbackLocalization_scalar, ht, hx, map_mul] at hrel
  exact (IsLocalization.map_units L
    ⟨t, Submonoid.mem_powers t⟩).mul_left_cancel hrel

/-- Substituting `X = 2U`, `Y = 2V` and then mapping to the
homogeneous Rees chart agrees with the scalar map from the original
surface quotient. -/
theorem evenNodeTwoReesPolynomialMap_substitution
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    (evenNodeTwoReesPolynomialMap W x y).comp
        evenNodeTwoChartSubstitution =
      (homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)).comp
        (Ideal.Quotient.mk
          (Ideal.span {localSurfaceEquation W x y})) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.comp_apply, evenNodeTwoReesPolynomialMap,
      evenNodeTwoChartSubstitution, MvPolynomial.eval₂Hom_C,
      RingHom.coe_comp, Function.comp_apply]
    congr 1
  · intro i
    simpa [evenNodeTwoReesPolynomialMap, evenNodeTwoChartSubstitution,
      MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂Hom_X', map_mul]
      using (localSurfaceCentreTwoRatio_relation W x y i)

/-- Every scalar from the original surface ring is already in the
image of the two-ratio polynomial map: its polynomial representative
is pulled back by `X = 2U`, `Y = 2V`. -/
theorem evenNodeTwoReesPolynomialMap_scalar_in_range
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (r : localSurfaceCoordinateRing W x y) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) r ∈
      (evenNodeTwoReesPolynomialMap W x y).range := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective r
  refine ⟨evenNodeTwoChartSubstitution p, ?_⟩
  exact congrArg (fun h => h p)
    (evenNodeTwoReesPolynomialMap_substitution W x y)

/-- Composing the ratio map with the comparison into the localized
pulled-back hypersurface recovers the canonical localization map
from the chart's ambient polynomial ring. -/
theorem evenNodeTwoReesPolynomialMap_pullback
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let Q := evenNodeTwoChartPullbackRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
      Ideal.Quotient.mk
        (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    (evenNodeTwoAwayToPullbackLocalization W x y).comp
        (evenNodeTwoReesPolynomialMap W x y) =
      (algebraMap Q (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))).comp
        q := by
  let R := localSurfaceCoordinateRing W x y
  let qR : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let Q := evenNodeTwoChartPullbackRing W x y
  let qQ : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
    Ideal.Quotient.mk
      (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.comp_apply, evenNodeTwoReesPolynomialMap,
      MvPolynomial.eval₂Hom_C, RingHom.coe_comp, Function.comp_apply]
    change evenNodeTwoAwayToPullbackLocalization W x y
        ((homogeneousScalarAwayHom
          (centreReesComponent (localSurfaceClosedPoint W x y))
          (localSurfaceCentreReesTwo W x y))
          (qR (MvPolynomial.C r))) =
      (algebraMap Q (Localization.Away (qQ (MvPolynomial.C (2 : ℤ_[2])))))
        (qQ (MvPolynomial.C r))
    rw [evenNodeTwoAwayToPullbackLocalization_scalar]
    change (algebraMap Q (Localization.Away
        (qQ (MvPolynomial.C (2 : ℤ_[2])))))
        (qQ (evenNodeTwoChartSubstitution (MvPolynomial.C r))) =
      _
    simp [evenNodeTwoChartSubstitution]
  · intro i
    simpa only [RingHom.comp_apply, evenNodeTwoReesPolynomialMap_X]
      using (evenNodeTwoAwayToPullbackLocalization_ratio W x y i)

/-- The actual Rees `D₊(2t)` chart kills the pulled-back surface
equation `4F`. Cancelling the four to obtain `F` is a further
non-zero-divisor statement on this degree-zero localization. -/
theorem evenNodeTwoReesPolynomialMap_four_mul_chart
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    evenNodeTwoReesPolynomialMap W x y
      (MvPolynomial.C (4 : ℤ_[2]) *
        evenNodeTwoChartPolynomial W x a b c) = 0 := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  have hz : q (localSurfaceEquation W x y) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr
      (Ideal.subset_span (by simp))
  calc
    evenNodeTwoReesPolynomialMap W x y
        (MvPolynomial.C (4 : ℤ_[2]) *
          evenNodeTwoChartPolynomial W x a b c) =
      evenNodeTwoReesPolynomialMap W x y
        (evenNodeTwoChartSubstitution (localSurfaceEquation W x y)) :=
          congrArg _ (evenNodeTwoChartSubstitution_surface
            W x y a b c hF hX hY).symm
    _ = (homogeneousScalarAwayHom
          (centreReesComponent (localSurfaceClosedPoint W x y))
          (localSurfaceCentreReesTwo W x y))
          (q (localSurfaceEquation W x y)) := by
            exact congrArg
              (fun g => g (localSurfaceEquation W x y))
              (evenNodeTwoReesPolynomialMap_substitution W x y)
    _ = 0 := by rw [hz, map_zero]

/- A regular scalar on the original surface stays regular on the
degree-zero Rees chart: first in the polynomial Rees subalgebra,
then in its localization, and finally in the subring of homogeneous
fractions. -/
set_option maxHeartbeats 800000 in
theorem localSurfaceCentreTwoAway_scalar_regular
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (r : localSurfaceCoordinateRing W x y)
    (hr : ∀ z : localSurfaceCoordinateRing W x y, r * z = 0 → z = 0) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    ∀ z : HomogeneousLocalization.Away
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y),
      homogeneousScalarAwayHom
          (centreReesComponent (localSurfaceClosedPoint W x y))
          (localSurfaceCentreReesTwo W x y) r * z = 0 → z = 0 := by
  let I := localSurfaceClosedPoint W x y
  let A := localSurfaceCentreRees W x y
  let f : A := localSurfaceCentreReesTwo W x y
  let 𝒜 := centreReesComponent I
  letI : GradedAlgebra 𝒜 := centreReesGrading I
  let L := Localization.Away f
  have hA : algebraMap (localSurfaceCoordinateRing W x y) A r ∈
      nonZeroDivisors A := by
    rw [mem_nonZeroDivisors_iff]
    intro p hp
    exact centreReesScalar_regular I r hr p
      (by simpa only [mul_comm] using hp)
  have hL : algebraMap A L (algebraMap (localSurfaceCoordinateRing W x y) A r) ∈
      nonZeroDivisors L :=
    IsLocalization.nonZeroDivisors_le_comap (Submonoid.powers f) L hA
  intro z hz
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_zero]
  apply (mem_nonZeroDivisors_iff.mp hL) z.val
  have hv := congrArg
    (HomogeneousLocalization.val (𝒜 := 𝒜) (x := Submonoid.powers f)) hz
  change (homogeneousScalarAway 𝒜 f r * z).val = (0 : HomogeneousLocalization.Away 𝒜 f).val at hv
  simpa only [HomogeneousLocalization.val_mul,
    homogeneousScalarAway_val, HomogeneousLocalization.val_zero, mul_comm] using hv

/-- Flatness of the original surface at the base uniformizer cancels
the `4` in the pullback equation on the Rees basic open. This proves
that the divided equation vanishes there under an explicit regularity
hypothesis, but does not yet compute the entire kernel. -/
theorem evenNodeTwoReesPolynomialMap_chart_zero_of_surfaceTwo_regular
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (hreg : let R := localSurfaceCoordinateRing W x y
      let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
        Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
      ∀ z : R, q (MvPolynomial.C (2 : ℤ_[2])) * z = 0 → z = 0) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    evenNodeTwoReesPolynomialMap W x y
      (evenNodeTwoChartPolynomial W x a b c) = 0 := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let φ := evenNodeTwoReesPolynomialMap W x y
  let H := homogeneousScalarAwayHom
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesTwo W x y)
  have h2 : φ (MvPolynomial.C (2 : ℤ_[2])) =
      H (q (MvPolynomial.C (2 : ℤ_[2]))) := by
    have hs := congrArg
      (fun g => g (MvPolynomial.C (2 : ℤ_[2])))
      (evenNodeTwoReesPolynomialMap_substitution W x y)
    simpa only [RingHom.comp_apply, evenNodeTwoChartSubstitution,
      MvPolynomial.eval₂Hom_C] using hs
  have htwosq :
      (MvPolynomial.C (2 : ℤ_[2]) :
          MvPolynomial (Fin 2) ℤ_[2]) ^ 2 =
        MvPolynomial.C (4 : ℤ_[2]) := by
    rw [← map_pow]
    norm_num
  have h4 := evenNodeTwoReesPolynomialMap_four_mul_chart
    W x y a b c hF hX hY
  change φ (MvPolynomial.C 4 *
    evenNodeTwoChartPolynomial W x a b c) = 0 at h4
  rw [map_mul, ← htwosq, map_pow, h2] at h4
  change ∀ z : localSurfaceCoordinateRing W x y,
    q (MvPolynomial.C (2 : ℤ_[2])) * z = 0 → z = 0 at hreg
  have hregAway :=
    localSurfaceCentreTwoAway_scalar_regular W x y
      (q (MvPolynomial.C (2 : ℤ_[2]))) hreg
  apply hregAway
  apply hregAway
  simpa only [pow_two, mul_assoc] using h4

/-- Under surface flatness the divided equation lies in the kernel
of the actual Rees basic-open map. Equality of these ideals remains
to be shown. -/
theorem evenNodeTwoReesPolynomialMap_chart_ideal_le_kernel_of_surfaceTwo_regular
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (hreg : let R := localSurfaceCoordinateRing W x y
      let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
        Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
      ∀ z : R, q (MvPolynomial.C (2 : ℤ_[2])) * z = 0 → z = 0) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    Ideal.span {evenNodeTwoChartPolynomial W x a b c} ≤
      RingHom.ker (evenNodeTwoReesPolynomialMap W x y) := by
  apply Ideal.span_le.mpr
  rintro p (rfl)
  exact evenNodeTwoReesPolynomialMap_chart_zero_of_surfaceTwo_regular
    W x y a b c hF hX hY hreg

/-- The divided candidate chart maps to the actual Rees
`D₊(2t)` ring once surface flatness is supplied. The map is not
yet proved injective or surjective. -/
noncomputable def evenNodeTwoChartToReesAway_of_surfaceTwo_regular
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (hreg : let R := localSurfaceCoordinateRing W x y
      let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
        Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
      ∀ z : R, q (MvPolynomial.C (2 : ℤ_[2])) * z = 0 → z = 0) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    evenNodeTwoChartRing W x a b c →+*
      HomogeneousLocalization.Away
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {evenNodeTwoChartPolynomial W x a b c}
  let φ := evenNodeTwoReesPolynomialMap W x y
  have hker : J ≤ RingHom.ker φ :=
    evenNodeTwoReesPolynomialMap_chart_ideal_le_kernel_of_surfaceTwo_regular
      W x y a b c hF hX hY hreg
  exact Ideal.Quotient.lift J φ (fun p hp => RingHom.mem_ker.mp (hker hp))

/-- The divided equation belongs to the kernel of the actual
`D₊(2t)` polynomial map; no extra flatness hypothesis is needed. -/
theorem evenNodeTwoReesPolynomialMap_chart_ideal_le_kernel
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    Ideal.span {evenNodeTwoChartPolynomial W x a b c} ≤
      RingHom.ker (evenNodeTwoReesPolynomialMap W x y) :=
  evenNodeTwoReesPolynomialMap_chart_ideal_le_kernel_of_surfaceTwo_regular
    W x y a b c hF hX hY (localSurfaceCoordinateRing_two_regular W x y)

/-- Under the odd mixed-coefficient hypothesis, the ratio map into
the *actual* degree-zero Rees chart has precisely the divided
equation ideal as its kernel. Surjectivity is a separate statement. -/
theorem evenNodeTwoReesPolynomialMap_kernel
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    RingHom.ker (evenNodeTwoReesPolynomialMap W x y) =
      Ideal.span {evenNodeTwoChartPolynomial W x a b c} := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let Q := evenNodeTwoChartPullbackRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* Q :=
    Ideal.Quotient.mk
      (Ideal.span {evenNodeTwoChartSubstitution (localSurfaceEquation W x y)})
  let L := Localization.Away (q (MvPolynomial.C (2 : ℤ_[2])))
  apply le_antisymm
  · intro p hp
    rw [← evenNodeTwoChart_localizedPullback_kernel
      W x y a b c ha hF hX hY]
    change ((algebraMap Q L).comp q) p = 0
    rw [← evenNodeTwoReesPolynomialMap_pullback W x y]
    change (evenNodeTwoAwayToPullbackLocalization W x y)
      (evenNodeTwoReesPolynomialMap W x y p) = 0
    rw [RingHom.mem_ker.mp hp, map_zero]
  · exact evenNodeTwoReesPolynomialMap_chart_ideal_le_kernel
      W x y a b c hF hX hY

/-- The canonical map from the divided candidate chart to the
actual `D₊(2t)` blow-up chart. Surjectivity remains to be proved. -/
noncomputable def evenNodeTwoChartToReesAway
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    evenNodeTwoChartRing W x a b c →+*
      HomogeneousLocalization.Away
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) :=
  evenNodeTwoChartToReesAway_of_surfaceTwo_regular
    W x y a b c hF hX hY (localSurfaceCoordinateRing_two_regular W x y)

/-- The divided candidate chart embeds in the actual `D₊(2t)`
Rees chart under the nodal mixed-coefficient condition. -/
theorem evenNodeTwoChartToReesAway_injective
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    Function.Injective (evenNodeTwoChartToReesAway
      W x y a b c hF hX hY) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  have hk : RingHom.ker (evenNodeTwoReesPolynomialMap W x y) =
      Ideal.span {evenNodeTwoChartPolynomial W x a b c} :=
    evenNodeTwoReesPolynomialMap_kernel W x y a b c ha hF hX hY
  unfold evenNodeTwoChartToReesAway
    evenNodeTwoChartToReesAway_of_surfaceTwo_regular
  apply RingHom.lift_injective_of_ker_le_ideal
  exact hk.le

/-- The divided chart maps to the original translated surface as a
scheme. It is not yet proved to be the strict-transform chart of a
scheme-theoretic blow-up. -/
noncomputable def evenNodeTwoChartToSurface
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    AlgebraicGeometry.Spec
        (CommRingCat.of (evenNodeTwoChartRing W x a b c)) ⟶
      AlgebraicGeometry.Spec
        (CommRingCat.of (localSurfaceCoordinateRing W x y)) :=
  AlgebraicGeometry.Spec.map (CommRingCat.ofHom
    (evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY))

/-- Linearization of the reduced chart equation at an arbitrary point.
The remaining terms are quadratic in the increments, so the two
linear coefficients are exactly `B+v` and `C+u`. -/
theorem evenNodeTwoChartReduced_increment
    (A B C D u v s t : ZMod 2) :
    evenNodeTwoChartReduced A B C D (u + s) (v + t) -
      evenNodeTwoChartReduced A B C D u v =
    (B + v) * s + (C + u) * t + (t ^ 2 + s * t - D * s ^ 2) := by
  have htwo : (2 : ZMod 2) = 0 := by decide
  dsimp [evenNodeTwoChartReduced]
  linear_combination (v * t - D * u * s) * htwo

/-- The mod-two divided `2`-chart has at most one candidate singular
point: its partials are `B+v` and `C+u`. This describes the chart
equation's critical locus, not a resolution of the original surface. -/
theorem evenNode_twoChart_critical_point
    (B C u v : ZMod 2)
    (hu : B + v = 0) (hv : C + u = 0) :
    u = C ∧ v = B := by
  have hneg (x : ZMod 2) : -x = x := by
    have htwo : (2 : ZMod 2) = 0 := by decide
    calc
      -x = x - 2 * x := by ring
      _ = x := by rw [htwo, zero_mul, sub_zero]
  constructor
  · exact ((eq_neg_of_add_eq_zero_left hv).trans (hneg u)).symm
  · exact ((eq_neg_of_add_eq_zero_left hu).trans (hneg v)).symm

/-- The single candidate critical point lies on the reduced chart
precisely when the displayed residual scalar vanishes. This is the
next arithmetic condition a resolution argument must examine. -/
theorem evenNodeTwoChartReduced_critical_on_curve
    (A B C D u v : ZMod 2) :
    (B + v = 0 ∧ C + u = 0 ∧
      evenNodeTwoChartReduced A B C D u v = 0) ↔
    (u = C ∧ v = B ∧ A + B ^ 2 + B * C - D * C ^ 2 = 0) := by
  have htwo : (2 : ZMod 2) = 0 := by decide
  have hvalue :
      evenNodeTwoChartReduced A B C D C B =
        A + B ^ 2 + B * C - D * C ^ 2 := by
    dsimp [evenNodeTwoChartReduced]
    linear_combination B * C * htwo
  constructor
  · rintro ⟨hu, hv, heq⟩
    obtain ⟨hu', hv'⟩ := evenNode_twoChart_critical_point B C u v hu hv
    refine ⟨hu', hv', ?_⟩
    rw [hu', hv', hvalue] at heq
    exact heq
  · rintro ⟨hu, hv, heq⟩
    have hzero (x : ZMod 2) : x + x = 0 := by
      calc
        x + x = 2 * x := by ring
        _ = 0 := by rw [htwo, zero_mul]
    refine ⟨?_, ?_, ?_⟩
    · rw [hv]; exact hzero B
    · rw [hu]; exact hzero C
    · rw [hu, hv, hvalue]; exact heq

#print axioms evenVal_node_fourFactor_data
#print axioms evenVal_node_twoChart_uniform
#print axioms evenVal_node_twoChart_reduced_equation
#print axioms evenNodeTwoChartPolynomial_reduced_eval
#print axioms evenNodeTwoChartPolynomial_reduction_ne_zero
#print axioms evenVal_node_twoChart_uniform_reduction_ne_zero
#print axioms evenNodeTwoChartSubstitution_surface
#print axioms evenNodeTwoChart_two_regular
#print axioms evenNodeTwoChart_ideal_two_saturated
#print axioms evenNodeTwoChart_pulledEquation_saturation
#print axioms evenNodeTwoChartToSurfaceRing
#print axioms evenNodeTwoChartToSurfaceRing_X
#print axioms evenNodeTwoChartToSurfaceRing_C
#print axioms evenNodeTwoChart_substitutedEquation_saturation
#print axioms evenNodeTwoChart_localizedPullback_kernel
#print axioms evenNodeTwoChartSurfaceToPullback
#print axioms evenNodeTwoAwayToPullbackLocalization
#print axioms localSurfaceCentreTwoAwayToSurfaceLocalization_scalar
#print axioms evenNodeTwoAwayToPullbackLocalization_scalar
#print axioms evenNodeTwoChart_closureMap
#print axioms evenNodeTwoChart_closureMap_injective
#print axioms evenVal_node_twoChart_substitutedEquation_saturation
#print axioms evenVal_node_twoChart_localizedPullback_kernel
#print axioms evenNodeTwoChart_centre_image
#print axioms evenNodeTwoChart_surfaceCentre_image
#print axioms evenNodeTwoChart_reesMap
#print axioms evenNodeTwoReesPolynomialMap
#print axioms evenNodeTwoReesPolynomialMap_X
#print axioms localSurfaceCentreTwoRatio_relation
#print axioms evenNodeTwoAwayToPullbackLocalization_ratio
#print axioms evenNodeTwoReesPolynomialMap_substitution
#print axioms evenNodeTwoReesPolynomialMap_scalar_in_range
#print axioms evenNodeTwoReesPolynomialMap_pullback
#print axioms evenNodeTwoReesPolynomialMap_four_mul_chart
#print axioms localSurfaceCentreTwoAway_scalar_regular
#print axioms evenNodeTwoReesPolynomialMap_chart_zero_of_surfaceTwo_regular
#print axioms evenNodeTwoReesPolynomialMap_chart_ideal_le_kernel
#print axioms evenNodeTwoChartToReesAway
#print axioms evenNodeTwoReesPolynomialMap_kernel
#print axioms evenNodeTwoChartToReesAway_injective
#print axioms evenNodeTwoChartToSurface
#print axioms evenNodeTwoChartReduced_increment
#print axioms evenNode_twoChart_critical_point
#print axioms evenNodeTwoChartReduced_critical_on_curve

end Beal.General