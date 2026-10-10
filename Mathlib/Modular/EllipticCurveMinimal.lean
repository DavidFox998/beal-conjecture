import DarmonMerel.«1_FreyCurve4413»
import Mathlib.Modular.QCurve4413
import Mathlib.Modular.DiscriminantNorm
import Mathlib.Modular.X0_32_Construction

/-!
# Minimal Weierstrass model over `ℤ[√-1]`

`Qi` in this file is a pair of integers `re + im √(-1)`. It is the ring
`ℤ[√-1]`, not the field `ℚ(√-1)`. There is no elliptic-curve library
behind these definitions.

`EllipticCurveMinimal.ofFrey` is the model
`y² = x³ + (4a) x² + 2(a² + b² √(-1)) x`. Its discriminant is Pacetti's
`Δ`, and `ofFrey_discriminant_nonzero` is `discriminant_nonzero_of_ab_ne_zero`.
`c4_c6_discriminant` is the identity `c₄³ - c₆² = 1728 Δ`.

`divisionPsi 13` is the classical division polynomial, built from
`ψ₀ = 0`, `ψ₁ = 1`, `ψ₂ = 2y`, `ψ₃`, `ψ₄`, and the recurrence

```
ψ_{2m+1} = ψ_{m+2} ψ_m³ - ψ_{m-1} ψ_{m+1}³
ψ_{2m} ψ₂ = ψ_m (ψ_{m+2} ψ_{m-1}² - ψ_{m-2} ψ_{m+1}²).
```

Odd values lie in `ℤ[√-1][x]`. `divisionDegree_13` is the count
`(13² - 1) / 2 = 84`. On the curve `y² = x³ - x`, the constructed list
has length `85` and leading coefficient `13`.

`psi13_no_integral_root_on_minus_x` is that statement for the single curve
`y² = x³ - x`: the constant term is a unit, so an integral root would be a
unit, and none of `±1`, `±√(-1)` is a root. The Frey polynomial is a
different list. `psi13_no_integral_root_OPEN` for a general coefficient
triple is not a theorem. The norm `N(Δ) = 2¹⁸ (c³)¹³` is not the constant
term of `ψ₁₃`.

A root `num / den` in `ℚ(√-1)` clears to an equation in which `den` divides
`13 * num^84` once the leading coefficient is `13`. That does not force
`den` to be a unit, so absence of an integral root does not yield absence
of a root in `ℚ(√-1)`. `ℤ[√-1]` being a UFD is not formalized. A root-free
division polynomial is not a Galois representation and not
`RhoE13Open`: a cyclic subgroup of order `13` stable under
`Gal(ℚ̄/ℚ(√-1))` cuts out a degree-6 factor, not a linear factor.
`rho_E_13` stays unresolved. `FreyConductor_OPEN` stays a hypothesis.

`norm_two_adic` is the 2-adic valuation of the field norm:
if `|c| = 2^k m` with `m` odd, then `v₂(N(Δ)) = 18 + 39 k`. Tate's
algorithm is not formalized. The conductor exponents `5` and `6` are not
theorems, and `FreyConductor_OPEN` has no proof. `RhoE13Open` has no term.
`ribet_level_lowering_4413` is unchanged.
-/

structure GaussInt where
  re : Int
  im : Int
deriving DecidableEq, Repr

/-- Integral element of `ℤ[√-1]`. Not an element of the field `ℚ(√-1)`. -/
abbrev Qi := GaussInt

namespace GaussInt

instance : Inhabited GaussInt := ⟨⟨0, 0⟩⟩

def zero : GaussInt := ⟨0, 0⟩
def one : GaussInt := ⟨1, 0⟩
def ofInt (n : Int) : GaussInt := ⟨n, 0⟩
def add (z w : GaussInt) : GaussInt := ⟨z.re + w.re, z.im + w.im⟩
def sub (z w : GaussInt) : GaussInt := ⟨z.re - w.re, z.im - w.im⟩
def neg (z : GaussInt) : GaussInt := ⟨-z.re, -z.im⟩
def mul (z w : GaussInt) : GaussInt :=
  ⟨z.re * w.re - z.im * w.im, z.re * w.im + z.im * w.re⟩
def smul (n : Int) (z : GaussInt) : GaussInt := ⟨n * z.re, n * z.im⟩
def norm (z : GaussInt) : Int := z.re * z.re + z.im * z.im

/-- Quotient `z / d` in `ℚ(√-1)`, truncated to `ℤ[√-1]` by integer division.
Exact when `norm d` divides both components of `z * conjugate(d)`. -/
def divExact (z d : GaussInt) : GaussInt :=
  let num := mul z ⟨d.re, -d.im⟩
  let n := norm d
  ⟨num.re / n, num.im / n⟩

theorem mul_neg (z w : GaussInt) : mul z (neg w) = neg (mul z w) := by
  cases z
  cases w
  simp [mul, neg, Int.mul_neg]
  constructor <;> omega

theorem norm_mul (z w : GaussInt) : norm (mul z w) = norm z * norm w := by
  cases z
  cases w
  simp [norm, mul]
  grind

theorem self_sq_natAbs (n : Int) : n * n = ↑(n.natAbs * n.natAbs) := by
  cases n with
  | ofNat k => rfl
  | negSucc k =>
    rw [Int.negSucc_eq, Int.neg_mul_neg, Int.natAbs_neg]
    have h : (↑(k + 1) : Int) = ↑k + 1 := by simp
    rw [← h, Int.natAbs_natCast]
    rfl

theorem nat_cast_add (a b : Nat) : (↑(a + b) : Int) = ↑a + ↑b := by
  simp

theorem norm_nonneg (z : GaussInt) : 0 ≤ norm z := by
  rw [norm, self_sq_natAbs z.re, self_sq_natAbs z.im, ← nat_cast_add]
  exact Int.natCast_nonneg _

theorem natAbs_sq_sum (re im : Int) :
    re * re + im * im = ↑(re.natAbs * re.natAbs + im.natAbs * im.natAbs) := by
  rw [self_sq_natAbs re, self_sq_natAbs im, nat_cast_add]

/-- The only solutions of `re² + im² = 1` in `ℤ` are the four units. -/
theorem norm_one_units (z : GaussInt) (h : norm z = 1) :
    z = ⟨1, 0⟩ ∨ z = ⟨-1, 0⟩ ∨ z = ⟨0, 1⟩ ∨ z = ⟨0, -1⟩ := by
  cases z with
  | mk re im =>
    have hsum : re.natAbs * re.natAbs + im.natAbs * im.natAbs = 1 := by
      have hcast := natAbs_sq_sum re im
      have hn : re * re + im * im = 1 := by simpa [norm] using h
      rw [hcast] at hn
      exact Int.ofNat.inj hn
    have hi2 : im.natAbs * im.natAbs ≤ 1 := by
      have : im.natAbs * im.natAbs ≤ re.natAbs * re.natAbs + im.natAbs * im.natAbs :=
        Nat.le_add_left _ _
      omega
    have hr2 : re.natAbs * re.natAbs ≤ 1 := by
      have : re.natAbs * re.natAbs ≤ re.natAbs * re.natAbs + im.natAbs * im.natAbs :=
        Nat.le_add_right _ _
      omega
    have hi : im.natAbs = 0 ∨ im.natAbs = 1 := by
      match him : im.natAbs with
      | 0 => exact Or.inl rfl
      | 1 => exact Or.inr rfl
      | n + 2 =>
        have h4 : 4 ≤ (n + 2) * (n + 2) :=
          Nat.mul_le_mul (show 2 ≤ n + 2 by omega) (show 2 ≤ n + 2 by omega)
        have hsq : (n + 2) * (n + 2) ≤ 1 := by
          simpa [him] using hi2
        have : 4 ≤ 1 := Nat.le_trans h4 hsq
        omega
    have hr : re.natAbs = 0 ∨ re.natAbs = 1 := by
      match hre : re.natAbs with
      | 0 => exact Or.inl rfl
      | 1 => exact Or.inr rfl
      | n + 2 =>
        have h4 : 4 ≤ (n + 2) * (n + 2) :=
          Nat.mul_le_mul (show 2 ≤ n + 2 by omega) (show 2 ≤ n + 2 by omega)
        have hsq : (n + 2) * (n + 2) ≤ 1 := by
          simpa [hre] using hr2
        have : 4 ≤ 1 := Nat.le_trans h4 hsq
        omega
    have hone (n : Int) (hn : n.natAbs = 1) : n = 1 ∨ n = -1 := by
      cases n with
      | ofNat k =>
        simp [Int.natAbs] at hn
        subst hn
        exact Or.inl rfl
      | negSucc k =>
        simp [Int.natAbs] at hn
        have : k = 0 := by omega
        subst this
        exact Or.inr rfl
    rcases hr with hr | hr <;> rcases hi with hi | hi
    · simp [hr, hi] at hsum
    · have hre0 : re = 0 := Int.natAbs_eq_zero.mp hr
      rcases hone im hi with him | him
      · exact Or.inr (Or.inr (Or.inl (by simp [hre0, him])))
      · exact Or.inr (Or.inr (Or.inr (by simp [hre0, him])))
    · have him0 : im = 0 := Int.natAbs_eq_zero.mp hi
      rcases hone re hr with hre | hre
      · exact Or.inl (by simp [hre, him0])
      · exact Or.inr (Or.inl (by simp [hre, him0]))
    · simp [hr, hi] at hsum

theorem norm_eq_one_of_mul_norm_one (z q : GaussInt) (h : norm (mul z q) = 1) :
    norm z = 1 := by
  rw [norm_mul] at h
  have hz : 0 ≤ norm z := norm_nonneg z
  have hq : 0 ≤ norm q := norm_nonneg q
  have hnat : (norm z).toNat * (norm q).toNat = 1 := by
    have hmul : (norm z).toNat * (norm q).toNat = (norm z * norm q).toNat :=
      (Int.toNat_mul hz hq).symm
    rw [hmul, h]
    rfl
  have hzn : (norm z).toNat = 1 := Nat.eq_one_of_mul_eq_one_right hnat
  have hz' : norm z = ↑(norm z).toNat := (Int.toNat_of_nonneg hz).symm
  simpa [hzn] using hz'

theorem add_eq_zero_neg {c z : GaussInt} (h : add c z = zero) : c = neg z := by
  have hr := congrArg re h
  have hi := congrArg im h
  cases c
  cases z
  simp [add, zero, neg] at hr hi ⊢
  constructor <;> omega

end GaussInt

def gaussTrim (p : List GaussInt) : List GaussInt :=
  let t := (p.reverse.dropWhile (· == GaussInt.zero)).reverse
  if t.isEmpty then [GaussInt.zero] else t

def gaussAdd : List GaussInt → List GaussInt → List GaussInt
  | [], q => q
  | p, [] => p
  | a :: p, b :: q => GaussInt.add a b :: gaussAdd p q

def gaussPadd (p q : List GaussInt) : List GaussInt :=
  gaussTrim (gaussAdd p q)

def gaussPmul : List GaussInt → List GaussInt → List GaussInt
  | [], _ => [GaussInt.zero]
  | _, [] => [GaussInt.zero]
  | a :: p, q =>
    gaussPadd (q.map (GaussInt.mul a)) (GaussInt.zero :: gaussPmul p q)

/-- Horner evaluation, constant term first. -/
def evalPoly : List GaussInt → GaussInt → GaussInt
  | [], _ => GaussInt.zero
  | c :: cs, r => GaussInt.add c (GaussInt.mul r (evalPoly cs r))

/-- An integral root divides the constant term.

If `c₀ + r q(r) = 0`, then `r * (-q(r)) = c₀`. This does not bound roots
in `ℚ(√-1)` that are not in `ℤ[√-1]`. -/
theorem integral_root_divides_constant
    (c : GaussInt) (cs : List GaussInt) (r : GaussInt)
    (h : evalPoly (c :: cs) r = GaussInt.zero) :
    GaussInt.mul r (GaussInt.neg (evalPoly cs r)) = c := by
  have h' : GaussInt.add c (GaussInt.mul r (evalPoly cs r)) = GaussInt.zero := by
    simpa [evalPoly] using h
  have hc : c = GaussInt.neg (GaussInt.mul r (evalPoly cs r)) :=
    GaussInt.add_eq_zero_neg h'
  rw [hc, GaussInt.mul_neg]

structure EllipticCurveMinimal where
  a1 : Qi
  a2 : Qi
  a3 : Qi
  a4 : Qi
  a6 : Qi

namespace EllipticCurveMinimal

def ofFrey (E : FreyCurve4413) : EllipticCurveMinimal where
  a1 := GaussInt.zero
  a2 := GaussInt.ofInt E.A_int
  a3 := GaussInt.zero
  a4 := ⟨E.B_re, E.B_im⟩
  a6 := GaussInt.zero

def c6Of (A Br Bi : Int) : GaussInt :=
  ⟨-64 * A ^ 3 + 288 * A * Br, 288 * A * Bi⟩

def gmul (z w : GaussInt) : GaussInt :=
  GaussInt.mul z w

def discOf (A Br Bi : Int) : GaussInt :=
  ⟨(discPair A Br Bi).1, (discPair A Br Bi).2⟩

/-- `c₄³ - c₆² = 1728 Δ` for `y² = x³ + A x² + B x`. -/
theorem c4_c6_discriminant (A Br Bi : Int) :
    GaussInt.sub (gmul (⟨(c4Pair A Br Bi).1, (c4Pair A Br Bi).2⟩)
        (gmul (⟨(c4Pair A Br Bi).1, (c4Pair A Br Bi).2⟩)
          (⟨(c4Pair A Br Bi).1, (c4Pair A Br Bi).2⟩)))
      (gmul (c6Of A Br Bi) (c6Of A Br Bi)) =
        GaussInt.smul 1728 (discOf A Br Bi) := by
  simp [gmul, GaussInt.mul, GaussInt.sub, GaussInt.smul, c6Of, discOf, c4Pair, discPair,
    FreyCurve4413.Zsqrt1_mul]
  constructor <;> grind

/-- Both components of `Δ` are nonzero when `a` and `b` are nonzero. -/
theorem ofFrey_discriminant_nonzero (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0) :
    E.discriminant_re ≠ 0 ∧ E.discriminant_im ≠ 0 :=
  FreyCurve4413.discriminant_nonzero_of_ab_ne_zero E ha hb

end EllipticCurveMinimal

/-- Count `(p² - 1) / 2` of the x-coordinates of the nonzero `p`-torsion. -/
def divisionDegree (p : Nat) : Nat :=
  (p * p - 1) / 2

theorem divisionDegree_13 : divisionDegree 13 = 84 := by
  decide

private def y2Poly (a2 a4 a6 : GaussInt) : List GaussInt :=
  [a6, a4, a2, GaussInt.one]

private def emul (a2 a4 a6 : GaussInt) (p q : List GaussInt × List GaussInt) :
    List GaussInt × List GaussInt :=
  let y2 := y2Poly a2 a4 a6
  let U := gaussPadd (gaussPmul p.1 q.1) (gaussPmul (gaussPmul p.2 q.2) y2)
  let V := gaussPadd (gaussPmul p.1 q.2) (gaussPmul p.2 q.1)
  (U, V)

private def epow (a2 a4 a6 : GaussInt) (p : List GaussInt × List GaussInt) : Nat →
    List GaussInt × List GaussInt
  | 0 => ([GaussInt.one], [GaussInt.zero])
  | n + 1 => emul a2 a4 a6 p (epow a2 a4 a6 p n)

private def polySub (p q : List GaussInt) : List GaussInt :=
  gaussPadd p (q.map GaussInt.neg)

private def shiftOne (shift : Nat) (q : GaussInt) : List GaussInt :=
  List.replicate shift GaussInt.zero ++ [q]

private def shiftMul (shift : Nat) (q : GaussInt) (den : List GaussInt) : List GaussInt :=
  List.replicate shift GaussInt.zero ++ den.map (GaussInt.mul q)

private def polyDivFuel (fuel : Nat) (num den : List GaussInt) : List GaussInt :=
  match fuel with
  | 0 => [GaussInt.zero]
  | fuel + 1 =>
    let num := gaussTrim num
    let den := gaussTrim den
    if num.length < den.length then [GaussInt.zero]
    else
      let q := GaussInt.divExact (num.getLastD GaussInt.zero) (den.getLastD GaussInt.zero)
      let shift := num.length - den.length
      let lower := polyDivFuel fuel (polySub num (shiftMul shift q den)) den
      gaussPadd (shiftOne shift q) lower

private def bInv (a2 a4 a6 : GaussInt) : GaussInt × GaussInt × GaussInt × GaussInt :=
  let b2 := GaussInt.smul 4 a2
  let b4 := GaussInt.smul 2 a4
  let b6 := GaussInt.smul 4 a6
  let b8 := GaussInt.sub (GaussInt.mul (GaussInt.smul 4 a2) a6) (GaussInt.mul a4 a4)
  (b2, b4, b6, b8)

private def psiAt (n : Nat) (prev : List (List GaussInt × List GaussInt))
    (a2 a4 a6 : GaussInt) : List GaussInt × List GaussInt :=
  let get (i : Nat) : List GaussInt × List GaussInt :=
    prev.getD i ([GaussInt.zero], [GaussInt.zero])
  if n == 0 then ([GaussInt.zero], [GaussInt.zero])
  else if n == 1 then ([GaussInt.one], [GaussInt.zero])
  else if n == 2 then ([GaussInt.zero], [GaussInt.ofInt 2])
  else if n == 3 then
    let (b2, b4, b6, b8) := bInv a2 a4 a6
    ([b8, GaussInt.smul 3 b6, GaussInt.smul 3 b4, b2, GaussInt.ofInt 3], [GaussInt.zero])
  else if n == 4 then
    let (b2, b4, b6, b8) := bInv a2 a4 a6
    let poly : List GaussInt :=
      [GaussInt.sub (GaussInt.mul b4 b8) (GaussInt.mul b6 b6),
        GaussInt.sub (GaussInt.mul b2 b8) (GaussInt.mul b4 b6),
        GaussInt.smul 10 b8, GaussInt.smul 10 b6, GaussInt.smul 5 b4, b2,
        GaussInt.ofInt 2]
    emul a2 a4 a6 ([GaussInt.zero], [GaussInt.ofInt 2]) (poly, [GaussInt.zero])
  else if n % 2 == 1 then
    let m := (n - 1) / 2
    let left := emul a2 a4 a6 (get (m + 2)) (epow a2 a4 a6 (get m) 3)
    let right := emul a2 a4 a6 (get (m - 1)) (epow a2 a4 a6 (get (m + 1)) 3)
    (polySub left.1 right.1, polySub left.2 right.2)
  else
    let m := n / 2
    let left := emul a2 a4 a6 (get (m + 2)) (epow a2 a4 a6 (get (m - 1)) 2)
    let right := emul a2 a4 a6 (get (m - 2)) (epow a2 a4 a6 (get (m + 1)) 2)
    let prod := emul a2 a4 a6 (get m) (polySub left.1 right.1, polySub left.2 right.2)
    let den := gaussPmul [GaussInt.ofInt 2] (y2Poly a2 a4 a6)
    ([GaussInt.zero], polyDivFuel (prod.1.length + 2) prod.1 den)

private def divisionTower (n : Nat) (a2 a4 a6 : GaussInt) :
    List (List GaussInt × List GaussInt) :=
  match n with
  | 0 => []
  | n + 1 =>
    let prev := divisionTower n a2 a4 a6
    prev ++ [psiAt n prev a2 a4 a6]

/-- `ψₙ` for `y² = x³ + a₂ x² + a₄ x + a₆`.

For odd `n` this is the polynomial in `x`. For even `n` the returned list is
the coefficient of `y`, and `ψₙ = y *` that polynomial. Coefficients lie in
`ℤ[√-1]`. -/
def divisionPsi (n : Nat) (a2 a4 a6 : GaussInt) : List GaussInt :=
  let tower := divisionTower (n + 1) a2 a4 a6
  let uv := tower.getD n ([GaussInt.zero], [GaussInt.zero])
  if n % 2 == 0 then uv.2 else uv.1

/-- `ψ₁₃` as a list of coefficients in `ℤ[√-1]`, constant term first. -/
def psi13 (a2 a4 a6 : GaussInt) : List Qi :=
  divisionPsi 13 a2 a4 a6

/-- `ψ₃` has degree 4 and leading coefficient 3. -/
theorem psi3_degree (a2 a4 a6 : GaussInt) :
    (divisionPsi 3 a2 a4 a6).length = 5 ∧
      (divisionPsi 3 a2 a4 a6).getLastD GaussInt.zero = GaussInt.ofInt 3 := by
  simp [divisionPsi, divisionTower, psiAt, bInv]

/-- `psi13_no_integral_root_OPEN`.

The statement that `ψ₁₃` has no root in `ℤ[√-1]`. Proved below only for
`y² = x³ - x`. Not a theorem for a general Frey coefficient triple. A root
in `ℚ(√-1)` that is not integral is a further statement, also not proved.
-/
def psi13_no_integral_root_OPEN (a2 a4 a6 : GaussInt) : Prop :=
  ∀ r : GaussInt, evalPoly (psi13 a2 a4 a6) r ≠ GaussInt.zero

/-- On `y² = x³ - x`, the constructed `ψ₁₃` has degree 84 and leading coefficient 13. -/
theorem psi13_on_minus_x :
    let p := psi13 (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0)
    p.length = 85 ∧ p.getLastD GaussInt.zero = GaussInt.ofInt 13 := by
  native_decide

/-- Constant term and the four units, on `y² = x³ - x`. -/
theorem psi13_minus_x_units :
    let p := psi13 (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0)
    (p.headD GaussInt.zero = ⟨1, 0⟩ ∨ p.headD GaussInt.zero = ⟨-1, 0⟩) ∧
      evalPoly p ⟨1, 0⟩ ≠ GaussInt.zero ∧
      evalPoly p ⟨-1, 0⟩ ≠ GaussInt.zero ∧
      evalPoly p ⟨0, 1⟩ ≠ GaussInt.zero ∧
      evalPoly p ⟨0, -1⟩ ≠ GaussInt.zero := by
  native_decide

/-- `13 = (2 + 3√-1)(2 - 3√-1)` in `ℤ[√-1]`.

The leading coefficient of `ψ₁₃` on `y² = x³ - x` is `13`. The factor
`2 + 3√-1` has norm `13`, so it is not a unit. A root in `ℚ(√-1)` whose
denominator is that factor is compatible with the leading coefficient and
need not lie in `ℤ[√-1]`. -/
theorem thirteen_split :
    GaussInt.mul ⟨2, 3⟩ ⟨2, -3⟩ = GaussInt.ofInt 13 := by
  native_decide

theorem thirteen_factor_norm : GaussInt.norm ⟨2, 3⟩ = 13 := by
  native_decide

theorem eval_head (p : List GaussInt) (r : GaussInt) (hne : p ≠ [])
    (h : evalPoly p r = GaussInt.zero) :
    GaussInt.mul r (GaussInt.neg (evalPoly p.tail r)) = p.headD GaussInt.zero := by
  cases p with
  | nil => exact absurd rfl hne
  | cons c cs =>
    simpa [List.headD] using integral_root_divides_constant c cs r h

/-- `ψ₁₃` has no root in `ℤ[√-1]` on `y² = x³ - x`.

The constant term is `±1`, so `integral_root_divides_constant` forces a root
to be a unit. This curve is not the Frey model of a solution of
`a⁴ + b⁴ = c¹³`.
-/
theorem psi13_no_integral_root_on_minus_x :
    psi13_no_integral_root_OPEN (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0) := by
  intro r hr
  let p := psi13 (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0)
  have hdata := psi13_minus_x_units
  have hlen : p.length = 85 := psi13_on_minus_x.1
  have hne : p ≠ [] := by
    intro hempty
    simp [hempty] at hlen
  have hdiv := eval_head p r hne hr
  have hc : p.headD GaussInt.zero = ⟨1, 0⟩ ∨
      p.headD GaussInt.zero = ⟨-1, 0⟩ := hdata.1
  have hnorm : GaussInt.norm r = 1 := by
    have hmul : GaussInt.norm (GaussInt.mul r (GaussInt.neg (evalPoly p.tail r))) = 1 := by
      rw [hdiv]
      rcases hc with hc | hc
      · rw [hc]; simp [GaussInt.norm]
      · rw [hc]; simp [GaussInt.norm]
    exact GaussInt.norm_eq_one_of_mul_norm_one r _ hmul
  have hunit := GaussInt.norm_one_units r hnorm
  rcases hunit with h | h | h | h
  · rw [h] at hr
    exact hdata.2.1 hr
  · rw [h] at hr
    exact hdata.2.2.1 hr
  · rw [h] at hr
    exact hdata.2.2.2.1 hr
  · rw [h] at hr
    exact hdata.2.2.2.2 hr

namespace FreyCurve4413

theorem norm_natAbs_local (E : FreyCurve4413) :
    (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
      2 ^ 18 * E.c.natAbs ^ 39 := by
  rw [discriminant_norm E]
  rw [Int.natAbs_mul, Int.natAbs_pow, Int.natAbs_pow]
  rfl

theorem nat_odd_pow (m n : Nat) (h : m % 2 = 1) : m ^ n % 2 = 1 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Nat.pow_succ, Nat.mul_mod, h, ih]

/-- `v₂(N(Δ)) = 18 + 39 k` when `|c| = 2^k m` and `m` is odd.

This is the 2-adic valuation of the field norm `2¹⁸ c³⁹`. It is not the
valuation of a minimal discriminant at the prime `1 + √(-1)`, and it is not
Tate's algorithm. The conductor is not proved to be `32 c²` or `64 c²`.
-/
theorem norm_two_adic (E : FreyCurve4413) (k m : Nat)
    (hc : E.c.natAbs = 2 ^ k * m) (hodd : m % 2 = 1) :
    (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
        2 ^ (18 + 39 * k) * m ^ 39 ∧
      m ^ 39 % 2 = 1 := by
  have hnorm := norm_natAbs_local E
  rw [hc, Nat.mul_pow, ← Nat.pow_mul] at hnorm
  have hcomb : 2 ^ 18 * (2 ^ (k * 39) * m ^ 39) = 2 ^ (18 + k * 39) * m ^ 39 := by
    rw [← Nat.mul_assoc, Nat.pow_add]
  have hexp : 18 + k * 39 = 18 + 39 * k := by
    rw [Nat.mul_comm]
  rw [hcomb, hexp] at hnorm
  exact ⟨hnorm, nat_odd_pow m 39 hodd⟩

end FreyCurve4413
