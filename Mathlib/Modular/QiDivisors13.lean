import Mathlib.Modular.EllipticCurveMinimal

/-!
# Divisors of `13` in `ℤ[√-1]`

`13` splits as `(2 + 3 √(-1))(2 - 3 √(-1))`. The unit group is
`{±1, ±√(-1)}`. Up to units, the positive divisors are `1`, `2 + 3 √(-1)`,
`2 - 3 √(-1)`, and `13`. That is sixteen elements:

* four units, of norm `1`;
* eight elements of norm `13`, the unit multiples of the two conjugate
  prime factors;
* four unit multiples of `13`, of norm `169`.

Counting “four units times eight divisors” double-counts the norm-`13`
elements and produces `32`. The list below has length `16`.
`5 + 12 √(-1)` has norm `169` and does not divide `13`.

`divisors_of_13` is the classification: if `z * q = 13`, then `z` is one
of these sixteen. It does not put a root of `ψ₁₃` into `ℤ[√-1]`. The
leading coefficient is `13` only on the auxiliary curve `y² = x³ - x`, and
`den_divides_lead_mul_num_pow` does not include Euclid's lemma.
-/

namespace QiDivisors13

theorem thirteen_isPrime : IsPrime 13 := by
  refine ⟨by decide, fun d hd => ?_⟩
  rcases hd with ⟨k, hk⟩
  match d with
  | 0 => simp at hk
  | 1 => exact Or.inl rfl
  | 2 => omega
  | 3 => omega
  | 4 => omega
  | 5 => omega
  | 6 => omega
  | 7 => omega
  | 8 => omega
  | 9 => omega
  | 10 => omega
  | 11 => omega
  | 12 => omega
  | 13 => exact Or.inr rfl
  | n + 14 =>
    cases k with
    | zero => simp at hk
    | succ k =>
      have hge : 14 ≤ (n + 14) * (k + 1) :=
        Nat.mul_le_mul (Nat.le_add_left 14 n) (Nat.succ_le_succ (Nat.zero_le k))
      have hlt : (n + 14) * (k + 1) = 13 := hk.symm
      omega

theorem nat_mul_eq_169 {a b : Nat} (h : a * b = 169) :
    a = 1 ∨ a = 13 ∨ a = 169 := by
  have h13 : 13 * 13 = 169 := by decide
  by_cases hdiv : 13 ∣ a
  · rcases hdiv with ⟨a1, ha1⟩
    have hrest : a1 * b = 13 := by
      have : 13 * (a1 * b) = 13 * 13 := by
        rw [← Nat.mul_assoc, ← ha1, h, h13]
      exact Nat.eq_of_mul_eq_mul_left (by decide) this
    have hd : a1 ∣ 13 := ⟨b, hrest.symm⟩
    rcases thirteen_isPrime.2 a1 hd with h1 | h13a
    · rw [h1] at ha1
      exact Or.inr (Or.inl ha1)
    · rw [h13a] at ha1
      exact Or.inr (Or.inr (by rw [ha1, h13]))
  · have hb : 13 ∣ b :=
      prime_dvd_mul thirteen_isPrime (by rw [h]; exact (by decide : 13 ∣ 169)) hdiv
    rcases hb with ⟨b1, hb1⟩
    have hrest : a * b1 = 13 := by
      have : 13 * (a * b1) = 13 * 13 := by
        rw [Nat.mul_left_comm, ← hb1, h, h13]
      exact Nat.eq_of_mul_eq_mul_left (by decide) this
    have hda : a ∣ 13 := ⟨b1, hrest.symm⟩
    rcases thirteen_isPrime.2 a hda with h1 | hp
    · exact Or.inl h1
    · exact absurd (by rw [hp]; exact Nat.dvd_refl 13) hdiv

private theorem nat_sq_le_thirteen {n : Nat} (h : n * n ≤ 13) : n ≤ 3 := by
  match n with
  | 0 | 1 | 2 | 3 => decide
  | n + 4 =>
    have h16 : 16 ≤ (n + 4) * (n + 4) :=
      Nat.mul_le_mul (Nat.le_add_left 4 n) (Nat.le_add_left 4 n)
    omega

private theorem sum_sq_thirteen {r i : Nat} (h : r * r + i * i = 13) :
    (r = 2 ∧ i = 3) ∨ (r = 3 ∧ i = 2) := by
  have hr : r ≤ 3 := nat_sq_le_thirteen (by
    have : r * r ≤ r * r + i * i := Nat.le_add_right _ _
    omega)
  have hi : i ≤ 3 := nat_sq_le_thirteen (by
    have : i * i ≤ r * r + i * i := Nat.le_add_left _ _
    omega)
  have hr' : r = 0 ∨ r = 1 ∨ r = 2 ∨ r = 3 := by omega
  have hi' : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 := by omega
  rcases hr' with hr | hr | hr | hr <;>
    rcases hi' with hi | hi | hi | hi <;>
      (subst hr; subst hi; (first | exact Or.inl ⟨rfl, rfl⟩ | exact Or.inr ⟨rfl, rfl⟩ | omega))

private theorem eq_or_neg_of_natAbs {n : Int} {k : Nat} (h : n.natAbs = k) :
    n = ↑k ∨ n = -↑k := by
  cases n with
  | ofNat m =>
    left
    simp [Int.natAbs] at h
    simpa [h]
  | negSucc m =>
    right
    have hk : m + 1 = k := by simpa [Int.natAbs] using h
    simp [Int.negSucc_eq, hk.symm]

/-- The eight elements of norm `13`. Each is a unit times `2 ± 3 √(-1)`. -/
theorem norm_thirteen (z : GaussInt) (h : GaussInt.norm z = 13) :
    z = ⟨2, 3⟩ ∨ z = ⟨2, -3⟩ ∨ z = ⟨-2, 3⟩ ∨ z = ⟨-2, -3⟩ ∨
    z = ⟨3, 2⟩ ∨ z = ⟨3, -2⟩ ∨ z = ⟨-3, 2⟩ ∨ z = ⟨-3, -2⟩ := by
  cases z with
  | mk re im =>
    have hsum : re.natAbs * re.natAbs + im.natAbs * im.natAbs = 13 := by
      have hcast := GaussInt.natAbs_sq_sum re im
      have hn : re * re + im * im = 13 := by simpa [GaussInt.norm] using h
      rw [hcast] at hn
      exact Int.ofNat.inj hn
    rcases sum_sq_thirteen hsum with ⟨hr, hi⟩ | ⟨hr, hi⟩
    · have hre := eq_or_neg_of_natAbs (by simpa [hr] : re.natAbs = 2)
      have him := eq_or_neg_of_natAbs (by simpa [hi] : im.natAbs = 3)
      rcases hre with hre | hre <;> rcases him with him | him
      · exact Or.inl (by simp [hre, him])
      · exact Or.inr (Or.inl (by simp [hre, him]))
      · exact Or.inr (Or.inr (Or.inl (by simp [hre, him])))
      · exact Or.inr (Or.inr (Or.inr (Or.inl (by simp [hre, him]))))
    · have hre := eq_or_neg_of_natAbs (by simpa [hr] : re.natAbs = 3)
      have him := eq_or_neg_of_natAbs (by simpa [hi] : im.natAbs = 2)
      rcases hre with hre | hre <;> rcases him with him | him
      · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl (by simp [hre, him])))))
      · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl (by simp [hre, him]))))))
      · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl (by simp [hre, him])))))))
      · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (by simp [hre, him])))))))

theorem mul_negOne (z : GaussInt) : GaussInt.mul z ⟨-1, 0⟩ = GaussInt.neg z := by
  cases z
  simp [GaussInt.mul, GaussInt.neg]

theorem mul_i (z : GaussInt) : GaussInt.mul z ⟨0, 1⟩ = ⟨-z.im, z.re⟩ := by
  cases z
  simp [GaussInt.mul]

theorem mul_neg_i (z : GaussInt) : GaussInt.mul z ⟨0, -1⟩ = ⟨z.im, -z.re⟩ := by
  cases z
  simp [GaussInt.mul]

/-- All divisors of `13` in `ℤ[√-1]`. Length `16`, not `32`. -/
def divisors13 : List GaussInt := [
  ⟨1, 0⟩, ⟨-1, 0⟩, ⟨0, 1⟩, ⟨0, -1⟩,
  ⟨2, 3⟩, ⟨-2, -3⟩, ⟨-3, 2⟩, ⟨3, -2⟩,
  ⟨2, -3⟩, ⟨-2, 3⟩, ⟨3, 2⟩, ⟨-3, -2⟩,
  ⟨13, 0⟩, ⟨-13, 0⟩, ⟨0, 13⟩, ⟨0, -13⟩]

theorem divisors13_length : divisors13.length = 16 := rfl

theorem divisors13_nodup : divisors13.Nodup := by
  decide

theorem divisors13_divide :
    GaussInt.mul ⟨1, 0⟩ ⟨13, 0⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨-1, 0⟩ ⟨-13, 0⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨0, 1⟩ ⟨0, -13⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨0, -1⟩ ⟨0, 13⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨2, 3⟩ ⟨2, -3⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨-2, -3⟩ ⟨-2, 3⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨-3, 2⟩ ⟨-3, -2⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨3, -2⟩ ⟨3, 2⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨2, -3⟩ ⟨2, 3⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨-2, 3⟩ ⟨-2, -3⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨3, 2⟩ ⟨3, -2⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨-3, -2⟩ ⟨-3, 2⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨13, 0⟩ ⟨1, 0⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨-13, 0⟩ ⟨-1, 0⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨0, 13⟩ ⟨0, -1⟩ = GaussInt.ofInt 13 ∧
    GaussInt.mul ⟨0, -13⟩ ⟨0, 1⟩ = GaussInt.ofInt 13 := by
  native_decide

/-- If `z * q = 13` in `ℤ[√-1]`, then `z` is one of the sixteen divisors. -/
theorem divisors_of_13 {z q : GaussInt} (h : GaussInt.mul z q = GaussInt.ofInt 13) :
    z ∈ divisors13 := by
  have hprod : GaussInt.norm z * GaussInt.norm q = 169 := by
    have hm := GaussInt.norm_mul z q
    rw [h] at hm
    simpa [GaussInt.norm, GaussInt.ofInt] using hm.symm
  have hnat : (GaussInt.norm z).toNat * (GaussInt.norm q).toNat = 169 := by
    have hz0 := GaussInt.norm_nonneg z
    have hq0 := GaussInt.norm_nonneg q
    have hmul : (GaussInt.norm z).toNat * (GaussInt.norm q).toNat =
        (GaussInt.norm z * GaussInt.norm q).toNat :=
      (Int.toNat_mul hz0 hq0).symm
    rw [hmul, hprod]
    rfl
  rcases nat_mul_eq_169 hnat with h1 | h13 | h169
  · have hz1 : GaussInt.norm z = 1 := by
      rw [(Int.toNat_of_nonneg (GaussInt.norm_nonneg z)).symm, h1]
      decide
    rcases GaussInt.norm_one_units z hz1 with hz | hz | hz | hz
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
  · have hz13 : GaussInt.norm z = 13 := by
      rw [(Int.toNat_of_nonneg (GaussInt.norm_nonneg z)).symm, h13]
      decide
    rcases norm_thirteen z hz13 with
      hz | hz | hz | hz | hz | hz | hz | hz
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
    · rw [hz]; decide
  · have hnq : (GaussInt.norm q).toNat = 1 := by
      have hmul : 169 * (GaussInt.norm q).toNat = 169 * 1 := by
        simpa [h169] using hnat
      exact Nat.eq_of_mul_eq_mul_left (by decide) hmul
    have hq1 : GaussInt.norm q = 1 := by
      rw [(Int.toNat_of_nonneg (GaussInt.norm_nonneg q)).symm, hnq]
      decide
    rcases GaussInt.norm_one_units q hq1 with hq | hq | hq | hq
    · subst hq
      have hmul : GaussInt.mul z ⟨1, 0⟩ = z := by
        cases z
        simp [GaussInt.mul]
      rw [hmul] at h
      rw [h]
      decide
    · subst hq
      rw [mul_negOne] at h
      have hz : z = ⟨-13, 0⟩ := by
        have hneg : z = GaussInt.neg (GaussInt.ofInt 13) := by
          rw [← GaussInt.neg_neg z, h]
        simpa [GaussInt.neg, GaussInt.ofInt] using hneg
      rw [hz]; decide
    · subst hq
      rw [mul_i] at h
      have hre : -z.im = 13 := by
        have := congrArg GaussInt.re h
        simpa [GaussInt.ofInt] using this
      have him : z.re = 0 := by
        have := congrArg GaussInt.im h
        simpa [GaussInt.ofInt] using this
      have hz : z = ⟨0, -13⟩ := by
        cases z with
        | mk re im =>
          simp at hre him
          have : im = -13 := by omega
          simp [him, this]
      rw [hz]; decide
    · subst hq
      rw [mul_neg_i] at h
      have him : z.im = 13 := by
        have := congrArg GaussInt.re h
        simpa [GaussInt.ofInt] using this
      have hre : -z.re = 0 := by
        have := congrArg GaussInt.im h
        simpa [GaussInt.ofInt] using this
      have hz : z = ⟨0, 13⟩ := by
        cases z with
        | mk re im =>
          simp at him hre
          have : re = 0 := by omega
          simp [him, this]
      rw [hz]; decide

theorem five_twelve_norm : GaussInt.norm ⟨5, 12⟩ = 169 := by
  decide

/-- Norm `169` is not enough. `5 + 12 √(-1)` is not a unit times `13`. -/
theorem five_twelve_not_divides (q : GaussInt) :
    GaussInt.mul ⟨5, 12⟩ q ≠ GaussInt.ofInt 13 := by
  intro h
  have hmem := divisors_of_13 h
  have hnin : ¬ ⟨5, 12⟩ ∈ divisors13 := by decide
  exact hnin hmem

end QiDivisors13
