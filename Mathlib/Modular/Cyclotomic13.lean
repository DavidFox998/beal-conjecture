import Mathlib.Modular.Rank0_32a1

/-!
# The mod-13 cyclotomic character has order 12

`ω` takes values in `𝔽₁₃ˣ`. This file is field arithmetic. There is no
Galois representation and no Galois group.

Proved:

* `2` is a primitive root modulo `13`, so `𝔽₁₃ˣ` has order exactly `12`.
  In particular `2 ^ 4 ≠ 1`.
* `Φ₁₃(x + 1) = ((x + 1)¹³ - 1) / x` is monic of degree `12` and
  Eisenstein at `13`: it has no monic factor of positive degree in `ℤ[x]`.
* The quadratic Gauss period `η` satisfies `η² + η = 3`, hence
  `(2η + 1)² = 13` on the power basis.
* `√13` is not an element of `ℚ(i)`.

Not proved, and not claimed by `omega_order_twelve`:

* Gauss's lemma. Irreducibility in `ℚ[x]` is the `ℤ[x]` statement plus
  that lemma. `content` is only the setup.
* The Galois correspondence. `(ℤ/13ℤ)ˣ` has a unique subgroup of order `6`,
  but the fixed field of that subgroup is not constructed, so uniqueness of
  the quadratic subfield `ℚ(√13)` is not a theorem. The classical step
  `ℚ(i) ∩ ℚ(ζ₁₃) = ℚ`, and therefore `[ℚ(i, ζ₁₃):ℚ(i)] = 12`, uses that
  uniqueness together with `sqrt13_not_in_qi`.

`omega_order_twelve` is the order of `𝔽₁₃ˣ` together with those four
arithmetic facts. It is not a theorem about `ρ̄_{E,13}`.
-/

namespace Cyc13

def coeff (p : List Int) (i : Nat) : Int :=
  p.getD i 0

/-- `Σ_{i ≤ n} f(i) g(n - i)`. -/
def mulSumGo (f g : Nat → Int) (n : Nat) : Nat → Int
  | 0 => 0
  | i + 1 => mulSumGo f g n i + if i ≤ n then f i * g (n - i) else 0

def mulSum (f g : Nat → Int) (n : Nat) : Int :=
  mulSumGo f g n (n + 1)

def Monic (f : Nat → Int) (d : Nat) : Prop :=
  f d = 1 ∧ ∀ i, d < i → f i = 0

theorem mulSumGo_zeros {f g : Nat → Int} {n i : Nat}
    (hz : ∀ j, j < i → j ≤ n → f j * g (n - j) = 0) :
    mulSumGo f g n i = 0 := by
  induction i with
  | zero => rfl
  | succ i ih =>
    have ih' : mulSumGo f g n i = 0 :=
      ih fun j hj hle => hz j (Nat.lt_succ_of_lt hj) hle
    simp only [mulSumGo]
    rw [ih']
    by_cases hle : i ≤ n
    · rw [ite_eq_left hle, hz i (Nat.lt_succ_self i) hle, Int.zero_add]
    · rw [ite_eq_right hle, Int.zero_add]

theorem mulSum_zero_below {f g : Nat → Int} {vg vh n : Nat}
    (hf : ∀ i, i < vg → f i = 0) (hg : ∀ i, i < vh → g i = 0)
    (hn : n < vg + vh) : mulSum f g n = 0 := by
  unfold mulSum
  refine mulSumGo_zeros (i := n + 1) ?_
  intro j hj hle
  by_cases hjv : j < vg
  · rw [hf j hjv, Int.zero_mul]
  · have hsub : n - j < vh := by omega
    rw [hg (n - j) hsub, Int.mul_zero]

theorem mulSumGo_add_term {f g : Nat → Int} {n j : Nat} (hj : j ≤ n) :
    mulSumGo f g n (j + 1) = mulSumGo f g n j + f j * g (n - j) := by
  simp only [mulSumGo]
  rw [ite_eq_left hj]

theorem mulSumGo_skip_high {f g : Nat → Int} {n j : Nat} (hj : n < j) :
    mulSumGo f g n (j + 1) = mulSumGo f g n j := by
  simp only [mulSumGo]
  rw [ite_eq_right (Nat.not_le_of_gt hj), Int.add_zero]

/-- Below the first surviving index the partial sum vanishes. -/
theorem mulSumGo_le_val {f g : Nat → Int} {n vg : Nat}
    (hf : ∀ i, i < vg → f i = 0) (i : Nat) (hi : i ≤ vg) :
    mulSumGo f g n i = 0 := by
  refine mulSumGo_zeros (i := i) ?_
  intro j hj _
  have hjv : j < vg := by omega
  rw [hf j hjv, Int.zero_mul]

theorem mulSumGo_at_val {f g : Nat → Int} {vg vh : Nat}
    (hf : ∀ i, i < vg → f i = 0) :
    mulSumGo f g (vg + vh) (vg + 1) = f vg * g vh := by
  have hle : vg ≤ vg + vh := by omega
  rw [mulSumGo_add_term (n := vg + vh) hle]
  have hz : mulSumGo f g (vg + vh) vg = 0 :=
    mulSumGo_le_val hf vg (Nat.le_refl _)
  rw [hz, Int.zero_add]
  have hsub : vg + vh - vg = vh := by omega
  rw [hsub]

theorem mulSumGo_past_val {f g : Nat → Int} {vg vh k : Nat}
    (hf : ∀ i, i < vg → f i = 0) (hg : ∀ i, i < vh → g i = 0)
    (hk : k ≤ vh) :
    mulSumGo f g (vg + vh) (vg + 1 + k) = f vg * g vh := by
  induction k with
  | zero =>
    simpa using mulSumGo_at_val (vg := vg) (vh := vh) hf
  | succ k ih =>
    have hle : vg + 1 + k ≤ vg + vh := by omega
    rw [show vg + 1 + (k + 1) = (vg + 1 + k) + 1 by omega, mulSumGo_add_term hle]
    rw [ih (Nat.le_of_lt (Nat.lt_of_succ_le hk))]
    have hsub : vg + vh - (vg + 1 + k) < vh := by omega
    have hg0 : g (vg + vh - (vg + 1 + k)) = 0 := hg _ hsub
    rw [hg0, Int.mul_zero, Int.add_zero]

theorem mulSum_at_val {f g : Nat → Int} {vg vh : Nat}
    (hf : ∀ i, i < vg → f i = 0) (hg : ∀ i, i < vh → g i = 0) :
    mulSum f g (vg + vh) = f vg * g vh := by
  unfold mulSum
  have hidx : vg + vh + 1 = vg + 1 + vh := by omega
  rw [hidx]
  exact mulSumGo_past_val hf hg (Nat.le_refl _)

theorem mul_high {f g : Nat → Int} {r s n : Nat}
    (hf : ∀ i, r < i → f i = 0) (hg : ∀ i, s < i → g i = 0)
    (hn : r + s < n) : mulSum f g n = 0 := by
  unfold mulSum
  refine mulSumGo_zeros (i := n + 1) ?_
  intro j _ hle
  by_cases hjr : j ≤ r
  · have hgs : s < n - j := by omega
    rw [hg (n - j) hgs, Int.mul_zero]
  · have hfr : r < j := by omega
    rw [hf j hfr, Int.zero_mul]

/-- Coefficients strictly below the `g`-degree vanish in the partial sum
up through index `r`. -/
theorem mulSumGo_before_lead {f g : Nat → Int} {r s : Nat}
    (hg : ∀ i, s < i → g i = 0) (i : Nat) (hi : i ≤ r) :
    mulSumGo f g (r + s) i = 0 := by
  refine mulSumGo_zeros (i := i) ?_
  intro j hj _
  have hjs : s < r + s - j := by omega
  rw [hg _ hjs, Int.mul_zero]

theorem mulSumGo_after_lead {f g : Nat → Int} {r s k : Nat}
    (hf : ∀ i, r < i → f i = 0) (hk : k ≤ s) :
    mulSumGo f g (r + s) (r + 1 + k) =
      mulSumGo f g (r + s) (r + 1) := by
  induction k with
  | zero => rfl
  | succ k ih =>
    have hk' : k < s := by omega
    have hle : r + 1 + k ≤ r + s := by omega
    rw [show r + 1 + (k + 1) = (r + 1 + k) + 1 by omega, mulSumGo_add_term hle]
    rw [ih (Nat.le_of_lt hk')]
    have hfr : r < r + 1 + k := by omega
    rw [hf _ hfr, Int.zero_mul, Int.add_zero]

theorem mul_lead {f g : Nat → Int} {r s : Nat}
    (hf : ∀ i, r < i → f i = 0) (hg : ∀ i, s < i → g i = 0)
    (hfr : f r = 1) (hgs : g s = 1) :
    mulSum f g (r + s) = 1 := by
  unfold mulSum
  have hidx : r + s + 1 = r + 1 + s := by omega
  rw [hidx, mulSumGo_after_lead hf (Nat.le_refl s)]
  have hle : r ≤ r + s := Nat.le_add_right r s
  rw [mulSumGo_add_term hle, mulSumGo_before_lead hg r (Nat.le_refl r),
    show r + s - r = s by omega, hfr, hgs, Int.zero_add, Int.one_mul]

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

theorem thirteen_dvd_mul {a b : Int} (h : (13 : Int) ∣ a * b) (ha : ¬ (13 : Int) ∣ a) :
    (13 : Int) ∣ b := by
  have hmul : 13 ∣ a.natAbs * b.natAbs := by
    rw [← Int.natAbs_mul]
    exact Int.natAbs_dvd_natAbs.mpr h
  have ha' : ¬ 13 ∣ a.natAbs := by
    intro hd
    exact ha (Int.natAbs_dvd_natAbs.mp hd)
  exact Int.natAbs_dvd_natAbs.mp (prime_dvd_mul thirteen_isPrime hmul ha')

theorem mulSumGo_dvd {f g : Nat → Int} {n i : Nat} (p : Int)
    (hz : ∀ j, j < i → j ≤ n → p ∣ f j * g (n - j)) :
    p ∣ mulSumGo f g n i := by
  induction i with
  | zero =>
    exact ⟨0, by simp [mulSumGo]⟩
  | succ i ih =>
    have ih' : p ∣ mulSumGo f g n i :=
      ih fun j hj hle => hz j (Nat.lt_succ_of_lt hj) hle
    simp only [mulSumGo]
    by_cases hle : i ≤ n
    · rw [ite_eq_left hle]
      rcases ih' with ⟨a, ha⟩
      rcases hz i (Nat.lt_succ_self i) hle with ⟨b, hb⟩
      refine ⟨a + b, ?_⟩
      rw [ha, hb]
      grind
    · rw [ite_eq_right hle, Int.add_zero]
      exact ih'

theorem mulSum_dvd_below {f g : Nat → Int} {vg vh n : Nat}
    (hf : ∀ i, i < vg → (13 : Int) ∣ f i) (hg : ∀ i, i < vh → (13 : Int) ∣ g i)
    (hn : n < vg + vh) : (13 : Int) ∣ mulSum f g n := by
  unfold mulSum
  refine mulSumGo_dvd 13 ?_
  intro j _ hle
  by_cases hjv : j < vg
  · rcases hf j hjv with ⟨k, hk⟩
    refine ⟨k * g (n - j), ?_⟩
    rw [hk]
    grind
  · have hsub : n - j < vh := by omega
    rcases hg (n - j) hsub with ⟨k, hk⟩
    refine ⟨f j * k, ?_⟩
    rw [hk]
    grind

/-- Partial sums through `vg` are divisible by `p`, and the next term is the lead product. -/
theorem mulSum_mod_at {p : Int} {f g : Nat → Int} {vg vh : Nat}
    (hf : ∀ i, i < vg → p ∣ f i) (hg : ∀ i, i < vh → p ∣ g i) :
    p ∣ mulSum f g (vg + vh) - f vg * g vh := by
  unfold mulSum
  have hidx : vg + vh + 1 = vg + 1 + vh := by omega
  rw [hidx]
  have hbase : p ∣ mulSumGo f g (vg + vh) (vg + 1) - f vg * g vh := by
    have hle : vg ≤ vg + vh := by omega
    rw [mulSumGo_add_term hle]
    have hpre : p ∣ mulSumGo f g (vg + vh) vg := by
      refine mulSumGo_dvd p ?_
      intro j hj _
      have hjv : j < vg := by omega
      rcases hf j hjv with ⟨k, hk⟩
      exact ⟨k * g (vg + vh - j), by rw [hk]; grind⟩
    rcases hpre with ⟨a, ha⟩
    refine ⟨a, ?_⟩
    rw [ha, show vg + vh - vg = vh by omega]
    grind
  have hpast : ∀ k, k ≤ vh →
      p ∣ mulSumGo f g (vg + vh) (vg + 1 + k) - f vg * g vh := by
    intro k hk
    induction k with
    | zero => exact hbase
    | succ k ih =>
      have hk' : k ≤ vh := Nat.le_of_lt (by omega)
      have hle : vg + 1 + k ≤ vg + vh := by omega
      have ih' := ih hk'
      rw [show vg + 1 + (k + 1) = (vg + 1 + k) + 1 by omega, mulSumGo_add_term hle]
      have hsub : vg + vh - (vg + 1 + k) < vh := by omega
      rcases hg _ hsub with ⟨b, hb⟩
      rcases ih' with ⟨a, ha⟩
      refine ⟨a + f (vg + 1 + k) * b, ?_⟩
      grind
  exact hpast vh (Nat.le_refl _)

theorem not_dvd_one : ¬ (13 : Int) ∣ 1 := by
  intro h
  have hnat : 13 ∣ 1 := by simpa using (Int.natAbs_dvd_natAbs.mpr h)
  have : 13 ≤ 1 := Nat.le_of_dvd (by decide) hnat
  omega

theorem not_169_dvd_13 : ¬ (169 : Int) ∣ 13 := by
  intro h
  have hnat : 169 ∣ 13 := by simpa using (Int.natAbs_dvd_natAbs.mpr h)
  have : 169 ≤ 13 := Nat.le_of_dvd (by decide) hnat
  omega

/-- Least index `< n` whose coefficient is not divisible by `13`, or `n` if there is none. -/
def scanVal (f : Nat → Int) : Nat → Nat
  | 0 => 0
  | n + 1 =>
    let v := scanVal f n
    if v < n then v else if (13 : Int) ∣ f n then n + 1 else n

theorem scanVal_le (f : Nat → Int) (n : Nat) : scanVal f n ≤ n := by
  induction n with
  | zero => exact Nat.le_refl _
  | succ n ih =>
    by_cases hv : scanVal f n < n
    · simp only [scanVal, hv]
      exact Nat.le_trans ih (Nat.le_succ n)
    · by_cases hd : (13 : Int) ∣ f n
      · simp only [scanVal, hv, hd]
        exact Nat.le_refl _
      · simp only [scanVal, hv, hd]
        exact Nat.le_succ n

theorem scanVal_eq_of_not_lt (f : Nat → Int) (n : Nat)
    (hn : ¬ scanVal f n < n) : scanVal f n = n := by
  have hle := scanVal_le f n
  omega

theorem scanVal_div (f : Nat → Int) (n : Nat) :
    ∀ i, i < scanVal f n → (13 : Int) ∣ f i := by
  induction n with
  | zero =>
    intro i hi
    simp [scanVal] at hi
  | succ n ih =>
    intro i hi
    by_cases hv : scanVal f n < n
    · rw [scanVal] at hi
      simp only [hv] at hi
      exact ih i hi
    · have hscan := scanVal_eq_of_not_lt f n hv
      by_cases hd : (13 : Int) ∣ f n
      · rw [scanVal] at hi
        simp only [hv, hd] at hi
        have hi' : i ≤ n := Nat.le_of_lt_succ hi
        by_cases heq : i = n
        · rw [heq]; exact hd
        · have hlt : i < n := Nat.lt_of_le_of_ne hi' heq
          rw [hscan] at ih
          exact ih i hlt
      · rw [scanVal] at hi
        simp only [hv, hd] at hi
        rw [← hscan] at hi
        exact ih i hi

theorem scanVal_not (f : Nat → Int) (n : Nat) (h : scanVal f n < n) :
    ¬ (13 : Int) ∣ f (scanVal f n) := by
  induction n with
  | zero => simp [scanVal] at h
  | succ n ih =>
    by_cases hv : scanVal f n < n
    · have heq : scanVal f (n + 1) = scanVal f n := by simp [scanVal, hv]
      rw [heq]
      exact ih hv
    · by_cases hd : (13 : Int) ∣ f n
      · have heq : scanVal f (n + 1) = n + 1 := by simp [scanVal, hv, hd]
        rw [heq] at h
        omega
      · have heq : scanVal f (n + 1) = n := by simp [scanVal, hv, hd]
        rw [heq]
        exact hd

theorem scanVal_monic (f : Nat → Int) (d : Nat) (hlead : f d = 1) :
    scanVal f (d + 1) ≤ d ∧ ¬ (13 : Int) ∣ f (scanVal f (d + 1)) := by
  have hle := scanVal_le f (d + 1)
  by_cases hlt : scanVal f (d + 1) < d + 1
  · have hle' : scanVal f (d + 1) ≤ d := by omega
    exact ⟨hle', scanVal_not f (d + 1) hlt⟩
  · have heq : scanVal f (d + 1) = d + 1 := by omega
    have hall := scanVal_div f (d + 1) d (by omega)
    rw [hlead] at hall
    exact absurd hall not_dvd_one

/-- `Φ₁₃(x + 1) = ((x + 1)¹³ - 1) / x`. -/
def shiftCoeff : Nat → Int
  | 0 => 13
  | 1 => 78
  | 2 => 286
  | 3 => 715
  | 4 => 1287
  | 5 => 1716
  | 6 => 1716
  | 7 => 1287
  | 8 => 715
  | 9 => 286
  | 10 => 78
  | 11 => 13
  | 12 => 1
  | _ => 0

theorem shift_monic : Monic shiftCoeff 12 := by
  refine ⟨rfl, ?_⟩
  intro i hi
  match i with
  | 0 => omega
  | 1 => omega
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
  | n + 13 =>
    simp [shiftCoeff]

theorem shift_dvd_below (i : Nat) (hi : i < 12) : (13 : Int) ∣ shiftCoeff i := by
  match i with
  | 0 => exact ⟨1, by decide⟩
  | 1 => exact ⟨6, by decide⟩
  | 2 => exact ⟨22, by decide⟩
  | 3 => exact ⟨55, by decide⟩
  | 4 => exact ⟨99, by decide⟩
  | 5 => exact ⟨132, by decide⟩
  | 6 => exact ⟨132, by decide⟩
  | 7 => exact ⟨99, by decide⟩
  | 8 => exact ⟨55, by decide⟩
  | 9 => exact ⟨22, by decide⟩
  | 10 => exact ⟨6, by decide⟩
  | 11 => exact ⟨1, by decide⟩
  | n + 12 => omega

theorem shift_const : shiftCoeff 0 = 13 := rfl

theorem mulSum_const (f g : Nat → Int) : mulSum f g 0 = f 0 * g 0 := by
  unfold mulSum
  simp only [mulSumGo]
  rw [ite_eq_left (Nat.le_refl 0), Int.zero_add]

theorem sq_dvd_of_both (a b : Int) (ha : (13 : Int) ∣ a) (hb : (13 : Int) ∣ b) :
    (169 : Int) ∣ a * b := by
  rcases ha with ⟨k, hk⟩
  rcases hb with ⟨m, hm⟩
  refine ⟨k * m, ?_⟩
  rw [hk, hm]
  have h169 : (13 : Int) * 13 = 169 := by decide
  calc
    (13 * k) * (13 * m) = (13 * 13) * (k * m) := by
      rw [Int.mul_assoc, Int.mul_left_comm k 13 m, Int.mul_assoc]
    _ = 169 * (k * m) := by rw [h169]

/-- No monic factorization of `Φ₁₃(x + 1)` in `ℤ[x]`. -/
theorem shift_no_monic_factor {g h : Nat → Int} {r s : Nat}
    (hg : Monic g r) (hh : Monic h s) (hr : 1 ≤ r) (hs : 1 ≤ s)
    (hdeg : r + s = 12)
    (hmul : ∀ n, mulSum g h n = shiftCoeff n) : False := by
  rcases hg with ⟨hgr, _⟩
  rcases hh with ⟨hhs, _⟩
  rcases scanVal_monic g r hgr with ⟨hgle, hgnot⟩
  rcases scanVal_monic h s hhs with ⟨hhle, hhnot⟩
  let vg := scanVal g (r + 1)
  let vh := scanVal h (s + 1)
  have hglow : ∀ i, i < vg → (13 : Int) ∣ g i := scanVal_div g (r + 1)
  have hhlow : ∀ i, i < vh → (13 : Int) ∣ h i := scanVal_div h (s + 1)
  have hsumle : vg + vh ≤ 12 := by omega
  have hnotprod : ¬ (13 : Int) ∣ g vg * h vh := by
    intro hd
    rcases thirteen_dvd_mul hd hgnot with hh
    exact hhnot hh
  have hsumEq : vg + vh = 12 := by
    by_cases hlt : vg + vh < 12
    · have hdvd : (13 : Int) ∣ mulSum g h (vg + vh) := by
        rw [hmul]
        exact shift_dvd_below (vg + vh) hlt
      have hdiff := mulSum_mod_at (p := 13) hglow hhlow
      rcases hdvd with ⟨a, ha⟩
      rcases hdiff with ⟨b, hb⟩
      have hprod : (13 : Int) ∣ g vg * h vh := by
        refine ⟨a - b, ?_⟩
        grind
      exact False.elim (hnotprod hprod)
    · omega
  have hg0 : (13 : Int) ∣ g 0 := hglow 0 (by omega)
  have hh0 : (13 : Int) ∣ h 0 := hhlow 0 (by omega)
  have h169 : (169 : Int) ∣ mulSum g h 0 := by
    rw [mulSum_const]
    exact sq_dvd_of_both (g 0) (h 0) hg0 hh0
  rw [hmul 0, shift_const] at h169
  exact not_169_dvd_13 h169

/-- Coefficients of `(x + 1) ^ n`, constant term first. -/
def xp1Pow : Nat → List Int
  | 0 => [1]
  | n + 1 =>
    let p := xp1Pow n
    List.ofFn fun i : Fin (p.length + 1) =>
      coeff p i.val + if 0 < i.val then coeff p (i.val - 1) else 0

theorem xp1Pow_thirteen :
    xp1Pow 13 = [1, 13, 78, 286, 715, 1287, 1716, 1716, 1287, 715, 286, 78, 13, 1] := by
  decide

/-- `((x + 1) ^ 13 - 1) / x = Φ₁₃(x + 1)`. -/
theorem shift_from_binomial :
    ∀ i, i ≤ 12 → coeff (xp1Pow 13) (i + 1) = shiftCoeff i := by
  intro i hi
  have hlist := xp1Pow_thirteen
  match i with
  | 0 => simp [coeff, hlist, shiftCoeff]
  | 1 => simp [coeff, hlist, shiftCoeff]
  | 2 => simp [coeff, hlist, shiftCoeff]
  | 3 => simp [coeff, hlist, shiftCoeff]
  | 4 => simp [coeff, hlist, shiftCoeff]
  | 5 => simp [coeff, hlist, shiftCoeff]
  | 6 => simp [coeff, hlist, shiftCoeff]
  | 7 => simp [coeff, hlist, shiftCoeff]
  | 8 => simp [coeff, hlist, shiftCoeff]
  | 9 => simp [coeff, hlist, shiftCoeff]
  | 10 => simp [coeff, hlist, shiftCoeff]
  | 11 => simp [coeff, hlist, shiftCoeff]
  | 12 => simp [coeff, hlist, shiftCoeff]
  | n + 13 => omega

/-- `gcd` of `f 0, …, f n`. -/
def content (f : Nat → Int) : Nat → Nat
  | 0 => (f 0).natAbs
  | n + 1 => Nat.gcd ((f (n + 1)).natAbs) (content f n)

theorem content_dvd (f : Nat → Int) (n i : Nat) (hi : i ≤ n) :
    content f n ∣ (f i).natAbs := by
  induction n with
  | zero =>
    have hi0 : i = 0 := by omega
    simp [content, hi0]
  | succ n ih =>
    by_cases heq : i = n + 1
    · simpa [content, heq] using (Nat.gcd_dvd_left ((f (n + 1)).natAbs) (content f n))
    · have hi' : i ≤ n := by omega
      exact Nat.dvd_trans (Nat.gcd_dvd_right _ _) (ih hi')

theorem content_prime_all {f : Nat → Int} {n p : Nat}
    (hall : ∀ i, i ≤ n → p ∣ (f i).natAbs) : p ∣ content f n := by
  induction n with
  | zero =>
    simpa [content] using hall 0 (Nat.le_refl _)
  | succ n ih =>
    have hlast := hall (n + 1) (Nat.le_refl _)
    have hrest := ih fun i hi => hall i (Nat.le_trans hi (Nat.le_succ _))
    exact Nat.dvd_gcd hlast hrest

theorem exists_least_not_dvd (f : Nat → Int) (n p : Nat)
    (hnot : ¬ p ∣ content f n) :
    ∃ i, i ≤ n ∧ ¬ p ∣ (f i).natAbs ∧ ∀ j, j < i → p ∣ (f j).natAbs := by
  induction n with
  | zero =>
    refine ⟨0, Nat.le_refl _, ?_, fun j hj => by omega⟩
    intro hd
    exact hnot (by simpa [content] using hd)
  | succ n ih =>
    by_cases hrest : p ∣ content f n
    · have hlast : ¬ p ∣ (f (n + 1)).natAbs := by
        intro hd
        exact hnot (Nat.dvd_gcd hd hrest)
      refine ⟨n + 1, Nat.le_refl _, hlast, ?_⟩
      intro j hj
      exact Nat.dvd_trans hrest (content_dvd f n j (by omega))
    · rcases ih hrest with ⟨i, hi, hni, hall⟩
      exact ⟨i, Nat.le_trans hi (Nat.le_succ _), hni, hall⟩

theorem no_ratio_sqrt13 : ∀ c a : Nat, 0 < c → a * a = 13 * c * c → False := by
  intro c
  induction c using Nat.strongRecOn with
  | ind c ih =>
    intro a hc heq
    have hdvd : 13 ∣ a * a := ⟨c * c, by rw [heq]; grind⟩
    have ha13 : 13 ∣ a := prime_dvd_sq thirteen_isPrime hdvd
    rcases ha13 with ⟨a1, ha1⟩
    have heqA : (13 * a1) * (13 * a1) = 13 * c * c := by rw [← ha1, heq]
    have heqB : 13 * (13 * (a1 * a1)) = 13 * (c * c) := by grind
    have heqC : 13 * (a1 * a1) = c * c :=
      Nat.mul_left_cancel (by decide : 0 < 13) heqB
    have hc13 : 13 ∣ c * c := ⟨a1 * a1, heqC.symm⟩
    have hcdiv : 13 ∣ c := prime_dvd_sq thirteen_isPrime hc13
    rcases hcdiv with ⟨c1, hc1⟩
    have hc1pos : 0 < c1 := by
      cases c1 with
      | zero => simp [hc1] at hc
      | succ _ => omega
    have hc1lt : c1 < c := by
      rw [hc1]
      omega
    have heq1 : a1 * a1 = 13 * c1 * c1 := by
      have hsubst : 13 * (a1 * a1) = (13 * c1) * (13 * c1) := by rw [← hc1, heqC]
      have hflat : (13 * c1) * (13 * c1) = 13 * (13 * (c1 * c1)) := by grind
      have hcancel : a1 * a1 = 13 * (c1 * c1) := by
        have h13 : 13 * (a1 * a1) = 13 * (13 * (c1 * c1)) := by rw [hsubst, hflat]
        exact Nat.mul_left_cancel (by decide : 0 < 13) h13
      grind
    exact ih c1 hc1lt a1 hc1pos heq1

/-- `√13` is not an element of `ℚ(i)`. A rational point on `x² - y² = 13`
with `xy = 0` does not exist. -/
theorem sqrt13_not_in_qi (a b c : Int) (hc : c ≠ 0)
    (hcross : a * b = 0) (hnorm : a * a - b * b = 13 * c * c) : False := by
  have hzero : a = 0 ∨ b = 0 := Int.mul_eq_zero.mp hcross
  rcases hzero with ha | hb
  · rw [ha, Int.zero_mul, Int.zero_sub] at hnorm
    have hnat : b.natAbs * b.natAbs = 13 * c.natAbs * c.natAbs := by
      have := congrArg Int.natAbs hnorm
      simpa [Int.natAbs_neg, Int.natAbs_mul] using this
    have hcpos : 0 < c.natAbs := by
      have : c.natAbs ≠ 0 := by
        intro hz
        exact hc (Int.natAbs_eq_zero.mp hz)
      omega
    exact no_ratio_sqrt13 c.natAbs b.natAbs hcpos hnat
  · rw [hb, Int.mul_zero, Int.sub_zero] at hnorm
    have hnat : a.natAbs * a.natAbs = 13 * c.natAbs * c.natAbs := by
      have := congrArg Int.natAbs hnorm
      simpa [Int.natAbs_mul] using this
    have hcpos : 0 < c.natAbs := by
      have : c.natAbs ≠ 0 := by
        intro hz
        exact hc (Int.natAbs_eq_zero.mp hz)
      omega
    exact no_ratio_sqrt13 c.natAbs a.natAbs hcpos hnat

/-- Power basis `1, ζ, …, ζ¹¹`, with `ζ¹² = -∑_{k<12} ζᵏ`. -/
abbrev Cyc := Fin 12 → Int

def cycZero : Cyc := fun _ => 0

def cycAdd (a b : Cyc) : Cyc := fun i => a i + b i

def cycSmul (n : Int) (a : Cyc) : Cyc := fun i => n * a i

def zetaPow (e : Nat) : Cyc :=
  let r := e % 13
  if r = 12 then fun _ => -1 else fun i => if i.val = r then 1 else 0

def cycTerm (a b : Cyc) (i j : Nat) : Cyc :=
  if hi : i < 12 then
    if hj : j < 12 then cycSmul (a ⟨i, hi⟩ * b ⟨j, hj⟩) (zetaPow (i + j))
    else cycZero
  else cycZero

def cycMulAux (a b : Cyc) : Nat → Cyc
  | 0 => cycZero
  | n + 1 =>
    cycAdd (cycMulAux a b n) (cycTerm a b (n / 12) (n % 12))

def cycMul (a b : Cyc) : Cyc := cycMulAux a b 144

def etaCyc : Cyc := fun i =>
  match i.val with
  | 0 => -1
  | 2 => -1
  | 5 => -1
  | 6 => -1
  | 7 => -1
  | 8 => -1
  | 11 => -1
  | _ => 0

def threeCyc : Cyc := fun i => if i.val = 0 then 3 else 0

def cycAgree (a b : Cyc) : Bool :=
  aux 12
where aux : Nat → Bool
  | 0 => true
  | k + 1 =>
    if hk : k < 12 then (a ⟨k, hk⟩ == b ⟨k, hk⟩) && aux k else true

set_option maxRecDepth 8000 in
theorem eta_sq_add :
    cycAgree (cycAdd (cycMul etaCyc etaCyc) etaCyc) threeCyc = true := by
  decide

theorem cycAgree_at (a b : Cyc) (h : cycAgree a b = true) (i : Fin 12) : a i = b i := by
  have h' := h
  simp [cycAgree, cycAgree.aux] at h'
  have hv : i.val < 12 := i.isLt
  have hsplit : i.val = 0 ∨ i.val = 1 ∨ i.val = 2 ∨ i.val = 3 ∨ i.val = 4 ∨
      i.val = 5 ∨ i.val = 6 ∨ i.val = 7 ∨ i.val = 8 ∨ i.val = 9 ∨ i.val = 10 ∨
      i.val = 11 := by omega
  rcases hsplit with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11
  · have hi : i = ⟨0, by decide⟩ := Fin.ext h0
    rw [hi]; exact h'.2.2.2.2.2.2.2.2.2.2.2
  · have hi : i = ⟨1, by decide⟩ := Fin.ext h1
    rw [hi]; exact h'.2.2.2.2.2.2.2.2.2.2.1
  · have hi : i = ⟨2, by decide⟩ := Fin.ext h2
    rw [hi]; exact h'.2.2.2.2.2.2.2.2.2.1
  · have hi : i = ⟨3, by decide⟩ := Fin.ext h3
    rw [hi]; exact h'.2.2.2.2.2.2.2.2.1
  · have hi : i = ⟨4, by decide⟩ := Fin.ext h4
    rw [hi]; exact h'.2.2.2.2.2.2.2.1
  · have hi : i = ⟨5, by decide⟩ := Fin.ext h5
    rw [hi]; exact h'.2.2.2.2.2.2.1
  · have hi : i = ⟨6, by decide⟩ := Fin.ext h6
    rw [hi]; exact h'.2.2.2.2.2.1
  · have hi : i = ⟨7, by decide⟩ := Fin.ext h7
    rw [hi]; exact h'.2.2.2.2.1
  · have hi : i = ⟨8, by decide⟩ := Fin.ext h8
    rw [hi]; exact h'.2.2.2.1
  · have hi : i = ⟨9, by decide⟩ := Fin.ext h9
    rw [hi]; exact h'.2.2.1
  · have hi : i = ⟨10, by decide⟩ := Fin.ext h10
    rw [hi]; exact h'.2.1
  · have hi : i = ⟨11, by decide⟩ := Fin.ext h11
    rw [hi]; exact h'.1

/-- The quadratic Gauss period satisfies `η² + η = 3`. -/
theorem gauss_period_square (i : Fin 12) :
    cycAdd (cycMul etaCyc etaCyc) etaCyc i = threeCyc i :=
  cycAgree_at _ _ eta_sq_add i

/-- `(2η + 1)² = 13` on the power basis. -/
theorem gauss_period_disc (i : Fin 12) :
    4 * cycMul etaCyc etaCyc i + 4 * etaCyc i + (if i.val = 0 then (1 : Int) else 0) =
      if i.val = 0 then 13 else 0 := by
  have h := gauss_period_square i
  simp only [cycAdd] at h
  have h3 : threeCyc i = if i.val = 0 then 3 else 0 := rfl
  rw [h3] at h
  by_cases hi : i.val = 0
  · simp only [hi, ite_true] at h ⊢
    have h4 : (4 : Int) * (cycMul etaCyc etaCyc i + etaCyc i) =
        4 * cycMul etaCyc etaCyc i + 4 * etaCyc i := by grind
    grind
  · simp only [hi, ite_false] at h ⊢
    have h4 : (4 : Int) * (cycMul etaCyc etaCyc i + etaCyc i) =
        4 * cycMul etaCyc etaCyc i + 4 * etaCyc i := by grind
    grind

/-- `2` is a primitive root modulo `13`, so `𝔽₁₃ˣ` has order exactly `12`. -/
theorem primitive_root_two :
    (2 : Fin 13) ^ 12 = 1 ∧ (2 : Fin 13) ^ 6 ≠ 1 ∧ (2 : Fin 13) ^ 4 ≠ 1 ∧
      (2 : Fin 13) ^ 3 ≠ 1 ∧ (2 : Fin 13) ^ 2 ≠ 1 ∧ (2 : Fin 13) ≠ 1 := by
  decide

/-- `ord(2 ^ e) ∣ 4` if and only if `3 ∣ e`, for an exponent below `12`.

`ord(2) = 12`, so `ord(2 ^ e) = 12 / gcd(e, 12)`, and that integer divides
`4` precisely on the multiples of `3`.
-/
theorem cyclotomic_pow_order_div_four (e : Nat) (he : e < 12) :
    ((2 : Fin 13) ^ e) ^ 4 = 1 ↔ 3 ∣ e := by
  match e with
  | 0 => decide
  | 1 => decide
  | 2 => decide
  | 3 => decide
  | 4 => decide
  | 5 => decide
  | 6 => decide
  | 7 => decide
  | 8 => decide
  | 9 => decide
  | 10 => decide
  | 11 => decide
  | n + 12 => omega

/-- The mod-13 cyclotomic character has order 12.

The order is the order of `𝔽₁₃ˣ`: `primitive_root_two`. The remaining
conjuncts are the field-arithmetic input to the classical degree
`[ℚ(i, ζ₁₃):ℚ(i)] = 12`.

* `shiftCoeff 12 = 1` and `shift_no_monic_factor`: `Φ₁₃(x + 1)` is monic of
  degree 12 and has no monic factor of positive degree in `ℤ[x]`.
  `shift_from_binomial` identifies the polynomial with `((x + 1)¹³ - 1) / x`.
  Gauss's lemma, which would move that irreducibility to `ℚ[x]`, is not a
  conjunct and is not a theorem.
* `gauss_period_square`: `η² + η = 3`, so `(2η + 1)² = 13`
  (`gauss_period_disc`).
* `sqrt13_not_in_qi`: `ℚ(√13) ≠ ℚ(i)`.

The unique-quadratic step (the fixed field of the unique subgroup of order
`6`) is not a conjunct. `13 ≡ 1 (mod 4)` is why that subfield is `ℚ(√13)`
classically; the period equation is the part of that sentence which is
proved.
-/
theorem omega_order_twelve :
    (2 : Fin 13) ^ 12 = 1 ∧ (2 : Fin 13) ^ 6 ≠ 1 ∧ (2 : Fin 13) ^ 4 ≠ 1 ∧
      (2 : Fin 13) ^ 3 ≠ 1 ∧ (2 : Fin 13) ^ 2 ≠ 1 ∧ (2 : Fin 13) ≠ 1 ∧
      shiftCoeff 12 = 1 ∧
      (∀ g h r s, Monic g r → Monic h s → 1 ≤ r → 1 ≤ s → r + s = 12 →
        (∀ n, mulSum g h n = shiftCoeff n) → False) ∧
      (∀ i : Fin 12, cycAdd (cycMul etaCyc etaCyc) etaCyc i = threeCyc i) ∧
      (∀ a b c : Int, c ≠ 0 → a * b = 0 → a * a - b * b = 13 * c * c → False) := by
  refine ⟨primitive_root_two.1, primitive_root_two.2.1, primitive_root_two.2.2.1,
    primitive_root_two.2.2.2.1, primitive_root_two.2.2.2.2.1, primitive_root_two.2.2.2.2.2,
    rfl, ?_, gauss_period_square, sqrt13_not_in_qi⟩
  intro g h r s hg hh hr hs hdeg hmul
  exact shift_no_monic_factor hg hh hr hs hdeg hmul

end Cyc13
