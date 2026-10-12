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


/-!
## Partial decompositions
-/

def piChartIn_decompCof (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) u4) (GaussInt.mul p p)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartIn_decomp (p u2 u4 u6 X Y : GaussInt) :
    piChartIn p u2 u4 u6 X Y =
      GaussInt.add ((GaussInt.mul Y Y)) (GaussInt.mul p (piChartIn_decompCof p u2 u4 u6 X Y)) := by
  cases p <;> cases u2 <;> cases u4 <;> cases u6 <;> cases X <;> cases Y
  simp [piChartIn, piChartIn_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def piChartPartialP (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) X) u4) (GaussInt.mul p p)))

def piChartPartialP_decompCof (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul p p) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) X) p) u4))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem piChartPartialP_decomp (p u2 u4 u6 X Y : GaussInt) :
    piChartPartialP p u2 u4 u6 X Y =
      GaussInt.add ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X)))) (GaussInt.mul p (piChartPartialP_decompCof p u2 u4 u6 X Y)) := by
  cases p <;> cases u2 <;> cases u4 <;> cases u6 <;> cases X <;> cases Y
  simp [piChartPartialP, piChartPartialP_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def cusp_decomp_xCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (x : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul x x))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S) S) S)) (GaussInt.mul (GaussInt.mul (GaussInt.mul x x) x) x)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem cusp_decomp_x (u2 u4 u6 x S T : GaussInt) :
    cuspChart u2 u4 u6 x S T =
      GaussInt.add ((GaussInt.mul T T)) (GaussInt.mul x (cusp_decomp_xCof u2 u4 u6 x S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases S <;> cases T
  simp [cuspChart, cusp_decomp_xCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def cuspPartialX (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (x : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S) S) S)) (GaussInt.mul (GaussInt.mul (GaussInt.mul x x) x) x))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u4) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul x x)))

def cuspPartialX_decomp_xCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (x : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S) S) S)) (GaussInt.mul (GaussInt.mul x x) x)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u4) x) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem cuspPartialX_decomp_x (u2 u4 u6 x S T : GaussInt) :
    cuspPartialX u2 u4 u6 x S T =
      GaussInt.add ((GaussInt.add (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2))) (GaussInt.mul x (cuspPartialX_decomp_xCof u2 u4 u6 x S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases S <;> cases T
  simp [cuspPartialX, cuspPartialX_decomp_xCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def cuspPartialX_decomp_SCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (x : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S) S)) (GaussInt.mul (GaussInt.mul (GaussInt.mul x x) x) x))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u4) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul x x)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem cuspPartialX_decomp_S (u2 u4 u6 x S T : GaussInt) :
    cuspPartialX u2 u4 u6 x S T =
      GaussInt.add ((GaussInt.neg GaussInt.one)) (GaussInt.mul S (cuspPartialX_decomp_SCof u2 u4 u6 x S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases x <;> cases S <;> cases T
  simp [cuspPartialX, cuspPartialX_decomp_SCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def cuspY_decomp_yCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (y : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul B B) B)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) u2) (GaussInt.mul B B))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul y y) y) y))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) B) u4) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul y y)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem cuspY_decomp_y (u2 u4 u6 y A B : GaussInt) :
    cuspY u2 u4 u6 y A B =
      GaussInt.add (GaussInt.one) (GaussInt.mul y (cuspY_decomp_yCof u2 u4 u6 y A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [cuspY, cuspY_decomp_yCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def cuspY_decomp_ACof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (y : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) y) (GaussInt.mul B B)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul y y) y) y) y))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) B) u4) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul (GaussInt.mul y y) y)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem cuspY_decomp_A (u2 u4 u6 y A B : GaussInt) :
    cuspY u2 u4 u6 y A B =
      GaussInt.add ((GaussInt.add GaussInt.one (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) y) (GaussInt.mul (GaussInt.mul B B) B)))) (GaussInt.mul A (cuspY_decomp_ACof u2 u4 u6 y A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [cuspY, cuspY_decomp_ACof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def cuspYPartialA (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (y : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) y) (GaussInt.mul B B)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 7)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul y y) y) y) y))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 4)) B) u4) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul (GaussInt.mul y y) y)))

def cuspYPartialA_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (y : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 7)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul y y) y) y) y)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 4)) B) u4) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul y y) y)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem cuspYPartialA_decomp (u2 u4 u6 y A B : GaussInt) :
    cuspYPartialA u2 u4 u6 y A B =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) y) (GaussInt.mul B B))) (GaussInt.mul A (cuspYPartialA_decompCof u2 u4 u6 y A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases y <;> cases A <;> cases B
  simp [cuspYPartialA, cuspYPartialA_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def originPi_decompCof (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) p) u4))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originPi_decomp (p u2 u4 u6 X Y : GaussInt) :
    originPiIn p u2 u4 u6 X Y =
      GaussInt.add ((GaussInt.mul Y Y)) (GaussInt.mul p (originPi_decompCof p u2 u4 u6 X Y)) := by
  cases p <;> cases u2 <;> cases u4 <;> cases u6 <;> cases X <;> cases Y
  simp [originPiIn, originPi_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def originPiPartialP (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) p) (GaussInt.mul (GaussInt.mul X X) X))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) X) p) u4))

def originPiPartialP_decompCof (p : GaussInt) (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) p) u6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) X) u4))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originPiPartialP_decomp (p u2 u4 u6 X Y : GaussInt) :
    originPiPartialP p u2 u4 u6 X Y =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X))) (GaussInt.mul p (originPiPartialP_decompCof p u2 u4 u6 X Y)) := by
  cases p <;> cases u2 <;> cases u4 <;> cases u6 <;> cases X <;> cases Y
  simp [originPiPartialP, originPiPartialP_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def originX_decomp_SCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul S S)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul (GaussInt.mul t t) t)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originX_decomp_S (u2 u4 u6 t S T : GaussInt) :
    originX u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul T T)) (GaussInt.mul S (originX_decomp_SCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [originX, originX_decomp_SCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def originX_decomp_tCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) t) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u4) (GaussInt.mul (GaussInt.mul S S) S))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)) (GaussInt.mul t t)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originX_decomp_t (u2 u4 u6 t S T : GaussInt) :
    originX u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul T T)) (GaussInt.mul t (originX_decomp_tCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [originX, originX_decomp_tCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def originXPartialS (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u4) (GaussInt.mul S S)) (GaussInt.mul t t)))

def originXPartialS_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul (GaussInt.mul t t) t)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) S) u4) (GaussInt.mul t t)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originXPartialS_decomp (u2 u4 u6 t S T : GaussInt) :
    originXPartialS u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2))) (GaussInt.mul S (originXPartialS_decompCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [originXPartialS, originXPartialS_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def originXPartialT (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) S) t)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) t) u4) (GaussInt.mul (GaussInt.mul S S) S)))

def originXPartialT_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) S) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) (GaussInt.mul (GaussInt.mul S S) S))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) t) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originXPartialT_decomp (u2 u4 u6 t S T : GaussInt) :
    originXPartialT u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2)) (GaussInt.mul t (originXPartialT_decompCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [originXPartialT, originXPartialT_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def originY_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) (GaussInt.mul (GaussInt.mul b b) b)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul (GaussInt.mul a a) a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) b) u4) (GaussInt.mul a a)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem originY_decomp (u2 u4 u6 Y a b : GaussInt) :
    originY u2 u4 u6 Y a b =
      GaussInt.add (GaussInt.one) (GaussInt.mul (GaussInt.mul Y a) (originY_decompCof u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [originY, originY_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain2_decomp_ACof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) t) (GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t) t) t)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2_decomp_A (u2 u4 u6 t A B : GaussInt) :
    chain2Chart u2 u4 u6 t A B =
      GaussInt.add ((GaussInt.mul B B)) (GaussInt.mul A (chain2_decomp_ACof u2 u4 u6 t A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [chain2Chart, chain2_decomp_ACof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain2PartialA (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) t) (GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t) t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u4) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul t t) t)))

def chain2PartialA_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul A A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t) t) t)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) A) u4) (GaussInt.mul (GaussInt.mul t t) t)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2PartialA_decomp (u2 u4 u6 t A B : GaussInt) :
    chain2PartialA u2 u4 u6 t A B =
      GaussInt.add ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) t) (GaussInt.mul (GaussInt.neg GaussInt.one) u2))) (GaussInt.mul A (chain2PartialA_decompCof u2 u4 u6 t A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [chain2PartialA, chain2PartialA_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain2PartialA_decomp_tCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul A A) A) A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul t t) t) t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u4) (GaussInt.mul A A)) (GaussInt.mul t t)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2PartialA_decomp_t (u2 u4 u6 t A B : GaussInt) :
    chain2PartialA u2 u4 u6 t A B =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul t (chain2PartialA_decomp_tCof u2 u4 u6 t A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [chain2PartialA, chain2PartialA_decomp_tCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain2SPartialA (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) S) a)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S) S)) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) a) u4) (GaussInt.mul (GaussInt.mul S S) S)))

def chain2SPartialA_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.neg (GaussInt.ofInt 2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) a) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S) S)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2SPartialA_decomp (u2 u4 u6 S a b : GaussInt) :
    chain2SPartialA u2 u4 u6 S a b =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul (GaussInt.mul a S) (chain2SPartialA_decompCof u2 u4 u6 S a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases a <;> cases b
  simp [chain2SPartialA, chain2SPartialA_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain2T_decomp_pCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) q) r)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u4) (GaussInt.mul (GaussInt.mul q q) q)) (GaussInt.mul (GaussInt.mul r r) r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul p p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul q q) q) q) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r) r)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2T_decomp_p (u2 u4 u6 r p q : GaussInt) :
    chain2T u2 u4 u6 r p q =
      GaussInt.add (GaussInt.one) (GaussInt.mul p (chain2T_decomp_pCof u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [chain2T, chain2T_decomp_pCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain2T_decomp_qCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) r) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul p p)) (GaussInt.mul q q)) (GaussInt.mul (GaussInt.mul r r) r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul p p) p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul q q) q) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r) r)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2T_decomp_q (u2 u4 u6 r p q : GaussInt) :
    chain2T u2 u4 u6 r p q =
      GaussInt.add (GaussInt.one) (GaussInt.mul q (chain2T_decomp_qCof u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [chain2T, chain2T_decomp_qCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain2TPartialP (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) p) q) r)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul p p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul q q) q) q) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r) r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) p) u4) (GaussInt.mul (GaussInt.mul q q) q)) (GaussInt.mul (GaussInt.mul r r) r)))

def chain2TPartialP_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) p) q) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul p p)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul q q) q) q) q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul r r) r) r) r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) p) u4) (GaussInt.mul (GaussInt.mul q q) q)) (GaussInt.mul r r)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain2TPartialP_decomp (u2 u4 u6 r p q : GaussInt) :
    chain2TPartialP u2 u4 u6 r p q =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) u2)) (GaussInt.mul r (chain2TPartialP_decompCof u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [chain2TPartialP, chain2TPartialP_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def thirdPi_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (p : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul p p)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPi_decomp (u2 u4 u6 p X Y : GaussInt) :
    thirdPi u2 u4 u6 p X Y =
      GaussInt.add ((GaussInt.mul Y Y)) (GaussInt.mul p (thirdPi_decompCof u2 u4 u6 p X Y)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases p <;> cases X <;> cases Y
  simp [thirdPi, thirdPi_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def thirdPiPartialP (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (p : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul p p)))

def thirdPiPartialP_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (p : GaussInt) (X : GaussInt) (Y : GaussInt) : GaussInt :=
  (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) p) (GaussInt.mul (GaussInt.mul X X) X))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdPiPartialP_decomp (u2 u4 u6 p X Y : GaussInt) :
    thirdPiPartialP u2 u4 u6 p X Y =
      GaussInt.add ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X)))) (GaussInt.mul p (thirdPiPartialP_decompCof u2 u4 u6 p X Y)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases p <;> cases X <;> cases Y
  simp [thirdPiPartialP, thirdPiPartialP_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def thirdX_decomp_tCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul S S) S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul S S)) (GaussInt.mul t t)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdX_decomp_t (u2 u4 u6 t S T : GaussInt) :
    thirdX u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul T T)) (GaussInt.mul t (thirdX_decomp_tCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [thirdX, thirdX_decomp_tCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def thirdX_decomp_SCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) (GaussInt.mul (GaussInt.mul t t) t)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) t) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u6) (GaussInt.mul S S)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdX_decomp_S (u2 u4 u6 t S T : GaussInt) :
    thirdX u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul T T)) (GaussInt.mul S (thirdX_decomp_SCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [thirdX, thirdX_decomp_SCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def thirdXPartialT (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul S S) S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul S S)) (GaussInt.mul t t)))

def thirdXPartialT_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) t) (GaussInt.mul S S))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdXPartialT_decomp (u2 u4 u6 t S T : GaussInt) :
    thirdXPartialT u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul S S) S)))) (GaussInt.mul t (thirdXPartialT_decompCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [thirdXPartialT, thirdXPartialT_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def thirdXPartialS (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) S) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) t) u6) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) S) t) u4))

def thirdXPartialS_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) (GaussInt.mul (GaussInt.mul t t) t)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) t) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) S) t) u6))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdXPartialS_decomp (u2 u4 u6 t S T : GaussInt) :
    thirdXPartialS u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2)) (GaussInt.mul S (thirdXPartialS_decompCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [thirdXPartialS, thirdXPartialS_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def thirdY_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul b b)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) b) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul b b) b)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdY_decomp (u2 u4 u6 Y a b : GaussInt) :
    thirdY u2 u4 u6 Y a b =
      GaussInt.add (GaussInt.one) (GaussInt.mul (GaussInt.mul Y a) (thirdY_decompCof u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [thirdY, thirdY_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain4PartialA (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) A) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u6) (GaussInt.mul A A)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) A) t) u4))

def chain4PartialA_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) u4) (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) A) t) u6))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain4PartialA_decomp (u2 u4 u6 t A B : GaussInt) :
    chain4PartialA u2 u4 u6 t A B =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul (GaussInt.mul A t) (chain4PartialA_decompCof u2 u4 u6 t A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases A <;> cases B
  simp [chain4PartialA, chain4PartialA_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain4S_decomp_aCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul a a)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain4S_decomp_a (u2 u4 u6 S a b : GaussInt) :
    chain4S u2 u4 u6 S a b =
      GaussInt.add ((GaussInt.mul b b)) (GaussInt.mul a (chain4S_decomp_aCof u2 u4 u6 S a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases a <;> cases b
  simp [chain4S, chain4S_decomp_aCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain4SPartialA (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul a a)))

def chain4SPartialA_decomp_SCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul S S)) (GaussInt.mul a a)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain4SPartialA_decomp_S (u2 u4 u6 S a b : GaussInt) :
    chain4SPartialA u2 u4 u6 S a b =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul S (chain4SPartialA_decomp_SCof u2 u4 u6 S a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases a <;> cases b
  simp [chain4SPartialA, chain4SPartialA_decomp_SCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain4SPartialA_decomp_aCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (S : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) a) (GaussInt.mul (GaussInt.mul S S) S))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain4SPartialA_decomp_a (u2 u4 u6 S a b : GaussInt) :
    chain4SPartialA u2 u4 u6 S a b =
      GaussInt.add ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul S S)))) (GaussInt.mul a (chain4SPartialA_decomp_aCof u2 u4 u6 S a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S <;> cases a <;> cases b
  simp [chain4SPartialA, chain4SPartialA_decomp_aCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain4T_decomp_pCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) r) u4) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul q q) q)) (GaussInt.mul r r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul p p)) (GaussInt.mul q q)) (GaussInt.mul (GaussInt.mul r r) r)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain4T_decomp_p (u2 u4 u6 r p q : GaussInt) :
    chain4T u2 u4 u6 r p q =
      GaussInt.add (GaussInt.one) (GaussInt.mul p (chain4T_decomp_pCof u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [chain4T, chain4T_decomp_pCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain4T_decomp_qCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) (GaussInt.mul (GaussInt.mul p p) p)) (GaussInt.mul (GaussInt.mul r r) r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) q) r) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u6) (GaussInt.mul q q)) (GaussInt.mul r r)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain4T_decomp_q (u2 u4 u6 r p q : GaussInt) :
    chain4T u2 u4 u6 r p q =
      GaussInt.add (GaussInt.one) (GaussInt.mul q (chain4T_decomp_qCof u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [chain4T, chain4T_decomp_qCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def chain4TPartialP (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) u2) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) r) u4) (GaussInt.mul q q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul q q) q)) (GaussInt.mul r r))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul p p)) (GaussInt.mul q q)) (GaussInt.mul (GaussInt.mul r r) r)))

def chain4TPartialP_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (r : GaussInt) (p : GaussInt) (q : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul q q)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) r) u6) (GaussInt.mul (GaussInt.mul q q) q))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul p p)) (GaussInt.mul q q)) (GaussInt.mul r r)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem chain4TPartialP_decomp (u2 u4 u6 r p q : GaussInt) :
    chain4TPartialP u2 u4 u6 r p q =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) q) u2)) (GaussInt.mul r (chain4TPartialP_decompCof u2 u4 u6 r p q)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases r <;> cases p <;> cases q
  simp [chain4TPartialP, chain4TPartialP_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def pastPiPartialA (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (p : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 4) A) p) u2))

def pastPiPartialA_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (p : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) u4) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) p) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 4) A) u2))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastPiPartialA_decomp (u2 u4 u6 p A B : GaussInt) :
    pastPiPartialA u2 u4 u6 p A B =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2))) (GaussInt.mul p (pastPiPartialA_decompCof u2 u4 u6 p A B)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases p <;> cases A <;> cases B
  simp [pastPiPartialA, pastPiPartialA_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def pastX_decomp_SCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2))) (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul S S)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul t u2) u4) (GaussInt.mul S S)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastX_decomp_S (u2 u4 u6 t S T : GaussInt) :
    pastX u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul T T)) (GaussInt.mul S (pastX_decomp_SCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [pastX, pastX_decomp_SCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def pastXPartialS (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2))) (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) t) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul (GaussInt.mul t t) t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) u4) (GaussInt.mul S S)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) t) u2) u4) (GaussInt.mul S S)))

def pastXPartialS_decomp_SCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul S S) S)) (GaussInt.mul (GaussInt.mul t t) t)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) S) u4) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) S) t) u2) u4))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastXPartialS_decomp_S (u2 u4 u6 t S T : GaussInt) :
    pastXPartialS u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2))) (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) t) u2))) (GaussInt.mul S (pastXPartialS_decomp_SCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [pastXPartialS, pastXPartialS_decomp_SCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def pastXPartialS_decomp_tCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (t : GaussInt) (S : GaussInt) (T : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) t) (GaussInt.mul (GaussInt.ofInt 2) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 5)) u6) (GaussInt.mul (GaussInt.mul (GaussInt.mul S S) S) S)) (GaussInt.mul t t))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) t) u4) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) u2) u4) (GaussInt.mul S S)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastXPartialS_decomp_t (u2 u4 u6 t S T : GaussInt) :
    pastXPartialS u2 u4 u6 t S T =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2))) (GaussInt.mul t (pastXPartialS_decomp_tCof u2 u4 u6 t S T)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases t <;> cases S <;> cases T
  simp [pastXPartialS, pastXPartialS_decomp_tCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def pastY_decomp_aCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) b) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul b b) b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul (GaussInt.mul (GaussInt.mul a a) a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) Y) u2) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y u2) u4) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) b) u4) (GaussInt.mul Y Y)) (GaussInt.mul a a)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastY_decomp_a (u2 u4 u6 Y a b : GaussInt) :
    pastY u2 u4 u6 Y a b =
      GaussInt.add (GaussInt.one) (GaussInt.mul a (pastY_decomp_aCof u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [pastY, pastY_decomp_aCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def pastYPartialB (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) (GaussInt.mul u2 u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) a) (GaussInt.mul Y Y)) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 4) Y) a) b) u2))

def pastYPartialB_decompCof (u2 : GaussInt) (u4 : GaussInt) (u6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) u4) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) Y) a) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 4) a) b) u2))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem pastYPartialB_decomp (u2 u4 u6 Y a b : GaussInt) :
    pastYPartialB u2 u4 u6 Y a b =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) (GaussInt.mul u2 u2))) (GaussInt.mul Y (pastYPartialB_decompCof u2 u4 u6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases Y <;> cases a <;> cases b
  simp [pastYPartialB, pastYPartialB_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg0PartialU (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (p : GaussInt) (U : GaussInt) (V : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul U U)) (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) U) p) u2))

def leg0PartialU_decompCof (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (p : GaussInt) (U : GaussInt) (V : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul U U)) (GaussInt.mul (GaussInt.mul p p) p)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) U) u2))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg0PartialU_decomp (u2 u4 v6 p U V : GaussInt) :
    leg0PartialU u2 u4 v6 p U V =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u4)) (GaussInt.mul p (leg0PartialU_decompCof u2 u4 v6 p U V)) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases p <;> cases U <;> cases V
  simp [leg0PartialU, leg0PartialU_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg0X_decomp_ACof (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) v6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg0X_decomp_A (u2 u4 v6 s A B : GaussInt) :
    leg0X u2 u4 v6 s A B =
      GaussInt.add ((GaussInt.mul B B)) (GaussInt.mul A (leg0X_decomp_ACof u2 u4 v6 s A B)) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases s <;> cases A <;> cases B
  simp [leg0X, leg0X_decomp_ACof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg0XPartialA (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) A) v6))

def leg0XPartialA_decomp_ACof (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) v6) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) A) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg0XPartialA_decomp_A (u2 u4 v6 s A B : GaussInt) :
    leg0XPartialA u2 u4 v6 s A B =
      GaussInt.add ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2))) (GaussInt.mul A (leg0XPartialA_decomp_ACof u2 u4 v6 s A B)) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases s <;> cases A <;> cases B
  simp [leg0XPartialA, leg0XPartialA_decomp_ACof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg0Y_decomp_aCof (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) v6) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) b) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) u2) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y Y) Y) Y)) (GaussInt.mul a a)) (GaussInt.mul (GaussInt.mul b b) b)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg0Y_decomp_a (u2 u4 v6 Y a b : GaussInt) :
    leg0Y u2 u4 v6 Y a b =
      GaussInt.add (GaussInt.one) (GaussInt.mul a (leg0Y_decomp_aCof u2 u4 v6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases Y <;> cases a <;> cases b
  simp [leg0Y, leg0Y_decomp_aCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg0YPartialB (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) u4) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y Y) Y) Y)) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) Y) a) b) u2))

def leg0YPartialB_decompCof (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul b b)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) a) b) u2))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg0YPartialB_decomp (u2 u4 v6 Y a b : GaussInt) :
    leg0YPartialB u2 u4 v6 Y a b =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) u4)) (GaussInt.mul Y (leg0YPartialB_decompCof u2 u4 v6 Y a b)) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases Y <;> cases a <;> cases b
  simp [leg0YPartialB, leg0YPartialB_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg1PartialU (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (p : GaussInt) (U : GaussInt) (V : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) p) sig)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 6)) U) (GaussInt.mul (GaussInt.mul p p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul U U)) (GaussInt.mul (GaussInt.mul (GaussInt.mul p p) p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) U) p) u2))

def leg1PartialU_decompCof (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (p : GaussInt) (U : GaussInt) (V : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) sig) (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) p)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 6)) U) (GaussInt.mul p p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul U U)) (GaussInt.mul (GaussInt.mul p p) p))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) U) u2))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg1PartialU_decomp (u2 v6 sig p U V : GaussInt) :
    leg1PartialU u2 v6 sig p U V =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u2)) (GaussInt.mul p (leg1PartialU_decompCof u2 v6 sig p U V)) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases p <;> cases U <;> cases V
  simp [leg1PartialU, leg1PartialU_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg1X_decomp_ACof (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) sig)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) v6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A)) (GaussInt.mul s s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul s s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) s) sig))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg1X_decomp_A (u2 v6 sig s A B : GaussInt) :
    leg1X u2 v6 sig s A B =
      GaussInt.add ((GaussInt.mul B B)) (GaussInt.mul A (leg1X_decomp_ACof u2 v6 sig s A B)) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases s <;> cases A <;> cases B
  simp [leg1X, leg1X_decomp_ACof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg1XPartialA (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 9)) (GaussInt.mul A A)) (GaussInt.mul s s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 9)) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul s s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) s) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) A) sig)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) A) v6)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) A) s) sig))

def leg1XPartialA_decomp_ACof (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) sig) (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) v6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 9)) A) (GaussInt.mul s s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 9)) A) (GaussInt.mul (GaussInt.mul s s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) A) s)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) A) (GaussInt.mul (GaussInt.mul (GaussInt.mul s s) s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) s) sig))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg1XPartialA_decomp_A (u2 v6 sig s A B : GaussInt) :
    leg1XPartialA u2 v6 sig s A B =
      GaussInt.add ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2))) (GaussInt.mul A (leg1XPartialA_decomp_ACof u2 v6 sig s A B)) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases s <;> cases A <;> cases B
  simp [leg1XPartialA, leg1XPartialA_decomp_ACof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg1Y_decomp_aCof (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) (GaussInt.mul a a)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) sig)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) v6)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) b) u2)) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) u2) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y Y) Y) Y)) (GaussInt.mul a a)) (GaussInt.mul (GaussInt.mul b b) b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) b) (GaussInt.mul Y Y)) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul a a)) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) a) b) sig))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg1Y_decomp_a (u2 v6 sig Y a b : GaussInt) :
    leg1Y u2 v6 sig Y a b =
      GaussInt.add (GaussInt.one) (GaussInt.mul a (leg1Y_decomp_aCof u2 v6 sig Y a b)) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases Y <;> cases a <;> cases b
  simp [leg1Y, leg1Y_decomp_aCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg1YPartialB (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) Y) sig) (GaussInt.mul a a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 6)) b) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul (GaussInt.mul Y Y) Y) Y)) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) Y) a) b) u2))

def leg1YPartialB_decompCof (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (Y : GaussInt) (a : GaussInt) (b : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) sig) (GaussInt.mul a a)) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) Y) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 6)) b) (GaussInt.mul Y Y)) (GaussInt.mul (GaussInt.mul a a) a))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul (GaussInt.mul Y Y) Y)) (GaussInt.mul (GaussInt.mul a a) a)) (GaussInt.mul b b))) (GaussInt.mul (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) a) b) u2))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg1YPartialB_decomp (u2 v6 sig Y a b : GaussInt) :
    leg1YPartialB u2 v6 sig Y a b =
      GaussInt.add ((GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) a) u2)) (GaussInt.mul Y (leg1YPartialB_decompCof u2 v6 sig Y a b)) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases Y <;> cases a <;> cases b
  simp [leg1YPartialB, leg1YPartialB_decompCof, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg0XPartialA_decomp_sCof2 (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) v6)

def leg0XPartialA_decomp_sCofS (u2 : GaussInt) (u4 : GaussInt) (v6 : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul s s) s)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg0XPartialA_decomp_s (u2 u4 v6 s A B : GaussInt) :
    leg0XPartialA u2 u4 v6 s A B =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u4))
        (GaussInt.add (GaussInt.mul (GaussInt.ofInt 2) (leg0XPartialA_decomp_sCof2 u2 u4 v6 s A B))
          (GaussInt.mul s (leg0XPartialA_decomp_sCofS u2 u4 v6 s A B))) := by
  cases u2 <;> cases u4 <;> cases v6 <;> cases s <;> cases A <;> cases B
  simp [leg0XPartialA, leg0XPartialA_decomp_sCof2, leg0XPartialA_decomp_sCofS, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind

def leg1XPartialA_decomp_sCof2 (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) sig) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) A) v6))

def leg1XPartialA_decomp_sCofS (u2 : GaussInt) (v6 : GaussInt) (sig : GaussInt) (s : GaussInt) (A : GaussInt) (B : GaussInt) : GaussInt :=
  (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 9)) s) (GaussInt.mul A A))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 9)) (GaussInt.mul A A)) (GaussInt.mul s s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 3)) (GaussInt.mul A A)) (GaussInt.mul (GaussInt.mul s s) s))) (GaussInt.mul (GaussInt.mul (GaussInt.neg (GaussInt.ofInt 2)) A) sig))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem leg1XPartialA_decomp_s (u2 v6 sig s A B : GaussInt) :
    leg1XPartialA u2 v6 sig s A B =
      GaussInt.add ((GaussInt.mul (GaussInt.neg GaussInt.one) u2))
        (GaussInt.add (GaussInt.mul (GaussInt.ofInt 2) (leg1XPartialA_decomp_sCof2 u2 v6 sig s A B))
          (GaussInt.mul s (leg1XPartialA_decomp_sCofS u2 v6 sig s A B))) := by
  cases u2 <;> cases v6 <;> cases sig <;> cases s <;> cases A <;> cases B
  simp [leg1XPartialA, leg1XPartialA_decomp_sCof2, leg1XPartialA_decomp_sCofS, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero]
  constructor <;> grind


def transverse (u2 u4 u6 X : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul u2 (GaussInt.mul X X)) (GaussInt.add (GaussInt.mul u4 X) u6)

def transverseS (u2 u4 u6 S : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.add u2 (GaussInt.mul u4 S)) (GaussInt.mul u6 (GaussInt.mul S S))

theorem mul_neg_one (u : GaussInt) :
    GaussInt.mul (GaussInt.neg GaussInt.one) u = GaussInt.neg u := by
  simp [GaussInt.neg_mul, GaussInt.one_mul]

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem piChart_partial_base (u2 X : GaussInt) :
    ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul X X) X)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X)))) =
      (GaussInt.neg (GaussInt.mul (GaussInt.mul X X) (GaussInt.add X u2))) := by
  cases u2 <;> cases X
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem cusp_partial_base (u2 S : GaussInt) :
    ((GaussInt.add (GaussInt.neg GaussInt.one) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2))) =
      (GaussInt.neg (GaussInt.add GaussInt.one (GaussInt.mul u2 S))) := by
  cases u2 <;> cases S
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem originX_partial_base (u2 t : GaussInt) :
    ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2))) =
      (GaussInt.neg (GaussInt.mul t (GaussInt.add t u2))) := by
  cases u2 <;> cases t
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem chain2_partial_base (u2 t : GaussInt) :
    ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) t) (GaussInt.mul (GaussInt.neg GaussInt.one) u2))) =
      (GaussInt.neg (GaussInt.add t u2)) := by
  cases u2 <;> cases t
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem third_partial_base (u2 u4 u6 X : GaussInt) :
    ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) X) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X)))) =
      (GaussInt.neg (transverse u2 u4 u6 X)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases X
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem thirdX_partial_base (u2 u4 u6 S : GaussInt) :
    ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul S S))) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul (GaussInt.mul S S) S)))) =
      (GaussInt.neg (GaussInt.mul S (transverseS u2 u4 u6 S))) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem chain4S_partial_base (u2 u4 u6 S : GaussInt) :
    ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u4)) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u6) (GaussInt.mul S S)))) =
      (GaussInt.neg (transverseS u2 u4 u6 S)) := by
  cases u2 <;> cases u4 <;> cases u6 <;> cases S
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem pastX_partial_base (u2 t : GaussInt) :
    ((GaussInt.add (GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul t t)) (GaussInt.mul (GaussInt.neg GaussInt.one) (GaussInt.mul u2 u2))) (GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) t) u2))) =
      (GaussInt.neg (GaussInt.mul (GaussInt.sub t u2) (GaussInt.sub t u2))) := by
  cases u2 <;> cases t
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem leg0_partial_base (u2 u4 s : GaussInt) :
    ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u4) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2))) =
      (GaussInt.neg (GaussInt.add u4 (GaussInt.mul u2 s))) := by
  cases u2 <;> cases u4 <;> cases s
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
theorem leg1_partial_base (u2 s : GaussInt) :
    ((GaussInt.add (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) s) u2))) =
      (GaussInt.neg (GaussInt.mul u2 (GaussInt.add GaussInt.one s))) := by
  cases u2 <;> cases s
  simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.neg, GaussInt.ofInt, GaussInt.one, GaussInt.zero, transverse, transverseS]
  constructor <;> grind


/-!
## Jacobian criterion

A chart is terminal when, on its special fiber, one formal partial is a unit.
An intermediate chart is accounted for when every point where the equation
and the partials vanish is a center blown up later. `π` divides `2`, so a
partial `2 · (…)` is never that unit.
-/

theorem pi_mul_left {a b : GaussInt} (ha : piDivides a) :
    piDivides (GaussInt.mul a b) :=
  (piDivides_mul a b).2 (Or.inl ha)

theorem neg_unit {a : GaussInt} (ha : ¬ piDivides a) : ¬ piDivides (GaussInt.neg a) :=
  fun h => ha ((piDivides_neg a).1 h)

theorem not_pi_neg_one : ¬ piDivides (GaussInt.neg GaussInt.one) :=
  neg_unit not_piDivides_one

theorem unit_mul {a b : GaussInt} (ha : ¬ piDivides a) (hb : ¬ piDivides b) :
    ¬ piDivides (GaussInt.mul a b) :=
  fun h => (piDivides_mul a b).1 h |>.elim ha hb

theorem base_of {base factor cof F : GaussInt}
    (heq : F = GaussInt.add base (GaussInt.mul factor cof))
    (hf : piDivides factor) (hF : piDivides F) : piDivides base := by
  rw [heq] at hF
  exact (piDivides_add_left (pi_mul_left hf)).1 hF

theorem regular_add {base rest deriv : GaussInt}
    (heq : deriv = GaussInt.add base rest) (hb : ¬ piDivides base) (hr : piDivides rest) :
    ¬ piDivides deriv := by
  rw [heq]
  exact not_piDivides_add_of_right hb hr

theorem killed_one {rest : GaussInt} (hr : piDivides rest)
    (h : piDivides (GaussInt.add GaussInt.one rest)) : False :=
  not_piDivides_one ((piDivides_add_left hr).1 h)

theorem pi_add_one_iff_sub_one (X : GaussInt) :
    piDivides (GaussInt.add X GaussInt.one) ↔ piDivides (GaussInt.sub X GaussInt.one) := by
  have h2 : piDivides (GaussInt.ofInt 2) := BlowupOddA.ofInt_two_pi
  have hdiff : GaussInt.sub (GaussInt.add X GaussInt.one) (GaussInt.sub X GaussInt.one) =
      GaussInt.ofInt 2 := by
    cases X
    simp [GaussInt.add, GaussInt.sub, GaussInt.ofInt, GaussInt.one]
    omega
  constructor
  · intro h
    exact piDivides_of_sub_left h (by rw [hdiff]; exact h2)
  · intro h
    have hsum : GaussInt.add (GaussInt.sub X GaussInt.one) (GaussInt.ofInt 2) =
        GaussInt.add X GaussInt.one := by
      cases X
      simp [GaussInt.add, GaussInt.sub, GaussInt.ofInt, GaussInt.one]
      omega
    rw [← hsum]
    exact piDivides_add_of_both h h2

theorem transverse_sub_f2 (u2 u4 u6 X : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    piDivides (GaussInt.sub (transverse u2 u4 u6 X) (BlowupOddA.f2Quad X)) := by
  have hdiff : GaussInt.sub (transverse u2 u4 u6 X) (BlowupOddA.f2Quad X) =
      GaussInt.add (GaussInt.mul (GaussInt.sub u2 GaussInt.one) (GaussInt.mul X X))
        (GaussInt.add (GaussInt.mul (GaussInt.sub u4 GaussInt.one) X)
          (GaussInt.sub u6 GaussInt.one)) := by
    cases u2 <;> cases u4 <;> cases u6 <;> cases X
    simp [transverse, BlowupOddA.f2Quad, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  rw [hdiff]
  exact piDivides_add_of_both (pi_mul_left h2)
    (piDivides_add_of_both (pi_mul_left h4) h6)

theorem transverse_unit (u2 u4 u6 X : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    ¬ piDivides (transverse u2 u4 u6 X) :=
  fun h => BlowupOddA.f2Quad_is_unit X (piDivides_of_sub_left h (transverse_sub_f2 u2 u4 u6 X h2 h4 h6))

theorem transverseS_sub_f2 (u2 u4 u6 S : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    piDivides (GaussInt.sub (transverseS u2 u4 u6 S) (BlowupOddA.f2Quad S)) := by
  have hdiff : GaussInt.sub (transverseS u2 u4 u6 S) (BlowupOddA.f2Quad S) =
      GaussInt.add (GaussInt.sub u2 GaussInt.one)
        (GaussInt.add (GaussInt.mul (GaussInt.sub u4 GaussInt.one) S)
          (GaussInt.mul (GaussInt.sub u6 GaussInt.one) (GaussInt.mul S S))) := by
    cases u2 <;> cases u4 <;> cases u6 <;> cases S
    simp [transverseS, BlowupOddA.f2Quad, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  rw [hdiff]
  exact piDivides_add_of_both h2
    (piDivides_add_of_both (pi_mul_left h4) (pi_mul_left h6))

theorem transverseS_unit (u2 u4 u6 S : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) :
    ¬ piDivides (transverseS u2 u4 u6 S) :=
  fun h => BlowupOddA.f2Quad_is_unit S
    (piDivides_of_sub_left h (transverseS_sub_f2 u2 u4 u6 S h2 h4 h6))

theorem transverse_split (u2 u4 u6 X : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : piDivides u6)
    (hQ : piDivides (transverse u2 u4 u6 X)) :
    piDivides X ∨ piDivides (GaussInt.sub X GaussInt.one) := by
  have hlin : piDivides (GaussInt.add (GaussInt.mul u2 (GaussInt.mul X X)) (GaussInt.mul u4 X)) := by
    have hassoc : transverse u2 u4 u6 X =
        GaussInt.add (GaussInt.add (GaussInt.mul u2 (GaussInt.mul X X)) (GaussInt.mul u4 X)) u6 := by
      simpa [transverse] using (GaussInt.add_assoc
        (GaussInt.mul u2 (GaussInt.mul X X)) (GaussInt.mul u4 X) u6).symm
    rw [hassoc] at hQ
    exact (piDivides_add_left h6).1 hQ
  have hcong : piDivides (GaussInt.sub
      (GaussInt.add (GaussInt.mul u2 (GaussInt.mul X X)) (GaussInt.mul u4 X))
      (GaussInt.mul X (GaussInt.add X GaussInt.one))) := by
    have hdiff : GaussInt.sub
        (GaussInt.add (GaussInt.mul u2 (GaussInt.mul X X)) (GaussInt.mul u4 X))
        (GaussInt.mul X (GaussInt.add X GaussInt.one)) =
        GaussInt.add (GaussInt.mul (GaussInt.sub u2 GaussInt.one) (GaussInt.mul X X))
          (GaussInt.mul (GaussInt.sub u4 GaussInt.one) X) := by
      cases u2 <;> cases u4 <;> cases X
      simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
      constructor <;> grind
    rw [hdiff]
    exact piDivides_add_of_both (pi_mul_left h2) (pi_mul_left h4)
  have hprod : piDivides (GaussInt.mul X (GaussInt.add X GaussInt.one)) :=
    piDivides_of_sub_left hlin hcong
  rcases (piDivides_mul _ _).1 hprod with hX | h1
  · exact Or.inl hX
  · exact Or.inr ((pi_add_one_iff_sub_one X).1 h1)

theorem transverseS_split (u2 u4 u6 S : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : piDivides u6)
    (hQ : piDivides (transverseS u2 u4 u6 S)) :
    piDivides (GaussInt.sub S GaussInt.one) := by
  have hlin : piDivides (GaussInt.add u2 (GaussInt.mul u4 S)) :=
    (piDivides_add_left (pi_mul_left h6)).1 hQ
  have htail : piDivides (GaussInt.mul (GaussInt.add u2 u4) S) :=
    pi_mul_left (piDivides_sum_congOne h2 h4)
  have hdiff : GaussInt.sub (GaussInt.add u2 (GaussInt.mul u4 S))
      (GaussInt.mul (GaussInt.add u2 u4) S) =
      GaussInt.mul u2 (GaussInt.sub GaussInt.one S) := by
    cases u2 <;> cases u4 <;> cases S
    simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  have hshift : piDivides (GaussInt.mul u2 (GaussInt.sub GaussInt.one S)) := by
    rw [← hdiff]
    exact piDivides_sub_of_both hlin htail
  have hone : piDivides (GaussInt.sub GaussInt.one S) := by
    rcases (piDivides_mul _ _).1 hshift with h | h
    · exact absurd h (not_pi_of_congOne u2 h2)
    · exact h
  have hcomm : GaussInt.sub GaussInt.one S = GaussInt.neg (GaussInt.sub S GaussInt.one) := by
    cases S
    simp [GaussInt.sub, GaussInt.neg, GaussInt.one]
    omega
  rw [hcomm] at hone
  exact (piDivides_neg _).1 hone

/-- Stage A. On `π = 0` the first chart is singular exactly at `X ≡ 0` and `X ≡ -u₂`. -/
theorem piChart_singular (u2 u4 u6 p X Y : GaussInt)
    (hp : piDivides p) (hF : piDivides (piChartIn p u2 u4 u6 X Y))
    (hD : piDivides (piChartPartialP p u2 u4 u6 X Y)) :
    piDivides Y ∧ (piDivides X ∨ piDivides (GaussInt.add X u2)) := by
  have hY := BlowupOddA.piDivides_sq (base_of (piChartIn_decomp p u2 u4 u6 X Y) hp hF)
  have hlin := base_of (piChartPartialP_decomp p u2 u4 u6 X Y) hp hD
  rw [piChart_partial_base] at hlin
  have hprod := (piDivides_neg _).1 hlin
  rcases (piDivides_mul _ _).1 hprod with hX2 | hXu
  · exact ⟨hY, Or.inl (BlowupOddA.piDivides_sq hX2)⟩
  · exact ⟨hY, Or.inr hXu⟩

theorem cusp_regular_on_S (u2 u4 u6 x S T : GaussInt) (hS : piDivides S) :
    ¬ piDivides (cuspPartialX u2 u4 u6 x S T) :=
  regular_add (cuspPartialX_decomp_S u2 u4 u6 x S T) not_pi_neg_one (pi_mul_left hS)

theorem cusp_singular_on_x (u2 u4 u6 x S T : GaussInt)
    (hx : piDivides x) (hF : piDivides (cuspChart u2 u4 u6 x S T))
    (hD : piDivides (cuspPartialX u2 u4 u6 x S T)) :
    piDivides T ∧ piDivides (GaussInt.add GaussInt.one (GaussInt.mul u2 S)) := by
  have hT := BlowupOddA.piDivides_sq (base_of (cusp_decomp_x u2 u4 u6 x S T) hx hF)
  have hlin := base_of (cuspPartialX_decomp_x u2 u4 u6 x S T) hx hD
  rw [cusp_partial_base] at hlin
  exact ⟨hT, (piDivides_neg _).1 hlin⟩

theorem cuspY_regular_on_fiber (u2 u4 u6 y A B : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul y A))
    (hF : piDivides (cuspY u2 u4 u6 y A B))
    (hD : piDivides (cuspYPartialA u2 u4 u6 y A B)) : False := by
  rcases (piDivides_mul y A).1 hπ with hy | hA
  · exact killed_one (pi_mul_left hy) ((cuspY_decomp_y u2 u4 u6 y A B) ▸ hF)
  · have hbase := base_of (cuspYPartialA_decomp u2 u4 u6 y A B) hA hD
    rcases (piDivides_mul _ _).1 hbase with hleft | hB2
    · rcases (piDivides_mul _ _).1 hleft with hnu | hy'
      · rcases (piDivides_mul _ _).1 hnu with hneg | hu2
        · exact not_pi_neg_one hneg
        · exact hu hu2
      · exact killed_one (pi_mul_left hy') ((cuspY_decomp_y u2 u4 u6 y A B) ▸ hF)
    · have hB := BlowupOddA.piDivides_sq hB2
      have hmain := base_of (cuspY_decomp_A u2 u4 u6 y A B) hA hF
      have hcube : piDivides
          (GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) y)
            (GaussInt.mul (GaussInt.mul B B) B)) :=
        (piDivides_mul _ _).2 (Or.inr ((piDivides_mul _ _).2 (Or.inr hB)))
      exact killed_one hcube hmain

/-- Stage B. The `Y`-chart of the origin misses the strict transform. -/
theorem originY_fiber_empty (u2 u4 u6 Y a b : GaussInt)
    (hπ : piDivides (GaussInt.mul Y a)) : ¬ piDivides (originY u2 u4 u6 Y a b) :=
  regular_add (originY_decomp u2 u4 u6 Y a b) not_piDivides_one (pi_mul_left hπ)

theorem originPi_only_origin (u2 u4 u6 p X Y : GaussInt) (hu : ¬ piDivides u2)
    (hp : piDivides p) (hF : piDivides (originPiIn p u2 u4 u6 X Y))
    (hD : piDivides (originPiPartialP p u2 u4 u6 X Y)) :
    piDivides Y ∧ piDivides X := by
  have hY := BlowupOddA.piDivides_sq (base_of (originPi_decomp p u2 u4 u6 X Y) hp hF)
  have hlin := base_of (originPiPartialP_decomp p u2 u4 u6 X Y) hp hD
  have hX2 : piDivides (GaussInt.mul X X) := by
    have hform : GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) u2) (GaussInt.mul X X) =
        GaussInt.mul (GaussInt.neg u2) (GaussInt.mul X X) := by
      rw [mul_neg_one]
    rw [hform] at hlin
    have hneg : piDivides (GaussInt.mul u2 (GaussInt.mul X X)) :=
      (piDivides_neg _).1 (by
        rw [show GaussInt.mul (GaussInt.neg u2) (GaussInt.mul X X) =
            GaussInt.neg (GaussInt.mul u2 (GaussInt.mul X X)) from
          GaussInt.neg_mul u2 (GaussInt.mul X X)] at hlin
        exact hlin)
    rcases (piDivides_mul _ _).1 hneg with h | h
    · exact absurd h hu
    · exact h
  exact ⟨hY, BlowupOddA.piDivides_sq hX2⟩

theorem originX_singular_on_S (u2 u4 u6 t S T : GaussInt)
    (hS : piDivides S) (hF : piDivides (originX u2 u4 u6 t S T))
    (hD : piDivides (originXPartialS u2 u4 u6 t S T)) :
    piDivides T ∧ (piDivides t ∨ piDivides (GaussInt.add t u2)) := by
  have hT := BlowupOddA.piDivides_sq (base_of (originX_decomp_S u2 u4 u6 t S T) hS hF)
  have hlin := base_of (originXPartialS_decomp u2 u4 u6 t S T) hS hD
  rw [originX_partial_base] at hlin
  have hprod := (piDivides_neg _).1 hlin
  rcases (piDivides_mul _ _).1 hprod with ht | htu
  · exact ⟨hT, Or.inl ht⟩
  · exact ⟨hT, Or.inr htu⟩

theorem originX_singular_on_t (u2 u4 u6 t S T : GaussInt) (hu : ¬ piDivides u2)
    (ht : piDivides t) (hF : piDivides (originX u2 u4 u6 t S T))
    (hD : piDivides (originXPartialT u2 u4 u6 t S T)) :
    piDivides T ∧ piDivides S := by
  have hT := BlowupOddA.piDivides_sq (base_of (originX_decomp_t u2 u4 u6 t S T) ht hF)
  have hlin := base_of (originXPartialT_decomp u2 u4 u6 t S T) ht hD
  have hS : piDivides S := by
    have hform : GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) S) u2 =
        GaussInt.mul (GaussInt.neg S) u2 := by rw [mul_neg_one]
    rw [hform] at hlin
    have hSu : piDivides (GaussInt.mul S u2) :=
      (piDivides_neg _).1 (by
        rw [show GaussInt.mul (GaussInt.neg S) u2 =
            GaussInt.neg (GaussInt.mul S u2) from GaussInt.neg_mul S u2] at hlin
        exact hlin)
    rcases (piDivides_mul _ _).1 hSu with h | h
    · exact h
    · exact absurd h hu
  exact ⟨hT, hS⟩

/-- Stage C. `chain2` is the exceptional slice `π ∣ t`, and `A ≡ 0` meets only `C2`. -/
theorem chain2_regular_on_t (u2 u4 u6 t A B : GaussInt) (hu : ¬ piDivides u2)
    (ht : piDivides t) : ¬ piDivides (chain2PartialA u2 u4 u6 t A B) := by
  have hbase : ¬ piDivides (GaussInt.mul (GaussInt.neg GaussInt.one) u2) :=
    unit_mul not_pi_neg_one hu
  exact regular_add (chain2PartialA_decomp_t u2 u4 u6 t A B) hbase (pi_mul_left ht)

theorem chain2_singular_on_A (u2 u4 u6 t A B : GaussInt)
    (hA : piDivides A) (hF : piDivides (chain2Chart u2 u4 u6 t A B))
    (hD : piDivides (chain2PartialA u2 u4 u6 t A B)) :
    piDivides B ∧ piDivides (GaussInt.add t u2) := by
  have hB := BlowupOddA.piDivides_sq (base_of (chain2_decomp_A u2 u4 u6 t A B) hA hF)
  have hlin := base_of (chain2PartialA_decomp u2 u4 u6 t A B) hA hD
  rw [chain2_partial_base] at hlin
  exact ⟨hB, (piDivides_neg _).1 hlin⟩

theorem chain2S_regular (u2 u4 u6 S a b : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul S a)) : ¬ piDivides (chain2SPartialA u2 u4 u6 S a b) := by
  have hbase : ¬ piDivides (GaussInt.mul (GaussInt.neg GaussInt.one) u2) :=
    unit_mul not_pi_neg_one hu
  have hord : piDivides (GaussInt.mul a S) := by
    rw [GaussInt.mul_comm]; exact hπ
  exact regular_add (chain2SPartialA_decomp u2 u4 u6 S a b) hbase (pi_mul_left hord)

theorem chain2T_regular (u2 u4 u6 r p q : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul (GaussInt.mul r r) (GaussInt.mul p q)))
    (hF : piDivides (chain2T u2 u4 u6 r p q))
    (hD : piDivides (chain2TPartialP u2 u4 u6 r p q)) : False := by
  rcases (piDivides_mul _ _).1 hπ with hr | hpq
  · have hr := BlowupOddA.piDivides_sq hr
    have hlin := base_of (chain2TPartialP_decomp u2 u4 u6 r p q) hr hD
    rcases (piDivides_mul _ _).1 hlin with hq | hu2
    · rcases (piDivides_mul _ _).1 hq with hneg | hq'
      · exact not_pi_neg_one hneg
      · exact killed_one (pi_mul_left hq') ((chain2T_decomp_q u2 u4 u6 r p q) ▸ hF)
    · exact hu hu2
  · rcases (piDivides_mul _ _).1 hpq with hp | hq
    · exact killed_one (pi_mul_left hp) ((chain2T_decomp_p u2 u4 u6 r p q) ▸ hF)
    · exact killed_one (pi_mul_left hq) ((chain2T_decomp_q u2 u4 u6 r p q) ▸ hF)

/-- Stage D. The third `π`-chart is where the two legs appear. -/
theorem thirdY_fiber_empty (u2 u4 u6 Y a b : GaussInt)
    (hπ : piDivides (GaussInt.mul Y a)) : ¬ piDivides (thirdY u2 u4 u6 Y a b) :=
  regular_add (thirdY_decomp u2 u4 u6 Y a b) not_piDivides_one (pi_mul_left hπ)


theorem thirdX_singular_on_S (u2 u4 u6 t S T : GaussInt) (hu : ¬ piDivides u2)
    (hS : piDivides S) (hF : piDivides (thirdX u2 u4 u6 t S T))
    (hD : piDivides (thirdXPartialS u2 u4 u6 t S T)) :
    piDivides T ∧ piDivides t := by
  have hT := BlowupOddA.piDivides_sq (base_of (thirdX_decomp_S u2 u4 u6 t S T) hS hF)
  have hlin := base_of (thirdXPartialS_decomp u2 u4 u6 t S T) hS hD
  have hform : GaussInt.mul (GaussInt.mul (GaussInt.neg GaussInt.one) t) u2 =
      GaussInt.mul (GaussInt.neg t) u2 := by rw [mul_neg_one]
  rw [hform] at hlin
  have ht : piDivides t := by
    have htu : piDivides (GaussInt.mul t u2) :=
      (piDivides_neg _).1 (by rw [← GaussInt.neg_mul]; exact hlin)
    rcases (piDivides_mul _ _).1 htu with h | h
    · exact h
    · exact absurd h hu
  exact ⟨hT, ht⟩

theorem thirdPi_singular_split (u2 u4 u6 p X Y : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : piDivides u6)
    (hp : piDivides p) (hF : piDivides (thirdPi u2 u4 u6 p X Y))
    (hD : piDivides (thirdPiPartialP u2 u4 u6 p X Y)) :
    piDivides Y ∧ (piDivides X ∨ piDivides (GaussInt.sub X GaussInt.one)) := by
  have hY := BlowupOddA.piDivides_sq (base_of (thirdPi_decomp u2 u4 u6 p X Y) hp hF)
  have hlin := base_of (thirdPiPartialP_decomp u2 u4 u6 p X Y) hp hD
  rw [third_partial_base] at hlin
  exact ⟨hY, transverse_split u2 u4 u6 X h2 h4 h6 ((piDivides_neg _).1 hlin)⟩

theorem thirdX_singular_on_t_split (u2 u4 u6 t S T : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : piDivides u6)
    (ht : piDivides t) (hF : piDivides (thirdX u2 u4 u6 t S T))
    (hD : piDivides (thirdXPartialT u2 u4 u6 t S T)) :
    piDivides T ∧ (piDivides S ∨ piDivides (GaussInt.sub S GaussInt.one)) := by
  have hT := BlowupOddA.piDivides_sq (base_of (thirdX_decomp_t u2 u4 u6 t S T) ht hF)
  have hlin := base_of (thirdXPartialT_decomp u2 u4 u6 t S T) ht hD
  rw [thirdX_partial_base] at hlin
  have hprod := (piDivides_neg _).1 hlin
  rcases (piDivides_mul _ _).1 hprod with hS | hQ
  · exact ⟨hT, Or.inl hS⟩
  · exact ⟨hT, Or.inr (transverseS_split u2 u4 u6 S h2 h4 h6 hQ)⟩

theorem thirdPi_regular_inert (u2 u4 u6 p X Y : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) (hp : piDivides p) :
    ¬ piDivides (thirdPiPartialP u2 u4 u6 p X Y) := by
  intro hD
  have hlin := base_of (thirdPiPartialP_decomp u2 u4 u6 p X Y) hp hD
  rw [third_partial_base] at hlin
  exact transverse_unit u2 u4 u6 X h2 h4 h6 ((piDivides_neg _).1 hlin)

theorem thirdX_singular_on_t_inert (u2 u4 u6 t S T : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6)
    (ht : piDivides t) (hF : piDivides (thirdX u2 u4 u6 t S T))
    (hD : piDivides (thirdXPartialT u2 u4 u6 t S T)) :
    piDivides T ∧ piDivides S := by
  have hT := BlowupOddA.piDivides_sq (base_of (thirdX_decomp_t u2 u4 u6 t S T) ht hF)
  have hlin := base_of (thirdXPartialT_decomp u2 u4 u6 t S T) ht hD
  rw [thirdX_partial_base] at hlin
  have hS : piDivides S := by
    rcases (piDivides_mul _ _).1 ((piDivides_neg _).1 hlin) with hS | hQ
    · exact hS
    · exact absurd hQ (transverseS_unit u2 u4 u6 S h2 h4 h6)
  exact ⟨hT, hS⟩

/-- Stage E. Blowing the rational point of the third exceptional line leaves `chain4`. -/
theorem chain4_regular (u2 u4 u6 t A B : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul (GaussInt.mul t t) A)) :
    ¬ piDivides (chain4PartialA u2 u4 u6 t A B) := by
  have hAt : piDivides (GaussInt.mul A t) := by
    rcases (piDivides_mul _ _).1 hπ with ht | hA
    · exact (piDivides_mul _ _).2 (Or.inr (BlowupOddA.piDivides_sq ht))
    · exact pi_mul_left hA
  exact regular_add (chain4PartialA_decomp u2 u4 u6 t A B) (unit_mul not_pi_neg_one hu) (pi_mul_left hAt)

theorem chain4S_regular_on_S (u2 u4 u6 S a b : GaussInt) (hu : ¬ piDivides u2)
    (hS : piDivides S) : ¬ piDivides (chain4SPartialA u2 u4 u6 S a b) :=
  regular_add (chain4SPartialA_decomp_S u2 u4 u6 S a b) (unit_mul not_pi_neg_one hu) (pi_mul_left hS)

theorem chain4S_singular_on_a (u2 u4 u6 S a b : GaussInt)
    (ha : piDivides a) (hF : piDivides (chain4S u2 u4 u6 S a b))
    (hD : piDivides (chain4SPartialA u2 u4 u6 S a b)) :
    piDivides b ∧ piDivides (transverseS u2 u4 u6 S) := by
  have hb := BlowupOddA.piDivides_sq (base_of (chain4S_decomp_a u2 u4 u6 S a b) ha hF)
  have hlin := base_of (chain4SPartialA_decomp_a u2 u4 u6 S a b) ha hD
  rw [chain4S_partial_base] at hlin
  exact ⟨hb, (piDivides_neg _).1 hlin⟩

theorem chain4S_regular_on_a_inert (u2 u4 u6 S a b : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4) (h6 : congOne u6) (ha : piDivides a) :
    ¬ piDivides (chain4SPartialA u2 u4 u6 S a b) := by
  intro hD
  have hlin := base_of (chain4SPartialA_decomp_a u2 u4 u6 S a b) ha hD
  rw [chain4S_partial_base] at hlin
  exact transverseS_unit u2 u4 u6 S h2 h4 h6 ((piDivides_neg _).1 hlin)

theorem chain4T_regular (u2 u4 u6 r p q : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul (GaussInt.mul r r) (GaussInt.mul p q)))
    (hF : piDivides (chain4T u2 u4 u6 r p q))
    (hD : piDivides (chain4TPartialP u2 u4 u6 r p q)) : False := by
  rcases (piDivides_mul _ _).1 hπ with hr | hpq
  · have hr := BlowupOddA.piDivides_sq hr
    have hlin := base_of (chain4TPartialP_decomp u2 u4 u6 r p q) hr hD
    rcases (piDivides_mul _ _).1 hlin with hq | hu2
    · rcases (piDivides_mul _ _).1 hq with hneg | hq'
      · exact not_pi_neg_one hneg
      · exact killed_one (pi_mul_left hq') ((chain4T_decomp_q u2 u4 u6 r p q) ▸ hF)
    · exact hu hu2
  · rcases (piDivides_mul _ _).1 hpq with hp | hq
    · exact killed_one (pi_mul_left hp) ((chain4T_decomp_p u2 u4 u6 r p q) ▸ hF)
    · exact killed_one (pi_mul_left hq) ((chain4T_decomp_q u2 u4 u6 r p q) ▸ hF)

/-- Stage G. The conic at `X ≡ -u₂` is `legFar`. Its `X`-chart is singular only at `C1`. -/
theorem pastPi_regular (u2 u4 u6 p A B : GaussInt) (hu : ¬ piDivides u2)
    (hp : piDivides p) : ¬ piDivides (pastPiPartialA u2 u4 u6 p A B) :=
  regular_add (pastPiPartialA_decomp u2 u4 u6 p A B) (unit_mul not_pi_neg_one (unit_mul hu hu)) (pi_mul_left hp)

theorem pastX_regular_on_t (u2 u4 u6 t S T : GaussInt) (hu : ¬ piDivides u2)
    (ht : piDivides t) : ¬ piDivides (pastXPartialS u2 u4 u6 t S T) :=
  regular_add (pastXPartialS_decomp_t u2 u4 u6 t S T) (unit_mul not_pi_neg_one (unit_mul hu hu)) (pi_mul_left ht)

theorem pastX_singular_on_S (u2 u4 u6 t S T : GaussInt)
    (hS : piDivides S) (hF : piDivides (pastX u2 u4 u6 t S T))
    (hD : piDivides (pastXPartialS u2 u4 u6 t S T)) :
    piDivides T ∧ piDivides (GaussInt.sub t u2) := by
  have hT := BlowupOddA.piDivides_sq (base_of (pastX_decomp_S u2 u4 u6 t S T) hS hF)
  have hlin := base_of (pastXPartialS_decomp_S u2 u4 u6 t S T) hS hD
  rw [pastX_partial_base] at hlin
  exact ⟨hT, BlowupOddA.piDivides_sq ((piDivides_neg _).1 hlin)⟩

theorem pastY_regular (u2 u4 u6 Y a b : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul Y a))
    (hF : piDivides (pastY u2 u4 u6 Y a b))
    (hD : piDivides (pastYPartialB u2 u4 u6 Y a b)) : False := by
  rcases (piDivides_mul Y a).1 hπ with hY | ha
  · have hlin := base_of (pastYPartialB_decomp u2 u4 u6 Y a b) hY hD
    rcases (piDivides_mul _ _).1 hlin with ha' | hu2
    · rcases (piDivides_mul _ _).1 ha' with hneg | ha''
      · exact not_pi_neg_one hneg
      · exact killed_one (pi_mul_left ha'') ((pastY_decomp_a u2 u4 u6 Y a b) ▸ hF)
    · exact hu (by
        rcases (piDivides_mul _ _).1 hu2 with h | h
        · exact h
        · exact h)
  · exact killed_one (pi_mul_left ha) ((pastY_decomp_a u2 u4 u6 Y a b) ▸ hF)

/-- The leg at `X ≡ 0`, after `π ∣ u₆`. The exceptional curve is smooth. -/
theorem leg0_regular (u2 u4 v6 p U V : GaussInt) (h4 : ¬ piDivides u4) (hp : piDivides p) :
    ¬ piDivides (leg0PartialU u2 u4 v6 p U V) :=
  regular_add (leg0PartialU_decomp u2 u4 v6 p U V) (unit_mul not_pi_neg_one h4) (pi_mul_left hp)

theorem leg0X_regular_on_s (u2 u4 v6 s A B : GaussInt) (h4 : ¬ piDivides u4)
    (hs : piDivides s) : ¬ piDivides (leg0XPartialA u2 u4 v6 s A B) := by
  rw [leg0XPartialA_decomp_s]
  exact not_piDivides_add_of_right (unit_mul not_pi_neg_one h4)
    (piDivides_add_of_both (pi_mul_left BlowupOddA.ofInt_two_pi) (pi_mul_left hs))

theorem leg0_center (u2 u4 s : GaussInt) (h2 : congOne u2) (h4 : congOne u4)
    (h : piDivides (GaussInt.add u4 (GaussInt.mul u2 s))) :
    piDivides (GaussInt.sub s GaussInt.one) := by
  have hdiff : GaussInt.sub (GaussInt.add u4 (GaussInt.mul u2 s)) (GaussInt.add u2 u4) =
      GaussInt.mul u2 (GaussInt.sub s GaussInt.one) := by
    cases u2 <;> cases u4 <;> cases s
    simp [GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.one]
    constructor <;> grind
  have hshift : piDivides (GaussInt.mul u2 (GaussInt.sub s GaussInt.one)) := by
    rw [← hdiff]
    exact piDivides_sub_of_both h (piDivides_sum_congOne h2 h4)
  rcases (piDivides_mul _ _).1 hshift with hu | hs
  · exact absurd hu (not_pi_of_congOne u2 h2)
  · exact hs

theorem leg0X_singular_on_A (u2 u4 v6 s A B : GaussInt)
    (h2 : congOne u2) (h4 : congOne u4)
    (hA : piDivides A) (hF : piDivides (leg0X u2 u4 v6 s A B))
    (hD : piDivides (leg0XPartialA u2 u4 v6 s A B)) :
    piDivides B ∧ piDivides (GaussInt.sub s GaussInt.one) := by
  have hB := BlowupOddA.piDivides_sq (base_of (leg0X_decomp_A u2 u4 v6 s A B) hA hF)
  have hlin := base_of (leg0XPartialA_decomp_A u2 u4 v6 s A B) hA hD
  rw [leg0_partial_base] at hlin
  exact ⟨hB, leg0_center u2 u4 s h2 h4 ((piDivides_neg _).1 hlin)⟩

theorem leg0Y_regular (u2 u4 v6 Y a b : GaussInt) (h4 : ¬ piDivides u4)
    (hπ : piDivides (GaussInt.mul Y a))
    (hF : piDivides (leg0Y u2 u4 v6 Y a b))
    (hD : piDivides (leg0YPartialB u2 u4 v6 Y a b)) : False := by
  rcases (piDivides_mul Y a).1 hπ with hY | ha
  · have hlin := base_of (leg0YPartialB_decomp u2 u4 v6 Y a b) hY hD
    rcases (piDivides_mul _ _).1 hlin with ha' | h4'
    · rcases (piDivides_mul _ _).1 ha' with hneg | ha''
      · exact not_pi_neg_one hneg
      · exact killed_one (pi_mul_left ha'') ((leg0Y_decomp_a u2 u4 v6 Y a b) ▸ hF)
    · exact h4 h4'
  · exact killed_one (pi_mul_left ha) ((leg0Y_decomp_a u2 u4 v6 Y a b) ▸ hF)

/-- The leg at `X ≡ 1`. Its `X`-chart is singular only at `X ≡ 0`. -/
theorem leg1_regular (u2 v6 sig p U V : GaussInt) (hu : ¬ piDivides u2) (hp : piDivides p) :
    ¬ piDivides (leg1PartialU u2 v6 sig p U V) :=
  regular_add (leg1PartialU_decomp u2 v6 sig p U V) (unit_mul not_pi_neg_one hu) (pi_mul_left hp)

theorem leg1X_regular_on_s (u2 v6 sig s A B : GaussInt) (hu : ¬ piDivides u2)
    (hs : piDivides s) : ¬ piDivides (leg1XPartialA u2 v6 sig s A B) := by
  rw [leg1XPartialA_decomp_s]
  exact not_piDivides_add_of_right (unit_mul not_pi_neg_one hu)
    (piDivides_add_of_both (pi_mul_left BlowupOddA.ofInt_two_pi) (pi_mul_left hs))

theorem leg1X_singular_on_A (u2 v6 sig s A B : GaussInt) (hu : ¬ piDivides u2)
    (hA : piDivides A) (hF : piDivides (leg1X u2 v6 sig s A B))
    (hD : piDivides (leg1XPartialA u2 v6 sig s A B)) :
    piDivides B ∧ piDivides (GaussInt.add s GaussInt.one) := by
  have hB := BlowupOddA.piDivides_sq (base_of (leg1X_decomp_A u2 v6 sig s A B) hA hF)
  have hlin := base_of (leg1XPartialA_decomp_A u2 v6 sig s A B) hA hD
  rw [leg1_partial_base] at hlin
  have hprod := (piDivides_neg _).1 hlin
  have hs : piDivides (GaussInt.add GaussInt.one s) := by
    rcases (piDivides_mul _ _).1 hprod with h | h
    · exact absurd h hu
    · exact h
  rw [GaussInt.add_comm] at hs
  exact ⟨hB, hs⟩

theorem leg1Y_regular (u2 v6 sig Y a b : GaussInt) (hu : ¬ piDivides u2)
    (hπ : piDivides (GaussInt.mul Y a))
    (hF : piDivides (leg1Y u2 v6 sig Y a b))
    (hD : piDivides (leg1YPartialB u2 v6 sig Y a b)) : False := by
  rcases (piDivides_mul Y a).1 hπ with hY | ha
  · have hlin := base_of (leg1YPartialB_decomp u2 v6 sig Y a b) hY hD
    rcases (piDivides_mul _ _).1 hlin with ha' | hu'
    · rcases (piDivides_mul _ _).1 ha' with hneg | ha''
      · exact not_pi_neg_one hneg
      · exact killed_one (pi_mul_left ha'') ((leg1Y_decomp_a u2 v6 sig Y a b) ▸ hF)
    · exact hu hu'
  · exact killed_one (pi_mul_left ha) ((leg1Y_decomp_a u2 v6 sig Y a b) ▸ hF)



/-!
## Inert legs

When `u₂`, `u₄`, and `u₆` are congruent to `1`, the third `π`-chart reduces to
`Y² - p (X² + X + 1) - p³ X³`. The roots lie in `𝔽₄`. Each root `ρ` is blown
up in three affine charts. A coefficient `uᵢ ≡ 1` changes that equation by a
multiple of `π`, so the special fiber is the reduced one.
-/

theorem ofG_ofInt9 : BlowupOddA.Quad.ofG (GaussInt.ofInt 9) = 9 := rfl

section Inert
open BlowupOddA (Quad)
open BlowupOddA.Quad

def rel (ρ : Quad) : Quad := add (add (mul ρ ρ) ρ) one

/-- `-1 - 2 ρ`. At `ω` this is `f4Shift`; at the conjugate it is `f4ShiftConj`. -/
def legShift (ρ : Quad) : Quad :=
  add (neg one) (mul (ofG (GaussInt.neg (GaussInt.ofInt 2))) ρ)

def transverseReduced (X : Quad) : Quad := add (mul X X) (add X one)

def thirdReduced (p X Y : Quad) : Quad :=
  sub (mul Y Y)
    (add (mul p (transverseReduced X))
      (mul (mul (mul p p) p) (mul (mul X X) X)))

def legPi (ρ p U V : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul V V) (Quad.neg U)) (Quad.neg (Quad.mul (Quad.mul p U) U))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul p ρ) ρ) ρ))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul U U) U) p) p) p) p))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul U ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul U p) p) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul ρ U) U) p) p) p)))

def legPiRem (ρ p : Quad) : Quad := mul p (neg (rel ρ))

def legPiPartial (ρ p U V : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.neg Quad.one) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) ρ)) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul U U) p) p) p) p))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul p p) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul U p))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 6))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul U ρ) p) p) p)))

def legPiPartialCof (ρ p U V : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) U) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul p ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul U U) p) p) p))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 6))) (Quad.mul (Quad.mul (Quad.mul U ρ) p) p)))

def legS (ρ s A B : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.mul B B) (Quad.neg A)) (Quad.neg (Quad.mul A s))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) A) s) s) s) s))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul A ρ))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul s A) A) A) ρ) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul ρ A) A) A) s) s) s))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) A) s) s) ρ) ρ)))

def legSRem (ρ s A : Quad) : Quad := mul (mul s A) (neg (rel ρ))

def legSPartial (ρ s A B : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.neg Quad.one) (Quad.neg s)) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) ρ)) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) s) s) s) s))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 9))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul ρ A) A) s) s) s))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 9))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) s) s) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul s A) A) ρ) ρ) ρ)))

def legSPartialCofS (ρ s A B : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.neg Quad.one) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) s) s) s))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) ρ) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 9))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul s A) A) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 9))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul ρ A) A) s) s)))

def legSPartialCofA (ρ s A B : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul A s) s) s) s)) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 9))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul A ρ) s) s) s))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 9))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul A s) s) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul A s) ρ) ρ) ρ)))

def legSCofA (ρ s A B : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.neg Quad.one) (Quad.neg s)) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) ρ)) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) s) s) s) s))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul s A) A) ρ) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul ρ A) A) s) s) s))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul A A) s) s) ρ) ρ)))

def legY (ρ y a b : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add Quad.one (Quad.neg (Quad.mul a b))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul y a) b) b))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y a) a) a) ρ) ρ) ρ))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y y) y) y) a) a) a) b) b) b))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul (Quad.mul a b) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul b y) y) a) a) a) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul ρ y) y) y) a) a) a) b) b)))

def legYRem (ρ y a : Quad) : Quad := mul (mul y a) (neg (rel ρ))

def legYCofA (ρ y a b : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.neg b) (Quad.neg (Quad.mul (Quad.mul y b) b))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul b ρ))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y a) a) ρ) ρ) ρ))) (Quad.neg (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y y) y) y) a) a) b) b) b))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul b y) y) a) a) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul ρ y) y) y) a) a) b) b)))

def legYPartial (ρ y a b : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.add (Quad.add (Quad.neg a) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul a ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y y) a) a) a) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y y) y) y) a) a) a) b) b))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul (Quad.mul y a) b))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 6))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul b ρ) y) y) y) a) a) a)))

def legYPartialCof (ρ y a b : Quad) : Quad :=
  (Quad.add (Quad.add (Quad.add (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 2))) (Quad.mul a b)) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y a) a) a) ρ) ρ))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 3))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul y y) y) a) a) a) b) b))) (Quad.mul (Quad.neg (Quad.ofG (GaussInt.ofInt 6))) (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul (Quad.mul b ρ) y) y) a) a) a)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdReduced_legPi_raw (ρ p U V : Quad) :
    thirdReduced p (add ρ (mul p U)) (mul p V) =
      add (mul (mul p p) (legPi ρ p U V)) (legPiRem ρ p) := by
  simp only [thirdReduced, transverseReduced, legPi, legPiRem, rel,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem legPiPartial_decomp (ρ p U V : Quad) :
    legPiPartial ρ p U V =
      add (legShift ρ) (mul p (legPiPartialCof ρ p U V)) := by
  simp only [legPiPartial, legPiPartialCof, legShift,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdReduced_legS_raw (ρ s A B : Quad) :
    thirdReduced (mul s A) (add ρ s) (mul s B) =
      add (mul (mul s s) (legS ρ s A B)) (legSRem ρ s A) := by
  simp only [thirdReduced, transverseReduced, legS, legSRem, rel,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem legSPartial_decomp_s (ρ s A B : Quad) :
    legSPartial ρ s A B =
      add (legShift ρ) (mul s (legSPartialCofS ρ s A B)) := by
  simp only [legSPartial, legSPartialCofS, legShift,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem legSPartial_decomp_A (ρ s A B : Quad) :
    legSPartial ρ s A B =
      add (sub (legShift ρ) s) (mul A (legSPartialCofA ρ s A B)) := by
  simp only [legSPartial, legSPartialCofA, legShift,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem legS_decomp_A (ρ s A B : Quad) :
    legS ρ s A B = add (mul B B) (mul A (legSCofA ρ s A B)) := by
  simp only [legS, legSCofA,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem thirdReduced_legY_raw (ρ y a b : Quad) :
    thirdReduced (mul y a) (add ρ (mul y b)) y =
      add (mul (mul y y) (legY ρ y a b)) (legYRem ρ y a) := by
  simp only [thirdReduced, transverseReduced, legY, legYRem, rel,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem legY_decomp_a (ρ y a b : Quad) :
    legY ρ y a b = add one (mul a (legYCofA ρ y a b)) := by
  simp only [legY, legYCofA,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem legYPartial_decomp (ρ y a b : Quad) :
    legYPartial ρ y a b =
      add (mul a (legShift ρ)) (mul y (legYPartialCof ρ y a b)) := by
  simp only [legYPartial, legYPartialCof, legShift,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_ofInt2, ofG_ofInt3, ofG_ofInt6, ofG_ofInt9]
  to_ring_ops
  grind

theorem neg_zero_quad : neg zero = zero := by
  simp [neg, zero, GaussInt.neg_zero]

theorem leg_rem_pi (ρ p : Quad) (hρ : rel ρ = zero) : legPiRem ρ p = zero := by
  simp [legPiRem, hρ, neg_zero_quad, mul_zero]

theorem leg_rem_s (ρ s A : Quad) (hρ : rel ρ = zero) : legSRem ρ s A = zero := by
  simp [legSRem, hρ, neg_zero_quad, mul_zero]

theorem leg_rem_y (ρ y a : Quad) (hρ : rel ρ = zero) : legYRem ρ y a = zero := by
  simp [legYRem, hρ, neg_zero_quad, mul_zero]

theorem thirdReduced_legPi (ρ p U V : Quad) (hρ : rel ρ = zero) :
    thirdReduced p (add ρ (mul p U)) (mul p V) =
      mul (mul p p) (legPi ρ p U V) := by
  rw [thirdReduced_legPi_raw, leg_rem_pi ρ p hρ, add_zero]

theorem thirdReduced_legS (ρ s A B : Quad) (hρ : rel ρ = zero) :
    thirdReduced (mul s A) (add ρ s) (mul s B) =
      mul (mul s s) (legS ρ s A B) := by
  rw [thirdReduced_legS_raw, leg_rem_s ρ s A hρ, add_zero]

theorem thirdReduced_legY (ρ y a b : Quad) (hρ : rel ρ = zero) :
    thirdReduced (mul y a) (add ρ (mul y b)) y =
      mul (mul y y) (legY ρ y a b) := by
  rw [thirdReduced_legY_raw, leg_rem_y ρ y a hρ, add_zero]

theorem legShift_omega : legShift omega = BlowupOddA.f4Shift := rfl

theorem legShift_conj : legShift omegaConj = BlowupOddA.f4ShiftConj := by
  simp [legShift, omegaConj, BlowupOddA.f4ShiftConj, add, sub, neg, mul, ofG, one, omega, zero,
    GaussInt.add, GaussInt.mul, GaussInt.neg, GaussInt.sub, GaussInt.ofInt, GaussInt.one,
    GaussInt.zero]

theorem legShift_unit {ρ : Quad} (h : ρ = omega ∨ ρ = omegaConj) : ¬ piDividesQ (legShift ρ) := by
  rcases h with rfl | rfl
  · rw [legShift_omega]
    exact BlowupOddA.not_piDividesQ_f4Shift
  · rw [legShift_conj]
    exact BlowupOddA.not_piDividesQ_f4ShiftConj

theorem killed_oneQ {rest : Quad} (hr : piDividesQ rest) (h : piDividesQ (add one rest)) : False :=
  BlowupOddA.not_piDividesQ_one ((BlowupOddA.piDividesQ_add_left hr).1 h)

theorem mul_unit_left {u x : Quad} (hu : ¬ piDividesQ u) (h : piDividesQ (mul u x)) : piDividesQ x := by
  rcases (BlowupOddA.piDividesQ_mul u x).1 h with h | h
  · exact absurd h hu
  · exact h

/-- The exceptional curve of either root is regular: `∂/∂U` is congruent to `-1`. -/
theorem legPi_regular (ρ p U V : Quad) (hρ : ρ = omega ∨ ρ = omegaConj) (hp : piDividesQ p) :
    ¬ piDividesQ (legPiPartial ρ p U V) := by
  rw [legPiPartial_decomp]
  exact BlowupOddA.not_piDividesQ_add_of_right (legShift_unit hρ)
    (BlowupOddA.piDividesQ_mul_left hp)

/-- On `π ∣ s` the same partial is a unit. That slice is the leg. -/
theorem legS_regular_on_s (ρ s A B : Quad) (hρ : ρ = omega ∨ ρ = omegaConj) (hs : piDividesQ s) :
    ¬ piDividesQ (legSPartial ρ s A B) := by
  rw [legSPartial_decomp_s]
  exact BlowupOddA.not_piDividesQ_add_of_right (legShift_unit hρ)
    (BlowupOddA.piDividesQ_mul_left hs)

theorem shift_sub_neg (ρ s : Quad) :
    sub (legShift ρ) s = neg (sub s (legShift ρ)) := by
  simp [sub_eq_add_neg, neg_add, neg_neg, add_comm, add_assoc]

/-- On `π ∣ A` the only singularity is the other root, `s ≡ -1 - 2 ρ`, and `B ≡ 0`. -/
theorem legS_singular_on_A (ρ s A B : Quad)
    (hA : piDividesQ A) (hF : piDividesQ (legS ρ s A B))
    (hD : piDividesQ (legSPartial ρ s A B)) :
    piDividesQ B ∧ piDividesQ (sub s (legShift ρ)) := by
  rw [legS_decomp_A] at hF
  have hB2 := (BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left hA)).1 hF
  have hB := BlowupOddA.piDividesQ_sq hB2
  rw [legSPartial_decomp_A] at hD
  have hshift := (BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left hA)).1 hD
  rw [shift_sub_neg] at hshift
  exact ⟨hB, (BlowupOddA.piDividesQ_neg _).1 hshift⟩

/-- The `Y`-chart meets no singular point of the special fiber `π ∣ y a`. -/
theorem legY_regular (ρ y a b : Quad) (hρ : ρ = omega ∨ ρ = omegaConj)
    (hπ : piDividesQ (mul y a)) (hF : piDividesQ (legY ρ y a b))
    (hD : piDividesQ (legYPartial ρ y a b)) : False := by
  rcases (BlowupOddA.piDividesQ_mul y a).1 hπ with hy | ha
  · rw [legYPartial_decomp] at hD
    have hbase := (BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left hy)).1 hD
    have ha' : piDividesQ a := by
      rw [mul_comm a (legShift ρ)] at hbase
      exact mul_unit_left (legShift_unit hρ) hbase
    rw [legY_decomp_a] at hF
    exact killed_oneQ (BlowupOddA.piDividesQ_mul_left ha') hF
  · rw [legY_decomp_a] at hF
    exact killed_oneQ (BlowupOddA.piDividesQ_mul_left ha) hF

set_option maxRecDepth 4096 in
set_option maxHeartbeats 8000000 in
theorem transverseReduced_factor (X : Quad) :
    transverseReduced X = mul (sub X omega) (sub X omegaConj) := by
  have hω : omega * omega + omega + 1 = 0 := by
    change add (add (mul omega omega) omega) one = zero
    exact omega_rel
  simp only [transverseReduced, omegaConj, sub_eq_add_neg, one_eq, zero_eq, ofG_one, ofG_zero, ofG_neg]
  to_ring_ops
  grind

def thirdReducedCof (p X Y : Quad) : Quad :=
  neg (add (transverseReduced X) (mul (mul p p) (mul (mul X X) X)))

def thirdReducedPartialP (p X Y : Quad) : Quad :=
  neg (add (transverseReduced X)
    (mul (ofG (GaussInt.ofInt 3)) (mul (mul p p) (mul (mul X X) X))))

def thirdReducedPartialPCof (p X Y : Quad) : Quad :=
  neg (mul (ofG (GaussInt.ofInt 3)) (mul p (mul (mul X X) X)))

def thirdReducedPartialX (p X Y : Quad) : Quad :=
  neg (add (mul p (add (mul (ofG (GaussInt.ofInt 2)) X) one))
    (mul (ofG (GaussInt.ofInt 3)) (mul (mul (mul p p) p) (mul X X))))

def thirdReducedPartialY (p X Y : Quad) : Quad :=
  mul (ofG (GaussInt.ofInt 2)) Y

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem thirdReduced_decomp (p X Y : Quad) :
    thirdReduced p X Y = add (mul Y Y) (mul p (thirdReducedCof p X Y)) := by
  simp only [thirdReduced, thirdReducedCof, transverseReduced,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt2, ofG_ofInt3]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem thirdReducedPartialP_decomp (p X Y : Quad) :
    thirdReducedPartialP p X Y =
      add (neg (transverseReduced X)) (mul p (thirdReducedPartialPCof p X Y)) := by
  simp only [thirdReducedPartialP, thirdReducedPartialPCof, transverseReduced,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt3]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem thirdReducedPartialX_decomp (p X Y : Quad) :
    thirdReducedPartialX p X Y =
      mul p (neg (add (add (mul (ofG (GaussInt.ofInt 2)) X) one)
        (mul (ofG (GaussInt.ofInt 3)) (mul (mul p p) (mul X X))))) := by
  simp only [thirdReducedPartialX, ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt2, ofG_ofInt3]
  to_ring_ops
  grind

theorem thirdReducedPartialY_pi (p X Y : Quad) : piDividesQ (thirdReducedPartialY p X Y) :=
  BlowupOddA.piDividesQ_ofG (GaussInt.ofInt 2) Y BlowupOddA.ofInt_two_pi

theorem thirdReducedPartialX_on_p (p X Y : Quad) (hp : piDividesQ p) :
    piDividesQ (thirdReducedPartialX p X Y) := by
  rw [thirdReducedPartialX_decomp]
  exact BlowupOddA.piDividesQ_mul_left hp

/-- On `π ∣ p` the reduced third chart is singular exactly at the two roots. -/
theorem thirdReduced_singular (p X Y : Quad) (hp : piDividesQ p)
    (hF : piDividesQ (thirdReduced p X Y))
    (hP : piDividesQ (thirdReducedPartialP p X Y)) :
    piDividesQ Y ∧ (piDividesQ (sub X omega) ∨ piDividesQ (sub X omegaConj)) := by
  rw [thirdReduced_decomp] at hF
  have hY := BlowupOddA.piDividesQ_sq
    ((BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left hp)).1 hF)
  rw [thirdReducedPartialP_decomp] at hP
  have htr := (BlowupOddA.piDividesQ_neg _).1
    ((BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left hp)).1 hP)
  rw [transverseReduced_factor] at htr
  exact ⟨hY, (BlowupOddA.piDividesQ_mul _ _).1 htr⟩

theorem piQ_add {x y : Quad} (hx : piDividesQ x) (hy : piDividesQ y) : piDividesQ (add x y) :=
  (BlowupOddA.piDividesQ_add_left hy).2 hx

theorem thirdReduced_roots_singular (p X Y : Quad) (hp : piDividesQ p) (hY : piDividesQ Y)
    (hX : piDividesQ (sub X omega) ∨ piDividesQ (sub X omegaConj)) :
    piDividesQ (thirdReduced p X Y) ∧ piDividesQ (thirdReducedPartialP p X Y) ∧
      piDividesQ (thirdReducedPartialX p X Y) ∧ piDividesQ (thirdReducedPartialY p X Y) := by
  have htr : piDividesQ (transverseReduced X) := by
    rw [transverseReduced_factor]
    exact (BlowupOddA.piDividesQ_mul _ _).2 hX
  refine ⟨?_, ?_, thirdReducedPartialX_on_p p X Y hp, thirdReducedPartialY_pi p X Y⟩
  · rw [thirdReduced_decomp]
    exact piQ_add (BlowupOddA.piDividesQ_mul_left hY) (BlowupOddA.piDividesQ_mul_left hp)
  · rw [thirdReducedPartialP_decomp]
    exact piQ_add ((BlowupOddA.piDividesQ_neg _).2 htr) (BlowupOddA.piDividesQ_mul_left hp)

/-- `X² + X + 1` on the third `X`-chart, with units replaced by `1`. -/
def thirdXReduced (t S T : Quad) : Quad :=
  sub (mul T T)
    (add (mul t (mul S (transverseReduced S)))
      (mul (mul (mul t t) t) (mul S S)))

def thirdXReducedPartialT (t S T : Quad) : Quad :=
  neg (add (mul S (transverseReduced S))
    (mul (ofG (GaussInt.ofInt 3)) (mul (mul t t) (mul S S))))

def thirdXReducedPartialTCof (t S T : Quad) : Quad :=
  neg (mul (ofG (GaussInt.ofInt 3)) (mul t (mul S S)))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem thirdXReduced_decomp (t S T : Quad) :
    thirdXReduced t S T =
      add (mul T T) (mul t (neg (add (mul S (transverseReduced S))
        (mul (mul t t) (mul S S))))) := by
  simp only [thirdXReduced, transverseReduced, ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt3]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem thirdXReducedPartialT_decomp (t S T : Quad) :
    thirdXReducedPartialT t S T =
      add (neg (mul S (transverseReduced S))) (mul t (thirdXReducedPartialTCof t S T)) := by
  simp only [thirdXReducedPartialT, thirdXReducedPartialTCof, transverseReduced,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt3]
  to_ring_ops
  grind

/-- On `π ∣ t` the reduced third `X`-chart is singular at `S ≡ 0` and at the two roots. -/
theorem thirdXReduced_singular_on_t (t S T : Quad) (ht : piDividesQ t)
    (hF : piDividesQ (thirdXReduced t S T))
    (hD : piDividesQ (thirdXReducedPartialT t S T)) :
    piDividesQ T ∧ (piDividesQ S ∨ piDividesQ (sub S omega) ∨ piDividesQ (sub S omegaConj)) := by
  rw [thirdXReduced_decomp] at hF
  have hT := BlowupOddA.piDividesQ_sq
    ((BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left ht)).1 hF)
  rw [thirdXReducedPartialT_decomp] at hD
  have hprod := (BlowupOddA.piDividesQ_neg _).1
    ((BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left ht)).1 hD)
  rcases (BlowupOddA.piDividesQ_mul S (transverseReduced S)).1 hprod with hS | hQ
  · exact ⟨hT, Or.inl hS⟩
  · rw [transverseReduced_factor] at hQ
    rcases (BlowupOddA.piDividesQ_mul _ _).1 hQ with h | h
    · exact ⟨hT, Or.inr (Or.inl h)⟩
    · exact ⟨hT, Or.inr (Or.inr h)⟩

/-- Strict transform of the third exceptional line, units replaced by `1`. -/
def chain4SReduced (S a b : Quad) : Quad :=
  sub (mul b b)
    (add (mul a (transverseReduced S))
      (mul (mul (mul S S) S) (mul (mul a a) a)))

def chain4SReducedPartial (S a : Quad) : Quad :=
  neg (add (transverseReduced S)
    (mul (ofG (GaussInt.ofInt 3)) (mul (mul (mul S S) S) (mul a a))))

def chain4SReducedPartialCofA (S a : Quad) : Quad :=
  neg (mul (ofG (GaussInt.ofInt 3)) (mul (mul (mul S S) S) a))

def chain4SReducedPartialCofS (S a : Quad) : Quad :=
  neg (add (add one S)
    (mul (ofG (GaussInt.ofInt 3)) (mul (mul S S) (mul a a))))

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem chain4SReduced_decomp (S a b : Quad) :
    chain4SReduced S a b =
      add (mul b b) (mul a (neg (add (transverseReduced S)
        (mul (mul (mul S S) S) (mul a a))))) := by
  simp only [chain4SReduced, transverseReduced, ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt3]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem chain4SReducedPartial_decomp_a (S a : Quad) :
    chain4SReducedPartial S a =
      add (neg (transverseReduced S)) (mul a (chain4SReducedPartialCofA S a)) := by
  simp only [chain4SReducedPartial, chain4SReducedPartialCofA, transverseReduced,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt3]
  to_ring_ops
  grind

set_option maxRecDepth 4096 in
set_option maxHeartbeats 4000000 in
theorem chain4SReducedPartial_decomp_S (S a : Quad) :
    chain4SReducedPartial S a =
      add (neg one) (mul S (chain4SReducedPartialCofS S a)) := by
  simp only [chain4SReducedPartial, chain4SReducedPartialCofS, transverseReduced,
    ofG_neg, one_eq, zero_eq, ofG_one, ofG_ofInt3]
  to_ring_ops
  grind

theorem chain4SReduced_regular_on_S (S a : Quad) (hS : piDividesQ S) :
    ¬ piDividesQ (chain4SReducedPartial S a) := by
  rw [chain4SReducedPartial_decomp_S]
  exact BlowupOddA.not_piDividesQ_add_of_right BlowupOddA.not_piDividesQ_neg_one
    (BlowupOddA.piDividesQ_mul_left hS)

/-- On `π ∣ a` the reduced chart is singular exactly at the two roots. -/
theorem chain4SReduced_singular_on_a (S a b : Quad) (ha : piDividesQ a)
    (hF : piDividesQ (chain4SReduced S a b))
    (hD : piDividesQ (chain4SReducedPartial S a)) :
    piDividesQ b ∧ (piDividesQ (sub S omega) ∨ piDividesQ (sub S omegaConj)) := by
  rw [chain4SReduced_decomp] at hF
  have hb := BlowupOddA.piDividesQ_sq
    ((BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left ha)).1 hF)
  rw [chain4SReducedPartial_decomp_a] at hD
  have htr := (BlowupOddA.piDividesQ_neg _).1
    ((BlowupOddA.piDividesQ_add_left (BlowupOddA.piDividesQ_mul_left ha)).1 hD)
  rw [transverseReduced_factor] at htr
  exact ⟨hb, (BlowupOddA.piDividesQ_mul _ _).1 htr⟩

end Inert

end BlowupEvenA
