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
  in the affine coordinate is a unit.

`D6Node` is the fork on seven vertices, the dual graph of Kodaira `I₂*`.
The closed point cut out by `X² + X + 1` has residue field `𝔽₄`, and the
strict transform past `X ≡ 1` still has a singular closed point in the
`X`-chart. Those two centers are not resolved here.
`kodaira_neron_odd_a_open` says that the minimal regular model obtained by
finishing them has dual graph `D6Node`, and that the Néron special fiber
(the smooth locus of that model) therefore has seven irreducible components.
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
## The `D₆` fork

Kodaira `I₂*` has seven geometric components. The dual graph is the fork
with a node of degree `4` and a chain of length `2` beyond it:

```
        legUp
          |
legLeft—theta—chain1—chain2—legFar
          |
        legDown
```

`d6_node_count` is the count `7`. The charts above are the two rational
legs (`leg0Fiber`, `leg1Fiber`) and the double component
(`originPiChart`) through `theta`. They do not by themselves name the
three remaining vertices.
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
blow-ups in this file produce the reduced equations of the two rational
legs and of the double component through `D6Node.theta`. Finishing the
blow-up at the closed point `X² + X + 1 = 0` and at the remaining singular
point of the strict transform makes the special fiber the fork `D6Node`.
That fiber has `D6Node.node_count = 7` irreducible components, and this
proposition identifies the count with `NeronSpecialFiberComponents`.

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
