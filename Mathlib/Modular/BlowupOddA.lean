import Mathlib.Modular.EllipticCurveMinimal
import Lean

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
`odd_a_seven_components` is the count: every terminal chart is regular, and
every intermediate chart is singular only at a center blown up later, so the
resolved special fiber has these seven components and no eighth.
Adjacency is not proved.
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

/-- `a + b ω` written with the ring operations. -/
theorem mk_as_ring (a b : GaussInt) :
    mk a b = add (ofG a) (mul (ofG b) omega) := by
  cases a with | mk ar ai =>
  cases b with | mk br bi =>
  simp [ofG, add, mul, omega, zero, GaussInt.one, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.zero, GaussInt.neg, Int.mul_zero, Int.mul_one, Int.add_zero,
    Int.zero_add, Int.sub_zero]

end Quad

/-- Ring structure on `ℤ[√(-1)][ω] / (ω² + ω + 1)`, used so chart identities
are polynomial comparisons in the chart coordinates rather than in twelve
integer components. -/
def Quad.npow (a : Quad) : Nat → Quad
  | 0 => Quad.one
  | n + 1 => Quad.mul (Quad.npow a n) a

instance : Add Quad := ⟨Quad.add⟩
instance : Mul Quad := ⟨Quad.mul⟩
instance : Neg Quad := ⟨Quad.neg⟩
instance : Sub Quad := ⟨Quad.sub⟩
instance : HPow Quad Nat Quad := ⟨Quad.npow⟩

instance : NatCast Quad where
  natCast n := Quad.ofG (GaussInt.ofInt (Int.ofNat n))

instance : IntCast Quad where
  intCast n := Quad.ofG (GaussInt.ofInt n)

instance (n : Nat) : OfNat Quad n where
  ofNat := Quad.ofG (GaussInt.ofInt (Int.ofNat n))

instance : SMul Nat Quad where
  smul n a := Quad.mul (Quad.ofG (GaussInt.ofInt (Int.ofNat n))) a

instance : SMul Int Quad where
  smul n a := Quad.mul (Quad.ofG (GaussInt.ofInt n)) a

instance : Lean.Grind.CommRing Quad where
  add_zero := Quad.add_zero
  add_comm := Quad.add_comm
  add_assoc := Quad.add_assoc
  mul_assoc := Quad.mul_assoc
  mul_comm := Quad.mul_comm
  mul_one := Quad.mul_one
  one_mul := Quad.one_mul
  left_distrib := Quad.mul_add
  right_distrib := Quad.add_mul
  zero_mul := Quad.zero_mul
  mul_zero := Quad.mul_zero
  pow_zero _ := rfl
  pow_succ _ _ := rfl
  ofNat_succ n := by
    show Quad.ofG (GaussInt.ofInt (Int.ofNat (n + 1))) =
      Quad.add (Quad.ofG (GaussInt.ofInt (Int.ofNat n))) (Quad.ofG (GaussInt.ofInt (Int.ofNat 1)))
    simp [Quad.ofG, Quad.add, GaussInt.ofInt, GaussInt.add, GaussInt.zero, Int.ofNat_eq_natCast,
      Int.natCast_add]
  ofNat_eq_natCast _ := rfl
  nsmul_eq_natCast_mul _ _ := rfl
  neg_add_cancel a := by
    show Quad.add (Quad.neg a) a = Quad.zero
    rw [Quad.add_comm, Quad.add_neg_self]
  sub_eq_add_neg a b := by
    show Quad.sub a b = Quad.add a (Quad.neg b)
    exact Quad.sub_eq_add_neg a b
  neg_zsmul i a := by
    show Quad.mul (Quad.ofG (GaussInt.ofInt (-i))) a =
      Quad.neg (Quad.mul (Quad.ofG (GaussInt.ofInt i)) a)
    have h : GaussInt.ofInt (-i) = GaussInt.neg (GaussInt.ofInt i) := by
      simp [GaussInt.ofInt, GaussInt.neg]
    rw [h, Quad.ofG_neg, Quad.neg_mul]
  zsmul_natCast_eq_nsmul _ _ := rfl
  intCast_ofNat _ := rfl
  intCast_neg i := by
    show Quad.ofG (GaussInt.ofInt (-i)) = Quad.neg (Quad.ofG (GaussInt.ofInt i))
    have h : GaussInt.ofInt (-i) = GaussInt.neg (GaussInt.ofInt i) := by
      simp [GaussInt.ofInt, GaussInt.neg]
    rw [h, Quad.ofG_neg]

theorem Quad.one_eq : Quad.one = 1 := rfl
theorem Quad.zero_eq : Quad.zero = 0 := rfl
theorem Quad.ofG_one : Quad.ofG GaussInt.one = 1 := rfl
theorem Quad.ofG_zero : Quad.ofG GaussInt.zero = 0 := rfl
theorem Quad.ofG_ofInt2 : Quad.ofG (GaussInt.ofInt 2) = 2 := rfl
theorem Quad.ofG_ofInt3 : Quad.ofG (GaussInt.ofInt 3) = 3 := rfl
theorem Quad.ofG_ofInt4 : Quad.ofG (GaussInt.ofInt 4) = 4 := rfl
theorem Quad.ofG_ofInt6 : Quad.ofG (GaussInt.ofInt 6) = 6 := rfl

private theorem quad_ring_sq (x y : Quad) :
    (x + y) * (x + y) = x * x + (2 : Quad) * (x * y) + y * y := by
  grind

section
open Lean Lean.Meta Lean.Elab.Tactic

private partial def replaceQuadOps (e : Expr) : MetaM Expr := do
  match e with
  | .app (.app f a) b =>
    if f.isConstOf ``Quad.add then
      return ← mkAppM ``HAdd.hAdd #[← replaceQuadOps a, ← replaceQuadOps b]
    else if f.isConstOf ``Quad.mul then
      return ← mkAppM ``HMul.hMul #[← replaceQuadOps a, ← replaceQuadOps b]
    else if f.isConstOf ``Quad.sub then
      return ← mkAppM ``HSub.hSub #[← replaceQuadOps a, ← replaceQuadOps b]
    else
      return e.updateApp! (← replaceQuadOps (.app f a)) (← replaceQuadOps b)
  | .app f a =>
    if f.isConstOf ``Quad.neg then
      return ← mkAppM ``Neg.neg #[← replaceQuadOps a]
    else
      return e.updateApp! (← replaceQuadOps f) (← replaceQuadOps a)
  | .lam n d b bi =>
    withLocalDecl n bi d fun x => do
      mkLambdaFVars #[x] (← replaceQuadOps (b.instantiate1 x))
  | .forallE n d b bi =>
    withLocalDecl n bi d fun x => do
      mkForallFVars #[x] (← replaceQuadOps (b.instantiate1 x))
  | .letE n t v b nondep =>
    withLetDecl n t (← replaceQuadOps v) fun x => do
      mkLetFVars #[x] (← replaceQuadOps (b.instantiate1 x)) (usedLetOnly := !nondep)
  | .mdata _ b => replaceQuadOps b
  | .proj n i s => return .proj n i (← replaceQuadOps s)
  | _ => return e

elab "to_ring_ops" : tactic => do
  let g ← getMainGoal
  let t ← instantiateMVars (← g.getType)
  let t' ← replaceQuadOps t
  let g' ← g.replaceTargetDefEq t'
  replaceMainGoal [g']

end

private theorem quad_ring_sq_raw (x y : Quad) :
    Quad.mul (Quad.add x y) (Quad.add x y) =
      Quad.add (Quad.add (Quad.mul x x) (Quad.mul (2 : Quad) (Quad.mul x y))) (Quad.mul y y) := by
  to_ring_ops
  grind

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
## The resolution closes

Each blow-up of a closed point in the ambient affine 3-space is covered by
three charts. A chart is terminal when, at every point of its special fiber,
some partial of its equation is a unit. The partials below are the formal
derivatives: on each slice cut by a factor of the pulled-back uniformizer the
derivative is a unit, and the same congruence holds whenever `π` divides that
factor.

The centers that occur are `C0 = (π, x, y) = (0, 0, 0)`, `C1 = (X, Y) = (0, 0)`
and `C2 = (X, Y) ≡ (-u₂, 0)` on `piChart`, `C3 = (t, S, T) = (0, 0, 0)` on
`originXChart`, and the two roots of `X² + X + 1` over `𝔽₄`. No other singular
point appears on a special fiber, and no chart equation outside the seven named
components appears.
-/

theorem piDivides_sq {z : GaussInt} (h : piDivides (GaussInt.mul z z)) : piDivides z :=
  ((piDivides_mul z z).1 h).elim id id

theorem ofInt_two_pi : piDivides (GaussInt.ofInt 2) := by
  rw [← two_eq_neg_i_mul_pi_sq]
  exact (piDivides_mul _ (piPow 2)).2 (Or.inr (by simp [piPow_two, piDivides]))

theorem neg_one_add_two_not_pi (c : GaussInt) :
    ¬ piDivides (GaussInt.add (GaussInt.neg GaussInt.one)
        (GaussInt.mul (GaussInt.ofInt 2) c)) :=
  not_piDivides_add_of_right leg0_partial_is_unit
    ((piDivides_mul _ c).2 (Or.inl ofInt_two_pi))

/-- `∂/∂A` of `chain2Chart`. At `A = 0` it is `-(u₂ + t)`. -/
def chain2PartialA (u2 u4 u6 t A B : GaussInt) : GaussInt :=
  GaussInt.neg
    (GaussInt.add (GaussInt.add u2 t)
      (GaussInt.add
        (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul u4 t)) A)
        (GaussInt.sub
          (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) (GaussInt.mul u6 (GaussInt.mul t t)))
            (GaussInt.mul A A))
          (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
            (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t)
              (GaussInt.mul (GaussInt.mul A A) B))))))

theorem chain2_partial_at_A0 (u2 u4 u6 t B : GaussInt) :
    chain2PartialA u2 u4 u6 t GaussInt.zero B =
      GaussInt.neg (GaussInt.add u2 t) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases B
  simp [chain2PartialA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.zero, GaussInt.ofInt]

/-- On `A = 0` the chart is singular only at `B = 0`, `t ≡ -u₂`. -/
theorem chain2_singular_on_A0 (u2 u4 u6 t B : GaussInt)
    (hB : piDivides (GaussInt.mul B B))
    (hA : piDivides (chain2PartialA u2 u4 u6 t GaussInt.zero B)) :
    piDivides B ∧ piDivides (GaussInt.add t u2) := by
  refine ⟨piDivides_sq hB, ?_⟩
  rw [chain2_partial_at_A0] at hA
  have hsum : piDivides (GaussInt.add u2 t) := (piDivides_neg _).1 hA
  simpa [GaussInt.add_comm u2 t] using hsum

/-- Quotient of `chain2Chart` in the chart `t = -u₂ + r`, `A = r p`, `B = r q`. -/
def joinR (u2 u4 u6 r p q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul q q) (GaussInt.neg p)) (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r) r) (GaussInt.mul (GaussInt.mul p p) p)) q))) (GaussInt.neg (GaussInt.mul (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul r r) r)) (GaussInt.mul (GaussInt.mul p p) p)))) (GaussInt.neg (GaussInt.mul (GaussInt.mul u4 r) (GaussInt.mul p p)))) (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r)) (GaussInt.mul (GaussInt.mul p p) p)) q))) (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u6) (GaussInt.mul r r)) (GaussInt.mul (GaussInt.mul p p) p)))) (GaussInt.mul (GaussInt.mul u2 u4) (GaussInt.mul p p))) (GaussInt.mul (⟨0, -6⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r)) (GaussInt.mul (GaussInt.mul p p) p)) q))) (GaussInt.neg (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u6) r) (GaussInt.mul (GaussInt.mul p p) p)))) (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) (GaussInt.mul (GaussInt.mul r r) r)) (GaussInt.mul (GaussInt.mul p p) p)) q))) (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2) (GaussInt.mul r r)) (GaussInt.mul (GaussInt.mul p p) p)) q)))

set_option maxRecDepth 4096 in
theorem chain2_joinR (u2 u4 u6 r p q : GaussInt) :
    chain2Chart u2 u4 u6 (GaussInt.add (GaussInt.neg u2) r)
        (GaussInt.mul r p) (GaussInt.mul r q) =
      GaussInt.mul (GaussInt.mul r r) (joinR u2 u4 u6 r p q) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [chain2Chart, joinR, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- Formal `∂/∂p` of `joinR`. -/
def joinRPartialP (u2 u4 u6 r p q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) r) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u4) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul (GaussInt.mul r r) r)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 6) u2) u6) (GaussInt.mul r r)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul u2 u2)) u6) r) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -18⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul r r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) (GaussInt.mul r r)) (GaussInt.mul p p)) q))

/-- Cofactor of `p` in `joinRPartialP + 1`. -/
def joinRPartialCofP (u2 u4 u6 r p q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) r) (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul (GaussInt.mul r r) r)) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 6) u2) u6) (GaussInt.mul r r)) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul u2 u2)) u6) r) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r) r)) p) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r)) p) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -18⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r)) p) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul r r) r)) p) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) (GaussInt.mul r r)) p) q))

/-- Cofactor of `r` in `joinRPartialP - (-1 + 2 u₂ u₄ p)`. -/
def joinRPartialCofR (u2 u4 u6 r p q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) p) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul r r)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 6) u2) u6) r) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul u2 u2)) u6) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -18⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul r r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul r r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) r) (GaussInt.mul p p)) q))

/-- Cofactor of `r - u₂` in `joinRPartialP + 1`. -/
def joinRPartialCofU (u2 u4 u6 r p q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) p) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul r r)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) u2) u6) r) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 9⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -9⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul r r) r)) (GaussInt.mul p p)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 3⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul r r)) (GaussInt.mul p p)) q))

set_option maxRecDepth 4096 in
theorem joinRPartialP_decomp_p (u2 u4 u6 r p q : GaussInt) :
    joinRPartialP u2 u4 u6 r p q =
      GaussInt.add (GaussInt.neg GaussInt.one)
        (GaussInt.mul p (joinRPartialCofP u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [joinRPartialP, joinRPartialCofP, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt,
    GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem joinRPartialP_decomp_r (u2 u4 u6 r p q : GaussInt) :
    joinRPartialP u2 u4 u6 r p q =
      GaussInt.add
        (GaussInt.add (GaussInt.neg GaussInt.one)
          (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul (GaussInt.mul u2 u4) p)))
        (GaussInt.mul r (joinRPartialCofR u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [joinRPartialP, joinRPartialCofR, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt,
    GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem joinRPartialP_decomp_u (u2 u4 u6 r p q : GaussInt) :
    joinRPartialP u2 u4 u6 r p q =
      GaussInt.add (GaussInt.neg GaussInt.one)
        (GaussInt.mul (GaussInt.sub r u2) (joinRPartialCofU u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [joinRPartialP, joinRPartialCofU, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt,
    GaussInt.one, GaussInt.zero]
  constructor <;> grind

theorem joinR_partial_unit_of_p (u2 u4 u6 r p q : GaussInt) (hp : piDivides p) :
    ¬ piDivides (joinRPartialP u2 u4 u6 r p q) := by
  rw [joinRPartialP_decomp_p]
  exact not_piDivides_add_of_right leg0_partial_is_unit
    ((piDivides_mul _ _).2 (Or.inl hp))

theorem joinR_partial_unit_of_r (u2 u4 u6 r p q : GaussInt) (hr : piDivides r) :
    ¬ piDivides (joinRPartialP u2 u4 u6 r p q) := by
  rw [joinRPartialP_decomp_r]
  exact not_piDivides_add_of_right (neg_one_add_two_not_pi (GaussInt.mul (GaussInt.mul u2 u4) p))
    ((piDivides_mul _ _).2 (Or.inl hr))

theorem joinR_partial_unit_of_u (u2 u4 u6 r p q : GaussInt)
    (hu : piDivides (GaussInt.sub r u2)) :
    ¬ piDivides (joinRPartialP u2 u4 u6 r p q) := by
  rw [joinRPartialP_decomp_u]
  exact not_piDivides_add_of_right leg0_partial_is_unit
    ((piDivides_mul _ _).2 (Or.inl hu))

/-- On the special fiber `π = (r - u₂)² · r · p` the partial `∂/∂p` is a unit.
The three slices are `chain1` (`p = 0`), `chain2` (`r = u₂`), and `legFar` (`r = 0`). -/
theorem joinR_partial_unit_on_fiber (u2 u4 u6 r p q : GaussInt)
    (h : piDivides (GaussInt.mul
      (GaussInt.mul (GaussInt.sub r u2) (GaussInt.sub r u2))
      (GaussInt.mul r p))) :
    ¬ piDivides (joinRPartialP u2 u4 u6 r p q) := by
  rcases (piDivides_mul _ _).1 h with hdiff | hrp
  · exact joinR_partial_unit_of_u u2 u4 u6 r p q (piDivides_sq hdiff)
  · rcases (piDivides_mul _ _).1 hrp with hr | hp
    · exact joinR_partial_unit_of_r u2 u4 u6 r p q hr
    · exact joinR_partial_unit_of_p u2 u4 u6 r p q hp

/-- The `A`-chart `r = A s`, `B = A q` of the point `t = -u₂`, `A = B = 0`. -/
def joinA (u2 u4 u6 A s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) s) (GaussInt.mul GaussInt.one (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul GaussInt.one u2) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) A) s)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) u6) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u6) (GaussInt.mul A A)) s)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul s s))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) (GaussInt.mul A A)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul A A) A)) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -6⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul s s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A)) (GaussInt.mul (GaussInt.mul s s) s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s)) q))

/-- The `B`-chart `r = B s`, `A = B q` of the same point. -/
def joinB (u2 u4 u6 B s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul GaussInt.one u2) u4) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) B) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) u6) B) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u6) (GaussInt.mul B B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul B B) B)) (GaussInt.mul s s)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) (GaussInt.mul B B)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul B B) B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -6⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B)) (GaussInt.mul s s)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B)) (GaussInt.mul (GaussInt.mul s s) s)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B) B)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s)) (GaussInt.mul (GaussInt.mul q q) q)))

set_option maxRecDepth 4096 in
theorem chain2_joinA (u2 u4 u6 A s q : GaussInt) :
    chain2Chart u2 u4 u6 (GaussInt.add (GaussInt.neg u2) (GaussInt.mul A s))
        A (GaussInt.mul A q) =
      GaussInt.mul (GaussInt.mul A A) (joinA u2 u4 u6 A s q) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases A <;> cases s <;> cases q
  simp [chain2Chart, joinA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem chain2_joinB (u2 u4 u6 B s q : GaussInt) :
    chain2Chart u2 u4 u6 (GaussInt.add (GaussInt.neg u2) (GaussInt.mul B s))
        (GaussInt.mul B q) B =
      GaussInt.mul (GaussInt.mul B B) (joinB u2 u4 u6 B s q) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases B <;> cases s <;> cases q
  simp [chain2Chart, joinB, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- `S`-chart `t = S a`, `T = S b` of the origin of `originXChart`. The slice
`a = b = 0` is `theta`. -/
def chain2S (u2 u4 u6 S a b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul GaussInt.one (GaussInt.mul b b)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) a)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) S) a)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul S S)) a)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul a a)) b))

/-- `T`-chart `t = T s`, `S = T q` of the same point. The slice `T = 0` is an
affine of `chain2`. -/
def chain2T (u2 u4 u6 T s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) T) (GaussInt.mul s s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) T) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul T T)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul T T) T) T)) (GaussInt.mul s s)) (GaussInt.mul (GaussInt.mul q q) q)))

set_option maxRecDepth 4096 in
theorem originX_chain2S (u2 u4 u6 S a b : GaussInt) :
    originXChart u2 u4 u6 (GaussInt.mul S a) S (GaussInt.mul S b) =
      GaussInt.mul (GaussInt.mul S S) (chain2S u2 u4 u6 S a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases a <;> cases b
  simp [originXChart, chain2S, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem originX_chain2T (u2 u4 u6 T s q : GaussInt) :
    originXChart u2 u4 u6 (GaussInt.mul T s) (GaussInt.mul T q) T =
      GaussInt.mul (GaussInt.mul T T) (chain2T u2 u4 u6 T s q) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases T <;> cases s <;> cases q
  simp [originXChart, chain2T, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

theorem chain2S_origin (u2 u4 u6 S : GaussInt) :
    chain2S u2 u4 u6 S GaussInt.zero GaussInt.zero = GaussInt.zero := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S
  simp [chain2S, GaussInt.mul, GaussInt.add, GaussInt.neg, GaussInt.zero, GaussInt.one]

set_option maxRecDepth 4096 in
theorem chain2S_expand_a (u2 u4 u6 S H : GaussInt) :
    chain2S u2 u4 u6 S H GaussInt.zero =
      GaussInt.add
        (GaussInt.mul H (GaussInt.neg (originTransverse u6 u4 u2 S)))
        (GaussInt.mul (GaussInt.mul H H) (GaussInt.neg S)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases H
  simp [chain2S, originTransverse, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- `theta` is regular at every integral point: the transverse partial is a unit. -/
theorem theta_partial_unit (u2 u4 u6 S : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    ¬ piDivides (GaussInt.neg (originTransverse u6 u4 u2 S)) :=
  fun h => origin_transverse_unit u6 u4 u2 S h6 h4 h2 ((piDivides_neg _).1 h)

theorem chain2T_at_zero (u2 u4 u6 s q : GaussInt) :
    chain2T u2 u4 u6 GaussInt.zero s q =
      GaussInt.sub GaussInt.one (GaussInt.mul u2 (GaussInt.mul s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases s <;> cases q
  simp [chain2T, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.zero,
    GaussInt.ofInt, GaussInt.one]
  constructor <;> grind

/-- On `T = 0` the chart reads `1 - u₂ s q`. A zero of both `s` and `q` partials
would force `π ∣ 1` when `u₂` is a unit. -/
theorem chain2T_regular (u2 s q : GaussInt) (hu : ¬ piDivides u2)
    (hF : piDivides (GaussInt.sub GaussInt.one (GaussInt.mul u2 (GaussInt.mul s q))))
    (hs : piDivides (GaussInt.mul u2 q)) (hq : piDivides (GaussInt.mul u2 s)) :
    False := by
  have hqs : piDivides q := ((piDivides_mul u2 q).1 hs).elim (fun h => False.elim (hu h)) id
  have hss : piDivides s := ((piDivides_mul u2 s).1 hq).elim (fun h => False.elim (hu h)) id
  have hprod : piDivides (GaussInt.mul u2 (GaussInt.mul s q)) :=
    (piDivides_mul _ _).2 (Or.inr ((piDivides_mul _ _).2 (Or.inl hss)))
  rw [GaussInt.sub_eq_add_neg] at hF
  have hone : piDivides GaussInt.one :=
    (piDivides_add_left ((piDivides_neg _).2 hprod)).1 hF
  exact leg0_partial_is_unit ((piDivides_neg _).2 hone)

/-- Second affine of the cusp: `π = y A`, `x = y B`, divided by `y²`.
`1 - y B³ - u₂ A B² y - u₄ A³ B y² + (-√(-1)) A⁴ y³ - u₆ A⁵ y³`. -/
def cuspY (u2 u4 u6 y A B : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.add
      (GaussInt.add
        (GaussInt.add
          (GaussInt.add GaussInt.one
            (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) y)
              (GaussInt.mul (GaussInt.mul B B) B)))
          (GaussInt.mul
            (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) y) A)
            (GaussInt.mul B B)))
        (GaussInt.mul
          (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul y y) y))
          (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)))
      (GaussInt.mul
        (GaussInt.mul
          (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul y y))
          (GaussInt.mul (GaussInt.mul A A) A))
        B))
    (GaussInt.mul
      (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6)
        (GaussInt.mul (GaussInt.mul y y) y))
      (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A))

set_option maxRecDepth 4096 in
theorem oddModelIn_cuspY (u2 u4 u6 y A B : GaussInt) :
    oddModelIn (GaussInt.mul y A) u2 u4 u6 (GaussInt.mul y B) y =
      GaussInt.mul (GaussInt.mul y y) (cuspY u2 u4 u6 y A B) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [oddModelIn, cuspY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

theorem cuspY_at_A0 (u2 u4 u6 y B : GaussInt) :
    cuspY u2 u4 u6 y GaussInt.zero B =
      GaussInt.sub GaussInt.one (GaussInt.mul y (GaussInt.mul (GaussInt.mul B B) B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases B
  simp [cuspY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.zero, GaussInt.one]
  constructor <;> grind

theorem cuspY_at_y0 (u2 u4 u6 A B : GaussInt) :
    cuspY u2 u4 u6 GaussInt.zero A B = GaussInt.one := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases A <;> cases B
  simp [cuspY, GaussInt.mul, GaussInt.add, GaussInt.neg, GaussInt.zero, GaussInt.one]

theorem piDivides_cube {z : GaussInt} (h : piDivides (GaussInt.mul (GaussInt.mul z z) z)) :
    piDivides z :=
  ((piDivides_mul (GaussInt.mul z z) z).1 h).elim piDivides_sq id

/-- `∂/∂y` on `A = 0` is `-B³`. Together with the equation `1 - y B³` it is a unit
on every point of that slice. The slice `y = 0` is the constant `1`. -/
theorem cuspY_regular_on_A (y B : GaussInt)
    (hF : piDivides (GaussInt.sub GaussInt.one (GaussInt.mul y (GaussInt.mul (GaussInt.mul B B) B))))
    (hB : piDivides (GaussInt.mul (GaussInt.mul B B) B)) : False := by
  have hB' : piDivides B := piDivides_cube hB
  have hyB : piDivides (GaussInt.mul y (GaussInt.mul (GaussInt.mul B B) B)) :=
    (piDivides_mul _ _).2 (Or.inr hB)
  rw [GaussInt.sub_eq_add_neg] at hF
  have hone : piDivides GaussInt.one :=
    (piDivides_add_left ((piDivides_neg _).2 hyB)).1 hF
  exact leg0_partial_is_unit ((piDivides_neg _).2 hone)

/-- `Y`-chart of the origin of `piChart`. Both slices of the special fiber are the
constant `1`, so the chart contains no component. -/
def originY (u2 u4 u6 Y a b : GaussInt) : GaussInt :=
  GaussInt.add GaussInt.one
    (GaussInt.add
      (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul Y Y))
      (GaussInt.add
        (GaussInt.neg
          (GaussInt.mul (GaussInt.mul a (GaussInt.mul (GaussInt.mul b b) b)) (GaussInt.mul Y Y)))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 a) (GaussInt.mul b b)) Y))
          (GaussInt.add
            (GaussInt.neg (GaussInt.mul (GaussInt.mul (GaussInt.mul u4 (GaussInt.mul a a)) b) Y))
            (GaussInt.neg (GaussInt.mul (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul a a) a)) Y))))))

set_option maxRecDepth 4096 in
theorem piChartIn_originY (u2 u4 u6 Y a b : GaussInt) :
    piChartIn (GaussInt.mul Y a) u2 u4 u6 (GaussInt.mul Y b) Y =
      GaussInt.mul (GaussInt.mul Y Y) (originY u2 u4 u6 Y a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [piChartIn, originY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

theorem originY_at_a0 (u2 u4 u6 Y b : GaussInt) :
    originY u2 u4 u6 Y GaussInt.zero b = GaussInt.one := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases b
  simp [originY, GaussInt.mul, GaussInt.add, GaussInt.neg, GaussInt.zero, GaussInt.one]

theorem originY_at_Y0 (u2 u4 u6 a b : GaussInt) :
    originY u2 u4 u6 GaussInt.zero a b = GaussInt.one := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases a <;> cases b
  simp [originY, GaussInt.mul, GaussInt.add, GaussInt.neg, GaussInt.zero, GaussInt.one]

/-- `∂/∂A` of `chain2Chart` at `t = 0` is `-u₂`, on the nose. -/
theorem chain2_partial_at_t0 (u2 u4 u6 A B : GaussInt) :
    chain2PartialA u2 u4 u6 GaussInt.zero A B = GaussInt.neg u2 := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases A <;> cases B
  simp [chain2PartialA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.zero, GaussInt.ofInt]

/-- `∂/∂x` of `cuspChart`. At `S = 0` it is `-1`. -/
def cuspPartialX (u2 u4 u6 x S T : GaussInt) : GaussInt :=
  GaussInt.neg
    (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul u2 S))
      (GaussInt.add
        (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2)
            (GaussInt.mul u4 (GaussInt.mul (GaussInt.mul S S) S))) x)
        (GaussInt.sub
          (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3)
              (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)))
            (GaussInt.mul x x))
          (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
            (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)
              (GaussInt.mul T (GaussInt.mul x x)))))))

theorem cuspPartialX_at_S0 (u2 u4 u6 x T : GaussInt) :
    cuspPartialX u2 u4 u6 x GaussInt.zero T = GaussInt.neg GaussInt.one := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases T
  simp [cuspPartialX, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.zero, GaussInt.ofInt, GaussInt.one]

/-- On the overlap `X S = 1`, the cusp residue `S ≡ -1`, `T ≡ 0` is the point
`X ≡ -u₂`, `Y ≡ 0` of `piChart`. -/
theorem cusp_overlap_is_C2 (u2 X S T : GaussInt)
    (hXS : GaussInt.mul X S = GaussInt.one)
    (hS : piDivides (GaussInt.add S GaussInt.one))
    (hT : piDivides T) (hu : congOne u2) :
    piDivides (GaussInt.add X u2) ∧ piDivides (GaussInt.mul T X) := by
  have hstep : GaussInt.mul X (GaussInt.add S GaussInt.one) = GaussInt.add X GaussInt.one := by
    cases X <;> cases S
    simp [GaussInt.mul, GaussInt.add, GaussInt.one] at hXS ⊢
    constructor <;> grind
  have hX1 : piDivides (GaussInt.add X GaussInt.one) := by
    rw [← hstep]
    exact (piDivides_mul _ _).2 (Or.inr hS)
  refine ⟨?_, (piDivides_mul _ _).2 (Or.inl hT)⟩
  have hsum :
      GaussInt.add (GaussInt.add X GaussInt.one) (GaussInt.sub u2 GaussInt.one) =
        GaussInt.add X u2 := by
    cases X <;> cases u2
    simp [GaussInt.add, GaussInt.sub, GaussInt.one]
    omega
  rw [← hsum]
  exact piDivides_add_of_both hX1 hu

/-- A unit congruent to `1` is not divisible by `π`. -/
theorem not_pi_of_congOne (u : GaussInt) (h : congOne u) : ¬ piDivides u :=
  fun hu => leg1_partial_is_unit (piDivides_of_sub_left hu h)

/-!
## Terminal charts

Every blow-up below is the blow-up of one closed point of a surface, covered
by the three standard affine charts of the ambient affine 3-space. A chart is
terminal when, at every point of its special fiber, the chart equation and
its three partial derivatives do not vanish simultaneously. The test is the
one already used for `pastU2_partial`, `chain2_partial`, and
`leg0_partial_is_unit`: a partial that is congruent to a unit along the
pulled-back uniformizer cannot vanish on that fiber.
-/

/-- Cofactor of `t` in `∂/∂A + u₂`. -/
def chain2PartialCofT (u4 u6 t A B : GaussInt) : GaussInt :=
  GaussInt.neg
    (GaussInt.add
      (GaussInt.add GaussInt.one
        (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u4) A))
      (GaussInt.sub
        (GaussInt.mul
          (GaussInt.mul (GaussInt.ofInt 3) (GaussInt.mul u6 t))
          (GaussInt.mul A A))
        (GaussInt.mul
          (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
          (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t)
            (GaussInt.mul (GaussInt.mul A A) B)))))

set_option maxRecDepth 4096 in
theorem chain2PartialA_decomp_t (u2 u4 u6 t A B : GaussInt) :
    chain2PartialA u2 u4 u6 t A B =
      GaussInt.add (GaussInt.neg u2)
        (GaussInt.mul t (chain2PartialCofT u4 u6 t A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [chain2PartialA, chain2PartialCofT, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- On `π ∣ t` the partial `∂/∂A` of `chain2Chart` is the unit `-u₂`. -/
theorem chain2_regular_on_t (u2 u4 u6 t A B : GaussInt) (hu : ¬ piDivides u2)
    (ht : piDivides t) : ¬ piDivides (chain2PartialA u2 u4 u6 t A B) := by
  rw [chain2PartialA_decomp_t]
  exact not_piDivides_add_of_right (chain2_partial u2 hu)
    ((piDivides_mul _ _).2 (Or.inl ht))

/-- Cofactor of `S` in `∂/∂x + 1` of `cuspChart`. -/
def cuspPartialCofS (u2 u4 u6 x S T : GaussInt) : GaussInt :=
  GaussInt.neg
    (GaussInt.add
      (GaussInt.add u2
        (GaussInt.mul
          (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul u4 (GaussInt.mul S S))) x))
      (GaussInt.sub
        (GaussInt.mul
          (GaussInt.mul (GaussInt.ofInt 3)
            (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)))
          (GaussInt.mul x x))
        (GaussInt.mul
          (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
          (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S)
            (GaussInt.mul T (GaussInt.mul x x))))))

set_option maxRecDepth 4096 in
theorem cuspPartialX_decomp_S (u2 u4 u6 x S T : GaussInt) :
    cuspPartialX u2 u4 u6 x S T =
      GaussInt.add (GaussInt.neg GaussInt.one)
        (GaussInt.mul S (cuspPartialCofS u2 u4 u6 x S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases S <;> cases T
  simp [cuspPartialX, cuspPartialCofS, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- The cusp, the slice `π ∣ S`, has `∂/∂x ≡ -1`. -/
theorem cusp_regular_on_S (u2 u4 u6 x S T : GaussInt) (hS : piDivides S) :
    ¬ piDivides (cuspPartialX u2 u4 u6 x S T) := by
  rw [cuspPartialX_decomp_S]
  exact not_piDivides_add_of_right cusp_partial ((piDivides_mul _ _).2 (Or.inl hS))

/-- Cofactor of `x` in `∂/∂x + (1 + u₂ S)`. -/
def cuspPartialCofX (u4 u6 x S T : GaussInt) : GaussInt :=
  GaussInt.neg
    (GaussInt.add
      (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul u4 (GaussInt.mul (GaussInt.mul S S) S)))
        GaussInt.one)
      (GaussInt.sub
        (GaussInt.mul
          (GaussInt.mul (GaussInt.ofInt 3)
            (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)))
          x)
        (GaussInt.mul
          (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
          (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)
            (GaussInt.mul T x)))))

set_option maxRecDepth 4096 in
theorem cuspPartialX_decomp_x (u2 u4 u6 x S T : GaussInt) :
    cuspPartialX u2 u4 u6 x S T =
      GaussInt.add
        (GaussInt.neg (GaussInt.add GaussInt.one (GaussInt.mul u2 S)))
        (GaussInt.mul x (cuspPartialCofX u4 u6 x S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases S <;> cases T
  simp [cuspPartialX, cuspPartialCofX, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- Cofactor of `x` in `cuspChart - T²`. -/
def cuspChartCofX (u2 u4 u6 x S T : GaussInt) : GaussInt :=
  GaussInt.neg
    (GaussInt.add GaussInt.one
      (GaussInt.add (GaussInt.mul u2 S)
        (GaussInt.add
          (GaussInt.mul (GaussInt.mul u4 (GaussInt.mul (GaussInt.mul S S) S)) x)
          (GaussInt.sub
            (GaussInt.mul
              (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S))
              (GaussInt.mul x x))
            (GaussInt.mul
              (GaussInt.mul ⟨0, -1⟩ (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S))
              (GaussInt.mul T (GaussInt.mul x x)))))))

set_option maxRecDepth 4096 in
theorem cuspChart_decomp_x (u2 u4 u6 x S T : GaussInt) :
    cuspChart u2 u4 u6 x S T =
      GaussInt.add (GaussInt.mul T T)
        (GaussInt.mul x (cuspChartCofX u2 u4 u6 x S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases S <;> cases T
  simp [cuspChart, cuspChartCofX, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- On `π ∣ x` the cusp chart is singular only at `T ≡ 0`, `1 + u₂ S ≡ 0`.
That residue is the center `C2`, blown up by the three `join` charts. -/
theorem cusp_singular_on_x (u2 u4 u6 x S T : GaussInt)
    (hx : piDivides x) (hF : piDivides (cuspChart u2 u4 u6 x S T))
    (hd : piDivides (cuspPartialX u2 u4 u6 x S T)) :
    piDivides T ∧ piDivides (GaussInt.add GaussInt.one (GaussInt.mul u2 S)) := by
  have hT2 : piDivides (GaussInt.mul T T) := by
    rw [cuspChart_decomp_x] at hF
    exact (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hx))).1 hF
  refine ⟨piDivides_sq hT2, ?_⟩
  rw [cuspPartialX_decomp_x] at hd
  exact (piDivides_neg _).1
    ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hx))).1 hd)

/-- `∂/∂y` of `cuspY`. -/
def cuspYPartialY (u2 u4 u6 y A B : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul (GaussInt.mul B B) B))
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul (GaussInt.mul u2 A) (GaussInt.mul B B)))
      (GaussInt.add
        (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
          (GaussInt.mul (GaussInt.mul y y)
            (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)))
        (GaussInt.add
          (GaussInt.neg
            (GaussInt.mul
              (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul u4 y))
                (GaussInt.mul (GaussInt.mul A A) A))
              B))
          (GaussInt.neg
            (GaussInt.mul
              (GaussInt.mul (GaussInt.ofInt 3) (GaussInt.mul u6 (GaussInt.mul y y)))
              (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A))))))

/-- Cofactor of `y` in `cuspY - 1`. -/
def cuspYCofY (u2 u4 u6 y A B : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul (GaussInt.mul B B) B))
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul (GaussInt.mul u2 A) (GaussInt.mul B B)))
      (GaussInt.add
        (GaussInt.mul ⟨0, -1⟩
          (GaussInt.mul (GaussInt.mul y y)
            (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)))
        (GaussInt.add
          (GaussInt.neg
            (GaussInt.mul
              (GaussInt.mul (GaussInt.mul u4 y) (GaussInt.mul (GaussInt.mul A A) A)) B))
          (GaussInt.neg
            (GaussInt.mul (GaussInt.mul u6 (GaussInt.mul y y))
              (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A))))))

/-- Cofactor of `A` in `cuspY - (1 - y B³)`. -/
def cuspYCofA (u2 u4 u6 y A B : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul (GaussInt.mul u2 y) (GaussInt.mul B B)))
    (GaussInt.add
      (GaussInt.mul ⟨0, -1⟩
        (GaussInt.mul (GaussInt.mul (GaussInt.mul y y) y)
          (GaussInt.mul (GaussInt.mul A A) A)))
      (GaussInt.add
        (GaussInt.neg
          (GaussInt.mul
            (GaussInt.mul (GaussInt.mul u4 (GaussInt.mul y y)) (GaussInt.mul A A)) B))
        (GaussInt.neg
          (GaussInt.mul (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul y y) y))
            (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)))))

/-- Cofactor of `A` in `∂/∂y + B³`. -/
def cuspYPartialCofA (u2 u4 u6 y A B : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul u2 (GaussInt.mul B B)))
    (GaussInt.add
      (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
        (GaussInt.mul (GaussInt.mul y y) (GaussInt.mul (GaussInt.mul A A) A)))
      (GaussInt.add
        (GaussInt.neg
          (GaussInt.mul
            (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul u4 y))
            (GaussInt.mul (GaussInt.mul A A) B)))
        (GaussInt.neg
          (GaussInt.mul
            (GaussInt.mul (GaussInt.ofInt 3) (GaussInt.mul u6 (GaussInt.mul y y)))
            (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)))))

set_option maxRecDepth 4096 in
theorem cuspY_decomp_y (u2 u4 u6 y A B : GaussInt) :
    cuspY u2 u4 u6 y A B =
      GaussInt.add GaussInt.one (GaussInt.mul y (cuspYCofY u2 u4 u6 y A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [cuspY, cuspYCofY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem cuspY_decomp_A (u2 u4 u6 y A B : GaussInt) :
    cuspY u2 u4 u6 y A B =
      GaussInt.add
        (GaussInt.sub GaussInt.one (GaussInt.mul y (GaussInt.mul (GaussInt.mul B B) B)))
        (GaussInt.mul A (cuspYCofA u2 u4 u6 y A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [cuspY, cuspYCofA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem cuspYPartialY_decomp_A (u2 u4 u6 y A B : GaussInt) :
    cuspYPartialY u2 u4 u6 y A B =
      GaussInt.add (GaussInt.neg (GaussInt.mul (GaussInt.mul B B) B))
        (GaussInt.mul A (cuspYPartialCofA u2 u4 u6 y A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [cuspYPartialY, cuspYPartialCofA, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- `cuspY` is the second affine of the cusp. On `π ∣ y` the equation is `1`.
On `π ∣ A` the equation `1 - y B³` and `∂/∂y ≡ -B³` do not vanish together. -/
theorem cuspY_regular_on_fiber (u2 u4 u6 y A B : GaussInt)
    (hπ : piDivides (GaussInt.mul y A))
    (hF : piDivides (cuspY u2 u4 u6 y A B))
    (hd : piDivides (cuspYPartialY u2 u4 u6 y A B)) : False := by
  rcases (piDivides_mul y A).1 hπ with hy | hA
  · rw [cuspY_decomp_y] at hF
    exact leg1_partial_is_unit
      ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hy))).1 hF)
  · rw [cuspY_decomp_A] at hF
    rw [cuspYPartialY_decomp_A] at hd
    have hSlice : piDivides
        (GaussInt.sub GaussInt.one (GaussInt.mul y (GaussInt.mul (GaussInt.mul B B) B))) :=
      (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hA))).1 hF
    have hB3 : piDivides (GaussInt.mul (GaussInt.mul B B) B) :=
      (piDivides_neg _).1
        ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hA))).1 hd)
    exact cuspY_regular_on_A y B hSlice hB3

/-- Cofactor of `T` in `chain2T - (1 - u₂ s q)`. -/
def chain2TCofT (u4 u6 T s q : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul (GaussInt.mul s s) q))
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul (GaussInt.mul u4 s) (GaussInt.mul q q)))
      (GaussInt.add
        (GaussInt.neg
          (GaussInt.mul (GaussInt.mul u6 T) (GaussInt.mul s (GaussInt.mul (GaussInt.mul q q) q))))
        (GaussInt.mul ⟨0, -1⟩
          (GaussInt.mul (GaussInt.mul (GaussInt.mul T T) T)
            (GaussInt.mul (GaussInt.mul s s) (GaussInt.mul (GaussInt.mul q q) q))))))

/-- `∂/∂s` of `chain2T`. -/
def chain2TPartialS (u2 u4 u6 T s q : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.neg (GaussInt.mul u2 q))
    (GaussInt.mul T
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul s q)))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul u4 (GaussInt.mul q q)))
          (GaussInt.add
            (GaussInt.neg
              (GaussInt.mul u6 (GaussInt.mul T (GaussInt.mul (GaussInt.mul q q) q))))
            (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) ⟨0, -1⟩)
              (GaussInt.mul (GaussInt.mul (GaussInt.mul T T) T)
                (GaussInt.mul s (GaussInt.mul (GaussInt.mul q q) q))))))))

/-- `∂/∂q` of `chain2T`. -/
def chain2TPartialQ (u2 u4 u6 T s q : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.neg (GaussInt.mul u2 s))
    (GaussInt.mul T
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul s s))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u4) (GaussInt.mul s q)))
          (GaussInt.add
            (GaussInt.neg
              (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) u6)
                (GaussInt.mul T (GaussInt.mul s (GaussInt.mul q q)))))
            (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
              (GaussInt.mul (GaussInt.mul (GaussInt.mul T T) T)
                (GaussInt.mul (GaussInt.mul s s) (GaussInt.mul q q))))))))

set_option maxRecDepth 4096 in
theorem chain2T_decomp_T (u2 u4 u6 T s q : GaussInt) :
    chain2T u2 u4 u6 T s q =
      GaussInt.add
        (GaussInt.sub GaussInt.one (GaussInt.mul u2 (GaussInt.mul s q)))
        (GaussInt.mul T (chain2TCofT u4 u6 T s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases T <;> cases s <;> cases q
  simp [chain2T, chain2TCofT, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- Cofactor of `s` in `chain2T - 1`. Every term but the constant has a factor `s`. -/
def chain2TCofS (u2 u4 u6 T s q : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul u2 q))
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul (GaussInt.mul T s) q))
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul (GaussInt.mul u4 T) (GaussInt.mul q q)))
        (GaussInt.add
          (GaussInt.neg
            (GaussInt.mul (GaussInt.mul u6 (GaussInt.mul T T))
              (GaussInt.mul (GaussInt.mul q q) q)))
          (GaussInt.mul ⟨0, -1⟩
            (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul T T) T) T)
              (GaussInt.mul s (GaussInt.mul (GaussInt.mul q q) q)))))))

/-- Cofactor of `q` in `chain2T - 1`. -/
def chain2TCofQ (u2 u4 u6 T s q : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul u2 s))
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul (GaussInt.mul T (GaussInt.mul s s)) GaussInt.one))
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul (GaussInt.mul u4 T) (GaussInt.mul s q)))
        (GaussInt.add
          (GaussInt.neg
            (GaussInt.mul (GaussInt.mul u6 (GaussInt.mul T T))
              (GaussInt.mul s (GaussInt.mul q q))))
          (GaussInt.mul ⟨0, -1⟩
            (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul T T) T) T)
              (GaussInt.mul (GaussInt.mul s s) (GaussInt.mul q q)))))))

set_option maxRecDepth 4096 in
theorem chain2T_decomp_s (u2 u4 u6 T s q : GaussInt) :
    chain2T u2 u4 u6 T s q =
      GaussInt.add GaussInt.one (GaussInt.mul s (chain2TCofS u2 u4 u6 T s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases T <;> cases s <;> cases q
  simp [chain2T, chain2TCofS, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem chain2T_decomp_q (u2 u4 u6 T s q : GaussInt) :
    chain2T u2 u4 u6 T s q =
      GaussInt.add GaussInt.one (GaussInt.mul q (chain2TCofQ u2 u4 u6 T s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases T <;> cases s <;> cases q
  simp [chain2T, chain2TCofQ, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- On the special fiber `π = T² s q` the equation and the two affine partials
do not vanish together. The slice `T ≡ 0` is an affine of `chain2`; the slices
`s ≡ 0` and `q ≡ 0` are empty. -/
theorem chain2T_regular_on_fiber (u2 u4 u6 T s q : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul (GaussInt.mul T T) (GaussInt.mul s q)))
    (hF : piDivides (chain2T u2 u4 u6 T s q))
    (hs : piDivides (chain2TPartialS u2 u4 u6 T s q))
    (hq : piDivides (chain2TPartialQ u2 u4 u6 T s q)) : False := by
  rcases (piDivides_mul (GaussInt.mul T T) (GaussInt.mul s q)).1 hπ with hT | hsq
  · have hT' : piDivides T := piDivides_sq hT
    rw [chain2T_decomp_T] at hF
    have hSlice : piDivides (GaussInt.sub GaussInt.one (GaussInt.mul u2 (GaussInt.mul s q))) :=
      (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hT'))).1 hF
    have hs' : piDivides (GaussInt.mul u2 q) :=
      (piDivides_neg _).1
        ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hT'))).1
          (by simpa [chain2TPartialS] using hs))
    have hq' : piDivides (GaussInt.mul u2 s) :=
      (piDivides_neg _).1
        ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hT'))).1
          (by simpa [chain2TPartialQ] using hq))
    exact chain2T_regular u2 s q hu hSlice hs' hq'
  · rcases (piDivides_mul s q).1 hsq with hs0 | hq0
    · rw [chain2T_decomp_s] at hF
      exact leg1_partial_is_unit
        ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hs0))).1 hF)
    · rw [chain2T_decomp_q] at hF
      exact leg1_partial_is_unit
        ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hq0))).1 hF)

/-- Cofactor of `Y` in `originY - 1`. -/
def originYCofY (u2 u4 u6 Y a b : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul (GaussInt.mul a (GaussInt.mul (GaussInt.mul b b) b)) Y))
    (GaussInt.add
      (GaussInt.mul ⟨0, -1⟩ (GaussInt.mul (GaussInt.mul (GaussInt.mul a a) a) Y))
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul u2 (GaussInt.mul a (GaussInt.mul b b))))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul u4 (GaussInt.mul (GaussInt.mul a a) b)))
          (GaussInt.neg (GaussInt.mul u6 (GaussInt.mul (GaussInt.mul a a) a))))))

/-- Cofactor of `a` in `originY - 1`. -/
def originYCofA (u2 u4 u6 Y a b : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul (GaussInt.mul Y Y) (GaussInt.mul (GaussInt.mul b b) b)))
    (GaussInt.add
      (GaussInt.mul ⟨0, -1⟩ (GaussInt.mul (GaussInt.mul Y Y) (GaussInt.mul a a)))
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul u6 (GaussInt.mul Y (GaussInt.mul a a))))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul u4 (GaussInt.mul Y (GaussInt.mul a b))))
          (GaussInt.neg (GaussInt.mul u2 (GaussInt.mul Y (GaussInt.mul b b)))))))

set_option maxRecDepth 4096 in
theorem originY_decomp_Y (u2 u4 u6 Y a b : GaussInt) :
    originY u2 u4 u6 Y a b =
      GaussInt.add GaussInt.one (GaussInt.mul Y (originYCofY u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [originY, originYCofY, GaussInt.mul, GaussInt.add, GaussInt.neg, GaussInt.one, GaussInt.zero]
  constructor <;> grind

set_option maxRecDepth 4096 in
theorem originY_decomp_a (u2 u4 u6 Y a b : GaussInt) :
    originY u2 u4 u6 Y a b =
      GaussInt.add GaussInt.one (GaussInt.mul a (originYCofA u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [originY, originYCofA, GaussInt.mul, GaussInt.add, GaussInt.neg, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- The `Y`-chart of the origin of `piChart` has empty special fiber: wherever
`π` divides `Y a`, the chart equation is congruent to `1`. -/
theorem originY_fiber_empty (u2 u4 u6 Y a b : GaussInt)
    (h : piDivides (GaussInt.mul Y a)) : ¬ piDivides (originY u2 u4 u6 Y a b) := by
  rcases (piDivides_mul Y a).1 h with hY | ha
  · rw [originY_decomp_Y]
    exact not_piDivides_add_of_right leg1_partial_is_unit
      ((piDivides_mul _ _).2 (Or.inl hY))
  · rw [originY_decomp_a]
    exact not_piDivides_add_of_right leg1_partial_is_unit
      ((piDivides_mul _ _).2 (Or.inl ha))

/-- Formal `∂/∂a` of `chain2S`. At `S = 0` it is `-u₂`. -/
def chain2SPartialA (u2 u4 u6 S a b : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.neg u2)
    (GaussInt.mul S
      (GaussInt.add
        (GaussInt.neg (GaussInt.add u4 (GaussInt.mul u6 S)))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul (GaussInt.ofInt 2) a))
          (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) ⟨0, -1⟩)
            (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) (GaussInt.mul a b))))))

theorem chain2SPartialA_at_S0 (u2 u4 u6 a b : GaussInt) :
    chain2SPartialA u2 u4 u6 GaussInt.zero a b = GaussInt.neg u2 := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases a <;> cases b
  simp [chain2SPartialA, GaussInt.mul, GaussInt.add, GaussInt.neg, GaussInt.zero, GaussInt.ofInt]

/-- The slice `π ∣ S` of `chain2S` is an affine of `chain2`, and `∂/∂a ≡ -u₂`. -/
theorem chain2S_regular_on_S (u2 u4 u6 S a b : GaussInt) (hu : ¬ piDivides u2)
    (hS : piDivides S) : ¬ piDivides (chain2SPartialA u2 u4 u6 S a b) := by
  rw [show chain2SPartialA u2 u4 u6 S a b =
      GaussInt.add (GaussInt.neg u2)
        (GaussInt.mul S
          (GaussInt.add
            (GaussInt.neg (GaussInt.add u4 (GaussInt.mul u6 S)))
            (GaussInt.add
              (GaussInt.neg (GaussInt.mul (GaussInt.ofInt 2) a))
              (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) ⟨0, -1⟩)
                (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) (GaussInt.mul a b)))))) from rfl]
  exact not_piDivides_add_of_right (chain2_partial u2 hu)
    ((piDivides_mul _ _).2 (Or.inl hS))

/-- `originXChart - T²`, as a multiple of `S t`. -/
def originXCof (u2 u4 u6 t S T : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.add u2 t))
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul u4 S))
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul u6 (GaussInt.mul S S)))
        (GaussInt.mul (GaussInt.mul ⟨0, -1⟩ (GaussInt.mul S S)) (GaussInt.mul T t))))

set_option maxRecDepth 4096 in
theorem originX_decomp (u2 u4 u6 t S T : GaussInt) :
    originXChart u2 u4 u6 t S T =
      GaussInt.add (GaussInt.mul T T)
        (GaussInt.mul (GaussInt.mul S t) (originXCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [originXChart, originXCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg,
    GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- Formal `∂/∂S` of `originXChart`. On `S = 0` it is `-t (u₂ + t)`. -/
def originXPartialS (u2 u4 u6 t S T : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.neg (GaussInt.mul t (GaussInt.add u2 t)))
    (GaussInt.mul S
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u4) t))
        (GaussInt.add
          (GaussInt.neg (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) (GaussInt.mul u6 t)) S))
          (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) ⟨0, -1⟩)
            (GaussInt.mul (GaussInt.mul t t) (GaussInt.mul S T))))))

/-- Formal `∂/∂t` of `originXChart`. On `t = 0` it is `-S (u₂ + u₄ S + u₆ S²)`. -/
def originXPartialT (u2 u4 u6 t S T : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.neg (GaussInt.mul S (originTransverse u6 u4 u2 S)))
    (GaussInt.mul t
      (GaussInt.add
        (GaussInt.neg (GaussInt.mul (GaussInt.ofInt 2) S))
        (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) ⟨0, -1⟩)
          (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) T))))

/-- On the `chain1` slice `π ∣ S`, a singular point has `T ≡ 0` and either
`t ≡ 0` (the center `C3`) or `t ≡ -u₂` (the center `C2`). -/
theorem originX_singular_on_S (u2 u4 u6 t S T : GaussInt)
    (hS : piDivides S) (hF : piDivides (originXChart u2 u4 u6 t S T))
    (hD : piDivides (originXPartialS u2 u4 u6 t S T)) :
    piDivides T ∧ (piDivides t ∨ piDivides (GaussInt.add t u2)) := by
  have hT2 : piDivides (GaussInt.mul T T) := by
    rw [originX_decomp] at hF
    exact (piDivides_add_left
      ((piDivides_mul _ _).2 (Or.inl ((piDivides_mul _ _).2 (Or.inl hS))))).1 hF
  refine ⟨piDivides_sq hT2, ?_⟩
  have hLin : piDivides (GaussInt.mul t (GaussInt.add u2 t)) :=
    (piDivides_neg _).1 <|
      (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hS))).1 <| by
        simpa [originXPartialS] using hD
  rcases (piDivides_mul t (GaussInt.add u2 t)).1 hLin with ht | htu
  · exact Or.inl ht
  · exact Or.inr <| by simpa [GaussInt.add_comm t u2] using htu

/-- On the `theta` slice `π ∣ t`, an integral singular point is the origin
`C3`. The transverse factor `u₂ + u₄ S + u₆ S²` is a unit at every point of
`ℤ[√(-1)]`; its geometric roots are the two centers blown up in the `𝔽₄` charts. -/
theorem originX_theta_only_origin (u2 u4 u6 t S T : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6)
    (ht : piDivides t) (hF : piDivides (originXChart u2 u4 u6 t S T))
    (hD : piDivides (originXPartialT u2 u4 u6 t S T)) :
    piDivides T ∧ piDivides S := by
  have hT2 : piDivides (GaussInt.mul T T) := by
    rw [originX_decomp] at hF
    exact (piDivides_add_left
      ((piDivides_mul _ _).2 (Or.inl ((piDivides_mul _ _).2 (Or.inr ht))))).1 hF
  refine ⟨piDivides_sq hT2, ?_⟩
  have hProd : piDivides (GaussInt.mul S (originTransverse u6 u4 u2 S)) :=
    (piDivides_neg _).1 <|
      (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl ht))).1 <| by
        simpa [originXPartialT] using hD
  exact ((piDivides_mul S (originTransverse u6 u4 u2 S)).1 hProd).elim id
    (fun hQ => False.elim (origin_transverse_unit u6 u4 u2 S h6 h4 h2 hQ))

/-!
## Chart coverage

Each blow-up is the blow-up of one closed point of a surface in ambient
affine 3-space, so it has three standard affine charts. A chart is terminal
when, on its special fiber, the equation and the partial derivatives do not
vanish together. An intermediate chart is accounted for when every singular
point of its special fiber is one of the centers blown up below.

* Stage A, center `C0 = (π, x, y) = (0, 0, 0)` on `oddModel`. Charts:
  `π` (`piChart`, singular at `C1` and `C2`), `x` (`cuspChart`, singular only
  at `C2`), `y` (`cuspY`, terminal).
* Stage B, center `C1 = (π, X, Y) = (0, 0, 0)` on `piChart`. Charts: `π`
  (`originPiChart`, singular at the two `𝔽₄` roots), `X` (`originXChart`,
  singular at `C3` and `C2`), `Y` (`originY`, empty special fiber).
* Stage C, center `C3 = (t, S, T) = (0, 0, 0)` on `originXChart`. Charts:
  `t` (`chain2Chart`; the slice `π ∣ t` is `chain2` and is regular, the slice
  `π ∣ A` is singular only at `C2`), `S` (`chain2S`; `π ∣ S` is an affine of
  `chain2`, and over `ℤ[√(-1)]` the slice `π ∣ t` is singular only at `C3`),
  `T` (`chain2T`, terminal).
* Stage D, centers `C4`, `C5` on the second `π`-chart, the roots of
  `X² + X + 1`. Each has a `π`-chart (`f4Strict`, terminal), a `Y`-chart
  (terminal, the other affine of the same leg), and an `s`-chart whose
  exceptional slice is that leg and whose only singularity is the other
  root, blown up by the other triple.
* Stage E, center `C2`. In `chain2Chart` the three charts are `joinR`,
  `joinA`, and `joinB`, all terminal. `pastU2Pi`, `pastU2Strict`, and
  `pastU2Y` are the three charts of the same point in `piChart`. Both
  presentations cut the exceptional divisor of `C2` (`legFar`) and the
  strict transforms of `chain1` and `chain2`. The equation-level overlap of
  `joinR` at `r = 0` with `Y² + X + 1` is not re-proved.

No chart contributes an eighth reduced equation.
-/

/-- Cofactor of `A` in `chain2Chart - B²`. -/
def chain2CofA (u2 u4 u6 t A B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) t) (GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) t) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul t t)) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t)) (GaussInt.mul A A)) B))

/-- Cofactor of `A` in `∂/∂A + (u₂ + t)`. -/
def chain2PartialCofA (u2 u4 u6 t A B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) t) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul t t)) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t)) A) B))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2_decomp_A (u2 u4 u6 t A B : GaussInt) :
    chain2Chart u2 u4 u6 t A B =
      GaussInt.add (GaussInt.mul B B) (GaussInt.mul A (chain2CofA u2 u4 u6 t A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [chain2Chart, chain2CofA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind
set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2PartialA_decomp_A (u2 u4 u6 t A B : GaussInt) :
    chain2PartialA u2 u4 u6 t A B =
      GaussInt.add (GaussInt.neg (GaussInt.add u2 t))
        (GaussInt.mul A (chain2PartialCofA u2 u4 u6 t A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [chain2PartialA, chain2PartialCofA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- On `π ∣ A` the chart `chain2Chart` is singular only at `B ≡ 0`, `t ≡ -u₂`,
the center `C2`. Together with `chain2_regular_on_t`, the special fiber
`π ∣ t² A` is either the smooth component `chain2` or that one center. -/
theorem chain2_singular_on_A (u2 u4 u6 t A B : GaussInt)
    (hA : piDivides A) (hF : piDivides (chain2Chart u2 u4 u6 t A B))
    (hD : piDivides (chain2PartialA u2 u4 u6 t A B)) :
    piDivides B ∧ piDivides (GaussInt.add t u2) := by
  have hB2 : piDivides (GaussInt.mul B B) := by
    rw [chain2_decomp_A] at hF
    exact (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hA))).1 hF
  refine ⟨piDivides_sq hB2, ?_⟩
  rw [chain2PartialA_decomp_A] at hD
  have hlin : piDivides (GaussInt.add u2 t) :=
    (piDivides_neg _).1 <|
      (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hA))).1 hD
  simpa [GaussInt.add_comm u2 t] using hlin

/-- Formal `∂/∂s` of `joinA`. -/
def joinAPartialS (u2 u4 u6 A s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u6) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u6) (GaussInt.mul (GaussInt.mul A A) A)) s)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul A A) A)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -12⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A)) (GaussInt.mul s s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -4⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A) A)) (GaussInt.mul (GaussInt.mul s s) s)) q))

/-- Cofactor of `A` in `∂/∂s + 1`. -/
def joinAPartialCofS (u2 u4 u6 A s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u6) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u6) (GaussInt.mul A A)) s)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul A A)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -12⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul A A) A)) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul s s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -4⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A)) (GaussInt.mul (GaussInt.mul s s) s)) q))

/-- Formal `∂/∂A` of `joinA`. -/
def joinAPartialA (u2 u4 u6 A s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) s) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) u6)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 4) u2) u6) A) s)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul A A)) (GaussInt.mul s s))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -2⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) A) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul A A)) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -24⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul s s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 20⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul (GaussInt.mul s s) s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -6⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s)) q))

/-- Cofactor of `A s - u₂` in `∂/∂A + u₄ s`. -/
def joinAPartialCofA (u2 u4 u6 A s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul GaussInt.one u2) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) A) s)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 2⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) A) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -10⟩) (GaussInt.mul u2 u2)) (GaussInt.mul A A)) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 14⟩) u2) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul s s)) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -6⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul (GaussInt.mul s s) s)) q))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem joinAPartialS_decomp (u2 u4 u6 A s q : GaussInt) :
    joinAPartialS u2 u4 u6 A s q =
      GaussInt.add (GaussInt.neg GaussInt.one)
        (GaussInt.mul A (joinAPartialCofS u2 u4 u6 A s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases A <;> cases s <;> cases q
  simp [joinAPartialS, joinAPartialCofS, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind
set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem joinAPartialA_decomp (u2 u4 u6 A s q : GaussInt) :
    joinAPartialA u2 u4 u6 A s q =
      GaussInt.add (GaussInt.neg (GaussInt.mul u4 s))
        (GaussInt.mul (GaussInt.sub (GaussInt.mul A s) u2)
          (joinAPartialCofA u2 u4 u6 A s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases A <;> cases s <;> cases q
  simp [joinAPartialA, joinAPartialCofA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- The slice `π ∣ A` of `joinA` has `∂/∂s ≡ -1`. It is an affine of `legFar`. -/
theorem joinA_regular_on_A (u2 u4 u6 A s q : GaussInt) (hA : piDivides A) :
    ¬ piDivides (joinAPartialS u2 u4 u6 A s q) := by
  rw [joinAPartialS_decomp]
  exact not_piDivides_add_of_right leg0_partial_is_unit
    ((piDivides_mul _ _).2 (Or.inl hA))

/-- Along `t = A s - u₂`, with `u₂` and `u₄` units, `∂/∂A` is a unit.
`π ∣ s` would force `π ∣ u₂`. -/
theorem joinA_regular_on_t (u2 u4 u6 A s q : GaussInt)
    (hu : ¬ piDivides u2) (h4 : ¬ piDivides u4)
    (ht : piDivides (GaussInt.sub (GaussInt.mul A s) u2)) :
    ¬ piDivides (joinAPartialA u2 u4 u6 A s q) := by
  have hs : ¬ piDivides s := by
    intro hs
    exact hu (piDivides_of_sub_left ((piDivides_mul _ _).2 (Or.inr hs)) ht)
  have h4s : ¬ piDivides (GaussInt.mul u4 s) := by
    intro h
    rcases (piDivides_mul u4 s).1 h with h4' | hs'
    · exact h4 h4'
    · exact hs hs'
  rw [joinAPartialA_decomp]
  exact not_piDivides_add_of_right
    (fun h => h4s ((piDivides_neg _).1 h))
    ((piDivides_mul _ _).2 (Or.inl ht))

/-- The special fiber `π = (A s - u₂)² A` of `joinA` is regular.
The two slices are `legFar` (`A ≡ 0`) and the strict transform through
`t ≡ 0`. -/
theorem joinA_regular_on_fiber (u2 u4 u6 A s q : GaussInt)
    (hu : ¬ piDivides u2) (h4 : ¬ piDivides u4)
    (h : piDivides (GaussInt.mul
      (GaussInt.mul (GaussInt.sub (GaussInt.mul A s) u2)
        (GaussInt.sub (GaussInt.mul A s) u2)) A)) :
    ¬ piDivides (joinAPartialS u2 u4 u6 A s q) ∨
      ¬ piDivides (joinAPartialA u2 u4 u6 A s q) := by
  rcases (piDivides_mul _ _).1 h with ht2 | hA
  · exact Or.inr (joinA_regular_on_t u2 u4 u6 A s q hu h4 (piDivides_sq ht2))
  · exact Or.inl (joinA_regular_on_A u2 u4 u6 A s q hA)

/-- Formal `∂/∂s` of `joinB`. -/
def joinBPartialS (u2 u4 u6 B s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) q) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) B) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u6) (GaussInt.mul B B)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u6) (GaussInt.mul (GaussInt.mul B B) B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul B B) B)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -12⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B)) (GaussInt.mul s s)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -4⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B) B)) (GaussInt.mul (GaussInt.mul s s) s)) (GaussInt.mul (GaussInt.mul q q) q)))

/-- Cofactor of `B` in `∂/∂s + q`. -/
def joinBPartialCofS (u2 u4 u6 B s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul q q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u6) B) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u6) (GaussInt.mul B B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul B B)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -12⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul B B) B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B)) (GaussInt.mul s s)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -4⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B)) (GaussInt.mul (GaussInt.mul s s) s)) (GaussInt.mul (GaussInt.mul q q) q)))

/-- Formal `∂/∂q` of `joinB`. -/
def joinBPartialQ (u2 u4 u6 B s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) s) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u4) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) B) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul u2 u2)) u6) B) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 6) u2) u6) (GaussInt.mul B B)) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul (GaussInt.mul B B) B)) (GaussInt.mul s s)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) (GaussInt.mul B B)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul B B) B)) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -18⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B)) (GaussInt.mul s s)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 12⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B)) (GaussInt.mul (GaussInt.mul s s) s)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B) B)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s)) (GaussInt.mul q q)))

/-- Cofactor of `B s - u₂` in `∂/∂q + s`. -/
def joinBPartialCofQ (u2 u4 u6 B s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) q) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) u2) u6) B) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul B B)) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 3⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul B B)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -9⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul B B) B)) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 9⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B)) (GaussInt.mul s s)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B)) (GaussInt.mul (GaussInt.mul s s) s)) (GaussInt.mul q q)))

/-- Cofactor of `q` in `joinB - 1`. -/
def joinBCofQ (u2 u4 u6 B s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) s) (GaussInt.mul (GaussInt.mul (GaussInt.mul GaussInt.one u2) u4) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) B) s) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) u6) B) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) u6) (GaussInt.mul B B)) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul B B) B)) (GaussInt.mul s s)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul u2 u2) u2) u2)) (GaussInt.mul B B)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul (GaussInt.mul B B) B)) s) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -6⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B)) (GaussInt.mul s s)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 4⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B)) (GaussInt.mul (GaussInt.mul s s) s)) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B) B)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s)) (GaussInt.mul q q)))

/-- Cofactor of `B s - u₂` in `joinB - (1 - s q)`. -/
def joinBCofT (u2 u4 u6 B s q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul q q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul GaussInt.one u2) u6) B) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul B B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 1⟩) (GaussInt.mul (GaussInt.mul u2 u2) u2)) (GaussInt.mul B B)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -3⟩) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul B B) B)) s) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, 3⟩) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B)) (GaussInt.mul s s)) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul B B) B) B) B)) (GaussInt.mul (GaussInt.mul s s) s)) (GaussInt.mul (GaussInt.mul q q) q)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem joinBPartialS_decomp (u2 u4 u6 B s q : GaussInt) :
    joinBPartialS u2 u4 u6 B s q =
      GaussInt.add (GaussInt.neg q) (GaussInt.mul B (joinBPartialCofS u2 u4 u6 B s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases B <;> cases s <;> cases q
  simp [joinBPartialS, joinBPartialCofS, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind
set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem joinBPartialQ_decomp (u2 u4 u6 B s q : GaussInt) :
    joinBPartialQ u2 u4 u6 B s q =
      GaussInt.add (GaussInt.neg s)
        (GaussInt.mul (GaussInt.sub (GaussInt.mul B s) u2)
          (joinBPartialCofQ u2 u4 u6 B s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases B <;> cases s <;> cases q
  simp [joinBPartialQ, joinBPartialCofQ, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind
set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem joinB_decomp_q (u2 u4 u6 B s q : GaussInt) :
    joinB u2 u4 u6 B s q =
      GaussInt.add GaussInt.one (GaussInt.mul q (joinBCofQ u2 u4 u6 B s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases B <;> cases s <;> cases q
  simp [joinB, joinBCofQ, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind
set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem joinB_decomp_t (u2 u4 u6 B s q : GaussInt) :
    joinB u2 u4 u6 B s q =
      GaussInt.add (GaussInt.sub GaussInt.one (GaussInt.mul s q))
        (GaussInt.mul (GaussInt.sub (GaussInt.mul B s) u2)
          (joinBCofT u2 u4 u6 B s q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases B <;> cases s <;> cases q
  simp [joinB, joinBCofT, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- The special fiber `π = (B s - u₂)² B q` of `joinB` is regular.
`π ∣ q` makes the equation `1`. `π ∣ B` forces a zero of `∂/∂s` onto `q ≡ 0`,
and then the equation is `1`. `π ∣ t` forces a zero of `∂/∂q` onto `s ≡ 0`,
and then the equation `1 - s q` is `1`. The slices that survive are affines
of `legFar`, `chain1`, and `chain2`. -/
theorem joinB_regular_on_fiber (u2 u4 u6 B s q : GaussInt)
    (hπ : piDivides (GaussInt.mul
      (GaussInt.mul (GaussInt.sub (GaussInt.mul B s) u2)
        (GaussInt.sub (GaussInt.mul B s) u2))
      (GaussInt.mul B q)))
    (hF : piDivides (joinB u2 u4 u6 B s q))
    (hS : piDivides (joinBPartialS u2 u4 u6 B s q))
    (hQ : piDivides (joinBPartialQ u2 u4 u6 B s q)) : False := by
  rcases (piDivides_mul _ _).1 hπ with ht2 | hBq
  · have ht : piDivides (GaussInt.sub (GaussInt.mul B s) u2) := piDivides_sq ht2
    rw [joinBPartialQ_decomp] at hQ
    have hs : piDivides s :=
      (piDivides_neg _).1 <|
        (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl ht))).1 hQ
    rw [joinB_decomp_t] at hF
    have h1 : piDivides (GaussInt.sub GaussInt.one (GaussInt.mul s q)) :=
      (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl ht))).1 hF
    rw [GaussInt.sub_eq_add_neg] at h1
    exact leg1_partial_is_unit <|
      (piDivides_add_left ((piDivides_neg _).2 ((piDivides_mul _ _).2 (Or.inl hs)))).1 h1
  · rcases (piDivides_mul B q).1 hBq with hB | hq
    · rw [joinBPartialS_decomp] at hS
      have hq' : piDivides q :=
        (piDivides_neg _).1 <|
          (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hB))).1 hS
      rw [joinB_decomp_q] at hF
      exact leg1_partial_is_unit
        ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hq'))).1 hF)
    · rw [joinB_decomp_q] at hF
      exact leg1_partial_is_unit
        ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hq))).1 hF)

/-- The `Y`-chart `π = Y a`, `X = -u₂ + Y b` of the center `C2` on `piChart`.
The third affine of `legFar`. -/
def pastU2Y (u2 u4 u6 Y a b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.mul GaussInt.one u2) u4) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) a) b)) (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) Y) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) Y) (GaussInt.mul a a)) b)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) Y) a) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul Y Y)) a) (GaussInt.mul (GaussInt.mul b b) b)))

/-- Formal `∂/∂b` of `pastU2Y`. -/
def pastU2YPartialB (u2 u4 u6 Y a b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) a) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) Y) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 4) u2) Y) a) b)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul Y Y)) a) (GaussInt.mul b b)))

/-- Cofactor of `a` in `pastU2Y - 1`. -/
def pastU2YCofA (u2 u4 u6 Y a b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul GaussInt.one u2) u4) a) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) b)) (GaussInt.mul (GaussInt.mul (⟨0, -1⟩) (GaussInt.mul Y Y)) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) Y) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) Y) a) b)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) u2) Y) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul b b) b)))

/-- Cofactor of `Y` in `∂/∂b + u₂² a`. -/
def pastU2YPartialCofB (u2 u4 u6 Y a b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul a a)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 4) u2) a) b)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) Y) a) (GaussInt.mul b b)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_pastU2Y (u2 u4 u6 Y a b : GaussInt) :
    piChartIn (GaussInt.mul Y a) u2 u4 u6
        (GaussInt.add (GaussInt.neg u2) (GaussInt.mul Y b)) Y =
      GaussInt.mul (GaussInt.mul Y Y) (pastU2Y u2 u4 u6 Y a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [piChartIn, pastU2Y, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind
set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastU2Y_decomp_a (u2 u4 u6 Y a b : GaussInt) :
    pastU2Y u2 u4 u6 Y a b =
      GaussInt.add GaussInt.one (GaussInt.mul a (pastU2YCofA u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [pastU2Y, pastU2YCofA, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind
set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastU2YPartialB_decomp (u2 u4 u6 Y a b : GaussInt) :
    pastU2YPartialB u2 u4 u6 Y a b =
      GaussInt.add (GaussInt.neg (GaussInt.mul (GaussInt.mul u2 u2) a))
        (GaussInt.mul Y (pastU2YPartialCofB u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [pastU2YPartialB, pastU2YPartialCofB, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

/-- On `π ∣ Y a` the equation and `∂/∂b` do not vanish together when `u₂`
is a unit. `π ∣ a` makes the equation `1`. `π ∣ Y` makes `∂/∂b ≡ -u₂² a`,
so a zero of the partial forces `π ∣ a` and again the equation is `1`. -/
theorem pastU2Y_regular_on_fiber (u2 u4 u6 Y a b : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul Y a))
    (hF : piDivides (pastU2Y u2 u4 u6 Y a b))
    (hD : piDivides (pastU2YPartialB u2 u4 u6 Y a b)) : False := by
  have ha : piDivides a := by
    rcases (piDivides_mul Y a).1 hπ with hY | ha
    · rw [pastU2YPartialB_decomp] at hD
      have hprod : piDivides (GaussInt.mul (GaussInt.mul u2 u2) a) :=
        (piDivides_neg _).1 <|
          (piDivides_add_left ((piDivides_mul _ _).2 (Or.inl hY))).1 hD
      exact ((piDivides_mul (GaussInt.mul u2 u2) a).1 hprod).elim
        (fun hu2 => False.elim (hu (((piDivides_mul u2 u2).1 hu2).elim id id))) id
    · exact ha
  rw [pastU2Y_decomp_a] at hF
  exact leg1_partial_is_unit
    ((piDivides_add_left ((piDivides_mul _ _).2 (Or.inl ha))).1 hF)



/-- `π` divides a product in `ℤ[√(-1)][ω]` if and only if it divides a factor.
The quotient by `π` is the field `𝔽₄`. -/
private theorem emod_two_add (a b : Int) : (a + b) % 2 = ((a % 2) + (b % 2)) % 2 :=
  Int.add_emod a b 2

private theorem emod_two_sub (a b : Int) : (a - b) % 2 = ((a % 2) + (b % 2)) % 2 := by
  rcases int_mod_two a with ha | ha <;> rcases int_mod_two b with hb | hb <;>
    simp [ha, hb, Int.sub_emod]

private theorem emod_two_mul (a b : Int) : (a * b) % 2 = ((a % 2) * (b % 2)) % 2 :=
  Int.mul_emod a b 2

private theorem phi_mul (z w : GaussInt) :
    ((GaussInt.mul z w).re + (GaussInt.mul z w).im) % 2 =
      (((z.re + z.im) % 2) * ((w.re + w.im) % 2)) % 2 := by
  cases z with
  | mk zr zi =>
    cases w with
    | mk wr wi =>
      simp [GaussInt.mul]
      have hs : zr * wr - zi * wi + (zr * wi + zi * wr) =
          (zr + zi) * (wr + wi) + -(2 * zi * wi) := by grind
      rw [hs]
      have h2 : -(2 * zi * wi) = 2 * -(zi * wi) := by
        rw [Int.mul_assoc, Int.neg_mul_eq_mul_neg]
      rw [h2, Int.add_mul_emod_self_left, emod_two_mul]

private theorem phi_add (z w : GaussInt) :
    ((GaussInt.add z w).re + (GaussInt.add z w).im) % 2 =
      (((z.re + z.im) % 2) + ((w.re + w.im) % 2)) % 2 := by
  cases z with
  | mk zr zi =>
    cases w with
    | mk wr wi =>
      show (zr + wr + (zi + wi)) % 2 = (((zr + zi) % 2) + ((wr + wi) % 2)) % 2
      have hsum : zr + wr + (zi + wi) = (zr + zi) + (wr + wi) := by omega
      rw [hsum]
      exact emod_two_add (zr + zi) (wr + wi)

private theorem phi_sub (z w : GaussInt) :
    ((GaussInt.sub z w).re + (GaussInt.sub z w).im) % 2 =
      (((z.re + z.im) % 2) + ((w.re + w.im) % 2)) % 2 := by
  cases z with
  | mk zr zi =>
    cases w with
    | mk wr wi =>
      show (zr - wr + (zi - wi)) % 2 = (((zr + zi) % 2) + ((wr + wi) % 2)) % 2
      have hsum : zr - wr + (zi - wi) = (zr + zi) - (wr + wi) := by omega
      rw [hsum]
      exact emod_two_sub (zr + zi) (wr + wi)

theorem piDividesQ_mul (x y : Quad) :
    Quad.piDividesQ (Quad.mul x y) ↔ Quad.piDividesQ x ∨ Quad.piDividesQ y := by
  rcases x with ⟨⟨ar, ai⟩, ⟨br, bi⟩⟩
  rcases y with ⟨⟨cr, ci⟩, ⟨dr, di⟩⟩
  have hre : ((Quad.mul ⟨⟨ar, ai⟩, ⟨br, bi⟩⟩ ⟨⟨cr, ci⟩, ⟨dr, di⟩⟩).re.re +
      (Quad.mul ⟨⟨ar, ai⟩, ⟨br, bi⟩⟩ ⟨⟨cr, ci⟩, ⟨dr, di⟩⟩).re.im) % 2 =
      ((((ar + ai) % 2) * ((cr + ci) % 2)) % 2 + (((br + bi) % 2) * ((dr + di) % 2)) % 2) % 2 := by
    have h1 := phi_sub (GaussInt.mul ⟨ar, ai⟩ ⟨cr, ci⟩) (GaussInt.mul ⟨br, bi⟩ ⟨dr, di⟩)
    rw [phi_mul, phi_mul] at h1
    simpa [Quad.mul] using h1
  have him : ((Quad.mul ⟨⟨ar, ai⟩, ⟨br, bi⟩⟩ ⟨⟨cr, ci⟩, ⟨dr, di⟩⟩).im.re +
      (Quad.mul ⟨⟨ar, ai⟩, ⟨br, bi⟩⟩ ⟨⟨cr, ci⟩, ⟨dr, di⟩⟩).im.im) % 2 =
      (((((ar + ai) % 2) * ((dr + di) % 2)) % 2 + (((br + bi) % 2) * ((cr + ci) % 2)) % 2) % 2
        + (((br + bi) % 2) * ((dr + di) % 2)) % 2) % 2 := by
    have hadd := phi_add (GaussInt.mul ⟨ar, ai⟩ ⟨dr, di⟩) (GaussInt.mul ⟨br, bi⟩ ⟨cr, ci⟩)
    have hsub := phi_sub
      (GaussInt.add (GaussInt.mul ⟨ar, ai⟩ ⟨dr, di⟩) (GaussInt.mul ⟨br, bi⟩ ⟨cr, ci⟩))
      (GaussInt.mul ⟨br, bi⟩ ⟨dr, di⟩)
    rw [hadd] at hsub
    rw [phi_mul, phi_mul, phi_mul] at hsub
    simpa [Quad.mul] using hsub
  simp [Quad.piDividesQ, piDivides] at hre him ⊢
  rw [hre, him]
  rcases int_mod_two (ar + ai) with ha | ha <;>
    rcases int_mod_two (br + bi) with hb | hb <;>
    rcases int_mod_two (cr + ci) with hc | hc <;>
    rcases int_mod_two (dr + di) with hd | hd <;>
    simp [ha, hb, hc, hd]

theorem piDividesQ_sq {x : Quad} (h : Quad.piDividesQ (Quad.mul x x)) : Quad.piDividesQ x :=
  ((piDividesQ_mul x x).1 h).elim id id

theorem piDividesQ_mul_left {x y : Quad} (hx : Quad.piDividesQ x) :
    Quad.piDividesQ (Quad.mul x y) :=
  (piDividesQ_mul x y).2 (Or.inl hx)

theorem piDividesQ_neg (x : Quad) : Quad.piDividesQ (Quad.neg x) ↔ Quad.piDividesQ x := by
  cases x with
  | mk xr xi =>
    constructor
    · intro h
      exact ⟨(piDivides_neg _).1 h.1, (piDivides_neg _).1 h.2⟩
    · intro h
      exact ⟨(piDivides_neg _).2 h.1, (piDivides_neg _).2 h.2⟩

theorem piDividesQ_ofG (a : GaussInt) (x : Quad) (ha : piDivides a) :
    Quad.piDividesQ (Quad.mul (Quad.ofG a) x) := by
  constructor
  · rw [ofG_mul_re]
    exact (piDivides_mul _ _).2 (Or.inl ha)
  · rw [ofG_mul_im]
    exact (piDivides_mul _ _).2 (Or.inl ha)

theorem piDividesQ_add_left {x y : Quad} (hy : Quad.piDividesQ y) :
    Quad.piDividesQ (Quad.add x y) ↔ Quad.piDividesQ x := by
  cases x with
  | mk xr xi =>
    cases y with
    | mk yr yi =>
      constructor
      · intro h
        exact ⟨(piDivides_add_left hy.1).1 h.1, (piDivides_add_left hy.2).1 h.2⟩
      · intro h
        exact ⟨(piDivides_add_left hy.1).2 h.1, (piDivides_add_left hy.2).2 h.2⟩

theorem not_piDividesQ_add_of_right {x y : Quad}
    (hx : ¬ Quad.piDividesQ x) (hy : Quad.piDividesQ y) :
    ¬ Quad.piDividesQ (Quad.add x y) :=
  fun h => hx ((piDividesQ_add_left hy).1 h)

theorem not_piDividesQ_one : ¬ Quad.piDividesQ Quad.one := by
  intro h
  exact leg1_partial_is_unit h.1

theorem not_piDividesQ_neg_one : ¬ Quad.piDividesQ (Quad.neg Quad.one) := by
  intro h
  exact leg0_partial_is_unit h.1

theorem ofInt_neg_two_pi : piDivides (GaussInt.neg (GaussInt.ofInt 2)) :=
  (piDivides_neg _).2 ofInt_two_pi

theorem ofInt_four_pi : piDivides (GaussInt.ofInt 4) := by
  have h : GaussInt.ofInt 4 = GaussInt.mul (GaussInt.ofInt 2) (GaussInt.ofInt 2) := by
    simp [GaussInt.ofInt, GaussInt.mul]
  rw [h]
  exact (piDivides_mul _ _).2 (Or.inl ofInt_two_pi)

theorem ofInt_neg_four_pi : piDivides (GaussInt.neg (GaussInt.ofInt 4)) :=
  (piDivides_neg _).2 ofInt_four_pi

/-- `-1 - 2 ω`, the difference of the two roots of `X² + X + 1`. Congruent to `-1`. -/
def f4Shift : Quad :=
  Quad.add (Quad.neg Quad.one)
    (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 2))) Quad.omega)

/-- `1 + 2 ω`, the opposite difference. Congruent to `1`. -/
def f4ShiftConj : Quad :=
  Quad.add Quad.one (Quad.mul (Quad.ofG (GaussInt.ofInt 2)) Quad.omega)

theorem f4Shift_eq :
    f4Shift = Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2)) := by
  simp [f4Shift, Quad.add, Quad.neg, Quad.mul, Quad.ofG, Quad.one, Quad.omega, Quad.zero,
    GaussInt.add, GaussInt.mul, GaussInt.neg, GaussInt.sub, GaussInt.ofInt, GaussInt.one,
    GaussInt.zero] <;> omega

theorem f4ShiftConj_eq :
    f4ShiftConj = Quad.mk GaussInt.one (GaussInt.ofInt 2) := by
  simp [f4ShiftConj, Quad.add, Quad.mul, Quad.ofG, Quad.one, Quad.omega, Quad.zero,
    GaussInt.add, GaussInt.mul, GaussInt.sub, GaussInt.ofInt, GaussInt.one, GaussInt.zero] <;>
    omega

theorem not_piDividesQ_f4Shift : ¬ Quad.piDividesQ f4Shift := by
  unfold f4Shift
  exact not_piDividesQ_add_of_right not_piDividesQ_neg_one
    (piDividesQ_ofG _ Quad.omega ofInt_neg_two_pi)

theorem not_piDividesQ_f4ShiftConj : ¬ Quad.piDividesQ f4ShiftConj := by
  unfold f4ShiftConj
  exact not_piDividesQ_add_of_right not_piDividesQ_one
    (piDividesQ_ofG _ Quad.omega ofInt_two_pi)

theorem not_piDividesQ_shift_lin (A : Quad) :
    ¬ Quad.piDividesQ
      (Quad.add f4Shift (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 4))) A)) :=
  not_piDividesQ_add_of_right not_piDividesQ_f4Shift
    (piDividesQ_ofG _ A ofInt_neg_four_pi)

theorem not_piDividesQ_shiftConj_lin (A : Quad) :
    ¬ Quad.piDividesQ
      (Quad.add f4ShiftConj (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 4))) A)) :=
  not_piDividesQ_add_of_right not_piDividesQ_f4ShiftConj
    (piDividesQ_ofG _ A ofInt_neg_four_pi)

theorem f4Shift_mul (a : Quad) :
    Quad.mul f4Shift a =
      Quad.add (Quad.neg a)
        (Quad.mul (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 2))) Quad.omega) a) := by
  unfold f4Shift
  rw [Quad.add_mul, Quad.neg_mul, Quad.one_mul]

theorem f4ShiftConj_mul (a : Quad) :
    Quad.mul f4ShiftConj a =
      Quad.add a
        (Quad.mul (Quad.mul (Quad.ofG (GaussInt.ofInt 2)) Quad.omega) a) := by
  unfold f4ShiftConj
  rw [Quad.add_mul, Quad.one_mul]

theorem piDividesQ_shift_mul (a : Quad) :
    Quad.piDividesQ (Quad.mul f4Shift a) ↔ Quad.piDividesQ a := by
  rw [f4Shift_mul]
  rw [piDividesQ_add_left
    (piDividesQ_mul_left (piDividesQ_ofG _ Quad.omega ofInt_neg_two_pi))]
  exact piDividesQ_neg a

theorem piDividesQ_shiftConj_mul (a : Quad) :
    Quad.piDividesQ (Quad.mul f4ShiftConj a) ↔ Quad.piDividesQ a := by
  rw [f4ShiftConj_mul]
  rw [piDividesQ_add_left
    (piDividesQ_mul_left (piDividesQ_ofG _ Quad.omega ofInt_two_pi))]

/-- Second `π`-chart with the uniformizer kept as a coordinate. -/
def modelSecondIn (p X Y : Quad) : Quad :=
  let y2 := Quad.mul Y Y
  let x2 := Quad.mul X X
  let x3 := Quad.mul x2 X
  let quad := Quad.add x2 (Quad.add X Quad.one)
  let piQ := Quad.mul p (Quad.add quad p)
  let lin := Quad.mul (Quad.sub Quad.one p) Y
  let tail := Quad.mul (Quad.mul p p) (Quad.sub lin x3)
  Quad.add (Quad.sub y2 piQ) tail

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem modelSecondIn_spec (X Y : Quad) :
    modelSecondIn (Quad.ofG pi) X Y = modelSecond X Y := by
  refine quad_cases4 (p := fun X Y => modelSecondIn (Quad.ofG pi) X Y = modelSecond X Y) X Y ?_
  intro a b c d e f g0 h0
  simp [modelSecondIn, modelSecond, Quad.mul, Quad.add, Quad.sub, Quad.ofG,
    Quad.one, Quad.zero, pi, piPow, GaussInt.npow, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.neg, GaussInt.one, GaussInt.zero, GaussInt.ofInt]

/-- Strict transform in the `π`-chart `X = ρ + π U`, `Y = π V`. It reduces to `V² + U`. -/
def f4Strict (ρ U V : Quad) : Quad :=
  Quad.add (Quad.add (Quad.mul V V) U)
    (Quad.mul (Quad.ofG pi) (f4Quotient ρ U V))

private theorem quad_sub_add (x y : Quad) : Quad.add (Quad.sub x y) y = x := by
  cases x with | mk xr xi =>
  cases y with | mk yr yi =>
  cases xr <;> cases xi <;> cases yr <;> cases yi
  simp [Quad.sub, Quad.add, GaussInt.sub, GaussInt.add]

theorem f4Strict_eq_omega (U V : Quad) :
    modelSecond (f4Center Quad.omega U) (f4Height V) =
      Quad.mul (Quad.ofG (piPow 2)) (f4Strict Quad.omega U V) := by
  have h := f4_chart_omega U V
  unfold f4Diff at h
  have hback := quad_sub_add (modelSecond (f4Center Quad.omega U) (f4Height V))
    (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))
  rw [← hback, h]
  unfold f4Strict
  rw [piPow_three_mul, Quad.ofG_mul]
  to_ring_ops
  grind

theorem f4Strict_eq_conj (U V : Quad) :
    modelSecond (f4Center Quad.omegaConj U) (f4Height V) =
      Quad.mul (Quad.ofG (piPow 2)) (f4Strict Quad.omegaConj U V) := by
  have h := f4_chart_conj U V
  unfold f4Diff at h
  have hback := quad_sub_add (modelSecond (f4Center Quad.omegaConj U) (f4Height V))
    (Quad.mul (Quad.ofG (piPow 2)) (Quad.add (Quad.mul V V) U))
  rw [← hback, h]
  unfold f4Strict
  rw [piPow_three_mul, Quad.ofG_mul]
  to_ring_ops
  grind

/-- `s`-chart `π = s A`, `X = ω + s`, `Y = s B` of the center `X = ω`. -/
def f4S (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) A) (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul B B))) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) A) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) (Quad.mul A A))) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) (Quad.mul A A)) s)) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) (Quad.mul A A)) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul A A)) B) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul A A)) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul (Quad.mul A A) A)) B) (Quad.mul s s)))

/-- Formal `∂/∂A` of `f4S`. -/
def f4SPartialA (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 4)) GaussInt.zero) A)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) A) s)) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) A) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 2) GaussInt.zero) A) B) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) A) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul A A)) B) (Quad.mul s s)))

def f4SPartialCofS (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) A)) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) A) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 2) GaussInt.zero) A) B)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) A) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul A A)) B) s))

def f4SPartialCofA (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk (GaussInt.neg (GaussInt.ofInt 4)) GaussInt.zero) (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) s)) (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 2) GaussInt.zero) B) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) A) B) (Quad.mul s s)))

def f4SCofA (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) A)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) A) s)) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) A) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) A) B) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) A) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul A A)) B) (Quad.mul s s)))


set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem modelSecondIn_f4S (A B s : Quad) :
    modelSecondIn (Quad.mul s A) (Quad.add Quad.omega s) (Quad.mul s B) =
      Quad.mul (Quad.mul s s) (f4S A B s) := by
  have hω : Quad.omega * Quad.omega + Quad.omega + 1 = 0 := by
    change Quad.add (Quad.add (Quad.mul Quad.omega Quad.omega) Quad.omega) Quad.one = Quad.zero
    exact Quad.omega_rel
  simp only [modelSecondIn, f4S, Quad.mk_as_ring, Quad.ofG_neg, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6]
  to_ring_ops
  grind

theorem f4SPartialA_decomp_s (A B s : Quad) :
    f4SPartialA A B s =
      Quad.add (Quad.add (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 4))) A)) (Quad.mul s (f4SPartialCofS A B s)) := by
  simp only [f4SPartialA, f4SPartialCofS, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem f4SPartialA_decomp_A (A B s : Quad) :
    f4SPartialA A B s =
      Quad.add (Quad.sub (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) s) (Quad.mul A (f4SPartialCofA A B s)) := by
  simp only [f4SPartialA, f4SPartialCofA, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem f4S_decomp_A (A B s : Quad) :
    f4S A B s = Quad.add (Quad.mul B B) (Quad.mul A (f4SCofA A B s)) := by
  simp only [f4S, f4SCofA, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

/-- On `π ∣ s` the partial `∂/∂A` is congruent to `-1`. The exceptional slice is `legUp`. -/
theorem f4S_regular_on_s (A B s : Quad) (hs : Quad.piDividesQ s) :
    ¬ Quad.piDividesQ (f4SPartialA A B s) := by
  rw [f4SPartialA_decomp_s]
  have hbase : ¬ Quad.piDividesQ
      (Quad.add (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2)))
        (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 4))) A)) := by
    rw [← f4Shift_eq]
    exact not_piDividesQ_shift_lin A
  exact not_piDividesQ_add_of_right hbase (piDividesQ_mul_left hs)

/-- On `π ∣ A` a point where the equation and `∂/∂A` vanish is the conjugate center
`s ≡ ω̄ - ω`, `B ≡ 0`. That point is blown up by the conjugate triple. -/
theorem f4S_singular_on_A (A B s : Quad)
    (hA : Quad.piDividesQ A) (hF : Quad.piDividesQ (f4S A B s))
    (hD : Quad.piDividesQ (f4SPartialA A B s)) :
    Quad.piDividesQ B ∧ Quad.piDividesQ (Quad.sub f4Shift s) := by
  rw [f4S_decomp_A] at hF
  have hB2 : Quad.piDividesQ (Quad.mul B B) :=
    (piDividesQ_add_left (piDividesQ_mul_left hA)).1 hF
  rw [f4SPartialA_decomp_A] at hD
  have hs : Quad.piDividesQ
      (Quad.sub (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) s) :=
    (piDividesQ_add_left (piDividesQ_mul_left hA)).1 hD
  rw [← f4Shift_eq] at hs
  exact ⟨piDividesQ_sq hB2, hs⟩

/-- `Y`-chart `π = y a`, `X = ω + y b`, `Y = y` of the same center. -/
def f4Y (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) a) b)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) (Quad.mul a a))) (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul a a)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) a) (Quad.mul b b)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) (Quad.mul a a)) b) y)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul (Quad.mul a a) a)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) (Quad.mul a a)) (Quad.mul b b)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul a a)) (Quad.mul (Quad.mul b b) b)) (Quad.mul (Quad.mul y y) y)))

def f4YPartialB (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) a) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) a) b) y)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) (Quad.mul a a)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) (Quad.mul a a)) b) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul a a)) (Quad.mul b b)) (Quad.mul (Quad.mul y y) y)))

def f4YPartialCofB (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) a) b) (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) (Quad.mul a a))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) (Quad.mul a a)) b) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul a a)) (Quad.mul b b)) (Quad.mul y y)))

def f4YCofA (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) b) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) a)) (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) a) y)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul b b)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) a) b) y)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul a a)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) a) (Quad.mul b b)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) a) (Quad.mul (Quad.mul b b) b)) (Quad.mul (Quad.mul y y) y)))


set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem modelSecondIn_f4Y (a b y : Quad) :
    modelSecondIn (Quad.mul y a) (Quad.add Quad.omega (Quad.mul y b)) y =
      Quad.mul (Quad.mul y y) (f4Y a b y) := by
  have hω : Quad.omega * Quad.omega + Quad.omega + 1 = 0 := by
    change Quad.add (Quad.add (Quad.mul Quad.omega Quad.omega) Quad.omega) Quad.one = Quad.zero
    exact Quad.omega_rel
  simp only [modelSecondIn, f4Y, Quad.mk_as_ring, Quad.ofG_neg, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6]
  to_ring_ops
  grind

theorem f4YPartialB_decomp (a b y : Quad) :
    f4YPartialB a b y =
      Quad.add (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) a) (Quad.mul y (f4YPartialCofB a b y)) := by
  simp only [f4YPartialB, f4YPartialCofB, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem f4Y_decomp_a (a b y : Quad) :
    f4Y a b y = Quad.add Quad.one (Quad.mul a (f4YCofA a b y)) := by
  simp only [f4Y, f4YCofA, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

theorem f4Y_regular_on_fiber (a b y : Quad)
    (hπ : Quad.piDividesQ (Quad.mul y a))
    (hF : Quad.piDividesQ (f4Y a b y))
    (hD : Quad.piDividesQ (f4YPartialB a b y)) : False := by
  have ha : Quad.piDividesQ a := by
    rcases (piDividesQ_mul y a).1 hπ with hy | ha
    · rw [f4YPartialB_decomp] at hD
      have hmk : Quad.piDividesQ
          (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) (GaussInt.neg (GaussInt.ofInt 2))) a) :=
        (piDividesQ_add_left (piDividesQ_mul_left hy)).1 hD
      rw [← f4Shift_eq] at hmk
      exact (piDividesQ_shift_mul a).1 hmk
    · exact ha
  rw [f4Y_decomp_a] at hF
  exact not_piDividesQ_one ((piDividesQ_add_left (piDividesQ_mul_left ha)).1 hF)

/-- `s`-chart of the conjugate center `X = -1 - ω`. -/
def f4SConj (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mk GaussInt.one (GaussInt.ofInt 2)) A) (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul B B))) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) A) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) (Quad.mul A A))) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) (Quad.mul A A)) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) (Quad.mul A A)) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul A A)) B) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul A A)) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul (Quad.mul A A) A)) B) (Quad.mul s s)))

def f4SConjPartialA (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk GaussInt.one (GaussInt.ofInt 2)) (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 4)) GaussInt.zero) A)) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) A) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) A) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 2) GaussInt.zero) A) B) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) A) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul A A)) B) (Quad.mul s s)))

def f4SConjPartialCofS (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) A)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) A) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 2) GaussInt.zero) A) B)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) A) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul A A)) B) s))

def f4SConjPartialCofA (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk (GaussInt.neg (GaussInt.ofInt 4)) GaussInt.zero) (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 6))) s)) (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 2) GaussInt.zero) B) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) A) B) (Quad.mul s s)))

def f4SConjCofA (A B s : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk GaussInt.one (GaussInt.ofInt 2)) (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) s)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) A)) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) A) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) A) (Quad.mul s s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) A) B) s)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) A) (Quad.mul (Quad.mul s s) s))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul A A)) B) (Quad.mul s s)))


set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem modelSecondIn_f4SConj (A B s : Quad) :
    modelSecondIn (Quad.mul s A) (Quad.add Quad.omegaConj s) (Quad.mul s B) =
      Quad.mul (Quad.mul s s) (f4SConj A B s) := by
  have hω : Quad.omega * Quad.omega + Quad.omega + 1 = 0 := by
    change Quad.add (Quad.add (Quad.mul Quad.omega Quad.omega) Quad.omega) Quad.one = Quad.zero
    exact Quad.omega_rel
  simp only [modelSecondIn, f4SConj, Quad.omegaConj, Quad.mk_as_ring, Quad.ofG_neg, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6]
  to_ring_ops
  grind

theorem f4SConjPartialA_decomp_s (A B s : Quad) :
    f4SConjPartialA A B s =
      Quad.add (Quad.add (Quad.mk GaussInt.one (GaussInt.ofInt 2)) (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 4))) A)) (Quad.mul s (f4SConjPartialCofS A B s)) := by
  simp only [f4SConjPartialA, f4SConjPartialCofS, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem f4SConjPartialA_decomp_A (A B s : Quad) :
    f4SConjPartialA A B s =
      Quad.add (Quad.sub (Quad.mk GaussInt.one (GaussInt.ofInt 2)) s) (Quad.mul A (f4SConjPartialCofA A B s)) := by
  simp only [f4SConjPartialA, f4SConjPartialCofA, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem f4SConj_decomp_A (A B s : Quad) :
    f4SConj A B s = Quad.add (Quad.mul B B) (Quad.mul A (f4SConjCofA A B s)) := by
  simp only [f4SConj, f4SConjCofA, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

theorem f4SConj_regular_on_s (A B s : Quad) (hs : Quad.piDividesQ s) :
    ¬ Quad.piDividesQ (f4SConjPartialA A B s) := by
  rw [f4SConjPartialA_decomp_s]
  have hbase : ¬ Quad.piDividesQ
      (Quad.add (Quad.mk GaussInt.one (GaussInt.ofInt 2))
        (Quad.mul (Quad.ofG (GaussInt.neg (GaussInt.ofInt 4))) A)) := by
    rw [← f4ShiftConj_eq]
    exact not_piDividesQ_shiftConj_lin A
  exact not_piDividesQ_add_of_right hbase (piDividesQ_mul_left hs)

theorem f4SConj_singular_on_A (A B s : Quad)
    (hA : Quad.piDividesQ A) (hF : Quad.piDividesQ (f4SConj A B s))
    (hD : Quad.piDividesQ (f4SConjPartialA A B s)) :
    Quad.piDividesQ B ∧ Quad.piDividesQ (Quad.sub f4ShiftConj s) := by
  rw [f4SConj_decomp_A] at hF
  have hB2 : Quad.piDividesQ (Quad.mul B B) :=
    (piDividesQ_add_left (piDividesQ_mul_left hA)).1 hF
  rw [f4SConjPartialA_decomp_A] at hD
  have hs : Quad.piDividesQ (Quad.sub (Quad.mk GaussInt.one (GaussInt.ofInt 2)) s) :=
    (piDividesQ_add_left (piDividesQ_mul_left hA)).1 hD
  rw [← f4ShiftConj_eq] at hs
  exact ⟨piDividesQ_sq hB2, hs⟩

def f4YConj (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul (Quad.mul (Quad.mk GaussInt.one (GaussInt.ofInt 2)) a) b)) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) (Quad.mul a a))) (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) (Quad.mul a a)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) a) (Quad.mul b b)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) (Quad.mul a a)) b) y)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul (Quad.mul a a) a)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) (Quad.mul a a)) (Quad.mul b b)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul a a)) (Quad.mul (Quad.mul b b) b)) (Quad.mul (Quad.mul y y) y)))

def f4YConjPartialB (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mk GaussInt.one (GaussInt.ofInt 2)) a) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) a) b) y)) (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) (Quad.mul a a)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) (Quad.mul a a)) b) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul a a)) (Quad.mul b b)) (Quad.mul (Quad.mul y y) y)))

def f4YConjPartialCofB (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) a) b) (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) (Quad.mul a a))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 6) (GaussInt.ofInt 6)) (Quad.mul a a)) b) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 3)) GaussInt.zero) (Quad.mul a a)) (Quad.mul b b)) (Quad.mul y y)))

def f4YConjCofA (a b y : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.mk GaussInt.one (GaussInt.ofInt 2)) b) (Quad.mul (Quad.mk (GaussInt.neg (GaussInt.ofInt 2)) GaussInt.zero) a)) (Quad.mul (Quad.mul (Quad.mk GaussInt.one GaussInt.zero) a) y)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul b b)) y)) (Quad.mul (Quad.mul (Quad.mul (Quad.mk GaussInt.zero (GaussInt.neg (GaussInt.ofInt 3))) a) b) y)) (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) (Quad.mul a a)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.ofInt 3) (GaussInt.ofInt 3)) a) (Quad.mul b b)) (Quad.mul y y))) (Quad.mul (Quad.mul (Quad.mul (Quad.mk (GaussInt.neg GaussInt.one) GaussInt.zero) a) (Quad.mul (Quad.mul b b) b)) (Quad.mul (Quad.mul y y) y)))


set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem modelSecondIn_f4YConj (a b y : Quad) :
    modelSecondIn (Quad.mul y a) (Quad.add Quad.omegaConj (Quad.mul y b)) y =
      Quad.mul (Quad.mul y y) (f4YConj a b y) := by
  have hω : Quad.omega * Quad.omega + Quad.omega + 1 = 0 := by
    change Quad.add (Quad.add (Quad.mul Quad.omega Quad.omega) Quad.omega) Quad.one = Quad.zero
    exact Quad.omega_rel
  simp only [modelSecondIn, f4YConj, Quad.omegaConj, Quad.mk_as_ring, Quad.ofG_neg, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6]
  to_ring_ops
  grind

theorem f4YConjPartialB_decomp (a b y : Quad) :
    f4YConjPartialB a b y =
      Quad.add (Quad.mul (Quad.mk GaussInt.one (GaussInt.ofInt 2)) a) (Quad.mul y (f4YConjPartialCofB a b y)) := by
  simp only [f4YConjPartialB, f4YConjPartialCofB, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem f4YConj_decomp_a (a b y : Quad) :
    f4YConj a b y = Quad.add Quad.one (Quad.mul a (f4YConjCofA a b y)) := by
  simp only [f4YConj, f4YConjCofA, Quad.one_eq, Quad.zero_eq, Quad.ofG_one, Quad.ofG_zero, Quad.ofG_ofInt2, Quad.ofG_ofInt3, Quad.ofG_ofInt4, Quad.ofG_ofInt6, Quad.mk_as_ring, Quad.ofG_neg]
  to_ring_ops
  grind

theorem f4YConj_regular_on_fiber (a b y : Quad)
    (hπ : Quad.piDividesQ (Quad.mul y a))
    (hF : Quad.piDividesQ (f4YConj a b y))
    (hD : Quad.piDividesQ (f4YConjPartialB a b y)) : False := by
  have ha : Quad.piDividesQ a := by
    rcases (piDividesQ_mul y a).1 hπ with hy | ha
    · rw [f4YConjPartialB_decomp] at hD
      have hmk : Quad.piDividesQ (Quad.mul (Quad.mk GaussInt.one (GaussInt.ofInt 2)) a) :=
        (piDividesQ_add_left (piDividesQ_mul_left hy)).1 hD
      rw [← f4ShiftConj_eq] at hmk
      exact (piDividesQ_shiftConj_mul a).1 hmk
    · exact ha
  rw [f4YConj_decomp_a] at hF
  exact not_piDividesQ_one ((piDividesQ_add_left (piDividesQ_mul_left ha)).1 hF)

/-- The seven irreducible components of the resolved odd-`a` special fiber.
`D6Node` is not this enumeration: its `neighbors` relation is not an edge
proved by the charts. -/
inductive OddAComponent where
  | chain1
  | theta
  | chain2
  | cusp
  | legFar
  | legUp
  | legDown
  deriving DecidableEq, Repr

namespace OddAComponent

def all : List OddAComponent :=
  [.chain1, .theta, .chain2, .cusp, .legFar, .legUp, .legDown]

theorem length_seven : all.length = 7 := rfl

theorem nodup : all.Nodup := by decide

end OddAComponent

/-- The special fiber of the resolved odd-`a` model has exactly seven
irreducible components.

Three have multiplicity two: `chain1`, `theta`, and `chain2` (`π` pulls back
as `t² A` on `chain2`). Four have multiplicity one: `cusp`, `legFar`,
`legUp`, and `legDown`.

Every terminal chart is regular on its special fiber, by a partial derivative
congruent to a unit. Every intermediate chart is singular only at a center
that a later stage blows up. The `s`-chart at `ω` is singular only at the
conjugate center, and the conjugate `s`-chart only at `ω`. No eighth
component appears.

The `r = 0` slice of `joinR`, the `A = 0` slice of `joinA`, and the `B = 0`
slice of `joinB` are affines of the exceptional divisor of the single center
`C2`, whose `π`-chart is the conic `Y² + X + 1`. The equation-level overlap
of those slices is not re-proved. The `𝔽₄` charts are the model with units
replaced by `1`; `quadChart_sub_model` is the bridge from a real odd-`a`
curve in the `π`-chart, and the same multiple of `π³` is divisible by the
`s`-chart coordinate after dividing by `s²`. Adjacency, normal crossings,
minimality, and the identification of the Néron model with the smooth locus
are not proved.
-/
theorem odd_a_seven_components
    (u2 u4 u6 : GaussInt) (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    OddAComponent.all.length = 7 ∧ OddAComponent.all.Nodup ∧
      (∀ t A B, piDivides t → ¬ piDivides (chain2PartialA u2 u4 u6 t A B)) ∧
      (∀ t A B, piDivides A →
        piDivides (chain2Chart u2 u4 u6 t A B) →
        piDivides (chain2PartialA u2 u4 u6 t A B) →
        piDivides B ∧ piDivides (GaussInt.add t u2)) ∧
      (∀ x S T, piDivides S → ¬ piDivides (cuspPartialX u2 u4 u6 x S T)) ∧
      (∀ x S T, piDivides x →
        piDivides (cuspChart u2 u4 u6 x S T) →
        piDivides (cuspPartialX u2 u4 u6 x S T) →
        piDivides T ∧ piDivides (GaussInt.add GaussInt.one (GaussInt.mul u2 S))) ∧
      (∀ y A B, piDivides (GaussInt.mul y A) →
        piDivides (cuspY u2 u4 u6 y A B) →
        piDivides (cuspYPartialY u2 u4 u6 y A B) → False) ∧
      (∀ Y a b, piDivides (GaussInt.mul Y a) → ¬ piDivides (originY u2 u4 u6 Y a b)) ∧
      (∀ S, ¬ piDivides (GaussInt.neg (originTransverse u6 u4 u2 S))) ∧
      (∀ t S T, piDivides S →
        piDivides (originXChart u2 u4 u6 t S T) →
        piDivides (originXPartialS u2 u4 u6 t S T) →
        piDivides T ∧ (piDivides t ∨ piDivides (GaussInt.add t u2))) ∧
      (∀ t S T, piDivides t →
        piDivides (originXChart u2 u4 u6 t S T) →
        piDivides (originXPartialT u2 u4 u6 t S T) →
        piDivides T ∧ piDivides S) ∧
      (∀ S a b, piDivides S → ¬ piDivides (chain2SPartialA u2 u4 u6 S a b)) ∧
      (∀ T s q, piDivides (GaussInt.mul (GaussInt.mul T T) (GaussInt.mul s q)) →
        piDivides (chain2T u2 u4 u6 T s q) →
        piDivides (chain2TPartialS u2 u4 u6 T s q) →
        piDivides (chain2TPartialQ u2 u4 u6 T s q) → False) ∧
      (∀ r p q, piDivides (GaussInt.mul
          (GaussInt.mul (GaussInt.sub r u2) (GaussInt.sub r u2))
          (GaussInt.mul r p)) →
        ¬ piDivides (joinRPartialP u2 u4 u6 r p q)) ∧
      (∀ A s q, piDivides (GaussInt.mul
          (GaussInt.mul (GaussInt.sub (GaussInt.mul A s) u2)
            (GaussInt.sub (GaussInt.mul A s) u2)) A) →
        ¬ piDivides (joinAPartialS u2 u4 u6 A s q) ∨
          ¬ piDivides (joinAPartialA u2 u4 u6 A s q)) ∧
      (∀ B s q, piDivides (GaussInt.mul
          (GaussInt.mul (GaussInt.sub (GaussInt.mul B s) u2)
            (GaussInt.sub (GaussInt.mul B s) u2))
          (GaussInt.mul B q)) →
        piDivides (joinB u2 u4 u6 B s q) →
        piDivides (joinBPartialS u2 u4 u6 B s q) →
        piDivides (joinBPartialQ u2 u4 u6 B s q) → False) ∧
      ¬ piDivides (GaussInt.neg (GaussInt.mul u2 u2)) ∧
      (∀ Y a b, piDivides (GaussInt.mul Y a) →
        piDivides (pastU2Y u2 u4 u6 Y a b) →
        piDivides (pastU2YPartialB u2 u4 u6 Y a b) → False) ∧
      (∀ U V, modelSecond (f4Center Quad.omega U) (f4Height V) =
        Quad.mul (Quad.ofG (piPow 2)) (f4Strict Quad.omega U V)) ∧
      (∀ U V, modelSecond (f4Center Quad.omegaConj U) (f4Height V) =
        Quad.mul (Quad.ofG (piPow 2)) (f4Strict Quad.omegaConj U V)) ∧
      ¬ piDivides GaussInt.one ∧
      (∀ A B s, Quad.piDividesQ s → ¬ Quad.piDividesQ (f4SPartialA A B s)) ∧
      (∀ A B s, Quad.piDividesQ A →
        Quad.piDividesQ (f4S A B s) →
        Quad.piDividesQ (f4SPartialA A B s) →
        Quad.piDividesQ B ∧ Quad.piDividesQ (Quad.sub f4Shift s)) ∧
      (∀ a b y, Quad.piDividesQ (Quad.mul y a) →
        Quad.piDividesQ (f4Y a b y) →
        Quad.piDividesQ (f4YPartialB a b y) → False) ∧
      (∀ A B s, Quad.piDividesQ s → ¬ Quad.piDividesQ (f4SConjPartialA A B s)) ∧
      (∀ A B s, Quad.piDividesQ A →
        Quad.piDividesQ (f4SConj A B s) →
        Quad.piDividesQ (f4SConjPartialA A B s) →
        Quad.piDividesQ B ∧ Quad.piDividesQ (Quad.sub f4ShiftConj s)) ∧
      (∀ a b y, Quad.piDividesQ (Quad.mul y a) →
        Quad.piDividesQ (f4YConj a b y) →
        Quad.piDividesQ (f4YConjPartialB a b y) → False) := by
  have hu2 : ¬ piDivides u2 := not_pi_of_congOne u2 h2
  have hu4 : ¬ piDivides u4 := not_pi_of_congOne u4 h4
  exact ⟨rfl, OddAComponent.nodup,
    fun t A B ht => chain2_regular_on_t u2 u4 u6 t A B hu2 ht,
    fun t A B hA hF hD => chain2_singular_on_A u2 u4 u6 t A B hA hF hD,
    fun x S T hS => cusp_regular_on_S u2 u4 u6 x S T hS,
    fun x S T hx hF hd => cusp_singular_on_x u2 u4 u6 x S T hx hF hd,
    fun y A B hπ hF hd => cuspY_regular_on_fiber u2 u4 u6 y A B hπ hF hd,
    fun Y a b hπ => originY_fiber_empty u2 u4 u6 Y a b hπ,
    fun S => theta_partial_unit u2 u4 u6 S h2 h4 h6,
    fun t S T hS hF hD => originX_singular_on_S u2 u4 u6 t S T hS hF hD,
    fun t S T ht hF hD => originX_theta_only_origin u2 u4 u6 t S T h2 h4 h6 ht hF hD,
    fun S a b hS => chain2S_regular_on_S u2 u4 u6 S a b hu2 hS,
    fun T s q hπ hF hs hq => chain2T_regular_on_fiber u2 u4 u6 T s q hu2 hπ hF hs hq,
    fun r p q h => joinR_partial_unit_on_fiber u2 u4 u6 r p q h,
    fun A s q h => joinA_regular_on_fiber u2 u4 u6 A s q hu2 hu4 h,
    fun B s q hπ hF hS hQ => joinB_regular_on_fiber u2 u4 u6 B s q hπ hF hS hQ,
    pastU2_partial u2 hu2,
    fun Y a b hπ hF hD => pastU2Y_regular_on_fiber u2 u4 u6 Y a b hu2 hπ hF hD,
    f4Strict_eq_omega,
    f4Strict_eq_conj,
    f4_partial_is_unit,
    fun A B s hs => f4S_regular_on_s A B s hs,
    fun A B s hA hF hD => f4S_singular_on_A A B s hA hF hD,
    fun a b y hπ hF hD => f4Y_regular_on_fiber a b y hπ hF hD,
    fun A B s hs => f4SConj_regular_on_s A B s hs,
    fun A B s hA hF hD => f4SConj_singular_on_A A B s hA hF hD,
    fun a b y hπ hF hD => f4YConj_regular_on_fiber a b y hπ hF hD⟩


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

No intersection number is proved. `odd_a_seven_components` is the count:
the resolved special fiber has these seven components. Adjacency, normal
crossings, minimality, and the identification of the Néron model with the
smooth locus are not proved.
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
