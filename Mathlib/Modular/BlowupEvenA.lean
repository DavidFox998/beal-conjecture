import Mathlib.Modular.BlowupOddA

set_option linter.unusedSimpArgs false

/-!
# Even-`a` blow-ups toward the `I₄*` fiber

The translated model with `c` odd and `a` even meets `IsINStar 4`:
`a₃ = 0`, `v_π(a₂) = 1`, `v_π(a₄) = 4`, `π⁷` divides `a₆` and `b₆`,
`v_π(D) = 8`, and `v_π(d) = 10`. The equation used here is
`y² = x³ + u₂ π x² + u₄ π⁴ x + u₆ π⁷`.

`v(a₆) ≥ 7` is not sharpened. `u₂` and `u₄` are units, hence congruent to
`1`. `u₆` is not: `π ∣ u₆` and `u₆ ≡ 1` are different rows. In the first,
the transverse polynomial on the third `π`-chart reduces to `X(X + 1)`.
In the second it reduces to `X² + X + 1`, whose roots lie in `𝔽₄`.
Both rows resolve to nine components. The reduced equation is not the
same polynomial on that chart.

`ℤ[√(-1)] / (π)` is `𝔽₂`. A partial derivative that stays a unit along a
slice is the regularity check. It is not a scheme-theoretic Jacobian
criterion.
-/

namespace BlowupEvenA

open FreyCurve4413

/-- `u ≡ 1` modulo `π`. -/
def congOne (u : GaussInt) : Prop :=
  piDivides (GaussInt.sub u GaussInt.one)

theorem congOne_of_not_pi (u : GaussInt) (h : ¬ piDivides u) : congOne u := by
  have h1 := not_pi_means_congruent_one u h
  have heq : GaussInt.add u (GaussInt.ofInt (-1)) = GaussInt.sub u GaussInt.one := by
    cases u with
    | mk r i =>
      simp [GaussInt.add, GaussInt.sub, GaussInt.ofInt, GaussInt.one]
      omega
  rwa [heq] at h1

theorem not_piDivides_one : ¬ piDivides GaussInt.one := by
  simp [piDivides, GaussInt.one]

theorem piDivides_add_of_both {a b : GaussInt} (ha : piDivides a) (hb : piDivides b) :
    piDivides (GaussInt.add a b) :=
  (piDivides_add_left hb).2 ha

theorem piDivides_sub_of_both {a b : GaussInt} (ha : piDivides a) (hb : piDivides b) :
    piDivides (GaussInt.sub a b) := by
  rw [GaussInt.sub_eq_add_neg]
  exact piDivides_add_of_both ha ((piDivides_neg b).2 hb)

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

theorem not_pi_of_congOne (u : GaussInt) (h : congOne u) : ¬ piDivides u :=
  fun hu => not_piDivides_one (piDivides_of_sub_left hu h)


/-- `π` divides `u + v` when both are congruent to `1`, since `1 + 1 = 2`. -/
theorem piDivides_sum_congOne {u v : GaussInt} (hu : congOne u) (hv : congOne v) :
    piDivides (GaussInt.add u v) := by
  have h2 : piDivides (GaussInt.ofInt 2) := BlowupOddA.ofInt_two_pi
  have hs : piDivides (GaussInt.add (GaussInt.sub u GaussInt.one)
      (GaussInt.sub v GaussInt.one)) :=
    piDivides_add_of_both hu hv
  have heq : GaussInt.add (GaussInt.add (GaussInt.sub u GaussInt.one)
      (GaussInt.sub v GaussInt.one)) (GaussInt.ofInt 2) = GaussInt.add u v := by
    cases u <;> cases v
    simp [GaussInt.add, GaussInt.sub, GaussInt.ofInt, GaussInt.one] <;> omega
  rw [← heq]
  exact piDivides_add_of_both hs h2

/-!
## Charts

Each blow-up of a closed point of a surface in ambient affine 3-space has
three standard charts. The equation in each chart is the strict transform:
the total transform divided by the square of the chart coordinate.
-/

def evenModelIn (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (x : GaussInt) (y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul y y) (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul x x) x))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p) p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul x x))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) x) (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p)))

def piChartIn (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul Y Y) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) (GaussInt.mul (GaussInt.mul X X) X))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) u4) (GaussInt.mul (GaussInt.mul p p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul X X)))

def cuspChart (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (x : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul T T) (GaussInt.mul (GaussInt.neg GaussInt.one) x)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2) x)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul (GaussInt.mul x x) x))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S) S) S)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul x x) x) x) x)))

def cuspY (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (y : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) y) (GaussInt.mul (GaussInt.mul B B) B))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul y y) y) y) y))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) u2) y) (GaussInt.mul B B))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) B) u4) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul (GaussInt.mul y y) y)))

def originPiIn (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul Y Y) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul p p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) u4) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul X X)))

def originX (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul T T) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)) (GaussInt.mul (GaussInt.mul t t) t)))

def originY (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul b b) b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul a a) a) a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) a) u2) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) b) u4) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul a a) a)))

def chain2Chart (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul B B) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) t)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t) t) t)))

def chain2S (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul b b) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S) S)) (GaussInt.mul (GaussInt.mul a a) a)))

def chain2T (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) q) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) r) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul p p)) (GaussInt.mul (GaussInt.mul q q) q)) (GaussInt.mul (GaussInt.mul r r) r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul p p) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul q q) q) q) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r) r)))

def thirdPi (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (p : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul Y Y) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul (GaussInt.mul p p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) p) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul X X)))

def thirdX (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul T T) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul S S)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u4) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u6) (GaussInt.mul (GaussInt.mul S S) S)))

def thirdY (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) u6) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul a a)) (GaussInt.mul (GaussInt.mul b b) b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) a) u2) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) b) u4) (GaussInt.mul a a)))

def chain4Chart (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul B B) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u4) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul t t)))

def chain4S (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul b b) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) a) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) u6) (GaussInt.mul S S)))

def chain4T (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) q) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul p p) p)) (GaussInt.mul q q)) (GaussInt.mul (GaussInt.mul r r) r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) r) u4) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u6) (GaussInt.mul (GaussInt.mul q q) q)) (GaussInt.mul r r)))

def pastPi (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (p : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul B B) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) (GaussInt.mul u2 u2))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul p p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul p u2) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) u4) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) p) u2) (GaussInt.mul A A)))

def pastX (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul T T) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) (GaussInt.mul u2 u2))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) S) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul t u2) u4) (GaussInt.mul (GaussInt.mul S S) S)))

def pastY (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) b) (GaussInt.mul u2 u2))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul b b) b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul a a) a) a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y u2) u4) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) b) u4) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) Y) a) u2) (GaussInt.mul b b)))

def leg0Pi (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (p : GaussInt) (U : GaussInt) (V : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul V V) (GaussInt.mul (GaussInt.neg GaussInt.one) v6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) U) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul U U) U)) (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul U U)))

def leg0X (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul B B) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) v6) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) s) u2))

def leg0Y (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) v6) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) b) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y Y) Y) Y)) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul (GaussInt.mul b b) b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) a) u2) (GaussInt.mul b b)))

def leg1Pi (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (p : GaussInt) (U : GaussInt) (V : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul V V) (GaussInt.mul (GaussInt.neg GaussInt.one) p)) (GaussInt.mul (GaussInt.neg GaussInt.one) sig)) (GaussInt.mul (GaussInt.neg GaussInt.one) v6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) U) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul U U) U)) (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) U) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul U U)) (GaussInt.mul (GaussInt.mul p p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) U) p) sig)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul U U)))

def leg1X (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul B B) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) (GaussInt.mul (GaussInt.mul A A) A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) sig) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) v6) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul s s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul (GaussInt.mul s s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) s) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) sig) (GaussInt.mul A A)))

def leg1Y (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) sig) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) v6) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) b) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y Y) Y) Y)) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul (GaussInt.mul b b) b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) b) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) a) u2) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) b) sig) (GaussInt.mul a a)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem evenModelIn_cusp (u2 u4 u6 x S T : GaussInt) :
    evenModelIn (GaussInt.mul x S) u2 u4 u6 x (GaussInt.mul x T) =
      GaussInt.mul (GaussInt.mul x x) (cuspChart u2 u4 u6 x S T) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases S <;> cases T
  simp [evenModelIn, cuspChart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem evenModelIn_cuspY (u2 u4 u6 y A B : GaussInt) :
    evenModelIn (GaussInt.mul y A) u2 u4 u6 (GaussInt.mul y B) y =
      GaussInt.mul (GaussInt.mul y y) (cuspY u2 u4 u6 y A B) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [evenModelIn, cuspY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem evenModelIn_pi (u2 u4 u6 X Y : GaussInt) :
    evenModelIn pi u2 u4 u6 (GaussInt.mul pi X) (GaussInt.mul pi Y) =
      GaussInt.mul (GaussInt.mul pi pi) (piChartIn pi u2 u4 u6 X Y) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases X <;> cases Y
  simp [evenModelIn, piChartIn, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_originPi (u2 u4 u6 X Y : GaussInt) :
    piChartIn pi u2 u4 u6 (GaussInt.mul pi X) (GaussInt.mul pi Y) =
      GaussInt.mul (GaussInt.mul pi pi) (originPiIn pi u2 u4 u6 X Y) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases X <;> cases Y
  simp [piChartIn, originPiIn, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_originX (u2 u4 u6 t S T : GaussInt) :
    piChartIn (GaussInt.mul t S) u2 u4 u6 t (GaussInt.mul t T) =
      GaussInt.mul (GaussInt.mul t t) (originX u2 u4 u6 t S T) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [piChartIn, originX, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_originY (u2 u4 u6 Y a b : GaussInt) :
    piChartIn (GaussInt.mul Y a) u2 u4 u6 (GaussInt.mul Y b) Y =
      GaussInt.mul (GaussInt.mul Y Y) (originY u2 u4 u6 Y a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [piChartIn, originY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originX_chain2 (u2 u4 u6 t A B : GaussInt) :
    originX u2 u4 u6 t (GaussInt.mul t A) (GaussInt.mul t B) =
      GaussInt.mul (GaussInt.mul t t) (chain2Chart u2 u4 u6 t A B) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [originX, chain2Chart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originX_chain2S (u2 u4 u6 S a b : GaussInt) :
    originX u2 u4 u6 (GaussInt.mul S a) S (GaussInt.mul S b) =
      GaussInt.mul (GaussInt.mul S S) (chain2S u2 u4 u6 S a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases a <;> cases b
  simp [originX, chain2S, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originX_chain2T (u2 u4 u6 r p q : GaussInt) :
    originX u2 u4 u6 (GaussInt.mul r p) (GaussInt.mul r q) r =
      GaussInt.mul (GaussInt.mul r r) (chain2T u2 u4 u6 r p q) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [originX, chain2T, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originPiIn_third (u2 u4 u6 X Y : GaussInt) :
    originPiIn pi u2 u4 u6 (GaussInt.mul pi X) (GaussInt.mul pi Y) =
      GaussInt.mul (GaussInt.mul pi pi) (thirdPi u2 u4 u6 pi X Y) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases X <;> cases Y
  simp [originPiIn, thirdPi, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originPiIn_thirdX (u2 u4 u6 t S T : GaussInt) :
    originPiIn (GaussInt.mul t S) u2 u4 u6 t (GaussInt.mul t T) =
      GaussInt.mul (GaussInt.mul t t) (thirdX u2 u4 u6 t S T) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [originPiIn, thirdX, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originPiIn_thirdY (u2 u4 u6 Y a b : GaussInt) :
    originPiIn (GaussInt.mul Y a) u2 u4 u6 (GaussInt.mul Y b) Y =
      GaussInt.mul (GaussInt.mul Y Y) (thirdY u2 u4 u6 Y a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [originPiIn, thirdY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdX_chain4 (u2 u4 u6 t A B : GaussInt) :
    thirdX u2 u4 u6 t (GaussInt.mul t A) (GaussInt.mul t B) =
      GaussInt.mul (GaussInt.mul t t) (chain4Chart u2 u4 u6 t A B) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [thirdX, chain4Chart, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdX_chain4S (u2 u4 u6 S a b : GaussInt) :
    thirdX u2 u4 u6 (GaussInt.mul S a) S (GaussInt.mul S b) =
      GaussInt.mul (GaussInt.mul S S) (chain4S u2 u4 u6 S a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases a <;> cases b
  simp [thirdX, chain4S, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdX_chain4T (u2 u4 u6 r p q : GaussInt) :
    thirdX u2 u4 u6 (GaussInt.mul r p) (GaussInt.mul r q) r =
      GaussInt.mul (GaussInt.mul r r) (chain4T u2 u4 u6 r p q) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [thirdX, chain4T, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_past (u2 u4 u6 A B : GaussInt) :
    piChartIn pi u2 u4 u6 (GaussInt.add (GaussInt.neg u2) (GaussInt.mul pi A)) (GaussInt.mul pi B) =
      GaussInt.mul (GaussInt.mul pi pi) (pastPi u2 u4 u6 pi A B) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases A <;> cases B
  simp [piChartIn, pastPi, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_pastX (u2 u4 u6 t S T : GaussInt) :
    piChartIn (GaussInt.mul t S) u2 u4 u6 (GaussInt.add (GaussInt.neg u2) t) (GaussInt.mul t T) =
      GaussInt.mul (GaussInt.mul t t) (pastX u2 u4 u6 t S T) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [piChartIn, pastX, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_pastY (u2 u4 u6 Y a b : GaussInt) :
    piChartIn (GaussInt.mul Y a) u2 u4 u6 (GaussInt.add (GaussInt.neg u2) (GaussInt.mul Y b)) Y =
      GaussInt.mul (GaussInt.mul Y Y) (pastY u2 u4 u6 Y a b) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [piChartIn, pastY, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPi_leg0 (u2 u4 v6 p U V : GaussInt) :
    thirdPi u2 u4 (GaussInt.mul v6 p) p (GaussInt.mul p U) (GaussInt.mul p V) =
      GaussInt.mul (GaussInt.mul p p) (leg0Pi u2 u4 v6 p U V) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases p <;> cases U <;> cases V
  simp [thirdPi, leg0Pi, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPi_leg0X (u2 u4 v6 s A B : GaussInt) :
    thirdPi u2 u4 (GaussInt.mul v6 (GaussInt.mul s A)) (GaussInt.mul s A) s (GaussInt.mul s B) =
      GaussInt.mul (GaussInt.mul s s) (leg0X u2 u4 v6 s A B) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases s <;> cases A <;> cases B
  simp [thirdPi, leg0X, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPi_leg0Y (u2 u4 v6 Y a b : GaussInt) :
    thirdPi u2 u4 (GaussInt.mul v6 (GaussInt.mul Y a)) (GaussInt.mul Y a) (GaussInt.mul Y b) Y =
      GaussInt.mul (GaussInt.mul Y Y) (leg0Y u2 u4 v6 Y a b) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases Y <;> cases a <;> cases b
  simp [thirdPi, leg0Y, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPi_leg1 (u2 v6 sig p U V : GaussInt) :
    thirdPi u2 (GaussInt.add (GaussInt.mul sig p) (GaussInt.neg u2)) (GaussInt.mul v6 p) p (GaussInt.add GaussInt.one (GaussInt.mul p U)) (GaussInt.mul p V) =
      GaussInt.mul (GaussInt.mul p p) (leg1Pi u2 v6 sig p U V) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases p <;> cases U <;> cases V
  simp [thirdPi, leg1Pi, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPi_leg1X (u2 v6 sig s A B : GaussInt) :
    thirdPi u2 (GaussInt.add (GaussInt.mul sig (GaussInt.mul s A)) (GaussInt.neg u2)) (GaussInt.mul v6 (GaussInt.mul s A)) (GaussInt.mul s A) (GaussInt.add GaussInt.one s) (GaussInt.mul s B) =
      GaussInt.mul (GaussInt.mul s s) (leg1X u2 v6 sig s A B) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases s <;> cases A <;> cases B
  simp [thirdPi, leg1X, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPi_leg1Y (u2 v6 sig Y a b : GaussInt) :
    thirdPi u2 (GaussInt.add (GaussInt.mul sig (GaussInt.mul Y a)) (GaussInt.neg u2)) (GaussInt.mul v6 (GaussInt.mul Y a)) (GaussInt.mul Y a) (GaussInt.add GaussInt.one (GaussInt.mul Y b)) Y =
      GaussInt.mul (GaussInt.mul Y Y) (leg1Y u2 v6 sig Y a b) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases Y <;> cases a <;> cases b
  simp [thirdPi, leg1Y, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, pi]
  constructor <;> grind

end BlowupEvenA
