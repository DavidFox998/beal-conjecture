import Mathlib.Modular.EllipticCurveMinimal

local notation "ℕ" => Nat

/-!
# Odd-`a` blow-ups toward the `D₆` fiber

The translated model with `c` odd and `a` odd meets `IsINStar 2`:
`a₁ = 0`, `v_π(a₂) = 1`, `a₃ = 2 π²`, `v_π(a₄) = 3`, `v_π(a₆) = 5`.
`ℤ[√(-1)] / (π)` is `𝔽₂`, so every unit is congruent to `1`. Each reduced
chart is therefore the same equation for the whole odd-`a` row.

Charts are strict transforms of the blow-up of the closed point `(π, x, y)`.
The special fiber is the reduction of the strict transform modulo `π`.
A partial derivative that stays a unit along that reduction is the regularity
check used here. It is not a scheme-theoretic Jacobian criterion.

Proved for every odd-`a` curve:

* the `π`-chart `x = π X`, `y = π Y` reduces to `Y²`;
* on `Y = 0` the cofactor of `π` reduces to `X² (X + 1)`, so both
  `𝔽₂`-points of that double line are the singular ones;
* blowing the origin up again in the `π`-direction leaves transverse
  cofactor `X² + X + 1`, a unit at every point of `ℤ[√(-1)]`
  (`f2Quad_is_unit`);
* the exceptional curves at the two rational singular points reduce to
  `Y² + X`, `Y² + S`, `Y² + X + 1`, and `Y² + S² + S`, and the partial
  in the affine coordinate is a unit;
* blowing up the closed point `X² + X + 1 = 0` in the chart
  `X = ρ + π U`, `Y = π V`, for each geometric root `ρ`, leaves
  `π² (V² + U)` plus a multiple of `π³` (`f4_chart_omega`,
  `f4_chart_conj`, `odd_a_f4_val_omega`, `odd_a_f4_val_conj`).
  The reduced curve is `V² + U` and `∂/∂U = 1`. These are two
  multiplicity-one legs, the geometric components of one closed point
  of residue field `𝔽₄`.

Seven distinct components are exhibited. Three have multiplicity two:
the first double line `Y²` (`chain1`, the slice `S = 0`), the second
`π`-chart `Y²` (`theta`, the slice `t = 0`), and `B² - u₂ A`
(`chain2`, where the pullback of `π` is `t² A`). Four have multiplicity
one: the cusp `T² - x`, the conic `Y² + X + 1` at `X ≡ -u₂`, and the two
`𝔽₄` curves `V² + U`. `chain1` and `theta` are the two slices of one chart,
separated by the point `t = 1`. `chain2` and the cusp reduce to the same
equation and are separated by the power of the transverse coordinate in `π`.
Adjacency is not proved, and neither is the absence of a further singularity.
`kodaira_neron_odd_a_open` is unchanged. Its proposition is the count `7`.
`NeronSpecialFiberComponents` is not changed, and
`components_n_plus_five_open` is not used.
-/

namespace BlowupOddA

open FreyCurve4413

/-- `u ≡ 1` modulo `π`. -/
def congOne (u : GaussInt) : Prop :=
  piDivides (GaussInt.sub u (GaussInt.one))

theorem congOne_of_not_pi (u : GaussInt) (h : ¬ piDivides u) : congOne u := by
  have h1 := not_pi_means_congruent_one u h
  have heq : GaussInt.add u (GaussInt.ofInt (-1)) = GaussInt.sub u GaussInt.one := by
    cases u with
    | mk r i =>
      simp [GaussInt.add, GaussInt.sub, GaussInt.ofInt, GaussInt.one]
      omega
  rwa [heq] at h1

theorem piDivides_add_of_both {a b : GaussInt} (ha : piDivides a) (hb : piDivides b) :
    piDivides (GaussInt.add a b) :=
  (piDivides_add_left hb).2 ha

theorem piDivides_sub_of_both {a b : GaussInt} (ha : piDivides a) (hb : piDivides b) :
    piDivides (GaussInt.sub a b) := by
  rw [GaussInt.sub_eq_add_neg]
  exact piDivides_add_of_both ha ((piDivides_neg b).2 hb)

/-- If `π` divides `a` and `a - b`, then `π` divides `b`. -/
theorem piDivides_of_sub_left {a b : GaussInt}
    (ha : piDivides a) (hab : piDivides (GaussInt.sub a b)) : piDivides b := by
  have hcancel : GaussInt.sub a (GaussInt.sub a b) = b := by
    cases a with
    | mk ar ai =>
      cases b with
      | mk br bi =>
        simp [GaussInt.sub]
        constructor <;> omega
  rw [← hcancel]
  exact piDivides_sub_of_both ha hab

/-- Odd `a` and odd `c` supply unit cofactors, each congruent to `1`.

`a₂ = u₂ π`, `a₄ = u₄ π³`, `a₆ = u₆ π⁵`, and `a₃ = (-√(-1)) π⁴`.
-/
theorem odd_a_units (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    ∃ u2 u4 u6 : GaussInt,
      GaussInt.mul u2 pi = a2AfterPi E ∧
      GaussInt.mul u4 (piPow 3) = a4AfterPi E ∧
      GaussInt.mul u6 (piPow 5) = a6AfterPiSq E ∧
      GaussInt.mul ⟨0, -1⟩ (piPow 4) = a3AfterPiSq ∧
      ¬ piDivides u2 ∧ ¬ piDivides u4 ∧ ¬ piDivides u6 ∧
      congOne u2 ∧ congOne u4 ∧ congOne u6 := by
  rcases a2AfterPi_p2_exact_one E with ⟨u2, hu2, h2⟩
  rcases a4AfterPi_p2_exact_three_of_a_odd E hodd ha with ⟨u4, hu4, h4⟩
  rcases a6AfterPiSq_p2_exact_five_of_a_odd E hodd ha with ⟨u6, hu6, h6⟩
  refine ⟨u2, u4, u6, hu2, hu4, hu6, ?_, h2, h4, h6,
    congOne_of_not_pi u2 h2, congOne_of_not_pi u4 h4, congOne_of_not_pi u6 h6⟩
  rw [piPow_four]
  simp [a3AfterPiSq, GaussInt.mul]

/-- Strict transform in the chart `x = π X`, `y = π Y`, divided by `π²`.

The model `Y² + a₃ Y = X³ + a₂ X² + a₄ X + a₆` becomes
`Y² + (-√(-1)) π³ Y - π X³ - π u₂ X² - π² u₄ X - π³ u₆`.
-/
def piChart (u2 u4 u6 X Y : GaussInt) : GaussInt :=
  let y2 := GaussInt.mul Y Y
  let a3term := GaussInt.mul (piPow 3) (GaussInt.mul ⟨0, -1⟩ Y)
  let x3 := GaussInt.mul pi (GaussInt.mul (GaussInt.mul X X) X)
  let x2 := GaussInt.mul pi (GaussInt.mul u2 (GaussInt.mul X X))
  let x1 := GaussInt.mul (piPow 2) (GaussInt.mul u4 X)
  let x0 := GaussInt.mul (piPow 3) u6
  GaussInt.sub (GaussInt.add y2 a3term)
    (GaussInt.add x3 (GaussInt.add x2 (GaussInt.add x1 x0)))

/-- Cofactor of `π` in `piChart - Y²`. -/
def piChartCofactor (u2 u4 u6 X Y : GaussInt) : GaussInt :=
  GaussInt.sub
    (GaussInt.mul (piPow 2) (GaussInt.mul ⟨0, -1⟩ Y))
    (GaussInt.add (GaussInt.mul (GaussInt.mul X X) X)
      (GaussInt.add (GaussInt.mul u2 (GaussInt.mul X X))
        (GaussInt.add (GaussInt.mul pi (GaussInt.mul u4 X))
          (GaussInt.mul (piPow 2) u6))))

theorem piChart_sub_ySq (u2 u4 u6 X Y : GaussInt) :
    GaussInt.sub (piChart u2 u4 u6 X Y) (GaussInt.mul Y Y) =
      GaussInt.mul pi (piChartCofactor u2 u4 u6 X Y) := by
  cases u2 with
  | mk a2r a2i =>
    cases u4 with
    | mk a4r a4i =>
      cases u6 with
      | mk a6r a6i =>
        cases X with
        | mk xr xi =>
          cases Y with
          | mk yr yi =>
            simp [piChart, piChartCofactor, pi, piPow, GaussInt.npow, GaussInt.one,
              GaussInt.mul, GaussInt.add, GaussInt.sub]
            constructor <;> grind

/-- The first `π`-chart reduces to `Y²`. -/
theorem piChart_reduces_to_ySq (u2 u4 u6 X Y : GaussInt) :
    valAtLeast (GaussInt.sub (piChart u2 u4 u6 X Y) (GaussInt.mul Y Y)) 1 := by
  refine valAtLeast_of_dvd (u := piChartCofactor u2 u4 u6 X Y) ?_
  rw [piPow, GaussInt.npow_one, GaussInt.mul_comm]
  exact (piChart_sub_ySq u2 u4 u6 X Y).symm

/-- On `Y = 0` the visible cofactor is `X² (X + u₂)`. -/
def transverseAtZero (u2 X : GaussInt) : GaussInt :=
  GaussInt.mul (GaussInt.mul X X) (GaussInt.add X u2)

/-- On `Y = 0` the cofactor is `-X² (X + u₂)` plus a multiple of `π`.

The sign is `-1`, and `-1 ≡ 1` in `𝔽₂`, so the reduction is `X² (X + 1)`.
-/
theorem piChartCofactor_plus_transverse (u2 u4 u6 X : GaussInt) :
    GaussInt.add (piChartCofactor u2 u4 u6 X GaussInt.zero) (transverseAtZero u2 X) =
      GaussInt.mul pi
        (GaussInt.neg
          (GaussInt.add (GaussInt.mul u4 X) (GaussInt.mul pi u6))) := by
  cases u2; cases u4; cases u6; cases X
  simp [piChartCofactor, transverseAtZero, pi, piPow, GaussInt.npow,
    GaussInt.zero, GaussInt.one, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg]
  constructor <;> grind

theorem piChartCofactor_at_zero (u2 u4 u6 X : GaussInt) :
    valAtLeast
      (GaussInt.add (piChartCofactor u2 u4 u6 X GaussInt.zero) (transverseAtZero u2 X))
      1 := by
  refine valAtLeast_of_dvd
    (u := GaussInt.neg (GaussInt.add (GaussInt.mul u4 X) (GaussInt.mul pi u6))) ?_
  rw [piPow, GaussInt.npow_one, GaussInt.mul_comm]
  exact (piChartCofactor_plus_transverse u2 u4 u6 X).symm

/-- `X² (X + u₂) ≡ X² (X + 1)` modulo `π` once `u₂ ≡ 1`. -/
theorem transverse_cong_xSq_x_one (u2 X : GaussInt) (hu : congOne u2) :
    piDivides
      (GaussInt.sub (transverseAtZero u2 X)
        (GaussInt.mul (GaussInt.mul X X) (GaussInt.add X (GaussInt.one)))) := by
  have hdiff :
      GaussInt.sub (transverseAtZero u2 X)
          (GaussInt.mul (GaussInt.mul X X) (GaussInt.add X (GaussInt.one))) =
        GaussInt.mul (GaussInt.mul X X) (GaussInt.sub u2 (GaussInt.one)) := by
    cases u2; cases X
    simp [transverseAtZero, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  rw [hdiff]
  exact (piDivides_mul (GaussInt.mul X X) (GaussInt.sub u2 (GaussInt.one))).2 (Or.inr hu)

/-- Both residue classes kill `X² (X + 1)`. They are the two singular points. -/
theorem xSq_x_one_vanishes (X : GaussInt) :
    piDivides (GaussInt.mul (GaussInt.mul X X) (GaussInt.add X (GaussInt.one))) := by
  have hpair := int_mod_two (X.re + X.im)
  rcases hpair with h0 | h1
  · have hX : piDivides X := by
      simpa [piDivides] using h0
    exact (piDivides_mul (GaussInt.mul X X) _).2
      (Or.inl ((piDivides_mul X X).2 (Or.inl hX)))
  · have h1u : piDivides (GaussInt.add X (GaussInt.one)) := by
      have hnot : ¬ piDivides X := by
        intro hdiv
        simp [piDivides] at hdiv
        omega
      have hsub : piDivides (GaussInt.sub X (GaussInt.one)) :=
        congOne_of_not_pi X hnot
      -- X + 1 = (X - 1) + 2, and 2 is divisible by π.
      have htwo : piDivides (GaussInt.ofInt 2) := by
        rw [← two_eq_neg_i_mul_pi_sq]
        exact (piDivides_mul _ _).2 (Or.inr (by
          rw [piPow, GaussInt.npow]
          exact (piDivides_mul pi pi).2 (Or.inl (by simp [piDivides, pi]))))
      have hsum : GaussInt.add X (GaussInt.one) =
          GaussInt.add (GaussInt.sub X (GaussInt.one)) (GaussInt.ofInt 2) := by
        cases X
        simp [GaussInt.add, GaussInt.sub, GaussInt.one, GaussInt.ofInt]
        omega
      rw [hsum]
      exact piDivides_add_of_both hsub htwo
    exact (piDivides_mul _ _).2 (Or.inr h1u)

/-- `-z ≡ z` modulo `π`, since `-1 ≡ 1` in `𝔽₂`. -/
theorem neg_cong_self (z : GaussInt) :
    piDivides (GaussInt.sub (GaussInt.neg z) z) := by
  have htwo : piDivides (GaussInt.ofInt 2) := by
    rw [← two_eq_neg_i_mul_pi_sq]
    exact (piDivides_mul _ (piPow 2)).2 <| Or.inr <| by
      simp [piPow_two, piDivides]
  have hid : GaussInt.sub (GaussInt.neg z) z =
      GaussInt.neg (GaussInt.mul (GaussInt.ofInt 2) z) := by
    cases z
    simp [GaussInt.sub, GaussInt.neg, GaussInt.mul, GaussInt.ofInt]
    omega
  rw [hid]
  exact (piDivides_neg _).2 ((piDivides_mul _ _).2 (Or.inl htwo))

/-- On `Y = 0` the cofactor reduces to `X² (X + 1)`. -/
theorem piChartCofactor_reduces (u2 u4 u6 X : GaussInt) (hu : congOne u2) :
    piDivides
      (GaussInt.sub (piChartCofactor u2 u4 u6 X GaussInt.zero)
        (GaussInt.mul (GaussInt.mul X X) (GaussInt.add X GaussInt.one))) := by
  let cof := piChartCofactor u2 u4 u6 X GaussInt.zero
  let tr := transverseAtZero u2 X
  let red := GaussInt.mul (GaussInt.mul X X) (GaussInt.add X GaussInt.one)
  have hsplit : GaussInt.sub cof red =
      GaussInt.add (GaussInt.add cof tr) (GaussInt.sub (GaussInt.neg tr) red) := by
    cases cof with | mk cr ci =>
      cases tr with | mk trr tri =>
        cases red with | mk rr ri =>
          simp [GaussInt.add, GaussInt.sub, GaussInt.neg]
          constructor <;> omega
  have hneg : GaussInt.sub (GaussInt.neg tr) red =
      GaussInt.add (GaussInt.sub (GaussInt.neg tr) tr) (GaussInt.sub tr red) := by
    cases tr with | mk trr tri =>
      cases red with | mk rr ri =>
        simp [GaussInt.add, GaussInt.sub, GaussInt.neg]
        constructor <;> omega
  rw [hsplit, hneg]
  refine piDivides_add_of_both ?_ (piDivides_add_of_both ?_ ?_)
  · rw [piChartCofactor_plus_transverse]
    exact (piDivides_mul pi _).2 (Or.inl (by simp [piDivides, pi]))
  · exact neg_cong_self tr
  · exact transverse_cong_xSq_x_one u2 X hu

/-!
## Second `π`-chart

Substitute `X = π X₁`, `Y = π Y₁` into `piChart` and divide by `π²`.
The result is `Y² - π Q + π² ((-√(-1)) Y - X³)`, with
`Q = u₂ X² + u₄ X + u₆`.
-/

/-- `Q = u₂ X² + u₄ X + u₆`. -/
def originTransverse (u2 u4 u6 X : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul u2 (GaussInt.mul X X))
    (GaussInt.add (GaussInt.mul u4 X) u6)

/-- `X² + X + 1` over `ℤ[√(-1)]`. -/
def f2Quad (X : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul X X) (GaussInt.add X (GaussInt.one))

def originPiChart (u2 u4 u6 X Y : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.sub (GaussInt.mul Y Y) (GaussInt.mul pi (originTransverse u2 u4 u6 X)))
    (GaussInt.mul (piPow 2)
      (GaussInt.sub (GaussInt.mul ⟨0, -1⟩ Y) (GaussInt.mul (GaussInt.mul X X) X)))

theorem originPiChart_shape (u2 u4 u6 X Y : GaussInt) :
    GaussInt.sub (originPiChart u2 u4 u6 X Y)
        (GaussInt.sub (GaussInt.mul Y Y) (GaussInt.mul pi (originTransverse u2 u4 u6 X))) =
      GaussInt.mul (piPow 2)
        (GaussInt.sub (GaussInt.mul ⟨0, -1⟩ Y) (GaussInt.mul (GaussInt.mul X X) X)) := by
  simp [originPiChart]
  cases u2; cases u4; cases u6; cases X; cases Y
  simp [GaussInt.sub, GaussInt.add, GaussInt.mul]
  constructor <;> omega

/-- `Q ≡ X² + X + 1` modulo `π` when every unit is congruent to `1`. -/
theorem originTransverse_cong (u2 u4 u6 X : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    piDivides (GaussInt.sub (originTransverse u2 u4 u6 X) (f2Quad X)) := by
  have hdiff :
      GaussInt.sub (originTransverse u2 u4 u6 X) (f2Quad X) =
        GaussInt.add
          (GaussInt.mul (GaussInt.sub u2 (GaussInt.one)) (GaussInt.mul X X))
          (GaussInt.add
            (GaussInt.mul (GaussInt.sub u4 (GaussInt.one)) X)
            (GaussInt.sub u6 (GaussInt.one))) := by
    cases u2; cases u4; cases u6; cases X
    simp [originTransverse, f2Quad, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  rw [hdiff]
  exact piDivides_add_of_both
    ((piDivides_mul _ _).2 (Or.inl h2))
    (piDivides_add_of_both ((piDivides_mul _ _).2 (Or.inl h4)) h6)

/-- `X² + X + 1` is odd under `re + im`. It is a unit in `ℤ[√(-1)] / (π)`. -/
theorem f2Quad_is_unit (X : GaussInt) : ¬ piDivides (f2Quad X) := by
  cases X with
  | mk r i =>
    simp [f2Quad, piDivides, GaussInt.mul, GaussInt.add, GaussInt.one]
    let n := r + i
    have hpoly : r * r - i * i + (r + 1) + (r * i + i * r + i) =
        n * n + n + 1 - 2 * i * i := by
      simp [n]
      grind
    rw [hpoly]
    have hmod : (n * n + n + 1 - 2 * i * i) % 2 = (n * n + n + 1) % 2 := by
      have htwo : (2 * i * i) % 2 = 0 := by
        rw [Int.mul_assoc, Int.mul_emod, show (2 : ℤ) % 2 = 0 by decide, Int.zero_mul, Int.zero_emod]
      rw [Int.sub_emod, htwo, Int.sub_zero, Int.emod_emod]
    rw [hmod]
    have hpair : n * n + n = n * (n + 1) := by grind
    rw [hpair]
    rcases int_mod_two n with hn | hn
    · have hd : (2 : ℤ) ∣ n := Int.dvd_of_emod_eq_zero hn
      rcases hd with ⟨k, hk⟩
      rw [hk]
      have hfac : (2 * k) * (2 * k + 1) + 1 = 2 * (k * (2 * k + 1)) + 1 := by grind
      rw [hfac, Int.add_comm, Int.add_mul_emod_self_left]
      decide
    · have hk : n = 2 * ((n - 1) / 2) + 1 := int_odd_split hn
      rw [hk]
      have hfac : (2 * ((n - 1) / 2) + 1) * (2 * ((n - 1) / 2) + 1 + 1) + 1 =
          2 * ((2 * ((n - 1) / 2) + 1) * (((n - 1) / 2) + 1)) + 1 := by grind
      rw [hfac, Int.add_comm, Int.add_mul_emod_self_left]
      decide

/-- The transverse coefficient on the second `π`-chart is a unit at every
integral point. The polynomial `X² + X + 1` itself has no root in `𝔽₂`. -/
theorem origin_transverse_unit (u2 u4 u6 X : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    ¬ piDivides (originTransverse u2 u4 u6 X) :=
  fun h =>
    f2Quad_is_unit X <|
      piDivides_of_sub_left h (originTransverse_cong u2 u4 u6 X h2 h4 h6)

/-!
## Exceptional curves at `X ≡ 0` and `X ≡ 1`

`X² (X + 1)` vanishes at both residue classes, so both points of the first
double line are blown up. The fibers below are the strict transforms with the
exceptional coordinate set to `0`.
-/

/-- Fiber `Y² - u₂ X` of the chart centered at `X ≡ 0`. -/
def leg0Fiber (u2 X Y : GaussInt) : GaussInt :=
  GaussInt.sub (GaussInt.mul Y Y) (GaussInt.mul u2 X)

theorem leg0Fiber_reduces (u2 X Y : GaussInt) (hu : congOne u2) :
    piDivides (GaussInt.sub (leg0Fiber u2 X Y) (GaussInt.sub (GaussInt.mul Y Y) X)) := by
  have hdiff :
      GaussInt.sub (leg0Fiber u2 X Y) (GaussInt.sub (GaussInt.mul Y Y) X) =
        GaussInt.mul X (GaussInt.sub (GaussInt.one) u2) := by
    cases u2; cases X; cases Y
    simp [leg0Fiber, GaussInt.mul, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  have hneg : GaussInt.sub (GaussInt.one) u2 =
      GaussInt.neg (GaussInt.sub u2 (GaussInt.one)) := by
    cases u2
    simp [GaussInt.sub, GaussInt.neg, GaussInt.one]
    omega
  rw [hdiff, hneg]
  exact (piDivides_mul X _).2 (Or.inr ((piDivides_neg _).2 hu))

/-- `∂/∂X` of `Y² - X` is `-1`, a unit. The reduced curve `Y² + X` is smooth. -/
theorem leg0_partial_is_unit : ¬ piDivides (GaussInt.neg (GaussInt.one)) := by
  simp [piDivides, GaussInt.neg, GaussInt.one]

/-- The second affine chart of the same exceptional `ℙ¹`, coordinate `S`. -/
theorem leg0_other_chart_reduces (u2 S Y : GaussInt) (hu : congOne u2) :
    piDivides (GaussInt.sub (leg0Fiber u2 S Y) (GaussInt.sub (GaussInt.mul Y Y) S)) :=
  leg0Fiber_reduces u2 S Y hu

/-- Fiber of the chart centered at `X ≡ -u₂`. It reduces to `Y² + X + 1`. -/
def leg1Fiber (u2 u4 X Y : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul Y Y)
    (GaussInt.sub (GaussInt.mul u4 u2) (GaussInt.mul (GaussInt.mul u2 u2) X))

/-- `Y² + X + 1`. -/
def leg1Reduced (X Y : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul Y Y) (GaussInt.add X (GaussInt.one))

theorem uSq_add_one_div (u : GaussInt) (hu : congOne u) :
    piDivides (GaussInt.add (GaussInt.mul u u) (GaussInt.one)) := by
  -- u² + 1 = (u - 1)(u + 1) + 2.
  have htwo : piDivides (GaussInt.ofInt 2) := by
    rw [← two_eq_neg_i_mul_pi_sq]
    exact (piDivides_mul ⟨0, -1⟩ (piPow 2)).2 <| Or.inr <| by
      rw [piPow_two]
      simp [piDivides]
  have hid :
      GaussInt.add (GaussInt.mul u u) (GaussInt.one) =
        GaussInt.add
          (GaussInt.mul (GaussInt.sub u (GaussInt.one)) (GaussInt.add u (GaussInt.one)))
          (GaussInt.ofInt 2) := by
    cases u
    simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one, GaussInt.ofInt]
    constructor <;> grind
  rw [hid]
  exact piDivides_add_of_both ((piDivides_mul _ _).2 (Or.inl hu)) htwo

theorem unit_mul_cong_one (u v : GaussInt) (hu : congOne u) (hv : congOne v) :
    piDivides (GaussInt.sub (GaussInt.mul u v) (GaussInt.one)) := by
  have hid :
      GaussInt.sub (GaussInt.mul u v) (GaussInt.one) =
        GaussInt.add (GaussInt.mul u (GaussInt.sub v (GaussInt.one)))
          (GaussInt.sub u (GaussInt.one)) := by
    cases u; cases v
    simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  rw [hid]
  exact piDivides_add_of_both ((piDivides_mul _ _).2 (Or.inr hv)) hu

theorem leg1Fiber_reduces (u2 u4 X Y : GaussInt) (h2 : congOne u2) (h4 : congOne u4) :
    piDivides (GaussInt.sub (leg1Fiber u2 u4 X Y) (leg1Reduced X Y)) := by
  have hdiff :
      GaussInt.sub (leg1Fiber u2 u4 X Y) (leg1Reduced X Y) =
        GaussInt.sub
          (GaussInt.sub (GaussInt.mul u4 u2) (GaussInt.one))
          (GaussInt.mul X (GaussInt.add (GaussInt.mul u2 u2) (GaussInt.one))) := by
    cases u2; cases u4; cases X; cases Y
    simp [leg1Fiber, leg1Reduced, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  rw [hdiff]
  exact piDivides_sub_of_both
    (unit_mul_cong_one u4 u2 h4 h2)
    ((piDivides_mul X _).2 (Or.inr (uSq_add_one_div u2 h2)))

/-- `∂/∂X` of `Y² + X + 1` is `1`. -/
theorem leg1_partial_is_unit : ¬ piDivides (GaussInt.one) := by
  simp [piDivides, GaussInt.one]

/-- Second chart of the same conic: `Y² - u₂ S - u₂ S²`, reducing to `Y² + S² + S`. -/
def leg1Other (u2 S Y : GaussInt) : GaussInt :=
  GaussInt.sub (GaussInt.mul Y Y)
    (GaussInt.add (GaussInt.mul u2 S) (GaussInt.mul u2 (GaussInt.mul S S)))

def leg1OtherReduced (S Y : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul Y Y) (GaussInt.add (GaussInt.mul S S) S)

theorem leg1Other_reduces (u2 S Y : GaussInt) (hu : congOne u2) :
    piDivides (GaussInt.sub (leg1Other u2 S Y) (leg1OtherReduced S Y)) := by
  -- Difference is `-((u₂ + 1) S + (u₂ + 1) S²)`.
  have hdirect :
      GaussInt.sub (leg1Other u2 S Y) (leg1OtherReduced S Y) =
        GaussInt.neg
          (GaussInt.add
            (GaussInt.mul (GaussInt.add u2 (GaussInt.one)) S)
            (GaussInt.mul (GaussInt.add u2 (GaussInt.one)) (GaussInt.mul S S))) := by
    cases u2; cases S; cases Y
    simp [leg1Other, leg1OtherReduced, GaussInt.mul, GaussInt.add, GaussInt.sub,
      GaussInt.neg, GaussInt.one]
    constructor <;> grind
  have htwo : piDivides (GaussInt.ofInt 2) := by
    rw [← two_eq_neg_i_mul_pi_sq]
    exact (piDivides_mul _ (piPow 2)).2 <| Or.inr <| by
      simp [piPow_two, piDivides]
  have hu1 : piDivides (GaussInt.add u2 (GaussInt.one)) := by
    -- u + 1 = (u - 1) + 2, and π divides 2.
    have hid : GaussInt.add u2 (GaussInt.one) =
        GaussInt.add (GaussInt.sub u2 (GaussInt.one)) (GaussInt.ofInt 2) := by
      cases u2
      simp [GaussInt.add, GaussInt.sub, GaussInt.one, GaussInt.ofInt]
      omega
    rw [hid]
    exact piDivides_add_of_both hu htwo
  rw [hdirect]
  exact (piDivides_neg _).2 <| piDivides_add_of_both
    ((piDivides_mul _ _).2 (Or.inl hu1))
    ((piDivides_mul _ _).2 (Or.inl hu1))

/-!
## Digits of the unit cofactors

`u₂ ≡ 1` modulo `π²`, `u₄ ≡ 1` modulo `π²`, and `u₆ ≡ 1 + π` modulo `π²`.
The second `π`-chart is therefore
`Y² - π (X² + X + 1 + π) + π² ((1 - π) Y - X³)`
up to an error divisible by `π³`. Every reduced chart below is read from that
model, so it is the same equation for the whole odd-`a` row.
-/

/-- Cofactor of `a₂'`: `a₂' = u₂ π`. -/
def u2Of (E : FreyCurve4413) : GaussInt :=
  ⟨2 * E.a + 3, -(2 * E.a)⟩

theorem u2Of_spec (E : FreyCurve4413) :
    GaussInt.mul (u2Of E) pi = a2AfterPi E := by
  simp [u2Of, a2AfterPi, pi, GaussInt.mul]
  constructor <;> omega

/-- `(u₂ - 1) / π² = ⟨-a, -(a + 1)⟩`. -/
def u2Digit (E : FreyCurve4413) : GaussInt :=
  ⟨-E.a, -(E.a + 1)⟩

theorem u2_sub_one_eq (E : FreyCurve4413) :
    GaussInt.mul (u2Digit E) (piPow 2) =
      GaussInt.sub (u2Of E) GaussInt.one := by
  rw [piPow_two]
  simp [u2Digit, u2Of, GaussInt.mul, GaussInt.sub, GaussInt.one]
  constructor <;> omega

/-- The third `π`-digit of `u₂` is a unit when `a` is odd. -/
theorem u2_digit_not_pi (E : FreyCurve4413) (ha : E.a.natAbs % 2 = 1) :
    ¬ piDivides (u2Digit E) := by
  have ha2 := int_odd_of_natAbs_odd ha
  simp [piDivides, u2Digit]
  omega

/-- Cofactor of `a₄'` at valuation `3`. -/
def u4Of (E : FreyCurve4413) : GaussInt :=
  ⟨(E.b ^ 2 - E.a ^ 2 + 3) / 2, -((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 2)⟩

theorem four_dvd_a_sq_b_sq_eight_a_three {a b : ℤ} (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (4 : ℤ) ∣ a ^ 2 + b ^ 2 + 8 * a + 3 := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨p ^ 2 + q ^ 2 + 5 * p + 3, ?_⟩
  rw [ha', hb']
  grind

theorem four_dvd_b_sq_sub_a_sq_one {a b : ℤ} (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (4 : ℤ) ∣ b ^ 2 - a ^ 2 + 1 := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨q ^ 2 - p ^ 2 - p, ?_⟩
  rw [ha', hb']
  grind

/-- `(u₄ - 1) / π²`. -/
def u4Digit (E : FreyCurve4413) : GaussInt :=
  ⟨-((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 4), -((E.b ^ 2 - E.a ^ 2 + 1) / 4)⟩

theorem u4Of_spec (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    GaussInt.mul (u4Of E) (piPow 3) = a4AfterPi E := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  have hre := two_dvd_b_sq_sub_a_sq_add_three ha2 hb2
  have him := two_dvd_a_sq_add_b_sq_add_eight_a_add_three ha2 hb2
  rw [piPow_three]
  simp [u4Of, a4AfterPi, GaussInt.mul]
  constructor
  · have hdiv : (2 : ℤ) * ((E.b ^ 2 - E.a ^ 2 + 3) / 2) = E.b ^ 2 - E.a ^ 2 + 3 :=
      Int.mul_ediv_cancel' hre
    have hdiv' : (2 : ℤ) * ((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 2) =
        E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3 := Int.mul_ediv_cancel' him
    grind
  · have hdiv : (2 : ℤ) * ((E.b ^ 2 - E.a ^ 2 + 3) / 2) = E.b ^ 2 - E.a ^ 2 + 3 :=
      Int.mul_ediv_cancel' hre
    have hdiv' : (2 : ℤ) * ((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 2) =
        E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3 := Int.mul_ediv_cancel' him
    grind

theorem u4_sub_one_eq (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    GaussInt.mul (u4Digit E) (piPow 2) =
      GaussInt.sub (u4Of E) GaussInt.one := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  have h4a := four_dvd_a_sq_b_sq_eight_a_three ha2 hb2
  have h4b := four_dvd_b_sq_sub_a_sq_one ha2 hb2
  have h2a := two_dvd_a_sq_add_b_sq_add_eight_a_add_three ha2 hb2
  have h2b := two_dvd_b_sq_sub_a_sq_add_three ha2 hb2
  rw [piPow_two]
  simp [u4Digit, u4Of, GaussInt.mul, GaussInt.sub, GaussInt.one]
  constructor
  · have hq : (4 : ℤ) * ((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 4) =
        E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3 := Int.mul_ediv_cancel' h4a
    have h2 : (2 : ℤ) * ((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 2) =
        E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3 := Int.mul_ediv_cancel' h2a
    grind
  · have hq : (4 : ℤ) * ((E.b ^ 2 - E.a ^ 2 + 1) / 4) = E.b ^ 2 - E.a ^ 2 + 1 :=
      Int.mul_ediv_cancel' h4b
    have h2 : (2 : ℤ) * ((E.b ^ 2 - E.a ^ 2 + 3) / 2) = E.b ^ 2 - E.a ^ 2 + 3 :=
      Int.mul_ediv_cancel' h2b
    grind

/-- Cofactor of `a₆` after `y ↦ y + π²`: `a₆ = u₆ π⁵`. -/
def u6Of (E : FreyCurve4413) : GaussInt :=
  ⟨-(((E.a + 1) ^ 2) / 2), -((E.b ^ 2 + 2 * E.a) / 2)⟩

theorem four_dvd_sq_succ_of_odd {a : ℤ} (ha : a % 2 = 1) :
    (4 : ℤ) ∣ (a + 1) ^ 2 := by
  let p := (a - 1) / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  refine ⟨(p + 1) ^ 2, ?_⟩
  rw [ha']
  grind

theorem four_dvd_b_sq_two_a_two {a b : ℤ} (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (4 : ℤ) ∣ b ^ 2 + 2 * a + 2 := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨q ^ 2 + p + 1, ?_⟩
  rw [ha', hb']
  grind

/-- `(u₆ - (1 + π)) / π²`. -/
def u6Digit (E : FreyCurve4413) : GaussInt :=
  ⟨-((E.b ^ 2 + 2 * E.a + 2) / 4), ((E.a + 1) ^ 2) / 4 + 1⟩

theorem u6Of_spec (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    GaussInt.mul (u6Of E) (piPow 5) = a6AfterPiSq E := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  have hre := two_dvd_sq_succ_of_odd ha2
  have him := two_dvd_b_sq_add_two_a ha2 hb2
  rw [piPow_five]
  simp [u6Of, a6AfterPiSq, GaussInt.mul]
  constructor
  · have hdiv : (2 : ℤ) * (((E.a + 1) ^ 2) / 2) = (E.a + 1) ^ 2 :=
      Int.mul_ediv_cancel' hre
    have hdiv' : (2 : ℤ) * ((E.b ^ 2 + 2 * E.a) / 2) = E.b ^ 2 + 2 * E.a :=
      Int.mul_ediv_cancel' him
    grind
  · have hdiv : (2 : ℤ) * (((E.a + 1) ^ 2) / 2) = (E.a + 1) ^ 2 :=
      Int.mul_ediv_cancel' hre
    have hdiv' : (2 : ℤ) * ((E.b ^ 2 + 2 * E.a) / 2) = E.b ^ 2 + 2 * E.a :=
      Int.mul_ediv_cancel' him
    grind

theorem u6_sub_one_pi_eq (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    GaussInt.mul (u6Digit E) (piPow 2) =
      GaussInt.sub (u6Of E) (GaussInt.add GaussInt.one pi) := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  have h4a := four_dvd_sq_succ_of_odd ha2
  have h4b := four_dvd_b_sq_two_a_two ha2 hb2
  have h2a := two_dvd_sq_succ_of_odd ha2
  have h2b := two_dvd_b_sq_add_two_a ha2 hb2
  rw [piPow_two]
  simp [u6Digit, u6Of, pi, GaussInt.mul, GaussInt.sub, GaussInt.add, GaussInt.one]
  constructor
  · have hq : (4 : ℤ) * ((E.b ^ 2 + 2 * E.a + 2) / 4) = E.b ^ 2 + 2 * E.a + 2 :=
      Int.mul_ediv_cancel' h4b
    have h2 : (2 : ℤ) * ((E.b ^ 2 + 2 * E.a) / 2) = E.b ^ 2 + 2 * E.a :=
      Int.mul_ediv_cancel' h2b
    grind
  · have hq : (4 : ℤ) * (((E.a + 1) ^ 2) / 4) = (E.a + 1) ^ 2 :=
      Int.mul_ediv_cancel' h4a
    have h2 : (2 : ℤ) * (((E.a + 1) ^ 2) / 2) = (E.a + 1) ^ 2 :=
      Int.mul_ediv_cancel' h2a
    grind

/-- `-√(-1) = 1 - π`. -/
theorem neg_i_eq_one_sub_pi : GaussInt.sub GaussInt.one pi = ⟨0, -1⟩ := by
  simp [GaussInt.sub, GaussInt.one, pi]

/-- Formal `∂/∂S` of `Y² + S² + S` is `1 + 2 S`, hence congruent to `1`. -/
theorem leg1Other_partial_is_unit (S : GaussInt) :
    ¬ piDivides (GaussInt.add (GaussInt.one) (GaussInt.smul 2 S)) := by
  have htwo : piDivides (GaussInt.smul 2 S) := by
    have h2 : piDivides (GaussInt.ofInt 2) := by
      rw [← two_eq_neg_i_mul_pi_sq]
      exact (piDivides_mul _ (piPow 2)).2 <| Or.inr <| by
        simp [piPow_two, piDivides]
    rw [smul_eq_mul_ofInt]
    exact (piDivides_mul _ _).2 (Or.inl h2)
  exact not_piDivides_add_of_right (by simp [piDivides, GaussInt.one]) htwo

/-!
## The closed point of residue `𝔽₄`

`X² + X + 1` is irreducible over `𝔽₂`. Adjoin a root `ω` with
`ω² + ω + 1 = 0`, so `ω² = -1 - ω` and `ω³ = 1`. The conjugate root
is `-1 - ω`. Both are integral over `ℤ[√(-1)]`.

The second `π`-chart, reduced by the digit lemmas, is
`Y² - π (X² + X + 1 + π) + π² ((1 - π) Y - X³)`.
Blowing up `X = ρ`, `Y = 0` in the chart `X = ρ + π U`, `Y = π V`
and dividing by `π²` leaves `V² - U` plus a multiple of `π`.
In `𝔽₂` that is `V² + U`. The partial in `U` is `1`.
-/

/-- An element of `ℤ[√(-1)][ω] / (ω² + ω + 1)`, stored as `re + im · ω`. -/
structure Quad where
  re : GaussInt
  im : GaussInt
deriving DecidableEq, Repr

namespace Quad

def zero : Quad := ⟨GaussInt.zero, GaussInt.zero⟩
def one : Quad := ⟨GaussInt.one, GaussInt.zero⟩
def ofG (z : GaussInt) : Quad := ⟨z, GaussInt.zero⟩
def omega : Quad := ⟨GaussInt.zero, GaussInt.one⟩

def add (x y : Quad) : Quad :=
  ⟨GaussInt.add x.re y.re, GaussInt.add x.im y.im⟩

def sub (x y : Quad) : Quad :=
  ⟨GaussInt.sub x.re y.re, GaussInt.sub x.im y.im⟩

def neg (x : Quad) : Quad :=
  ⟨GaussInt.neg x.re, GaussInt.neg x.im⟩

/-- `(a + b ω)(c + d ω) = (ac - bd) + (ad + bc - bd) ω`, using `ω² = -1 - ω`. -/
def mul (x y : Quad) : Quad :=
  ⟨GaussInt.sub (GaussInt.mul x.re y.re) (GaussInt.mul x.im y.im),
    GaussInt.sub
      (GaussInt.add (GaussInt.mul x.re y.im) (GaussInt.mul x.im y.re))
      (GaussInt.mul x.im y.im)⟩

def piDividesQ (x : Quad) : Prop :=
  piDivides x.re ∧ piDivides x.im

theorem omega_sq : mul omega omega = sub (neg one) omega := by
  simp [mul, omega, one, zero, sub, neg, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.one, GaussInt.zero]

theorem omega_cube : mul (mul omega omega) omega = one := by
  simp [mul, omega, one, zero, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one,
    GaussInt.zero]

/-- Conjugate root `-1 - ω`. -/
def omegaConj : Quad := sub (neg one) omega

theorem omegaConj_sq : mul omegaConj omegaConj = sub (neg one) omegaConj := by
  simp [omegaConj, mul, omega, one, zero, sub, neg, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.neg, GaussInt.one, GaussInt.zero]

theorem omegaConj_cube : mul (mul omegaConj omegaConj) omegaConj = one := by
  simp [omegaConj, mul, omega, one, zero, sub, neg, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.neg, GaussInt.one, GaussInt.zero]

theorem omegaConj_rel :
    add (add (mul omegaConj omegaConj) omegaConj) one = zero := by
  simp [omegaConj, mul, add, omega, one, zero, sub, neg, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.neg, GaussInt.one, GaussInt.zero]

theorem omega_rel : add (add (mul omega omega) omega) one = zero := by
  simp [mul, add, omega, one, zero, sub, neg, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.one, GaussInt.zero]

theorem add_assoc (x y z : Quad) : add (add x y) z = add x (add y z) := by
  cases x; cases y; cases z
  simp [add, GaussInt.add_assoc]

theorem add_comm (x y : Quad) : add x y = add y x := by
  cases x; cases y
  simp [add, GaussInt.add_comm]

theorem zero_add (x : Quad) : add zero x = x := by
  cases x; simp [add, zero, GaussInt.zero_add]

theorem add_zero (x : Quad) : add x zero = x := by
  cases x; simp [add, zero, GaussInt.add_zero]

theorem neg_neg (x : Quad) : neg (neg x) = x := by
  cases x; simp [neg, GaussInt.neg_neg]

theorem sub_eq_add_neg (x y : Quad) : sub x y = add x (neg y) := by
  cases x; cases y
  simp [sub, add, neg, GaussInt.sub_eq_add_neg]

theorem add_neg_self (x : Quad) : add x (neg x) = zero := by
  cases x with
  | mk r i =>
    cases r; cases i
    simp [add, neg, zero, GaussInt.add, GaussInt.neg, GaussInt.zero]
    constructor <;> omega

theorem neg_add (x y : Quad) : neg (add x y) = add (neg x) (neg y) := by
  cases x; cases y
  simp [neg, add, GaussInt.neg, GaussInt.add]
  constructor <;> omega

theorem mul_one (x : Quad) : mul x one = x := by
  cases x
  simp [mul, one, GaussInt.mul_one, GaussInt.mul_zero, GaussInt.sub_eq_add_neg, GaussInt.add_zero,
    GaussInt.zero_add, GaussInt.neg_zero]

theorem one_mul (x : Quad) : mul one x = x := by
  cases x
  simp [mul, one, zero, GaussInt.one_mul, GaussInt.zero_mul, GaussInt.sub_eq_add_neg,
    GaussInt.add_zero, GaussInt.neg_zero]

theorem mul_zero (x : Quad) : mul x zero = zero := by
  cases x
  simp [mul, zero, GaussInt.mul_zero, GaussInt.sub_eq_add_neg, GaussInt.neg_zero, GaussInt.add_zero]

theorem zero_mul (x : Quad) : mul zero x = zero := by
  cases x
  simp [mul, zero, GaussInt.zero_mul, GaussInt.sub_eq_add_neg, GaussInt.neg_zero, GaussInt.add_zero]

theorem mul_neg (x y : Quad) : mul x (neg y) = neg (mul x y) := by
  cases x with | mk xr xi =>
  cases y with | mk yr yi =>
  cases xr; cases xi; cases yr; cases yi
  simp [mul, neg, GaussInt.mul, GaussInt.neg, GaussInt.sub, GaussInt.add]
  constructor <;> grind

theorem neg_mul (x y : Quad) : mul (neg x) y = neg (mul x y) := by
  cases x with | mk xr xi =>
  cases y with | mk yr yi =>
  cases xr; cases xi; cases yr; cases yi
  simp [mul, neg, GaussInt.mul, GaussInt.neg, GaussInt.sub, GaussInt.add]
  constructor <;> grind

theorem mul_add (x y z : Quad) : mul x (add y z) = add (mul x y) (mul x z) := by
  cases x with | mk xr xi =>
  cases y with | mk yr yi =>
  cases z with | mk zr zi =>
  cases xr; cases xi; cases yr; cases yi; cases zr; cases zi
  simp [mul, add, GaussInt.mul, GaussInt.add, GaussInt.sub]
  constructor <;> grind

theorem add_mul (x y z : Quad) : mul (add x y) z = add (mul x z) (mul y z) := by
  cases x with | mk xr xi =>
  cases y with | mk yr yi =>
  cases z with | mk zr zi =>
  cases xr; cases xi; cases yr; cases yi; cases zr; cases zi
  simp [mul, add, GaussInt.mul, GaussInt.add, GaussInt.sub]
  constructor <;> grind

theorem mul_assoc (x y z : Quad) : mul (mul x y) z = mul x (mul y z) := by
  cases x with | mk xr xi =>
  cases y with | mk yr yi =>
  cases z with | mk zr zi =>
  cases xr; cases xi; cases yr; cases yi; cases zr; cases zi
  simp [mul, GaussInt.mul, GaussInt.add, GaussInt.sub]
  constructor <;> grind

theorem mul_comm (x y : Quad) : mul x y = mul y x := by
  cases x; cases y
  simp [mul, GaussInt.mul_comm, GaussInt.add_comm, GaussInt.sub_eq_add_neg]

theorem ofG_add (a b : GaussInt) : ofG (GaussInt.add a b) = add (ofG a) (ofG b) := by
  simp [ofG, add, GaussInt.add_zero]

theorem ofG_mul (a b : GaussInt) : ofG (GaussInt.mul a b) = mul (ofG a) (ofG b) := by
  simp [ofG, mul, GaussInt.mul_zero, GaussInt.zero_mul, GaussInt.add_zero, GaussInt.sub_eq_add_neg,
    GaussInt.neg_zero, GaussInt.mul_comm]

theorem ofG_neg (a : GaussInt) : ofG (GaussInt.neg a) = neg (ofG a) := by
  simp [ofG, neg, GaussInt.neg_zero]

/-- `ℤ[√(-1)]` sits in the center of `ℤ[√(-1)][ω]`. -/
theorem ofG_comm (a : GaussInt) (x : Quad) : mul (ofG a) x = mul x (ofG a) := by
  rw [mul_comm]

theorem add_self (x : Quad) : add x x = mul (ofG (GaussInt.ofInt 2)) x := by
  cases x
  simp [add, mul, ofG, GaussInt.ofInt, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.zero]
  constructor <;> omega

/-- `ρ² + ρ + 1 = 0` rearranges to `ρ² = -(ρ + 1)`. -/
theorem sq_of_rel {ρ : Quad} (h : add (add (mul ρ ρ) ρ) one = zero) :
    mul ρ ρ = neg (add ρ one) := by
  have h' : add (mul ρ ρ) (add ρ one) = zero := by
    simpa [add_assoc] using h
  calc
    mul ρ ρ = add (mul ρ ρ) (add (add ρ one) (neg (add ρ one))) := by
      rw [add_neg_self, add_zero]
    _ = add (add (mul ρ ρ) (add ρ one)) (neg (add ρ one)) := by
      rw [← add_assoc]
    _ = add zero (neg (add ρ one)) := by rw [h']
    _ = neg (add ρ one) := by rw [zero_add]

/-- A root of `ω² + ω + 1` is a cube root of `1`. -/
theorem cube_of_rel {ρ : Quad} (h : add (add (mul ρ ρ) ρ) one = zero) :
    mul (mul ρ ρ) ρ = one := by
  have hsq : add (mul ρ ρ) ρ = neg one := by
    rw [← add_zero (add (mul ρ ρ) ρ), ← add_neg_self one, ← add_assoc, h, zero_add]
  rw [sq_of_rel h, neg_mul, add_mul, one_mul, hsq, neg_neg]

end Quad

/-- Second `π`-chart with every unit replaced by its digit expansion through `π`.

`Y² - π (X² + X + 1 + π) + π² ((1 - π) Y - X³)`.
-/
def modelSecond (X Y : Quad) : Quad :=
  let y2 := Quad.mul Y Y
  let x2 := Quad.mul X X
  let x3 := Quad.mul x2 X
  let quad := Quad.add x2 (Quad.add X Quad.one)
  let piG := Quad.ofG pi
  let piQ := Quad.mul piG (Quad.add quad piG)
  let lin := Quad.mul (Quad.ofG (GaussInt.sub GaussInt.one pi)) Y
  let tail := Quad.mul (Quad.ofG (piPow 2)) (Quad.sub lin x3)
  Quad.add (Quad.sub y2 piQ) tail

/-- Chart center `X = ρ + π U`. -/
def f4Center (ρ U : Quad) : Quad :=
  Quad.add ρ (Quad.mul (Quad.ofG pi) U)

/-- Chart height `Y = π V`. -/
def f4Height (V : Quad) : Quad :=
  Quad.mul (Quad.ofG pi) V

/-- `modelSecond(ρ + π U, π V) - π² (V² + U)`. -/
def f4Diff (ρ U V : Quad) : Quad :=
  Quad.sub (modelSecond (f4Center ρ U) (f4Height V))
    (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))

/-- Coefficient `i = ⟨0, 1⟩`. ` -2 = i · π² `. -/
private def gaussI : GaussInt := ⟨0, 1⟩

/-- Exact quotient of the `𝔽₄` chart: `modelSecond(ρ + π U, π V) - π²(V² + U) = π³ · f4Quotient`.

`bracket` is the order-`π` piece
`-3 ρ² U + (1 - π) V - U² - π · 3 ρ U² - π² U³`.
-/
def f4Bracket (ρ U V : Quad) : Quad :=
  Quad.add
    (Quad.neg (Quad.mul (Quad.ofG (GaussInt.ofInt 3)) (Quad.mul (Quad.mul ρ ρ) U)))
    (Quad.add (Quad.mul (Quad.ofG (GaussInt.sub GaussInt.one pi)) V)
      (Quad.add (Quad.neg (Quad.mul U U))
        (Quad.add
          (Quad.neg
            (Quad.mul (Quad.ofG pi)
              (Quad.mul (Quad.ofG (GaussInt.ofInt 3)) (Quad.mul ρ (Quad.mul U U)))))
          (Quad.neg
            (Quad.mul (Quad.ofG (piPow 2)) (Quad.mul (Quad.mul U U) U))))))

def f4Quotient (ρ U V : Quad) : Quad :=
  Quad.add
    (Quad.mul (Quad.ofG pi)
      (Quad.mul (Quad.ofG gaussI)
        (Quad.add (Quad.mul U (Quad.add Quad.one ρ)) Quad.one)))
    (f4Bracket ρ U V)

theorem mul_divExact_pi (z : GaussInt) (h : piDivides z) :
    GaussInt.mul (GaussInt.divExact z pi) pi = z := by
  cases z with
  | mk r i =>
    simp [piDivides] at h
    have hre : (2 : ℤ) ∣ r + i := Int.dvd_of_emod_eq_zero h
    have him : (2 : ℤ) ∣ -r + i := by
      have : -r + i = (r + i) - 2 * r := by grind
      rw [this]
      exact Int.dvd_sub hre (Int.dvd_mul_right 2 r)
    simp [GaussInt.divExact, GaussInt.mul, GaussInt.norm, pi, GaussInt.add, GaussInt.sub]
    constructor
    · have h1 := Int.mul_ediv_cancel' hre
      have h2 := Int.mul_ediv_cancel' him
      grind
    · have h1 := Int.mul_ediv_cancel' hre
      have h2 := Int.mul_ediv_cancel' him
      grind

private theorem quad_cases4 (U V : Quad)
    {p : Quad → Quad → Prop}
    (hp : ∀ a b c d e f g0 h0 : Int,
      p ⟨⟨a, b⟩, ⟨c, d⟩⟩ ⟨⟨e, f⟩, ⟨g0, h0⟩⟩) :
    p U V := by
  cases U with | mk ur ui =>
  cases V with | mk vr vi =>
  cases ur with | mk a b =>
  cases ui with | mk c d =>
  cases vr with | mk e f =>
  cases vi with | mk g0 h0 =>
  exact hp a b c d e f g0 h0

/-- Blowing up `ω`, in the chart `X = ω + π U`, `Y = π V`, leaves `π² (V² + U)`
plus an explicit multiple of `π³`. The same holds for the conjugate root. -/
theorem f4_chart_omega (U V : Quad) :
    f4Diff Quad.omega U V =
      Quad.mul (Quad.ofG (piPow 3)) (f4Quotient Quad.omega U V) := by
  refine quad_cases4 (p := fun U V =>
      f4Diff Quad.omega U V = Quad.mul (Quad.ofG (piPow 3)) (f4Quotient Quad.omega U V))
      U V ?_
  intro a b c d e f g0 h0
  simp [f4Diff, f4Quotient, f4Bracket, modelSecond, f4Center, f4Height, gaussI,
    Quad.mul, Quad.add, Quad.sub, Quad.neg, Quad.ofG, Quad.omega, Quad.one, Quad.zero,
    pi, piPow, GaussInt.npow, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.one, GaussInt.zero, GaussInt.ofInt]
  constructor <;> grind

theorem f4_chart_conj (U V : Quad) :
    f4Diff Quad.omegaConj U V =
      Quad.mul (Quad.ofG (piPow 3)) (f4Quotient Quad.omegaConj U V) := by
  refine quad_cases4 (p := fun U V =>
      f4Diff Quad.omegaConj U V =
        Quad.mul (Quad.ofG (piPow 3)) (f4Quotient Quad.omegaConj U V))
      U V ?_
  intro a b c d e f g0 h0
  simp [f4Diff, f4Quotient, f4Bracket, modelSecond, f4Center, f4Height, gaussI,
    Quad.mul, Quad.add, Quad.sub, Quad.neg, Quad.ofG, Quad.omegaConj, Quad.omega,
    Quad.one, Quad.zero, pi, piPow, GaussInt.npow, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.neg, GaussInt.one, GaussInt.zero, GaussInt.ofInt]
  constructor <;> grind

private theorem ofG_mul_re (a : GaussInt) (x : Quad) :
    (Quad.mul (Quad.ofG a) x).re = GaussInt.mul a x.re := by
  cases x with
  | mk xr xi =>
    cases xr; cases xi; cases a
    simp [Quad.mul, Quad.ofG, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.zero]

private theorem ofG_mul_im (a : GaussInt) (x : Quad) :
    (Quad.mul (Quad.ofG a) x).im = GaussInt.mul a x.im := by
  cases x with
  | mk xr xi =>
    cases xr; cases xi; cases a
    simp [Quad.mul, Quad.ofG, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.zero]

/-- Both components of the `ω` chart difference are divisible by `π³`. -/
theorem f4_val_omega (U V : Quad) :
    valAtLeast (f4Diff Quad.omega U V).re 3 ∧ valAtLeast (f4Diff Quad.omega U V).im 3 := by
  constructor
  · rw [f4_chart_omega, ofG_mul_re, GaussInt.mul_comm]
    exact valAtLeast_of_dvd rfl
  · rw [f4_chart_omega, ofG_mul_im, GaussInt.mul_comm]
    exact valAtLeast_of_dvd rfl

/-- Both components of the conjugate chart difference are divisible by `π³`. -/
theorem f4_val_conj (U V : Quad) :
    valAtLeast (f4Diff Quad.omegaConj U V).re 3 ∧
      valAtLeast (f4Diff Quad.omegaConj U V).im 3 := by
  constructor
  · rw [f4_chart_conj, ofG_mul_re, GaussInt.mul_comm]
    exact valAtLeast_of_dvd rfl
  · rw [f4_chart_conj, ofG_mul_im, GaussInt.mul_comm]
    exact valAtLeast_of_dvd rfl

/-- `∂/∂U` of `V² + U` is `1`. The reduced curve is smooth. -/
theorem f4_partial_is_unit : ¬ piDivides GaussInt.one := by
  simp [piDivides, GaussInt.one]

/-!
## Digit bridge

The real second chart uses `u₂, u₄, u₆`. The model above replaces them by
`1`, `1`, and `1 + π`. The digit lemmas say the difference of those units is
divisible by `π²`, so the two charts differ by a multiple of `π³`. Blowing
up `ω` in the real chart therefore leaves the same reduced equation `V² + U`.
-/

/-- Second `π`-chart with the real unit cofactors, read in `ℤ[√(-1)][ω]`. -/
def quadChart (u2 u4 u6 : GaussInt) (X Y : Quad) : Quad :=
  let x2 := Quad.mul X X
  let x3 := Quad.mul x2 X
  let lin := Quad.add (Quad.mul (Quad.ofG u2) x2)
      (Quad.add (Quad.mul (Quad.ofG u4) X) (Quad.ofG u6))
  Quad.add (Quad.sub (Quad.mul Y Y) (Quad.mul (Quad.ofG pi) lin))
    (Quad.mul (Quad.ofG (piPow 2))
      (Quad.sub (Quad.mul (Quad.ofG (⟨0, -1⟩)) Y) x3))

/-- `α₂ X² + α₄ X + α₆`. -/
def digitPoly (a2 a4 a6 : GaussInt) (X : Quad) : Quad :=
  Quad.add (Quad.mul (Quad.ofG a2) (Quad.mul X X))
    (Quad.add (Quad.mul (Quad.ofG a4) X) (Quad.ofG a6))

private theorem piPow_three_mul : piPow 3 = GaussInt.mul (piPow 2) pi := by
  simp [piPow, GaussInt.npow, GaussInt.mul_one, GaussInt.mul_comm]

private theorem neg_mul_neg (a b : GaussInt) :
    GaussInt.mul (GaussInt.neg a) b = GaussInt.neg (GaussInt.mul a b) :=
  GaussInt.neg_mul a b

/-- The real chart and the model differ by `-π³ (α₂ X² + α₄ X + α₆)`. -/
theorem quadChart_sub_model (a2 a4 a6 u2 u4 u6 : GaussInt) (X Y : Quad)
    (h2 : GaussInt.mul a2 (piPow 2) = GaussInt.sub u2 GaussInt.one)
    (h4 : GaussInt.mul a4 (piPow 2) = GaussInt.sub u4 GaussInt.one)
    (h6 : GaussInt.mul a6 (piPow 2) = GaussInt.sub u6 (GaussInt.add GaussInt.one pi)) :
    Quad.sub (quadChart u2 u4 u6 X Y) (modelSecond X Y) =
      Quad.mul (Quad.ofG (GaussInt.neg (piPow 3))) (digitPoly a2 a4 a6 X) := by
  have htail : Quad.mul (Quad.ofG (⟨0, -1⟩)) Y =
      Quad.mul (Quad.ofG (GaussInt.sub GaussInt.one pi)) Y := by
    rw [← neg_i_eq_one_sub_pi]
  -- The `Y²` and `π²` tails agree, so only the linear form in `X` remains.
  -- Rewrite the digit factors through `π²`.
  have hfactor (c : GaussInt) (z : Quad) :
      Quad.mul (Quad.ofG c) (Quad.mul (Quad.ofG (piPow 2)) z) =
        Quad.mul (Quad.ofG (piPow 2)) (Quad.mul (Quad.ofG c) z) := by
    rw [← Quad.mul_assoc, Quad.mul_comm (Quad.ofG c) (Quad.ofG (piPow 2)), Quad.mul_assoc]
  have hdig : digitPoly (GaussInt.sub u2 GaussInt.one) (GaussInt.sub u4 GaussInt.one)
      (GaussInt.sub u6 (GaussInt.add GaussInt.one pi)) X =
      Quad.mul (Quad.ofG (piPow 2)) (digitPoly a2 a4 a6 X) := by
    simp only [digitPoly]
    rw [← h2, ← h4, ← h6, Quad.ofG_mul, Quad.ofG_mul, Quad.ofG_mul, Quad.mul_assoc,
      Quad.mul_assoc, hfactor, hfactor,
      Quad.mul_comm (Quad.ofG a6) (Quad.ofG (piPow 2)), ← Quad.mul_add, ← Quad.mul_add]
  -- Assemble. `quadChart - model = -π · (linear difference) = -π · π² · digitPoly`.
  have hdiff : Quad.sub (quadChart u2 u4 u6 X Y) (modelSecond X Y) =
      Quad.mul (Quad.ofG (GaussInt.neg pi))
        (digitPoly (GaussInt.sub u2 GaussInt.one) (GaussInt.sub u4 GaussInt.one)
          (GaussInt.sub u6 (GaussInt.add GaussInt.one pi)) X) := by
    simp only [quadChart, modelSecond, htail]
    -- Both sides are `Y² - π · lin + tail`. The tails cancel.
    cases X with | mk xr xi =>
    cases Y with | mk yr yi =>
    cases xr; cases xi; cases yr; cases yi
    cases u2; cases u4; cases u6
    simp [Quad.add, Quad.sub, Quad.mul, Quad.ofG, Quad.neg, Quad.one, pi, piPow,
      GaussInt.npow, GaussInt.add, GaussInt.sub, GaussInt.mul, GaussInt.neg,
      GaussInt.one, GaussInt.zero, digitPoly]
    constructor <;> grind
  rw [hdiff, hdig, ← Quad.mul_assoc, ← Quad.ofG_mul, neg_mul_neg,
    GaussInt.mul_comm pi (piPow 2), ← piPow_three_mul]

private theorem sub_triangle (a b c : Quad) :
    Quad.sub a c = Quad.add (Quad.sub a b) (Quad.sub b c) := by
  cases a with | mk ar ai =>
  cases b with | mk br bi =>
  cases c with | mk cr ci =>
  cases ar; cases ai; cases br; cases bi; cases cr; cases ci
  simp [Quad.sub, Quad.add, GaussInt.sub, GaussInt.add]
  constructor <;> omega

private theorem f4_real_val (u2 u4 u6 a2 a4 a6 : GaussInt) (ρ U V : Quad)
    (hchart : f4Diff ρ U V = Quad.mul (Quad.ofG (piPow 3)) (f4Quotient ρ U V))
    (h2 : GaussInt.mul a2 (piPow 2) = GaussInt.sub u2 GaussInt.one)
    (h4 : GaussInt.mul a4 (piPow 2) = GaussInt.sub u4 GaussInt.one)
    (h6 : GaussInt.mul a6 (piPow 2) = GaussInt.sub u6 (GaussInt.add GaussInt.one pi)) :
    let diff := Quad.sub
      (quadChart u2 u4 u6 (f4Center ρ U) (f4Height V))
      (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))
    valAtLeast diff.re 3 ∧ valAtLeast diff.im 3 := by
  intro diff
  have hsub := quadChart_sub_model a2 a4 a6 u2 u4 u6 (f4Center ρ U) (f4Height V) h2 h4 h6
  have htri := sub_triangle
      (quadChart u2 u4 u6 (f4Center ρ U) (f4Height V))
      (modelSecond (f4Center ρ U) (f4Height V))
      (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))
  have hmodel : Quad.sub (modelSecond (f4Center ρ U) (f4Height V))
      (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U)) =
      Quad.mul (Quad.ofG (piPow 3)) (f4Quotient ρ U V) := by
    simpa [f4Diff] using hchart
  have hsum : diff =
      Quad.mul (Quad.ofG (piPow 3))
        (Quad.add (Quad.neg (digitPoly a2 a4 a6 (f4Center ρ U))) (f4Quotient ρ U V)) := by
    simp only [diff]
    rw [htri, hsub, hmodel, Quad.ofG_neg, Quad.neg_mul, ← Quad.mul_neg, ← Quad.mul_add]
  rw [hsum, ofG_mul_re, ofG_mul_im]
  constructor
  · rw [GaussInt.mul_comm]; exact valAtLeast_of_dvd rfl
  · rw [GaussInt.mul_comm]; exact valAtLeast_of_dvd rfl

/-- On an odd-`a` curve the real chart at `ω` differs from `π² (V² + U)` by a
multiple of `π³`. The reduced exceptional curve is `V² + U`. -/
theorem odd_a_f4_val_omega (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) (U V : Quad) :
    valAtLeast (Quad.sub
      (quadChart (u2Of E) (u4Of E) (u6Of E) (f4Center Quad.omega U) (f4Height V))
      (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))).re 3 ∧
    valAtLeast (Quad.sub
      (quadChart (u2Of E) (u4Of E) (u6Of E) (f4Center Quad.omega U) (f4Height V))
      (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))).im 3 :=
  f4_real_val (u2Of E) (u4Of E) (u6Of E) (u2Digit E) (u4Digit E) (u6Digit E)
    Quad.omega U V (f4_chart_omega U V) (u2_sub_one_eq E)
    (u4_sub_one_eq E hodd ha) (u6_sub_one_pi_eq E hodd ha)

/-- Same chart at the conjugate root `-1 - ω`. -/
theorem odd_a_f4_val_conj (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) (U V : Quad) :
    valAtLeast (Quad.sub
      (quadChart (u2Of E) (u4Of E) (u6Of E) (f4Center Quad.omegaConj U) (f4Height V))
      (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))).re 3 ∧
    valAtLeast (Quad.sub
      (quadChart (u2Of E) (u4Of E) (u6Of E) (f4Center Quad.omegaConj U) (f4Height V))
      (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))).im 3 :=
  f4_real_val (u2Of E) (u4Of E) (u6Of E) (u2Digit E) (u4Digit E) (u6Digit E)
    Quad.omegaConj U V (f4_chart_conj U V) (u2_sub_one_eq E)
    (u4_sub_one_eq E hodd ha) (u6_sub_one_pi_eq E hodd ha)

/-!
## Direct substitution into the translated model

The odd-`a` model is `y² + a₃ y = x³ + a₂ x² + a₄ x + a₆` with
`a₂ = u₂ π`, `a₃ = (-√(-1)) π⁴`, `a₄ = u₄ π³`, and `a₆ = u₆ π⁵`.
Every chart below is this polynomial after a coordinate substitution, divided
by the power of the chart parameter that the substitution produces. The
equality is the substitution itself.
-/

/-- `y² + (-√(-1)) π⁴ y - x³ - u₂ π x² - u₄ π³ x - u₆ π⁵`. -/
def oddModel (u2 u4 u6 x y : GaussInt) : GaussInt :=
  GaussInt.sub
    (GaussInt.add (GaussInt.mul y y)
      (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ (piPow 4)) y))
    (GaussInt.add (GaussInt.mul (GaussInt.mul x x) x)
      (GaussInt.add (GaussInt.mul (GaussInt.mul u2 pi) (GaussInt.mul x x))
        (GaussInt.add (GaussInt.mul (GaussInt.mul u4 (piPow 3)) x)
          (GaussInt.mul u6 (piPow 5)))))

/-- `x = π X`, `y = π Y`, divided by `π²`, is `piChart`. -/
theorem oddModel_pi_chart (u2 u4 u6 X Y : GaussInt) :
    oddModel u2 u4 u6 (GaussInt.mul pi X) (GaussInt.mul pi Y) =
      GaussInt.mul (piPow 2) (piChart u2 u4 u6 X Y) := by
  cases u2; cases u4; cases u6; cases X; cases Y
  simp [oddModel, piChart, piPow, pi, GaussInt.npow, GaussInt.one,
    GaussInt.mul, GaussInt.add, GaussInt.sub]
  constructor <;> grind

/-- `piChart` with the uniformizer left as a parameter, so a later chart can
set that parameter equal to a product of coordinates. -/
def piChartIn (p u2 u4 u6 X Y : GaussInt) : GaussInt :=
  let p2 := GaussInt.mul p p
  let p3 := GaussInt.mul p2 p
  GaussInt.sub
    (GaussInt.add (GaussInt.mul Y Y) (GaussInt.mul p3 (GaussInt.mul ⟨0, -1⟩ Y)))
    (GaussInt.add (GaussInt.mul p (GaussInt.mul (GaussInt.mul X X) X))
      (GaussInt.add (GaussInt.mul p (GaussInt.mul u2 (GaussInt.mul X X)))
        (GaussInt.add (GaussInt.mul p2 (GaussInt.mul u4 X))
          (GaussInt.mul p3 u6))))

theorem piChartIn_pi (u2 u4 u6 X Y : GaussInt) :
    piChartIn pi u2 u4 u6 X Y = piChart u2 u4 u6 X Y := by
  cases u2; cases u4; cases u6; cases X; cases Y
  simp [piChartIn, piChart, piPow, pi, GaussInt.npow, GaussInt.one,
    GaussInt.mul, GaussInt.add, GaussInt.sub]

/-- Substitute `X = π X₁`, `Y = π Y₁` into `piChart` and divide by `π²`. -/
theorem piChart_origin_subst (u2 u4 u6 X Y : GaussInt) :
    piChart u2 u4 u6 (GaussInt.mul pi X) (GaussInt.mul pi Y) =
      GaussInt.mul (piPow 2) (originPiChart u2 u4 u6 X Y) := by
  cases u2; cases u4; cases u6; cases X; cases Y
  simp [piChart, originPiChart, originTransverse, piPow, pi, GaussInt.npow, GaussInt.one,
    GaussInt.mul, GaussInt.add, GaussInt.sub]
  constructor <;> grind

/-- On `π = 0` the second chart is the double line `Y²`.

`originPiChart - Y² = π · (π · ((-√(-1)) Y - X³) - Q)`.
-/
theorem originPiChart_fiber (u2 u4 u6 X Y : GaussInt) :
    valAtLeast (GaussInt.sub (originPiChart u2 u4 u6 X Y) (GaussInt.mul Y Y)) 1 := by
  refine valAtLeast_of_dvd
    (u := GaussInt.sub
      (GaussInt.mul pi
        (GaussInt.sub (GaussInt.mul ⟨0, -1⟩ Y) (GaussInt.mul (GaussInt.mul X X) X)))
      (originTransverse u2 u4 u6 X)) ?_
  rw [piPow, GaussInt.npow_one, GaussInt.mul_comm]
  cases u2; cases u4; cases u6; cases X; cases Y
  simp [originPiChart, originTransverse, piPow, pi, GaussInt.npow, GaussInt.one,
    GaussInt.mul, GaussInt.add, GaussInt.sub]
  constructor <;> grind

/-!
## The blow-up past `X ≡ -u₂`

Two charts of the ideal `(π, X + u₂, Y)`.

* `π`-chart: `X = -u₂ + π A`, `Y = π B`. Dividing `piChart` by `π²` leaves a
  polynomial whose reduction is `B² - u₂² A + u₂ u₄`. That is the exceptional
  curve, multiplicity one.
* `X`-chart: `π = t S`, `X = -u₂ + t`, `Y = t T`. Dividing `piChart` by `t²`
  leaves `pastU2Strict`. The slice `S = 0` is `T²`. The slice `t = 0` is the
  other affine of the exceptional curve.
-/

/-- Quotient of the `π`-chart past `X = -u₂`. -/
def pastU2Pi (u2 u4 u6 A B : GaussInt) : GaussInt :=
  let A2 := GaussInt.mul A A
  GaussInt.add
    (GaussInt.sub (GaussInt.add (GaussInt.mul B B) (GaussInt.mul u2 u4))
      (GaussInt.mul (GaussInt.mul u2 u2) A))
    (GaussInt.add
      (GaussInt.mul pi
        (GaussInt.sub
          (GaussInt.sub (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) A2) (GaussInt.mul u4 A))
          u6))
      (GaussInt.mul (piPow 2)
        (GaussInt.sub (GaussInt.mul ⟨0, -1⟩ B) (GaussInt.mul A2 A))))

theorem piChart_past_u2 (u2 u4 u6 A B : GaussInt) :
    piChart u2 u4 u6 (GaussInt.add (GaussInt.neg u2) (GaussInt.mul pi A)) (GaussInt.mul pi B) =
      GaussInt.mul (piPow 2) (pastU2Pi u2 u4 u6 A B) := by
  cases u2; cases u4; cases u6; cases A; cases B
  simp [piChart, pastU2Pi, piPow, pi, GaussInt.npow, GaussInt.one, GaussInt.ofInt,
    GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg]
  constructor <;> grind

/-- Setting the chart parameter to `0` kills every positive power of `π`. -/
theorem pastU2Pi_fiber (u2 u4 A B : GaussInt) :
    GaussInt.sub (GaussInt.add (GaussInt.mul B B) (GaussInt.mul u2 u4))
        (GaussInt.mul (GaussInt.mul u2 u2) A) =
      leg1Fiber u2 u4 A B := by
  rw [GaussInt.mul_comm u2 u4]
  cases u2 <;> cases u4 <;> cases A <;> cases B
  simp [leg1Fiber, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg]
  constructor <;> omega

/-- `π`-free part of `pastU2Pi`. It is `leg1Fiber`. -/
theorem pastU2_exceptional_eq_leg (u2 u4 u6 A B : GaussInt) :
    valAtLeast (GaussInt.sub (pastU2Pi u2 u4 u6 A B) (leg1Fiber u2 u4 A B)) 1 := by
  refine valAtLeast_of_dvd
    (u := GaussInt.add
      (GaussInt.sub
        (GaussInt.sub (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) (GaussInt.mul A A))
          (GaussInt.mul u4 A))
        u6)
      (GaussInt.mul pi
        (GaussInt.sub (GaussInt.mul ⟨0, -1⟩ B) (GaussInt.mul (GaussInt.mul A A) A)))) ?_
  cases u2; cases u4; cases u6; cases A; cases B
  simp [pastU2Pi, leg1Fiber, piPow, pi, GaussInt.npow, GaussInt.one, GaussInt.ofInt,
    GaussInt.mul, GaussInt.add, GaussInt.sub]
  constructor <;> grind

/-- Formal `∂/∂A` of `B² - u₂² A + u₂ u₄` is `-u₂²`. A unit square stays a unit. -/
theorem pastU2_partial (u2 : GaussInt) (hu : ¬ piDivides u2) :
    ¬ piDivides (GaussInt.neg (GaussInt.mul u2 u2)) := by
  intro h
  have hsq : piDivides (GaussInt.mul u2 u2) := (piDivides_neg _).1 h
  exact hu (((piDivides_mul u2 u2).1 hsq).elim id id)

/-- Quotient of the `X`-chart `π = t S`, `X = -u₂ + t`, `Y = t T`. -/
def pastU2Strict (u2 u4 u6 t S T : GaussInt) : GaussInt :=
  let t2 := GaussInt.mul t t
  let s2 := GaussInt.mul S S
  let s3 := GaussInt.mul s2 S
  GaussInt.add (GaussInt.mul T T)
    (GaussInt.add
      (GaussInt.mul S
        (GaussInt.sub
          (GaussInt.sub (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) t)
            (GaussInt.mul u2 u2))
          t2))
      (GaussInt.add
        (GaussInt.mul s2 (GaussInt.sub (GaussInt.mul u2 u4) (GaussInt.mul u4 t)))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul s3 (GaussInt.mul u6 t)))
          (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ s3) (GaussInt.mul T t2)))))

theorem piChart_past_u2_strict (u2 u4 u6 t S T : GaussInt) :
    piChartIn (GaussInt.mul t S) u2 u4 u6
        (GaussInt.add (GaussInt.neg u2) t) (GaussInt.mul t T) =
      GaussInt.mul (GaussInt.mul t t) (pastU2Strict u2 u4 u6 t S T) := by
  cases u2; cases u4; cases u6; cases t; cases S; cases T
  simp [piChartIn, pastU2Strict, GaussInt.ofInt, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.neg]
  constructor <;> grind

/-- The slice `S = 0` is the double line `T²`. -/
theorem pastU2Strict_chain_fiber (u2 u4 u6 t T : GaussInt) :
    pastU2Strict u2 u4 u6 t GaussInt.zero T = GaussInt.mul T T := by
  cases u2; cases u4; cases u6; cases t; cases T
  simp [pastU2Strict, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.zero, GaussInt.ofInt]

/-- The slice `t = 0` is `T² - u₂² S + u₂ u₄ S²`. -/
def pastU2Other (u2 u4 S T : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul T T)
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul (GaussInt.mul u2 u2) S))
      (GaussInt.mul (GaussInt.mul u2 u4) (GaussInt.mul S S)))

theorem pastU2Strict_leg_fiber (u2 u4 u6 S T : GaussInt) :
    pastU2Strict u2 u4 u6 GaussInt.zero S T = pastU2Other u2 u4 S T := by
  cases u2; cases u4; cases u6; cases S; cases T
  simp [pastU2Strict, pastU2Other, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.zero, GaussInt.ofInt]
  constructor <;> grind

/-- On the overlap `A S = 1`, `T = B S`, the two exceptional fibers match.
They are the two affines of one exceptional curve, the leg `Y² + X + 1`. -/
theorem leg_charts_overlap (u2 u4 A B S : GaussInt)
    (h : GaussInt.mul A S = GaussInt.one) :
    GaussInt.mul (GaussInt.mul A A)
        (pastU2Other u2 u4 S (GaussInt.mul B S)) =
      leg1Fiber u2 u4 A B := by
  cases u2; cases u4; cases A; cases B; cases S
  simp [pastU2Other, leg1Fiber, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.one] at h ⊢
  constructor <;> grind

/-!
## The two multiplicity-two slices, and the third double component

`originXChart` is the chart `X = t`, `π = t S`, `Y = t T` of the point
`X = Y = 0` on the first double line. Its special fiber is `π = t S = 0`,
hence `t = 0` or `S = 0`.

* `t = 0` forces `T² = 0`. That exceptional curve is `theta`.
* `S = 0` forces `T² = 0`, for every `t`. That is the strict transform of the
  first double line. Call it `chain1`. The point `t = 1`, `S = T = 0` lies on
  it and not on `t = 0`.

The coefficient of `S` is `-(t - u₂)²` plus terms with a further `S`. It
vanishes at `t = u₂`, which is `X = 0`, the center of `theta`. Blowing that
point up again recovers the double line `B²`, already named `theta`.

The remaining multiplicity-two curve is the exceptional divisor of the point
at infinity of `theta`. In coordinates `S = t A`, `T = t B` the quotient is
`chain2Chart`, the pullback of `π` is `t² A`, and the fiber `t = 0` is
`B² - u₂ A`. The reduced equation is `Y² + X`, and the power of `t` in `π`
is `2`. `leg0Fiber` is this fiber. It is not a multiplicity-one leg.

The multiplicity-one curve with the same reduced equation is the strict
transform of the original cusp, `cuspChart` at `S = 0`, equation `T² - x`,
with `π = x S`.
-/

/-- Quotient of `X = t`, `π = t S`, `Y = t T` in `piChart`. -/
def originXChart (u2 u4 u6 t S T : GaussInt) : GaussInt :=
  let t2 := GaussInt.mul t t
  let s2 := GaussInt.mul S S
  let s3 := GaussInt.mul s2 S
  GaussInt.sub (GaussInt.mul T T)
    (GaussInt.add
      (GaussInt.mul (GaussInt.mul S t) u2)
      (GaussInt.add (GaussInt.mul S t2)
        (GaussInt.add (GaussInt.mul (GaussInt.mul s2 t) u4)
          (GaussInt.sub (GaussInt.mul (GaussInt.mul s3 t) u6)
            (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ s3) (GaussInt.mul T t2))))))

theorem piChart_origin_x (u2 u4 u6 t S T : GaussInt) :
    piChartIn (GaussInt.mul t S) u2 u4 u6 t (GaussInt.mul t T) =
      GaussInt.mul (GaussInt.mul t t) (originXChart u2 u4 u6 t S T) := by
  cases u2; cases u4; cases u6; cases t; cases S; cases T
  simp [piChartIn, originXChart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg]
  constructor <;> grind

theorem originX_exceptional (u2 u4 u6 S T : GaussInt) :
    originXChart u2 u4 u6 GaussInt.zero S T = GaussInt.mul T T := by
  cases u2; cases u4; cases u6; cases S; cases T
  simp [originXChart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.zero]

theorem originX_strict (u2 u4 u6 t : GaussInt) :
    originXChart u2 u4 u6 t GaussInt.zero GaussInt.zero = GaussInt.zero := by
  cases u2; cases u4; cases u6; cases t
  simp [originXChart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.zero]

/-- `t = 1` lies on the strict slice and not on the exceptional slice. -/
theorem chain1_point_off_theta (u2 u4 u6 : GaussInt) :
    originXChart u2 u4 u6 GaussInt.one GaussInt.zero GaussInt.zero = GaussInt.zero ∧
      ¬ GaussInt.one = GaussInt.zero := by
  constructor
  · exact originX_strict u2 u4 u6 GaussInt.one
  · simp [GaussInt.one, GaussInt.zero]

/-- Quotient after `S = t A`, `T = t B` in `originXChart`. -/
def chain2Chart (u2 u4 u6 t A B : GaussInt) : GaussInt :=
  GaussInt.sub (GaussInt.mul B B)
    (GaussInt.add (GaussInt.mul u2 A)
      (GaussInt.add (GaussInt.mul t A)
        (GaussInt.add (GaussInt.mul (GaussInt.mul u4 t) (GaussInt.mul A A))
          (GaussInt.sub (GaussInt.mul (GaussInt.mul u6 (GaussInt.mul t t))
              (GaussInt.mul (GaussInt.mul A A) A))
            (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t))
              (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) B))))))

theorem originX_chain2 (u2 u4 u6 t A B : GaussInt) :
    originXChart u2 u4 u6 t (GaussInt.mul t A) (GaussInt.mul t B) =
      GaussInt.mul (GaussInt.mul t t) (chain2Chart u2 u4 u6 t A B) := by
  cases u2; cases u4; cases u6; cases t; cases A; cases B
  simp [originXChart, chain2Chart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg]
  constructor <;> grind

theorem chain2_fiber (u2 u4 u6 A B : GaussInt) :
    chain2Chart u2 u4 u6 GaussInt.zero A B = leg0Fiber u2 A B := by
  cases u2; cases u4; cases u6; cases A; cases B
  simp [chain2Chart, leg0Fiber, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.zero]

/-- The chart sets `π = t · S` and `S = t A`, so `π = t² A`. -/
theorem chain2_uniformizer (t A : GaussInt) :
    GaussInt.mul t (GaussInt.mul t A) = GaussInt.mul (GaussInt.mul t t) A := by
  cases t <;> cases A
  simp [GaussInt.mul]
  constructor <;> grind

theorem chain2_fiber_unit_point (u2 : GaussInt) :
    leg0Fiber u2 u2 u2 = GaussInt.zero := by
  cases u2
  simp [leg0Fiber, GaussInt.mul, GaussInt.sub, GaussInt.zero]

theorem chain2_partial (u2 : GaussInt) (hu : ¬ piDivides u2) :
    ¬ piDivides (GaussInt.neg u2) :=
  fun h => hu ((piDivides_neg u2).1 h)

/-- `π = x S`, `y = x T`, divided by `x²`, in the model with uniformizer `x S`. -/
def oddModelIn (p u2 u4 u6 x y : GaussInt) : GaussInt :=
  let p2 := GaussInt.mul p p
  let p3 := GaussInt.mul p2 p
  let p4 := GaussInt.mul p3 p
  let p5 := GaussInt.mul p4 p
  GaussInt.sub
    (GaussInt.add (GaussInt.mul y y) (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ p4) y))
    (GaussInt.add (GaussInt.mul (GaussInt.mul x x) x)
      (GaussInt.add (GaussInt.mul (GaussInt.mul u2 p) (GaussInt.mul x x))
        (GaussInt.add (GaussInt.mul (GaussInt.mul u4 p3) x)
          (GaussInt.mul u6 p5))))

def cuspChart (u2 u4 u6 x S T : GaussInt) : GaussInt :=
  let s2 := GaussInt.mul S S
  let s3 := GaussInt.mul s2 S
  let s4 := GaussInt.mul s3 S
  let s5 := GaussInt.mul s4 S
  GaussInt.sub (GaussInt.mul T T)
    (GaussInt.add x
      (GaussInt.add (GaussInt.mul (GaussInt.mul u2 S) x)
        (GaussInt.add (GaussInt.mul (GaussInt.mul u4 s3) (GaussInt.mul x x))
          (GaussInt.sub (GaussInt.mul (GaussInt.mul u6 s5) (GaussInt.mul (GaussInt.mul x x) x))
            (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ s4)
              (GaussInt.mul T (GaussInt.mul (GaussInt.mul x x) x)))))))

theorem oddModelIn_cusp (u2 u4 u6 x S T : GaussInt) :
    oddModelIn (GaussInt.mul x S) u2 u4 u6 x (GaussInt.mul x T) =
      GaussInt.mul (GaussInt.mul x x) (cuspChart u2 u4 u6 x S T) := by
  cases u2; cases u4; cases u6; cases x; cases S; cases T
  simp [oddModelIn, cuspChart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg]
  constructor <;> grind

theorem cusp_fiber (u2 u4 u6 x T : GaussInt) :
    cuspChart u2 u4 u6 x GaussInt.zero T =
      GaussInt.sub (GaussInt.mul T T) x := by
  cases u2; cases u4; cases u6; cases x; cases T
  simp [cuspChart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.zero]

theorem cusp_point (u2 u4 u6 : GaussInt) :
    cuspChart u2 u4 u6 GaussInt.one GaussInt.zero GaussInt.one = GaussInt.zero ∧
      ¬ piDivides GaussInt.one := by
  constructor
  · rw [cusp_fiber]
    simp [GaussInt.mul, GaussInt.sub, GaussInt.one, GaussInt.zero]
  · simp [piDivides, GaussInt.one]

theorem oddModel_agrees (u2 u4 u6 x y : GaussInt) :
    oddModelIn pi u2 u4 u6 x y = oddModel u2 u4 u6 x y := by
  cases u2; cases u4; cases u6; cases x; cases y
  simp [oddModelIn, oddModel, piPow, pi, GaussInt.npow, GaussInt.one,
    GaussInt.mul, GaussInt.add, GaussInt.sub]

/-- `∂/∂x` of `T² - x` is `-1`. -/
theorem cusp_partial : ¬ piDivides (GaussInt.neg GaussInt.one) :=
  leg0_partial_is_unit

/-- `chain2` and the cusp both reduce to `Y² + X`. The fibers differ by the
value at `(A, B) = (0, 1)` against `(x, T) = (0, 0)`. -/
theorem chain2_cusp_fibers_differ (u2 : GaussInt) :
    leg0Fiber u2 GaussInt.zero GaussInt.one = GaussInt.one ∧
      GaussInt.sub (GaussInt.mul GaussInt.zero GaussInt.zero) GaussInt.zero =
        GaussInt.zero ∧
      ¬ GaussInt.one = GaussInt.zero := by
  refine ⟨?_, ?_, ?_⟩
  · cases u2
    simp [leg0Fiber, GaussInt.mul, GaussInt.sub, GaussInt.zero, GaussInt.one]
  · simp [GaussInt.mul, GaussInt.sub, GaussInt.zero]
  · simp [GaussInt.one, GaussInt.zero]

theorem leg_not_chain (u2 : GaussInt) :
    leg1Reduced GaussInt.zero GaussInt.zero = GaussInt.one ∧
      leg0Fiber u2 GaussInt.zero GaussInt.zero = GaussInt.zero ∧
      ¬ GaussInt.one = GaussInt.zero := by
  refine ⟨?_, ?_, ?_⟩
  · simp [leg1Reduced, GaussInt.mul, GaussInt.add, GaussInt.zero, GaussInt.one]
  · cases u2
    simp [leg0Fiber, GaussInt.mul, GaussInt.sub, GaussInt.zero]
  · simp [GaussInt.one, GaussInt.zero]

theorem f4_centers_distinct : Quad.omega ≠ Quad.omegaConj := by
  simp [Quad.omega, Quad.omegaConj, Quad.sub, Quad.neg, Quad.one, Quad.omega,
    GaussInt.zero, GaussInt.one, GaussInt.neg, GaussInt.sub]

theorem f4_equation_at_unit :
    Quad.add (Quad.mul Quad.zero Quad.zero) Quad.one = Quad.one := by
  simp [Quad.add, Quad.mul, Quad.zero, Quad.one, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.zero, GaussInt.one, GaussInt.neg]

/-!
## Vertex identification

`D6Node` below is an abstract fork on seven vertices. Nothing proved here
is an edge of `D6Node.neighbors`.

The seven curves, separated by the chart that cuts them out:

* `chain1`. The first double line. `piChart` is `Y²` plus a multiple of `π`
  (`piChart_reduces_to_ySq`). In `originXChart` it is the slice `S = 0`,
  equation `T²`, and `π = t S`. Multiplicity two. The point `t = 1`,
  `S = T = 0` lies on this slice (`chain1_point_off_theta`).
* `theta`. The exceptional slice `t = 0` of the same chart, equation `T²`
  (`originX_exceptional`). It is also `originPiChart`, equation `Y²`
  (`originPiChart_fiber`). Same equation as `chain1`, different slice.
* `chain2`. `chain2Chart` at `t = 0` is `leg0Fiber`, equation `B² - u₂ A`.
  The pullback of `π` is `t² A` (`chain2_uniformizer`). At `A = B = u₂` the
  fiber vanishes and, when `u₂` is a unit, `A` is a unit, so the power is
  exactly two (`chain2_fiber_unit_point`, `chain2_partial`). The old name
  `legLeft` was this curve. The reduced polynomial is square-free; the
  multiplicity is the power of `t`.
* `cusp`. `cuspChart` at `S = 0` is `T² - x` (`cusp_fiber`), and `π = x S`.
  The point `x = T = 1`, `S = 0` lies on it and `x` is a unit (`cusp_point`),
  so the power of `S` is one. Same reduced equation as `chain2`, different
  multiplicity (`chain2_cusp_fibers_differ`). `∂/∂x = -1`.
* `legFar`. `pastU2Pi` reduces to `leg1Fiber`, equation `Y² + X + 1`
  (`pastU2_exceptional_eq_leg`, `leg1Fiber_reduces`). `∂/∂A = -u₂²` is a unit
  (`pastU2_partial`). The slice `t = 0` of `pastU2Strict` is the other affine,
  and on `A S = 1` the fibers match (`leg_charts_overlap`). Multiplicity one:
  the `π`-chart equation is not divisible by `π`.
* `legUp`, `legDown`. `V² + U` at `ω` and at `-1 - ω`
  (`odd_a_f4_val_omega`, `odd_a_f4_val_conj`). The centers are distinct
  (`f4_centers_distinct`). `∂/∂U = 1`. Multiplicity one.

No intersection number is proved. Completeness — the claim that these seven
charts leave no further singularity — is not proved.
-/

inductive D6Node where
  | legUp
  | legLeft
  | legDown
  | theta
  | chain1
  | chain2
  | legFar
  deriving DecidableEq, Repr

namespace D6Node

def neighbors : D6Node → List D6Node
  | .legUp => [.theta]
  | .legLeft => [.theta]
  | .legDown => [.theta]
  | .theta => [.legUp, .legLeft, .legDown, .chain1]
  | .chain1 => [.theta, .chain2]
  | .chain2 => [.chain1, .legFar]
  | .legFar => [.chain2]

def all : List D6Node :=
  [.legUp, .legLeft, .legDown, .theta, .chain1, .chain2, .legFar]

theorem node_count : all.length = 7 := rfl

theorem nodes_nodup : all.Nodup := by
  decide

theorem theta_degree : (neighbors .theta).length = 4 := rfl

theorem chain_degree : (neighbors .chain1).length = 2 ∧ (neighbors .chain2).length = 2 := by
  decide

theorem leg_degree :
    (neighbors .legUp).length = 1 ∧ (neighbors .legLeft).length = 1 ∧
      (neighbors .legDown).length = 1 ∧ (neighbors .legFar).length = 1 := by
  decide

theorem sym (a b : D6Node) : b ∈ neighbors a ↔ a ∈ neighbors b := by
  cases a <;> cases b <;> decide

/-- Handshaking: twelve ends, six edges. -/
theorem edge_count :
    ((all.map fun v => (neighbors v).length).sum) = 12 := by
  decide

end D6Node

/-- Kodaira–Néron for the odd-`a` row.

The Néron model is the smooth locus of the minimal regular model. The
charts exhibit seven distinct components: three of multiplicity two
(`chain1`, `theta`, `chain2`) and four of multiplicity one (the cusp, the
conic at `X ≡ -u₂`, and the two `𝔽₄` curves). Adjacency is not proved, and
neither is the absence of a further singularity. This proposition identifies
the count `D6Node.node_count = 7` with `NeronSpecialFiberComponents`.

It is not a theorem. `NeronSpecialFiberComponents` stays opaque.
`components_n_plus_five_open` is a different sentence: it asks for `n + 5`
on every `IsINStar` row, including even `a`.
-/
def kodaira_neron_odd_a_open : Prop :=
  ∀ E : FreyCurve4413,
    E.c.natAbs % 2 = 1 →
    E.a.natAbs % 2 = 1 →
    qiLocalMinimalAtPi E →
    NeronSpecialFiberComponents E = D6Node.all.length

end BlowupOddA
