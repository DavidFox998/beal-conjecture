import Mathlib.Modular.FormalImmersion

/-!
# Rational points on `Y² = X³ - X`

Fermat's descent shows that a rational point on `Y² = X³ - X` has `Y = 0`.
Clearing denominators produces positive integers `u > v > 0` and `w > 0` with
`w² = uv(u - v)(u + v)`. A common factor of `u` and `v` shrinks `w`, and so
does the case where both are odd. In the remaining case the four factors are
pairwise coprime and each is a square. Those squares determine a smaller
primitive right triangle of square area, and strong induction on `w` is
impossible.

This is infinite descent. It is not a `native_decide` computation of a Selmer
group, and it does not identify the Weierstrass model with `X₀(32)`.
Cremona `32a1` is a different curve in the isogeny class, with torsion
`ℤ/4ℤ`; the model `Y² = X³ - X` has full rational 2-torsion. The integral
points are `(-1, 0)`, `(0, 0)`, and `(1, 0)`, by `integral_two_torsion`.
Nothing here proves that `a⁴ + b⁴ = c¹³` has no nonzero solution.
-/

open Classical

def IsPrime (p : Nat) : Prop :=
  2 ≤ p ∧ ∀ d, d ∣ p → d = 1 ∨ d = p

def IsSquare (n : Nat) : Prop := ∃ r, n = r * r

theorem exists_proper_divisor (n : Nat) (hn : 2 ≤ n) (h : ¬ IsPrime n) :
    ∃ d, 2 ≤ d ∧ d < n ∧ d ∣ n := by
  have hnot : ¬ ∀ d, d ∣ n → d = 1 ∨ d = n := by
    intro hall
    exact h ⟨hn, hall⟩
  rcases not_forall.mp hnot with ⟨d, hd⟩
  have hdvd : d ∣ n :=
    Classical.byContradiction fun hnd => hd (fun hdv => absurd hdv hnd)
  have hne1 : d ≠ 1 := by
    intro he
    exact hd (fun _ => Or.inl he)
  have hnen : d ≠ n := by
    intro he
    exact hd (fun _ => Or.inr he)
  have hpos : 0 < n := by omega
  have hle : d ≤ n := Nat.le_of_dvd hpos hdvd
  have hlt : d < n := Nat.lt_of_le_of_ne hle hnen
  have hd0 : d ≠ 0 := by
    intro hz
    rcases hdvd with ⟨t, ht⟩
    have : n = 0 := by simpa [hz] using ht
    omega
  have hge : 2 ≤ d := by omega
  exact ⟨d, hge, hlt, hdvd⟩

theorem exists_prime_factor (n : Nat) : 2 ≤ n → ∃ p, IsPrime p ∧ p ∣ n := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
    intro hn
    by_cases h : IsPrime n
    · exact ⟨n, h, Nat.dvd_refl n⟩
    · rcases exists_proper_divisor n hn h with ⟨d, hd2, hdlt, hdd⟩
      rcases ih d hdlt hd2 with ⟨p, hp, hpd⟩
      exact ⟨p, hp, Nat.dvd_trans hpd hdd⟩

theorem prime_dvd_mul {p a b : Nat} (hp : IsPrime p) (h : p ∣ a * b) (hna : ¬ p ∣ a) :
    p ∣ b := by
  have hcop : Nat.Coprime p a := by
    rcases hp.2 (p.gcd a) (Nat.gcd_dvd_left p a) with h1 | hpe
    · exact h1
    · exact absurd (by rw [← hpe]; exact Nat.gcd_dvd_right p a) hna
  exact Nat.Coprime.dvd_of_dvd_mul_left hcop h

theorem prime_dvd_sq {p k : Nat} (hp : IsPrime p) (h : p ∣ k * k) : p ∣ k := by
  by_cases hk : p ∣ k
  · exact hk
  · exact prime_dvd_mul hp h hk

theorem isSquare_of_coprime_mul :
    ∀ a b k, Nat.Coprime a b → a * b = k * k → IsSquare a ∧ IsSquare b := by
  intro a
  induction a using Nat.strongRecOn with
  | ind a ih =>
    intro b k hcop hk
    match a with
    | 0 =>
      have hk0 : k * k = 0 := by simpa [Nat.zero_mul] using hk.symm
      have hkz : k = 0 := (Nat.mul_eq_zero.mp hk0).elim id id
      have hb : Nat.gcd 0 b = 1 := hcop
      have hb1 : b = 1 := by simpa using hb
      exact ⟨⟨0, rfl⟩, ⟨1, by simp [hb1]⟩⟩
    | 1 =>
      exact ⟨⟨1, by decide⟩, ⟨k, by simpa using hk⟩⟩
    | a + 2 =>
      have ha2 : 2 ≤ a + 2 := by omega
      rcases exists_prime_factor (a + 2) ha2 with ⟨p, hp, hpa⟩
      have hp2 : 2 ≤ p := hp.1
      have hnpb : ¬ p ∣ b := by
        intro hpb
        exact Nat.not_coprime_of_dvd_of_dvd hp.1 hpa hpb hcop
      have hpab : p ∣ (a + 2) * b := Nat.dvd_trans hpa (Nat.dvd_mul_right _ _)
      have hpk : p ∣ k := prime_dvd_sq hp (by simpa [hk] using hpab)
      have hppk : p * p ∣ k * k := by
        rcases hpk with ⟨k1, hk1⟩
        refine ⟨k1 * k1, ?_⟩
        rw [hk1]
        ac_rfl
      have hpa1 : p ∣ a + 2 := hpa
      rcases hpa1 with ⟨a1, ha1⟩
      have hmul1 : a1 * b = p * ((k / p) * (k / p)) := by
        have hp0 : 0 < p := by omega
        have : p * (a1 * b) = p * (p * ((k / p) * (k / p))) := by
          calc
            p * (a1 * b) = (p * a1) * b := by rw [Nat.mul_assoc]
            _ = (a + 2) * b := by rw [ha1]
            _ = k * k := hk
            _ = (p * (k / p)) * (p * (k / p)) := by rw [Nat.mul_div_cancel' hpk]
            _ = p * (p * ((k / p) * (k / p))) := by ac_rfl
        exact Nat.eq_of_mul_eq_mul_left hp0 this
      have hpa1d : p ∣ a1 := by
        have : p ∣ a1 * b := by
          rw [hmul1]
          exact ⟨(k / p) * (k / p), rfl⟩
        exact prime_dvd_mul hp (by rwa [Nat.mul_comm]) hnpb
      rcases hpa1d with ⟨a2, ha2⟩
      have haeq : a + 2 = p * p * a2 := by simp [ha1, ha2, Nat.mul_assoc]
      have hprod : a2 * b = (k / p) * (k / p) := by
        have hppos : 0 < p * p := by
          have hp0 : 0 < p := by omega
          exact Nat.mul_pos hp0 hp0
        apply Nat.eq_of_mul_eq_mul_left hppos
        calc
          p * p * (a2 * b) = (p * p * a2) * b := by ac_rfl
          _ = (a + 2) * b := by rw [haeq]
          _ = k * k := hk
          _ = (p * (k / p)) * (p * (k / p)) := by rw [Nat.mul_div_cancel' hpk]
          _ = p * p * ((k / p) * (k / p)) := by ac_rfl
      have hcop2 : Nat.Coprime a2 b :=
        Nat.Coprime.coprime_dvd_left ⟨p * p, by simp [haeq, Nat.mul_comm]⟩ hcop
      have hlt : a2 < a + 2 := by
        have hp0 : 0 < p := by omega
        have hpp : 1 < p * p := by
          have hp1 : 1 < p := by omega
          have hmul : p * 1 < p * p := Nat.mul_lt_mul_of_pos_left hp1 hp0
          rw [Nat.mul_one] at hmul
          exact Nat.lt_trans hp1 hmul
        by_cases hzero : a2 = 0
        · rw [hzero] at haeq
          simp at haeq
        · have hpos : 0 < a2 := Nat.pos_of_ne_zero hzero
          have hstep : a2 < a2 * (p * p) := by
            have hmul : a2 * 1 < a2 * (p * p) := Nat.mul_lt_mul_of_pos_left hpp hpos
            rwa [Nat.mul_one] at hmul
          rw [Nat.mul_comm a2 (p * p), ← haeq] at hstep
          exact hstep
      rcases ih a2 hlt b (k / p) hcop2 hprod with ⟨⟨r, hr⟩, hbs⟩
      refine ⟨⟨p * r, ?_⟩, hbs⟩
      rw [haeq, hr]
      ac_rfl

theorem isSquare_four (a b c d k : Nat)
    (h12 : Nat.Coprime a b) (h13 : Nat.Coprime a c) (h14 : Nat.Coprime a d)
    (h23 : Nat.Coprime b c) (h24 : Nat.Coprime b d) (h34 : Nat.Coprime c d)
    (hk : a * b * c * d = k * k) :
    IsSquare a ∧ IsSquare b ∧ IsSquare c ∧ IsSquare d := by
  have hacd : Nat.Coprime a (c * d) := Nat.Coprime.mul_right h13 h14
  have hbcd : Nat.Coprime b (c * d) := Nat.Coprime.mul_right h23 h24
  have hab : Nat.Coprime (a * b) (c * d) := Nat.Coprime.mul_left hacd hbcd
  have hk' : (a * b) * (c * d) = k * k := by
    simpa [Nat.mul_assoc] using hk
  rcases isSquare_of_coprime_mul (a * b) (c * d) k hab hk' with ⟨hab2, hcd2⟩
  rcases hab2 with ⟨r, hr⟩
  rcases hcd2 with ⟨t, ht⟩
  rcases isSquare_of_coprime_mul a b r h12 hr with ⟨ha, hb⟩
  rcases isSquare_of_coprime_mul c d t h34 ht with ⟨hc, hd⟩
  exact ⟨ha, hb, hc, hd⟩

theorem mod_two (n : Nat) : n % 2 = 0 ∨ n % 2 = 1 := by
  have hlt : n % 2 < 2 := Nat.mod_lt _ (by decide)
  omega

theorem sq_mod4 (n : Nat) : n * n % 4 = 0 ∨ n * n % 4 = 1 := by
  have hlt : n % 4 < 4 := Nat.mod_lt _ (by decide)
  have hmul : n * n % 4 = (n % 4) * (n % 4) % 4 := by rw [Nat.mul_mod]
  generalize hr : n % 4 = r at hlt hmul
  match r with
  | 0 =>
    left
    simpa [hr] using hmul
  | 1 =>
    right
    rw [hmul]
  | 2 =>
    left
    rw [hmul]
  | 3 =>
    right
    rw [hmul]
  | r + 4 =>
    omega

theorem odd_sq_mod4 (n : Nat) (h : n % 2 = 1) : n * n % 4 = 1 := by
  have hrepr : n = 2 * (n / 2) + 1 := by
    have hdiv := (Nat.div_add_mod n 2).symm
    omega
  rcases mod_two (n / 2) with hq0 | hq1
  · have h4 : n = 4 * (n / 2 / 2) + 1 := by
      have := (Nat.div_add_mod (n / 2) 2).symm
      omega
    let q := n / 2 / 2
    have hmod : (4 * q + 1) % 4 = 1 := by
      have : (1 + 4 * q) % 4 = 1 % 4 := Nat.add_mul_mod_self_left 1 4 q
      simpa [Nat.add_comm, Nat.mod_eq_of_lt (by decide : 1 < 4)] using this
    rw [h4, Nat.mul_mod, hmod]
  · have h4 : n = 4 * (n / 2 / 2) + 3 := by
      have := (Nat.div_add_mod (n / 2) 2).symm
      omega
    let q := n / 2 / 2
    have hmod : (4 * q + 3) % 4 = 3 := by
      have : (3 + 4 * q) % 4 = 3 % 4 := Nat.add_mul_mod_self_left 3 4 q
      simpa [Nat.add_comm, Nat.mod_eq_of_lt (by decide : 3 < 4)] using this
    rw [h4, Nat.mul_mod, hmod]

theorem coprime_two_of_odd (n : Nat) (h : n % 2 = 1) : Nat.Coprime n 2 := by
  have hg : n.gcd 2 ∣ 2 := Nat.gcd_dvd_right n 2
  have hpos : 0 < n.gcd 2 := Nat.gcd_pos_of_pos_right _ (by decide)
  have hle : n.gcd 2 ≤ 2 := Nat.le_of_dvd (by decide) hg
  have hcases : n.gcd 2 = 1 ∨ n.gcd 2 = 2 := by omega
  rcases hcases with h1 | h2
  · exact h1
  · have hdv : 2 ∣ n := by
      rw [← h2]
      exact Nat.gcd_dvd_left n 2
    have : n % 2 = 0 := Nat.mod_eq_zero_of_dvd hdv
    omega

theorem sq_lt {x y : Nat} (h : x < y) : x * x < y * y := by
  have hx : x * x ≤ x * y := Nat.mul_le_mul_left x (Nat.le_of_lt h)
  have hy : x * y < y * y := Nat.mul_lt_mul_of_pos_right h (by omega)
  exact Nat.lt_of_le_of_lt hx hy

theorem lt_of_sq_lt {x y : Nat} (h : x * x < y * y) : x < y :=
  Classical.byContradiction fun hle => by
    have hyx : y ≤ x := (Nat.not_lt).mp hle
    have : y * y ≤ x * x := Nat.mul_le_mul hyx hyx
    omega

theorem eq_of_mul_self_eq {x y : Nat} (h : x * x = y * y) : x = y := by
  rcases Nat.lt_trichotomy x y with hlt | heq | hgt
  · have hlt' : x * x < y * y := sq_lt hlt
    rw [h] at hlt'
    omega
  · exact heq
  · have hlt : y * y < x * x := sq_lt hgt
    rw [h] at hlt
    omega

theorem sq_mono (b c : Nat) (h : b ≤ c) : b * b ≤ c * c :=
  Nat.mul_le_mul h h

theorem nat_diff_squares (c b : Nat) (h : b ≤ c) :
    (c - b) * (c + b) = c * c - b * b := by
  have hcast : (((c - b) * (c + b) : Nat) : Int) = ((c * c - b * b : Nat) : Int) := by
    rw [← Int.ofNat_mul_out, Int.ofNat_sub h, ← Int.ofNat_add_out, Int.ofNat_sub (sq_mono b c h)]
    grind
  exact Int.ofNat.inj hcast

theorem dvd_cancel_left {d a b : Nat} (hd : 0 < d) (h : d * a ∣ d * b) : a ∣ b := by
  rcases h with ⟨k, hk⟩
  have : d * b = d * (a * k) := by
    simpa [Nat.mul_assoc] using hk
  exact ⟨k, Nat.eq_of_mul_eq_mul_left hd this⟩

theorem dvd_of_sq_dvd_sq {g m : Nat} (h : g * g ∣ m * m) : g ∣ m := by
  cases Nat.eq_zero_or_pos (g.gcd m) with
  | inl h0 =>
    have hg0 : g = 0 := Nat.eq_zero_of_gcd_eq_zero_left h0
    have hm0 : m = 0 := Nat.eq_zero_of_gcd_eq_zero_right h0
    simp [hg0, hm0]
  | inr hpos =>
    rcases Nat.exists_coprime' (m := g) (n := m) hpos with ⟨d, g1, m1, hdpos, hcop, hg, hm⟩
    have hpair : (g1 * d) * (g1 * d) ∣ (m1 * d) * (m1 * d) := by
      simpa [hg, hm] using h
    have hord : (d * d) * (g1 * g1) ∣ (d * d) * (m1 * m1) := by
      have hL : (g1 * d) * (g1 * d) = (d * d) * (g1 * g1) := by ac_rfl
      have hR : (m1 * d) * (m1 * d) = (d * d) * (m1 * m1) := by ac_rfl
      rwa [hL, hR] at hpair
    have hgs : g1 * g1 ∣ m1 * m1 :=
      dvd_cancel_left (Nat.mul_pos hdpos hdpos) hord
    have hg1m : g1 ∣ m1 := by
      have hg1mm : g1 ∣ m1 * m1 := Nat.dvd_trans (Nat.dvd_mul_left g1 g1) hgs
      exact Nat.Coprime.dvd_of_dvd_mul_left hcop hg1mm
    have hg1 : g1 = 1 := Nat.Coprime.eq_one_of_dvd hcop hg1m
    have hgd : g = d := by simp [hg, hg1]
    exact ⟨m1, by rw [hm, hgd]; ac_rfl⟩

theorem dvd_of_sq_dvd_two_sq {g k : Nat} (h : g * g ∣ 2 * (k * k)) : g ∣ k := by
  cases Nat.eq_zero_or_pos (g.gcd k) with
  | inl h0 =>
    have hg0 : g = 0 := Nat.eq_zero_of_gcd_eq_zero_left h0
    have hk0 : k = 0 := Nat.eq_zero_of_gcd_eq_zero_right h0
    simp [hg0, hk0]
  | inr hpos =>
    rcases Nat.exists_coprime' (m := g) (n := k) hpos with ⟨d, g1, k1, hdpos, hcop, hg, hk⟩
    have hpair : (g1 * d) * (g1 * d) ∣ 2 * ((k1 * d) * (k1 * d)) := by
      simpa [hg, hk] using h
    have hord : (d * d) * (g1 * g1) ∣ (d * d) * (2 * (k1 * k1)) := by
      have hL : (g1 * d) * (g1 * d) = (d * d) * (g1 * g1) := by ac_rfl
      have hR : 2 * ((k1 * d) * (k1 * d)) = (d * d) * (2 * (k1 * k1)) := by ac_rfl
      rwa [hL, hR] at hpair
    have hgs : g1 * g1 ∣ 2 * (k1 * k1) :=
      dvd_cancel_left (Nat.mul_pos hdpos hdpos) hord
    have hcop2 : Nat.Coprime (g1 ^ 2) (k1 ^ 2) := hcop.pow 2 2
    have hg2 : g1 * g1 ∣ 2 := by
      have hdiv : g1 ^ 2 ∣ 2 * k1 ^ 2 := by simpa [Nat.pow_two] using hgs
      simpa [Nat.pow_two] using Nat.Coprime.dvd_of_dvd_mul_right hcop2 hdiv
    have hle : g1 * g1 ≤ 2 := Nat.le_of_dvd (by decide) hg2
    have hg1 : g1 = 1 := by
      match g1 with
      | 0 =>
        have hg0 : g = 0 := by simp [hg]
        rw [hg0] at h
        have hzero : 2 * (k * k) = 0 := by simpa using Nat.zero_dvd.mp h
        have hk0 : k = 0 := by
          rcases Nat.mul_eq_zero.mp hzero with h2 | hkk
          · omega
          · exact (Nat.mul_eq_zero.mp hkk).elim id id
        have hgcd : g.gcd k = 0 := by simp [hg0, hk0]
        omega
      | 1 => rfl
      | n + 2 =>
        have htwo : 2 ≤ n + 2 := by omega
        have h4 : 4 ≤ (n + 2) * (n + 2) := Nat.mul_le_mul htwo htwo
        omega
    have hgd : g = d := by simp [hg, hg1]
    exact ⟨k1, by rw [hk, hgd]; ac_rfl⟩

theorem pythag_even (a b c : Nat)
    (hsum : a * a + b * b = c * c) (ha : 0 < a) (hb : 0 < b)
    (hcop : Nat.Coprime a b) (heven : 2 ∣ a) :
    ∃ m n, 0 < n ∧ n < m ∧ a = 2 * m * n ∧ b = m * m - n * n ∧
      c = m * m + n * n ∧ Nat.Coprime m n ∧ m % 2 + n % 2 = 1 := by
  have hbodd : b % 2 = 1 := by
    rcases mod_two b with hb0 | hb1
    · have h2b : 2 ∣ b := Nat.dvd_of_mod_eq_zero hb0
      exact absurd hcop (Nat.not_coprime_of_dvd_of_dvd (by decide) heven h2b)
    · exact hb1
  have ha4 : a * a % 4 = 0 := by
    rcases heven with ⟨t, ht⟩
    have : a * a = 4 * (t * t) := by
      rw [ht]
      ac_rfl
    rw [this]
    exact Nat.mul_mod_right 4 (t * t)
  have hb4 : b * b % 4 = 1 := odd_sq_mod4 b hbodd
  have hc4 : c * c % 4 = 1 := by
    rw [← hsum, Nat.add_mod, ha4, hb4]
  have hcodd : c % 2 = 1 := by
    rcases mod_two c with hc0 | hc1
    · rcases Nat.dvd_of_mod_eq_zero hc0 with ⟨t, ht⟩
      have : c * c % 4 = 0 := by
        have : c * c = 4 * (t * t) := by
          rw [ht]
          ac_rfl
        rw [this]
        exact Nat.mul_mod_right 4 (t * t)
      omega
    · exact hc1
  have hbc : b < c := by
    have hpos : 0 < a * a := Nat.mul_pos ha ha
    have hlt : b * b < a * a + b * b := Nat.lt_add_of_pos_left hpos
    have : b * b < c * c := by simpa [hsum, Nat.add_comm] using hlt
    exact lt_of_sq_lt this
  have hsq : c * c - b * b = a * a := by
    rw [← hsum]
    exact Nat.add_sub_cancel (a * a) (b * b)
  have hdiff : (c - b) * (c + b) = a * a := by
    rw [nat_diff_squares c b (Nat.le_of_lt hbc), hsq]
  have hcb2 : 2 ∣ c - b := by
    have hb' : b = 2 * (b / 2) + 1 := by
      have := (Nat.div_add_mod b 2).symm
      rw [hbodd] at this
      exact this
    have hc' : c = 2 * (c / 2) + 1 := by
      have := (Nat.div_add_mod c 2).symm
      rw [hcodd] at this
      exact this
    have hdiv : b / 2 ≤ c / 2 := by omega
    refine ⟨c / 2 - b / 2, ?_⟩
    omega
  have hcp2 : 2 ∣ c + b := by
    have : (c + b) % 2 = 0 := by
      rw [Nat.add_mod, hcodd, hbodd]
    exact Nat.dvd_of_mod_eq_zero this
  rcases hcb2 with ⟨u, hu⟩
  rcases hcp2 with ⟨v, hv⟩
  rcases heven with ⟨a2, ha2⟩
  have huv : u * v = a2 * a2 := by
    have hprod : (2 * u) * (2 * v) = (2 * a2) * (2 * a2) := by
      rw [← hu, ← hv, hdiff, ha2]
    have hL : (2 * u) * (2 * v) = 4 * (u * v) := by ac_rfl
    have hR : (2 * a2) * (2 * a2) = 4 * (a2 * a2) := by ac_rfl
    have : 4 * (u * v) = 4 * (a2 * a2) := by rw [← hL, hprod, hR]
    exact Nat.eq_of_mul_eq_mul_left (by decide) this
  have hvu : u ≤ v := by
    have hle : c - b ≤ c + b := by omega
    rw [hu, hv] at hle
    exact Nat.le_of_mul_le_mul_left hle (by decide)
  have hbvu : b = v - u := by
    have h2 : 2 * b = 2 * (v - u) := by
      have hsub : (c + b) - (c - b) = b + b := by
        omega
      rw [hv, hu] at hsub
      have hdist : 2 * v - 2 * u = 2 * (v - u) := (Nat.mul_sub_left_distrib 2 v u).symm
      have hbb : b + b = 2 * b := (Nat.two_mul b).symm
      omega
    exact Nat.eq_of_mul_eq_mul_left (by decide) h2
  have hcvu : c = v + u := by
    have h2 : 2 * c = 2 * (v + u) := by
      have hadd : (c - b) + (c + b) = c + c := by omega
      rw [hu, hv] at hadd
      have hdist : 2 * u + 2 * v = 2 * (u + v) := (Nat.mul_add 2 u v).symm
      have hcc : c + c = 2 * c := (Nat.two_mul c).symm
      omega
    exact Nat.eq_of_mul_eq_mul_left (by decide) h2
  have hcopuv : Nat.Coprime u v := by
    let g := u.gcd v
    have hgu : g ∣ u := Nat.gcd_dvd_left u v
    have hgv : g ∣ v := Nat.gcd_dvd_right u v
    have hgb : g ∣ b := by
      rw [hbvu]
      exact Nat.dvd_sub hgv hgu
    have hgc : g ∣ c := by
      rw [hcvu]
      exact Nat.dvd_add hgv hgu
    have hga : g ∣ a := by
      apply dvd_of_sq_dvd_sq
      have hb2 : g * g ∣ b * b := Nat.mul_dvd_mul hgb hgb
      have hc2 : g * g ∣ c * c := Nat.mul_dvd_mul hgc hgc
      have hsub : g * g ∣ c * c - b * b := Nat.dvd_sub hc2 hb2
      simpa [hsq] using hsub
    have hg1 : g = 1 := by
      have hgcd : g ∣ a.gcd b := Nat.dvd_gcd hga hgb
      simpa [hcop] using hgcd
    simpa [g] using hg1
  rcases isSquare_of_coprime_mul u v a2 hcopuv huv with ⟨⟨n, hun⟩, ⟨m, hvm⟩⟩
  have hmn : (m * n) * (m * n) = a2 * a2 := by
    rw [← huv, hun, hvm]
    ac_rfl
  have ha2mn : a2 = m * n := (eq_of_mul_self_eq hmn).symm
  have hnm : n < m := by
    have hlt : u < v := by
      have : c - b < c + b := by omega
      rw [hu, hv] at this
      exact Nat.lt_of_mul_lt_mul_left this
    have : n * n < m * m := by simpa [hun, hvm] using hlt
    exact lt_of_sq_lt this
  have hn0 : 0 < n := by
    have hu0 : 0 < u := by
      have hcbpos : 0 < c - b := Nat.sub_pos_of_lt hbc
      rw [hu] at hcbpos
      have : 0 < u * 2 := by simpa [Nat.mul_comm] using hcbpos
      exact Nat.pos_of_mul_pos_right this
    have : 0 < n * n := by simpa [hun] using hu0
    exact Nat.pos_of_mul_pos_left this
  have hcopmn : Nat.Coprime m n := by
    let g := m.gcd n
    have hgm : g ∣ m := Nat.gcd_dvd_left m n
    have hgn : g ∣ n := Nat.gcd_dvd_right m n
    have hgu : g ∣ u := by
      rw [hun]
      exact Nat.dvd_trans hgn (Nat.dvd_mul_left n n)
    have hgv : g ∣ v := by
      rw [hvm]
      exact Nat.dvd_trans hgm (Nat.dvd_mul_left m m)
    have hg1 : g = 1 := by
      have : g ∣ 1 := by simpa [hcopuv] using Nat.dvd_gcd hgu hgv
      exact Nat.eq_one_of_dvd_one this
    simpa [g] using hg1
  have hpar : m % 2 + n % 2 = 1 := by
    rcases mod_two m with hm0 | hm1 <;> rcases mod_two n with hn0 | hn1
    · exact absurd hcopmn (Nat.not_coprime_of_dvd_of_dvd (by decide)
        (Nat.dvd_of_mod_eq_zero hm0) (Nat.dvd_of_mod_eq_zero hn0))
    · omega
    · omega
    · have hm2 : m * m % 2 = 1 := by
        rw [Nat.mul_mod, hm1]
      have hn2 : n * n % 2 = 1 := by
        rw [Nat.mul_mod, hn1]
      have hle : n * n ≤ m * m := Nat.le_of_lt (sq_lt hnm)
      have hmq : m * m = 2 * (m * m / 2) + 1 := by
        have hdiv := (Nat.div_add_mod (m * m) 2).symm
        rw [hm2] at hdiv
        exact hdiv
      have hnq : n * n = 2 * (n * n / 2) + 1 := by
        have hdiv := (Nat.div_add_mod (n * n) 2).symm
        rw [hn2] at hdiv
        exact hdiv
      have hdiff : m * m - n * n = 2 * (m * m / 2 - n * n / 2) := by omega
      have hb0 : b % 2 = 0 := by
        rw [hbvu, hvm, hun, hdiff]
        exact Nat.mod_eq_zero_of_dvd (Nat.dvd_mul_right _ _)
      omega
  exact ⟨m, n, hn0, hnm, by rw [ha2, ha2mn]; ac_rfl, by rw [hbvu, hvm, hun],
    by rw [hcvu, hvm, hun], hcopmn, hpar⟩

theorem coprime_self_add {u v : Nat} (h : Nat.Coprime u v) : Nat.Coprime u (u + v) := by
  let g := u.gcd (u + v)
  have hgu : g ∣ u := Nat.gcd_dvd_left u (u + v)
  have hgs : g ∣ u + v := Nat.gcd_dvd_right u (u + v)
  have hgv : g ∣ v := by
    have hsub : g ∣ (u + v) - u := Nat.dvd_sub hgs hgu
    have : (u + v) - u = v := by omega
    simpa [this] using hsub
  have hg1 : g = 1 :=
    Nat.eq_one_of_dvd_one (by simpa [h] using Nat.dvd_gcd hgu hgv)
  exact hg1

theorem coprime_self_sub {u v : Nat} (h : Nat.Coprime u v) (_hv : v ≤ u) :
    Nat.Coprime u (u - v) := by
  let g := u.gcd (u - v)
  have hgu : g ∣ u := Nat.gcd_dvd_left u (u - v)
  have hgd : g ∣ u - v := Nat.gcd_dvd_right u (u - v)
  have hgv : g ∣ v := by
    have hsub : g ∣ u - (u - v) := Nat.dvd_sub hgu hgd
    have : u - (u - v) = v := by omega
    simpa [this] using hsub
  have hg1 : g = 1 :=
    Nat.eq_one_of_dvd_one (by simpa [h] using Nat.dvd_gcd hgu hgv)
  simpa [g] using hg1

theorem coprime_right_add {u v : Nat} (h : Nat.Coprime u v) : Nat.Coprime v (u + v) := by
  let g := v.gcd (u + v)
  have hgv : g ∣ v := Nat.gcd_dvd_left v (u + v)
  have hgs : g ∣ u + v := Nat.gcd_dvd_right v (u + v)
  have hgu : g ∣ u := by
    have hsub : g ∣ (u + v) - v := Nat.dvd_sub hgs hgv
    have : (u + v) - v = u := by omega
    simpa [this] using hsub
  have hg1 : g = 1 :=
    Nat.eq_one_of_dvd_one (by simpa [h] using Nat.dvd_gcd hgu hgv)
  exact hg1

theorem coprime_right_sub {u v : Nat} (h : Nat.Coprime u v) (_hv : v ≤ u) :
    Nat.Coprime v (u - v) := by
  let g := v.gcd (u - v)
  have hgv : g ∣ v := Nat.gcd_dvd_left v (u - v)
  have hgd : g ∣ u - v := Nat.gcd_dvd_right v (u - v)
  have hgu : g ∣ u := by
    have hsum : g ∣ v + (u - v) := Nat.dvd_add hgv hgd
    have : v + (u - v) = u := by omega
    simpa [this] using hsum
  have hg1 : g = 1 :=
    Nat.eq_one_of_dvd_one (by simpa [h] using Nat.dvd_gcd hgu hgv)
  simpa [g] using hg1

theorem coprime_sum_diff {u v : Nat} (h : Nat.Coprime u v) (_hv : v ≤ u)
    (hpar : (u + v) % 2 = 1) : Nat.Coprime (u + v) (u - v) := by
  let g := (u + v).gcd (u - v)
  have hgs : g ∣ u + v := Nat.gcd_dvd_left (u + v) (u - v)
  have hgd : g ∣ u - v := Nat.gcd_dvd_right (u + v) (u - v)
  have hg2u : g ∣ 2 * u := by
    have hsum : g ∣ (u + v) + (u - v) := Nat.dvd_add hgs hgd
    have : (u + v) + (u - v) = 2 * u := by omega
    simpa [this] using hsum
  have hg2v : g ∣ 2 * v := by
    have hdiff : g ∣ (u + v) - (u - v) := Nat.dvd_sub hgs hgd
    have : (u + v) - (u - v) = 2 * v := by omega
    simpa [this] using hdiff
  have hcopgv : Nat.Coprime g v := by
    let d := g.gcd v
    have hdg : d ∣ g := Nat.gcd_dvd_left g v
    have hdv : d ∣ v := Nat.gcd_dvd_right g v
    have hds : d ∣ u + v := Nat.dvd_trans hdg hgs
    have hdu : d ∣ u := by
      have hsub : d ∣ (u + v) - v := Nat.dvd_sub hds hdv
      have : (u + v) - v = u := by omega
      simpa [this] using hsub
    have hd1 : d = 1 :=
      Nat.eq_one_of_dvd_one (by simpa [h] using Nat.dvd_gcd hdu hdv)
    simpa [d] using hd1
  have hg2 : g ∣ 2 := by
    have hmul : g ∣ v * 2 := by simpa [Nat.mul_comm] using hg2v
    exact Nat.Coprime.dvd_of_dvd_mul_left hcopgv hmul
  have hgpos : 0 < g := Nat.gcd_pos_of_pos_left (u - v) (by omega : 0 < u + v)
  have hcases : g = 1 ∨ g = 2 := by
    have hle : g ≤ 2 := Nat.le_of_dvd (by decide) hg2
    omega
  rcases hcases with h1 | h2
  · simpa [g] using h1
  · have : (u + v) % 2 = 0 :=
      Nat.mod_eq_zero_of_dvd (by rw [← h2]; exact hgs)
    omega

theorem sum_diff_sq (p q : Nat) (hq : q ≤ p) :
    (p + q) * (p + q) + (p - q) * (p - q) = 2 * (p * p + q * q) := by
  apply Int.ofNat.inj
  change (↑((p + q) * (p + q) + (p - q) * (p - q)) : Int) = ↑(2 * (p * p + q * q))
  have hgrind : ((↑(p + q) * ↑(p + q) + (↑p - ↑q) * (↑p - ↑q) : Int) =
      (↑(2 * (p * p + q * q)) : Int)) := by
    grind
  rw [← Int.ofNat_add_ofNat, ← Int.ofNat_mul_ofNat, ← Int.ofNat_mul_ofNat, Int.ofNat_sub hq]
  exact hgrind

theorem sub_odd_odd_even (u v : Nat) (_hv : v ≤ u) (hu : u % 2 = 1) (hve : v % 2 = 0) :
    (u - v) % 2 = 1 := by
  have hu' : u = 2 * (u / 2) + 1 := by
    have hdiv := (Nat.div_add_mod u 2).symm
    omega
  have hv' : v = 2 * (v / 2) := by
    have hdiv := (Nat.div_add_mod v 2).symm
    omega
  have hrepr : u - v = 2 * (u / 2 - v / 2) + 1 := by omega
  have hmod : (1 + 2 * (u / 2 - v / 2)) % 2 = 1 % 2 :=
    Nat.add_mul_mod_self_left 1 2 (u / 2 - v / 2)
  rw [hrepr, Nat.add_comm]
  simpa [Nat.mod_eq_of_lt (by decide : 1 < 2)] using hmod

theorem sub_odd_even_odd (u v : Nat) (_hv : v ≤ u) (hu : u % 2 = 0) (hve : v % 2 = 1) :
    (u - v) % 2 = 1 := by
  have hu' : u = 2 * (u / 2) := by
    have hdiv := (Nat.div_add_mod u 2).symm
    omega
  have hv' : v = 2 * (v / 2) + 1 := by
    have hdiv := (Nat.div_add_mod v 2).symm
    omega
  have hdiv : v / 2 + 1 ≤ u / 2 := by omega
  have hrepr : u - v = 2 * (u / 2 - (v / 2 + 1)) + 1 := by omega
  have hmod : (1 + 2 * (u / 2 - (v / 2 + 1))) % 2 = 1 % 2 :=
    Nat.add_mul_mod_self_left 1 2 (u / 2 - (v / 2 + 1))
  rw [hrepr, Nat.add_comm]
  simpa [Nat.mod_eq_of_lt (by decide : 1 < 2)] using hmod

theorem four_squares (w u v : Nat) (hv : v ≤ u) (hcop : Nat.Coprime u v)
    (hpar : (u + v) % 2 = 1)
    (heq : w * w = u * v * (u - v) * (u + v)) :
    ∃ a b c d, u = a * a ∧ v = b * b ∧ u - v = d * d ∧ u + v = c * c := by
  have h13 : Nat.Coprime u (u - v) := coprime_self_sub hcop hv
  have h14 : Nat.Coprime u (u + v) := coprime_self_add hcop
  have h23 : Nat.Coprime v (u - v) := coprime_right_sub hcop hv
  have h24 : Nat.Coprime v (u + v) := coprime_right_add hcop
  have h34 : Nat.Coprime (u - v) (u + v) := (coprime_sum_diff hcop hv hpar).symm
  rcases isSquare_four u v (u - v) (u + v) w hcop h13 h14 h23 h24 h34 heq.symm with
    ⟨⟨a, ha⟩, ⟨b, hb⟩, ⟨d, hd⟩, ⟨c, hc⟩⟩
  exact ⟨a, b, c, d, ha, hb, hd, hc⟩

theorem root_odd_of_odd_square (n r : Nat) (hn : n % 2 = 1) (hr : n = r * r) : r % 2 = 1 := by
  rcases mod_two r with h0 | h1
  · have : r * r % 2 = 0 := by rw [Nat.mul_mod, h0]
    rw [← hr] at this
    omega
  · exact h1

theorem area_from_param (w1 m n p q : Nat) (hp : p = 2 * m * n) (hq : q = m * m - n * n)
    (hnm : n < m) (hpq : p * q = 2 * (w1 * w1)) :
    w1 * w1 = m * n * (m - n) * (m + n) := by
  have hle : n ≤ m := Nat.le_of_lt hnm
  have hdiff : (m - n) * (m + n) = m * m - n * n := nat_diff_squares m n hle
  have hmul : 2 * (m * n * (m * m - n * n)) = 2 * (w1 * w1) := by
    calc
      2 * (m * n * (m * m - n * n)) = (2 * m * n) * (m * m - n * n) := by ac_rfl
      _ = p * q := by rw [← hp, ← hq]
      _ = 2 * (w1 * w1) := hpq
  have hsq : m * n * (m * m - n * n) = w1 * w1 :=
    Nat.eq_of_mul_eq_mul_left (by decide) hmul
  rw [← hdiff] at hsq
  have hassoc : m * n * ((m - n) * (m + n)) = m * n * (m - n) * (m + n) := by ac_rfl
  rw [hassoc] at hsq
  exact hsq.symm

theorem smaller_than_w (w u v w1 : Nat) (hv : 0 < v) (hvu : v < u) (hw1 : 0 < w1)
    (hv4 : v = 4 * (w1 * w1)) (heq : w * w = u * v * (u - v) * (u + v)) : w1 < w := by
  have hpos : 0 < w1 * w1 := Nat.mul_pos hw1 hw1
  have h4 : w1 * w1 < 4 * (w1 * w1) := by
    have h := Nat.mul_lt_mul_of_pos_right (by decide : 1 < 4) hpos
    simpa using h
  have hle : 4 * (w1 * w1) ≤ w * w := by
    rw [heq, ← hv4]
    have hu0 : 0 < u := Nat.lt_trans hv hvu
    have hdiff : 0 < u - v := Nat.sub_pos_of_lt hvu
    have hadd : 0 < u + v := by omega
    have hfac : 0 < u * (u - v) * (u + v) := Nat.mul_pos (Nat.mul_pos hu0 hdiff) hadd
    have hfac1 : 1 ≤ u * (u - v) * (u + v) := Nat.succ_le_of_lt hfac
    have hmul : v * 1 ≤ v * (u * (u - v) * (u + v)) := Nat.mul_le_mul_left v hfac1
    rw [Nat.mul_one] at hmul
    have hre : v * (u * (u - v) * (u + v)) = u * v * (u - v) * (u + v) := by ac_rfl
    simpa [hre] using hmul
  have hsq : w1 * w1 < w * w := Nat.lt_of_lt_of_le h4 hle
  exact lt_of_sq_lt hsq

theorem shrink_common_factor (w u v : Nat) (hv : 0 < v) (hvu : v < u)
    (heq : w * w = u * v * (u - v) * (u + v)) (hg1 : u.gcd v ≠ 1) :
    ∃ w1 u1 v1, w1 < w ∧ 0 < v1 ∧ v1 < u1 ∧
      w1 * w1 = u1 * v1 * (u1 - v1) * (u1 + v1) := by
  let g := u.gcd v
  have hgpos : 0 < g := Nat.gcd_pos_of_pos_right u hv
  have hgu : g ∣ u := Nat.gcd_dvd_left u v
  have hgv : g ∣ v := Nat.gcd_dvd_right u v
  rcases hgu with ⟨u1, hu1⟩
  rcases hgv with ⟨v1, hv1⟩
  have hvu1 : v1 < u1 := by
    have : g * v1 < g * u1 := by simpa [hu1, hv1] using hvu
    exact Nat.lt_of_mul_lt_mul_left this
  have hv1pos : 0 < v1 := by
    have : 0 < g * v1 := by simpa [hv1] using hv
    exact Nat.pos_of_mul_pos_left this
  have hsub : u - v = g * (u1 - v1) := by
    rw [hu1, hv1]
    exact (Nat.mul_sub_left_distrib g u1 v1).symm
  have hadd : u + v = g * (u1 + v1) := by
    rw [hu1, hv1]
    exact (Nat.mul_add g u1 v1).symm
  have hprod : u * v * (u - v) * (u + v) =
      (g * g) * (g * g) * (u1 * v1 * (u1 - v1) * (u1 + v1)) := by
    rw [hu1, hv1]
    rw [show g * u1 - g * v1 = g * (u1 - v1) from (Nat.mul_sub_left_distrib g u1 v1).symm]
    rw [show g * u1 + g * v1 = g * (u1 + v1) from (Nat.mul_add g u1 v1).symm]
    ac_rfl
  have hgg : (g * g) * (g * g) ∣ w * w := by
    rw [heq]
    rw [hprod]
    exact ⟨u1 * v1 * (u1 - v1) * (u1 + v1), rfl⟩
  have hgw : g * g ∣ w := dvd_of_sq_dvd_sq hgg
  let w1 := w / (g * g)
  have hwmul : (g * g) * w1 = w := Nat.mul_div_cancel' hgw
  have hprod' : w1 * w1 = u1 * v1 * (u1 - v1) * (u1 + v1) := by
    have hcancel : (g * g) * (g * g) * (w1 * w1) =
        (g * g) * (g * g) * (u1 * v1 * (u1 - v1) * (u1 + v1)) := by
      calc
        (g * g) * (g * g) * (w1 * w1) = w * w := by
          have : (g * g) * (g * g) * (w1 * w1) = ((g * g) * w1) * ((g * g) * w1) := by ac_rfl
          rw [this, hwmul]
        _ = u * v * (u - v) * (u + v) := heq
        _ = (g * g) * (g * g) * (u1 * v1 * (u1 - v1) * (u1 + v1)) := hprod
    exact Nat.eq_of_mul_eq_mul_left (Nat.mul_pos (Nat.mul_pos hgpos hgpos) (Nat.mul_pos hgpos hgpos))
      hcancel
  have hw1pos : 0 < w1 := by
    have hdiff : 0 < u1 - v1 := Nat.sub_pos_of_lt hvu1
    have hu1pos : 0 < u1 := Nat.lt_trans hv1pos hvu1
    have haddp : 0 < u1 + v1 := Nat.add_pos_left hu1pos v1
    have : 0 < w1 * w1 := by
      rw [hprod']
      exact Nat.mul_pos (Nat.mul_pos (Nat.mul_pos hu1pos hv1pos) hdiff) haddp
    exact Nat.pos_of_mul_pos_left this
  have hg2 : 2 ≤ g := by omega
  have hlt : w1 < w := by
    rw [← hwmul]
    have hgg1 : 1 < g * g := by
      have h1 : 1 < g := by omega
      have hmul : g * 1 < g * g := Nat.mul_lt_mul_of_pos_left h1 hgpos
      rw [Nat.mul_one] at hmul
      exact Nat.lt_trans h1 hmul
    have : 1 * w1 < (g * g) * w1 := Nat.mul_lt_mul_of_pos_right hgg1 hw1pos
    simpa using this
  exact ⟨w1, u1, v1, hlt, hv1pos, hvu1, hprod'⟩

theorem shrink_both_odd (w u v : Nat) (hv : 0 < v) (hvu : v < u)
    (hu : u % 2 = 1) (hv2 : v % 2 = 1)
    (heq : w * w = u * v * (u - v) * (u + v)) :
    ∃ w1 u1 v1, w1 < w ∧ 0 < v1 ∧ v1 < u1 ∧
      w1 * w1 = u1 * v1 * (u1 - v1) * (u1 + v1) := by
  have hsume : (u + v) % 2 = 0 := by
    rw [Nat.add_mod, hu, hv2]
  have hdiffe : (u - v) % 2 = 0 := by
    have hu' : u = 2 * (u / 2) + 1 := by
      have hdiv := (Nat.div_add_mod u 2).symm
      omega
    have hv' : v = 2 * (v / 2) + 1 := by
      have hdiv := (Nat.div_add_mod v 2).symm
      omega
    have : u - v = 2 * (u / 2 - v / 2) := by omega
    rw [this]
    exact Nat.mod_eq_zero_of_dvd (Nat.dvd_mul_right _ _)
  have hdu : 2 ∣ u + v := Nat.dvd_of_mod_eq_zero hsume
  have hdv : 2 ∣ u - v := Nat.dvd_of_mod_eq_zero hdiffe
  let u1 := (u + v) / 2
  let v1 := (u - v) / 2
  have hsu : u + v = 2 * u1 := (Nat.mul_div_cancel' hdu).symm
  have hsd : u - v = 2 * v1 := (Nat.mul_div_cancel' hdv).symm
  have hu_sum : u = u1 + v1 := by
    have h2 : 2 * u = 2 * (u1 + v1) := by
      calc
        2 * u = (u + v) + (u - v) := by omega
        _ = 2 * u1 + 2 * v1 := by rw [hsu, hsd]
        _ = 2 * (u1 + v1) := (Nat.mul_add 2 u1 v1).symm
    exact Nat.eq_of_mul_eq_mul_left (by decide) h2
  have hv_diff : v = u1 - v1 := by
    have h2 : 2 * v = 2 * (u1 - v1) := by
      calc
        2 * v = (u + v) - (u - v) := by omega
        _ = 2 * u1 - 2 * v1 := by rw [hsu, hsd]
        _ = 2 * (u1 - v1) := (Nat.mul_sub_left_distrib 2 u1 v1).symm
    exact Nat.eq_of_mul_eq_mul_left (by decide) h2
  have hv1pos : 0 < v1 := by
    have : 0 < u - v := Nat.sub_pos_of_lt hvu
    rw [hsd] at this
    exact Nat.pos_of_mul_pos_left this
  have hvu1 : v1 < u1 := by
    have : 0 < u1 - v1 := by simpa [hv_diff] using hv
    omega
  have hfour : w * w = 4 * (u1 * v1 * (u1 - v1) * (u1 + v1)) := by
    calc
      w * w = u * v * (u - v) * (u + v) := heq
      _ = (u1 + v1) * (u1 - v1) * (2 * v1) * (2 * u1) := by rw [hsd, hsu, hu_sum, hv_diff]
      _ = (2 * 2) * (u1 * v1 * (u1 - v1) * (u1 + v1)) := by ac_rfl
      _ = 4 * (u1 * v1 * (u1 - v1) * (u1 + v1)) := by rw [show 2 * 2 = 4 from rfl]
  have h2w : 2 ∣ w := dvd_of_sq_dvd_sq (by
    rw [hfour]
    exact ⟨u1 * v1 * (u1 - v1) * (u1 + v1), by rw [show 2 * 2 = 4 from rfl]⟩)
  let w1 := w / 2
  have hw : 2 * w1 = w := Nat.mul_div_cancel' h2w
  have heq1 : w1 * w1 = u1 * v1 * (u1 - v1) * (u1 + v1) := by
    have : 4 * (w1 * w1) = 4 * (u1 * v1 * (u1 - v1) * (u1 + v1)) := by
      calc
        4 * (w1 * w1) = (2 * w1) * (2 * w1) := by ac_rfl
        _ = w * w := by rw [hw]
        _ = 4 * (u1 * v1 * (u1 - v1) * (u1 + v1)) := hfour
    exact Nat.eq_of_mul_eq_mul_left (by decide) this
  have hw1pos : 0 < w1 := by
    have hdiff : 0 < u1 - v1 := Nat.sub_pos_of_lt hvu1
    have hu1p : 0 < u1 := Nat.lt_trans hv1pos hvu1
    have : 0 < w1 * w1 := by
      rw [heq1]
      exact Nat.mul_pos (Nat.mul_pos (Nat.mul_pos hu1p hv1pos) hdiff) (Nat.add_pos_left hu1p v1)
    exact Nat.pos_of_mul_pos_left this
  have hlt : w1 < w := by
    rw [← hw]
    have : 1 * w1 < 2 * w1 := Nat.mul_lt_mul_of_pos_right (by decide : 1 < 2) hw1pos
    simpa using this
  exact ⟨w1, u1, v1, hlt, hv1pos, hvu1, heq1⟩

theorem even_first_impossible (w u v : Nat) (_hv : 0 < v) (hvu : v < u)
    (hcop : Nat.Coprime u v) (hu : u % 2 = 0) (hve : v % 2 = 1)
    (heq : w * w = u * v * (u - v) * (u + v)) : False := by
  have hle : v ≤ u := Nat.le_of_lt hvu
  have hsum_odd : (u + v) % 2 = 1 := by
    rw [Nat.add_mod, hu, hve]
  have hdiff_odd : (u - v) % 2 = 1 := sub_odd_even_odd u v hle hu hve
  rcases four_squares w u v hle hcop hsum_odd heq with ⟨_a, _b, c, d, _ha, _hb, hd, hc⟩
  have hcodd : c % 2 = 1 := root_odd_of_odd_square (u + v) c hsum_odd hc
  have hdodd : d % 2 = 1 := root_odd_of_odd_square (u - v) d hdiff_odd hd
  have hsum4 : (c * c + d * d) % 4 = 2 := by
    rw [Nat.add_mod, odd_sq_mod4 c hcodd, odd_sq_mod4 d hdodd]
  have h2u : c * c + d * d = 2 * u := by
    rw [← hc, ← hd]
    omega
  have hmod2 : (2 * u) % 4 = 2 := by
    rw [← h2u]
    exact hsum4
  have hu' : u = 2 * (u / 2) := by
    have hdiv := (Nat.div_add_mod u 2).symm
    omega
  have hmod0 : (2 * u) % 4 = 0 := by
    rw [hu']
    have : 2 * (2 * (u / 2)) = 4 * (u / 2) := by
      have hassoc : 2 * (2 * (u / 2)) = (2 * 2) * (u / 2) := by ac_rfl
      rw [hassoc, show 2 * 2 = 4 from rfl]
    rw [this]
    exact Nat.mod_eq_zero_of_dvd ⟨u / 2, rfl⟩
  omega

theorem shrink_coprime (w u v : Nat) (hv : 0 < v) (hvu : v < u) (hcop : Nat.Coprime u v)
    (hu : u % 2 = 1) (hve : v % 2 = 0)
    (heq : w * w = u * v * (u - v) * (u + v)) :
    ∃ w1 u1 v1, w1 < w ∧ 0 < v1 ∧ v1 < u1 ∧
      w1 * w1 = u1 * v1 * (u1 - v1) * (u1 + v1) := by
  have hle : v ≤ u := Nat.le_of_lt hvu
  have hsum_odd : (u + v) % 2 = 1 := by
    rw [Nat.add_mod, hu, hve]
  have hdiff_odd : (u - v) % 2 = 1 := sub_odd_odd_even u v hle hu hve
  rcases four_squares w u v hle hcop hsum_odd heq with ⟨a, b, c, d, ha, hb, hd, hc⟩
  have hcodd : c % 2 = 1 := root_odd_of_odd_square (u + v) c hsum_odd hc
  have hdodd : d % 2 = 1 := root_odd_of_odd_square (u - v) d hdiff_odd hd
  have hcpos : 0 < c := by
    have : 0 < c * c := by
      rw [← hc]
      exact Nat.add_pos_left (Nat.lt_trans hv hvu) v
    exact Nat.pos_of_mul_pos_left this
  have hdpos : 0 < d := by
    have : 0 < d * d := by
      rw [← hd]
      exact Nat.sub_pos_of_lt hvu
    exact Nat.pos_of_mul_pos_left this
  have hcd : d < c := by
    have : d * d < c * c := by
      rw [← hd, ← hc]
      omega
    exact lt_of_sq_lt this
  have hbe : b % 2 = 0 := by
    rcases mod_two b with h0 | h1
    · exact h0
    · have : b * b % 2 = 1 := by rw [Nat.mul_mod, h1]
      rw [← hb] at this
      omega
  have hb2 : 2 ∣ b := Nat.dvd_of_mod_eq_zero hbe
  let w1 := b / 2
  have hbmul : 2 * w1 = b := Nat.mul_div_cancel' hb2
  have hv4 : v = 4 * (w1 * w1) := by
    rw [hb, ← hbmul]
    ac_rfl
  have hsum_even : 2 ∣ c + d := by
    have : (c + d) % 2 = 0 := by
      rw [Nat.add_mod, hcodd, hdodd]
    exact Nat.dvd_of_mod_eq_zero this
  have hdiff_even : 2 ∣ c - d := by
    have hc' : c = 2 * (c / 2) + 1 := by
      have hdiv := (Nat.div_add_mod c 2).symm
      omega
    have hd' : d = 2 * (d / 2) + 1 := by
      have hdiv := (Nat.div_add_mod d 2).symm
      omega
    have : c - d = 2 * (c / 2 - d / 2) := by omega
    exact ⟨c / 2 - d / 2, this⟩
  let p := (c + d) / 2
  let q := (c - d) / 2
  have hp2 : c + d = 2 * p := (Nat.mul_div_cancel' hsum_even).symm
  have hq2 : c - d = 2 * q := (Nat.mul_div_cancel' hdiff_even).symm
  have hcpq : c = p + q := by
    have : 2 * c = 2 * (p + q) := by
      calc
        2 * c = (c + d) + (c - d) := by omega
        _ = 2 * p + 2 * q := by rw [hp2, hq2]
        _ = 2 * (p + q) := (Nat.mul_add 2 p q).symm
    exact Nat.eq_of_mul_eq_mul_left (by decide) this
  have hqle : q ≤ p := by
    have : c - d ≤ c + d := by omega
    rw [hq2, hp2] at this
    exact Nat.le_of_mul_le_mul_left this (by decide)
  have hdpq : d = p - q := by
    have : 2 * d = 2 * (p - q) := by
      calc
        2 * d = (c + d) - (c - d) := by omega
        _ = 2 * p - 2 * q := by rw [hp2, hq2]
        _ = 2 * (p - q) := (Nat.mul_sub_left_distrib 2 p q).symm
    exact Nat.eq_of_mul_eq_mul_left (by decide) this
  have hpyth : p * p + q * q = a * a := by
    have hqlep : q ≤ p := hqle
    have hsum : c * c + d * d = 2 * (p * p + q * q) := by
      rw [hcpq, hdpq]
      exact sum_diff_sq p q hqlep
    have h2u : c * c + d * d = 2 * u := by
      rw [← hc, ← hd]
      omega
    have : 2 * (p * p + q * q) = 2 * (a * a) := by
      rw [← hsum, h2u, ha]
    exact Nat.eq_of_mul_eq_mul_left (by decide) this
  have hqpos : 0 < q := by
    have : 0 < c - d := Nat.sub_pos_of_lt hcd
    rw [hq2] at this
    exact Nat.pos_of_mul_pos_left this
  have hppos : 0 < p := by
    have : 0 < c + d := by omega
    rw [hp2] at this
    exact Nat.pos_of_mul_pos_left this
  have hqp : q < p := by
    have : 0 < p - q := by
      rw [← hdpq]
      exact hdpos
    omega
  have hcoppq : Nat.Coprime p q := by
    let g := p.gcd q
    have hgp : g ∣ p := Nat.gcd_dvd_left p q
    have hgq : g ∣ q := Nat.gcd_dvd_right p q
    have hgc : g ∣ c := by
      rw [hcpq]
      exact Nat.dvd_add hgp hgq
    have hgdd : g ∣ d := by
      rw [hdpq]
      exact Nat.dvd_sub hgp hgq
    have hcopcd : c.gcd d = 1 := by
      let k := c.gcd d
      have hkc : k ∣ c := Nat.gcd_dvd_left c d
      have hkd : k ∣ d := Nat.gcd_dvd_right c d
      have hk1 : k * k ∣ 1 := by
        have hone : (u + v).gcd (u - v) = 1 := coprime_sum_diff hcop hle hsum_odd
        have hkuv : k * k ∣ (u + v).gcd (u - v) := by
          have hkc2 : k * k ∣ c * c := Nat.mul_dvd_mul hkc hkc
          have hkd2 : k * k ∣ d * d := Nat.mul_dvd_mul hkd hkd
          rw [← hc] at hkc2
          rw [← hd] at hkd2
          exact Nat.dvd_gcd hkc2 hkd2
        simpa [hone] using hkuv
      have : k * k = 1 * 1 := by simpa using Nat.eq_one_of_dvd_one hk1
      exact eq_of_mul_self_eq this
    have hg1 : g ∣ 1 := by
      have : g ∣ c.gcd d := Nat.dvd_gcd hgc hgdd
      simpa [hcopcd] using this
    simpa [g] using Nat.eq_one_of_dvd_one hg1
  have hpq : p * q = 2 * (w1 * w1) := by
    have hprod : (c - d) * (c + d) = c * c - d * d :=
      nat_diff_squares c d (Nat.le_of_lt hcd)
    have hdiffv : c * c - d * d = 2 * v := by
      rw [← hc, ← hd]
      omega
    have hstep : (2 * q) * (2 * p) = 2 * v := by
      rw [← hq2, ← hp2, hprod, hdiffv]
    have hleft : (2 * q) * (2 * p) = 4 * (p * q) := by ac_rfl
    have hright : 2 * v = 8 * (w1 * w1) := by
      rw [hv4]
      ac_rfl
    have h8 : 4 * (p * q) = 8 * (w1 * w1) := by
      rw [← hleft, hstep, hright]
    have h8' : 2 * (2 * (p * q)) = 2 * (4 * (w1 * w1)) := by
      calc
        2 * (2 * (p * q)) = 4 * (p * q) := by ac_rfl
        _ = 8 * (w1 * w1) := h8
        _ = 2 * (4 * (w1 * w1)) := by ac_rfl
    have h2 : 2 * (p * q) = 4 * (w1 * w1) := Nat.eq_of_mul_eq_mul_left (by decide) h8'
    have h2' : 2 * (p * q) = 2 * (2 * (w1 * w1)) := by
      calc
        2 * (p * q) = 4 * (w1 * w1) := h2
        _ = 2 * (2 * (w1 * w1)) := by ac_rfl
    exact Nat.eq_of_mul_eq_mul_left (by decide) h2'
  have hw1pos : 0 < w1 := by
    have hbpos : 0 < b := by
      have : 0 < b * b := by
        rw [← hb]
        exact hv
      exact Nat.pos_of_mul_pos_left this
    have : 0 < 2 * w1 := by
      rw [← hbmul] at hbpos
      exact hbpos
    exact Nat.pos_of_mul_pos_left this
  have hltw : w1 < w := smaller_than_w w u v w1 hv hvu hw1pos hv4 heq
  rcases mod_two p with hp0 | hp1 <;> rcases mod_two q with hq0 | hq1
  · have : (p + q) % 2 = 0 := by
      rw [Nat.add_mod, hp0, hq0]
    rw [← hcpq] at this
    omega
  · rcases pythag_even p q a hpyth hppos hqpos hcoppq (Nat.dvd_of_mod_eq_zero hp0) with
      ⟨m, n, hn0, hnm, hp, hq, _, _, _⟩
    exact ⟨w1, m, n, hltw, hn0, hnm, area_from_param w1 m n p q hp hq hnm hpq⟩
  · have hpyth' : q * q + p * p = a * a := by
      rw [Nat.add_comm]
      exact hpyth
    have hpq' : q * p = 2 * (w1 * w1) := by
      rw [Nat.mul_comm]
      exact hpq
    rcases pythag_even q p a hpyth' hqpos hppos hcoppq.symm (Nat.dvd_of_mod_eq_zero hq0) with
      ⟨m, n, hn0, hnm, hq, hp, _, _, _⟩
    exact ⟨w1, m, n, hltw, hn0, hnm, area_from_param w1 m n q p hq hp hnm hpq'⟩
  · have : (p + q) % 2 = 0 := by
      rw [Nat.add_mod, hp1, hq1]
    rw [← hcpq] at this
    omega

theorem no_positive_square_product :
    ∀ w u v : Nat, 0 < v → v < u → w * w = u * v * (u - v) * (u + v) → False := by
  intro w
  induction w using Nat.strongRecOn with
  | ind w ih =>
    intro u v hv hvu heq
    by_cases hg : u.gcd v = 1
    · rcases mod_two u with hu | hu <;> rcases mod_two v with hv2 | hv2
      · exact absurd hg (Nat.not_coprime_of_dvd_of_dvd (by decide)
          (Nat.dvd_of_mod_eq_zero hu) (Nat.dvd_of_mod_eq_zero hv2))
      · exact even_first_impossible w u v hv hvu hg hu hv2 heq
      · rcases shrink_coprime w u v hv hvu hg hu hv2 heq with
          ⟨w1, u1, v1, hlt, hv1, hu1, heq1⟩
        exact ih w1 hlt u1 v1 hv1 hu1 heq1
      · rcases shrink_both_odd w u v hv hvu hu hv2 heq with
          ⟨w1, u1, v1, hlt, hv1, hu1, heq1⟩
        exact ih w1 hlt u1 v1 hv1 hu1 heq1
    · rcases shrink_common_factor w u v hv hvu heq hg with
        ⟨w1, u1, v1, hlt, hv1, hu1, heq1⟩
      exact ih w1 hlt u1 v1 hv1 hu1 heq1

theorem pow_cube (x : Int) : x ^ 3 = x * x * x := by
  rw [show (3 : Nat) = 2 + 1 from rfl, Int.pow_succ]
  rw [show (2 : Nat) = 1 + 1 from rfl, Int.pow_succ]
  rw [show (1 : Nat) = 0 + 1 from rfl, Int.pow_succ]
  simp

theorem cube_diff (x d : Int) : x * x * x - x * d * d = x * (x - d) * (x + d) := by
  grind

theorem no_from_nat_factors (Y W X D : Nat) (hY : 0 < Y) (_hW : 0 < W) (hD : 0 < D)
    (hX : D < X) (hEq : Y * Y * D * D * D = W * W * X * (X - D) * (X + D)) : False := by
  have hdiv : (Y * D * D) * (Y * D * D) = (W * W) * (X * D * (X - D) * (X + D)) := by
    calc
      (Y * D * D) * (Y * D * D) = (Y * Y * D * D * D) * D := by ac_rfl
      _ = (W * W * X * (X - D) * (X + D)) * D := by rw [hEq]
      _ = W * W * (X * D * (X - D) * (X + D)) := by ac_rfl
  have hWdvd : W ∣ Y * D * D :=
    dvd_of_sq_dvd_sq ⟨X * D * (X - D) * (X + D), hdiv⟩
  let w := (Y * D * D) / W
  have hw : W * w = Y * D * D := Nat.mul_div_cancel' hWdvd
  have heqw : w * w = X * D * (X - D) * (X + D) := by
    have hcancel : (W * W) * (w * w) = (W * W) * (X * D * (X - D) * (X + D)) := by
      calc
        (W * W) * (w * w) = (W * w) * (W * w) := by ac_rfl
        _ = (Y * D * D) * (Y * D * D) := by rw [hw]
        _ = (W * W) * (X * D * (X - D) * (X + D)) := hdiv
    have hWpos : 0 < W := by
      have : 0 < Y * D * D := Nat.mul_pos (Nat.mul_pos hY hD) hD
      have : 0 < W * w := by rw [hw]; exact this
      exact Nat.pos_of_mul_pos_right this
    exact Nat.eq_of_mul_eq_mul_left (Nat.mul_pos hWpos hWpos) hcancel
  exact no_positive_square_product w X D hD hX heqw

theorem no_from_nat_factors_inside (Y W A D : Nat) (hY : 0 < Y) (_hW : 0 < W)
    (hA : 0 < A) (hAD : A < D)
    (hEq : Y * Y * D * D * D = W * W * A * (D - A) * (D + A)) : False := by
  have hdiv : (Y * D * D) * (Y * D * D) = (W * W) * (D * A * (D - A) * (D + A)) := by
    calc
      (Y * D * D) * (Y * D * D) = (Y * Y * D * D * D) * D := by ac_rfl
      _ = (W * W * A * (D - A) * (D + A)) * D := by rw [hEq]
      _ = W * W * (D * A * (D - A) * (D + A)) := by ac_rfl
  have hWdvd : W ∣ Y * D * D :=
    dvd_of_sq_dvd_sq ⟨D * A * (D - A) * (D + A), hdiv⟩
  let w := (Y * D * D) / W
  have hw : W * w = Y * D * D := Nat.mul_div_cancel' hWdvd
  have heqw : w * w = D * A * (D - A) * (D + A) := by
    have hcancel : (W * W) * (w * w) = (W * W) * (D * A * (D - A) * (D + A)) := by
      calc
        (W * W) * (w * w) = (W * w) * (W * w) := by ac_rfl
        _ = (Y * D * D) * (Y * D * D) := by rw [hw]
        _ = (W * W) * (D * A * (D - A) * (D + A)) := hdiv
    have hWpos : 0 < W := by
      have : 0 < Y * D * D := Nat.mul_pos (Nat.mul_pos hY (Nat.lt_trans hA hAD)) (Nat.lt_trans hA hAD)
      have : 0 < W * w := by rw [hw]; exact this
      exact Nat.pos_of_mul_pos_right this
    exact Nat.eq_of_mul_eq_mul_left (Nat.mul_pos hWpos hWpos) hcancel
  exact no_positive_square_product w D A hA hAD heqw

theorem no_rat_point_posdenom (xN xD yN yD : Int) (hxD : 0 < xD) (hyD : yD ≠ 0)
    (hyN : yN ≠ 0)
    (hEq : yN * yN * xD * xD * xD = yD * yD * (xN * xN * xN - xN * xD * xD)) : False := by
  have hfac : xN * xN * xN - xN * xD * xD = xN * (xN - xD) * (xN + xD) := cube_diff xN xD
  rw [hfac] at hEq
  have hy2 : 0 < yN * yN := by
    rcases Int.lt_trichotomy yN 0 with h | h | h
    · exact Int.mul_pos_of_neg_of_neg h h
    · exact absurd h hyN
    · exact Int.mul_pos h h
  have hlhs : 0 < yN * yN * xD * xD * xD := by
    have h1 : 0 < yN * yN * xD := Int.mul_pos hy2 hxD
    have h2 : 0 < yN * yN * xD * xD := Int.mul_pos h1 hxD
    exact Int.mul_pos h2 hxD
  have hyD2 : 0 < yD * yD := by
    rcases Int.lt_trichotomy yD 0 with h | h | h
    · exact Int.mul_pos_of_neg_of_neg h h
    · exact absurd h hyD
    · exact Int.mul_pos h h
  have hprod : 0 < xN * (xN - xD) * (xN + xD) := by
    have hr : 0 < yD * yD * (xN * (xN - xD) * (xN + xD)) := by
      rw [← hEq]
      exact hlhs
    exact Int.pos_of_mul_pos_right hr hyD2
  by_cases hgt : xD < xN
  · have hxN : 0 < xN := Int.lt_trans hxD hgt
    let X := xN.natAbs
    let D := xD.natAbs
    let Y := yN.natAbs
    let W := yD.natAbs
    have hDcast : (↑D : Int) = xD := Int.natAbs_of_nonneg (Int.le_of_lt hxD)
    have hXcast : (↑X : Int) = xN := Int.natAbs_of_nonneg (Int.le_of_lt hxN)
    have hY0 : 0 < Y := by
      have : yN.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hyN
      omega
    have hD0 : 0 < D := by
      have : xD.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr (Int.ne_of_gt hxD)
      omega
    have hXD : D < X := Int.ofNat_lt.mp (by rw [hDcast, hXcast]; exact hgt)
    have hsub : 0 < xN - xD := by omega
    have haddP : 0 < xN + xD := by omega
    have hsubNat : (xN - xD).natAbs = X - D := by
      apply Int.ofNat.inj
      change (↑((xN - xD).natAbs) : Int) = ↑(X - D)
      rw [Int.natAbs_of_nonneg (Int.le_of_lt hsub), Int.ofNat_sub (Nat.le_of_lt hXD), hXcast, hDcast]
    have haddNat : (xN + xD).natAbs = X + D := by
      apply Int.ofNat.inj
      change (↑((xN + xD).natAbs) : Int) = ↑(X + D)
      rw [Int.natAbs_of_nonneg (Int.le_of_lt haddP), ← Int.ofNat_add_ofNat, hXcast, hDcast]
    have hnat : Y * Y * D * D * D = W * W * X * (X - D) * (X + D) := by
      apply Int.ofNat.inj
      change (↑(Y * Y * D * D * D) : Int) = ↑(W * W * X * (X - D) * (X + D))
      have hLmul : (yN * yN * xD * xD * xD).natAbs =
          yN.natAbs * yN.natAbs * xD.natAbs * xD.natAbs * xD.natAbs := by
        rw [Int.natAbs_mul, Int.natAbs_mul, Int.natAbs_mul, Int.natAbs_mul]
      have hL : (↑(Y * Y * D * D * D) : Int) = yN * yN * xD * xD * xD := by
        have hcast := Int.natAbs_of_nonneg (Int.le_of_lt hlhs)
        rw [hLmul] at hcast
        exact hcast
      have hPabs : (xN * (xN - xD) * (xN + xD)).natAbs = X * (X - D) * (X + D) := by
        rw [Int.natAbs_mul, Int.natAbs_mul, hsubNat, haddNat]
      have hRmul : (yD * yD * (xN * (xN - xD) * (xN + xD))).natAbs =
          yD.natAbs * yD.natAbs * (xN * (xN - xD) * (xN + xD)).natAbs := by
        rw [Int.natAbs_mul, Int.natAbs_mul]
      have hR : (↑(W * W * X * (X - D) * (X + D)) : Int) =
          yD * yD * (xN * (xN - xD) * (xN + xD)) := by
        have hnn : 0 ≤ yD * yD * (xN * (xN - xD) * (xN + xD)) := by
          rw [← hEq]
          exact Int.le_of_lt hlhs
        have hcast := Int.natAbs_of_nonneg hnn
        rw [hRmul, hPabs] at hcast
        have hassoc : W * W * X * (X - D) * (X + D) =
            W * W * (X * (X - D) * (X + D)) := by ac_rfl
        rw [hassoc]
        exact hcast
      rw [hL, hR, hEq]
    have hW0 : 0 < W := by
      have : yD.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hyD
      omega
    exact no_from_nat_factors Y W X D hY0 hW0 hD0 hXD hnat
  · have hleN : xN ≤ xD := by omega
    by_cases hneg : xN < 0
    · by_cases habove : -xD < xN
      · let A := (-xN).natAbs
        let D := xD.natAbs
        let Y := yN.natAbs
        let W := yD.natAbs
        have hAposI : 0 < -xN := by omega
        have hAcast : (↑A : Int) = -xN := Int.natAbs_of_nonneg (Int.le_of_lt hAposI)
        have hDcast : (↑D : Int) = xD := Int.natAbs_of_nonneg (Int.le_of_lt hxD)
        have hY0 : 0 < Y := by
          have : yN.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hyN
          omega
        have hD0 : 0 < D := by
          have : xD.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr (Int.ne_of_gt hxD)
          omega
        have hAD : A < D := Int.ofNat_lt.mp (by
          rw [hAcast, hDcast]
          omega)
        have hA0 : 0 < A := by
          have : A ≠ 0 := by
            intro hz
            have : -xN = 0 := by
              rw [← hAcast, hz]
              rfl
            omega
          omega
        have hmid : 0 < xD - (-xN) := by omega
        have hend : 0 < xD + (-xN) := by omega
        have hmidNat : (xD - (-xN)).natAbs = D - A := by
          apply Int.ofNat.inj
          change (↑((xD - (-xN)).natAbs) : Int) = ↑(D - A)
          rw [Int.natAbs_of_nonneg (Int.le_of_lt hmid), Int.ofNat_sub (Nat.le_of_lt hAD), hDcast, hAcast]
        have hendNat : (xD + (-xN)).natAbs = D + A := by
          apply Int.ofNat.inj
          change (↑((xD + (-xN)).natAbs) : Int) = ↑(D + A)
          rw [Int.natAbs_of_nonneg (Int.le_of_lt hend), ← Int.ofNat_add_ofNat, hDcast, hAcast]
        have hsign : xN * (xN - xD) * (xN + xD) =
            (-xN) * (xD - (-xN)) * (xD + (-xN)) := by
          grind
        have hnat : Y * Y * D * D * D = W * W * A * (D - A) * (D + A) := by
          apply Int.ofNat.inj
          change (↑(Y * Y * D * D * D) : Int) = ↑(W * W * A * (D - A) * (D + A))
          have hLmul : (yN * yN * xD * xD * xD).natAbs =
              yN.natAbs * yN.natAbs * xD.natAbs * xD.natAbs * xD.natAbs := by
            rw [Int.natAbs_mul, Int.natAbs_mul, Int.natAbs_mul, Int.natAbs_mul]
          have hL : (↑(Y * Y * D * D * D) : Int) = yN * yN * xD * xD * xD := by
            have hcast := Int.natAbs_of_nonneg (Int.le_of_lt hlhs)
            rw [hLmul] at hcast
            exact hcast
          have hPabs : ((-xN) * (xD - (-xN)) * (xD + (-xN))).natAbs =
              A * (D - A) * (D + A) := by
            rw [Int.natAbs_mul, Int.natAbs_mul, hmidNat, hendNat]
          have hRmul : (yD * yD * ((-xN) * (xD - (-xN)) * (xD + (-xN)))).natAbs =
              yD.natAbs * yD.natAbs *
                ((-xN) * (xD - (-xN)) * (xD + (-xN))).natAbs := by
            rw [Int.natAbs_mul, Int.natAbs_mul]
          have hnn : 0 ≤ yD * yD * ((-xN) * (xD - (-xN)) * (xD + (-xN))) := by
            rw [← hsign, ← hEq]
            exact Int.le_of_lt hlhs
          have hR : (↑(W * W * A * (D - A) * (D + A)) : Int) =
              yD * yD * ((-xN) * (xD - (-xN)) * (xD + (-xN))) := by
            have hcast := Int.natAbs_of_nonneg hnn
            rw [hRmul, hPabs] at hcast
            have hassoc : W * W * A * (D - A) * (D + A) =
                W * W * (A * (D - A) * (D + A)) := by ac_rfl
            rw [hassoc]
            exact hcast
          rw [hL, hR, ← hsign, hEq]
        exact no_from_nat_factors_inside Y W A D hY0 (by
          have : yD.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hyD
          omega) hA0 hAD hnat
      · have hbelow : xN ≤ -xD := by omega
        have hxNneg : xN < 0 := by omega
        have hsubneg : xN - xD < 0 := by omega
        have hsumle : xN + xD ≤ 0 := by omega
        have hnonpos : xN * (xN - xD) * (xN + xD) ≤ 0 := by
          rcases Int.lt_or_eq_of_le hsumle with hlt | heq0
          · have hpos12 : 0 < xN * (xN - xD) := Int.mul_pos_of_neg_of_neg hxNneg hsubneg
            exact Int.le_of_lt (Int.mul_neg_of_pos_of_neg hpos12 hlt)
          · rw [heq0, Int.mul_zero]
            exact Int.le_refl 0
        omega
    · have hxnn : 0 ≤ xN := by omega
      have hnonpos : xN * (xN - xD) * (xN + xD) ≤ 0 := by
        rcases Int.lt_or_eq_of_le hxnn with hpos | hzero
        · have hxd : xN ≤ xD := hleN
          rcases Int.lt_or_eq_of_le hxd with hlt | heq0
          · have hsubneg : xN - xD < 0 := by omega
            have hpos12 : xN * (xN + xD) > 0 := by
              have hadd : 0 < xN + xD := by omega
              exact Int.mul_pos hpos hadd
            -- product = (xN * (xN + xD)) * (xN - xD) which is pos * neg
            have : xN * (xN - xD) * (xN + xD) = xN * (xN + xD) * (xN - xD) := by ac_rfl
            rw [this]
            exact Int.le_of_lt (Int.mul_neg_of_pos_of_neg hpos12 hsubneg)
          · rw [heq0, Int.sub_self, Int.mul_zero, Int.zero_mul]
            exact Int.le_refl 0
        · rw [← hzero, Int.zero_mul, Int.zero_mul]
          exact Int.le_refl 0
      omega

theorem no_rat_point_nonzero (xN xD yN yD : Int) (hxD : xD ≠ 0) (hyD : yD ≠ 0)
    (hyN : yN ≠ 0)
    (hEq : yN * yN * xD * xD * xD = yD * yD * (xN * xN * xN - xN * xD * xD)) : False := by
  rcases Int.lt_trichotomy xD 0 with hneg | hzero | hpos
  · apply no_rat_point_posdenom (-xN) (-xD) yN yD (by omega) hyD hyN
    calc
      yN * yN * (-xD) * (-xD) * (-xD) = -(yN * yN * xD * xD * xD) := by grind
      _ = -(yD * yD * (xN * xN * xN - xN * xD * xD)) := by rw [hEq]
      _ = yD * yD * ((-xN) * (-xN) * (-xN) - (-xN) * (-xD) * (-xD)) := by grind
  · exact absurd hzero hxD
  · exact no_rat_point_posdenom xN xD yN yD hpos hyD hyN hEq

theorem no_int_point_nonzero (x y : Int) (h : y * y = x ^ 3 - x) (hy : y ≠ 0) : False := by
  apply no_rat_point_nonzero x 1 y 1 (by decide) (by decide) hy
  calc
    y * y * 1 * 1 * 1 = y * y := by grind
    _ = x ^ 3 - x := h
    _ = x * x * x - x * 1 * 1 := by rw [pow_cube x]; grind
    _ = 1 * 1 * (x * x * x - x * 1 * 1) := by grind

/-- An integral point on `Y² = X³ - X` is one of the three points with `Y = 0`. -/
theorem int_points_are_two_torsion (x y : Int) (hcurve : y * y = x ^ 3 - x) :
    y = 0 ∧ (x = -1 ∨ x = 0 ∨ x = 1) := by
  have hy : y = 0 := by
    by_cases h : y = 0
    · exact h
    · exact False.elim (no_int_point_nonzero x y hcurve h)
  exact ⟨hy, integral_two_torsion x y hcurve hy⟩
