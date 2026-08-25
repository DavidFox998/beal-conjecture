-- KillshotSearch — Core-only lemmas for the prime-radical branch.
--
-- This file deliberately imports the Core interfaces only: the concrete
-- `primeFactors` proof remains at the B14 wrapper boundary.

import Beal.B01_Def_Core
import Beal.B14_FreyConductor_Core

/--
This local cancellation proof avoids the standard `Nat.add_right_cancel`,
whose Lean 4.12 declaration has a `propext` dependency.
-/
theorem add_right_cancel_zero {a b k : Nat} (h : a + k = b + k) : a = b := by
  induction k with
  | zero => exact h
  | succ k ih =>
    apply ih
    exact Nat.succ.inj h

/--
Numbers at least two cannot multiply a natural number to give one. The proof
uses only constructors, so it remains zero-axiom.
-/
theorem one_ne_mul_of_two_le
    {p v : Nat} (hp : 2 ≤ p) (h : 1 = p * v) : False := by
  cases p with
  | zero => exact (Nat.not_succ_le_zero 1) hp
  | succ p =>
    cases p with
    | zero => exact (Nat.not_succ_le_self 1) hp
    | succ p =>
      cases v with
      | zero =>
        change Nat.succ Nat.zero = Nat.zero at h
        exact Nat.noConfusion h
      | succ v =>
        change Nat.succ Nat.zero = Nat.succ (Nat.succ _) at h
        have h' : Nat.zero = Nat.succ _ := Nat.succ.inj h
        exact Nat.noConfusion h'

/--
The elementary divisibility residue argument, expressed without
`Nat.dvd_sub`: `1 + p * u` cannot itself be a multiple of `p ≥ 2`.
-/
theorem one_add_mul_ne_mul
    {p u v : Nat} (hp : 2 ≤ p) (h : 1 + p * u = p * v) : False := by
  induction u generalizing v with
  | zero =>
    exact one_ne_mul_of_two_le hp h
  | succ u ih =>
    cases v with
    | zero =>
      have h' : p * Nat.succ u + 1 = 0 := (Nat.add_comm _ _).trans h
      cases h'
    | succ v =>
      have hleft : 1 + p * Nat.succ u = (1 + p * u) + p := by
        calc
          1 + p * Nat.succ u = 1 + (p * u + p) :=
            congrArg (fun n => 1 + n) (Nat.mul_succ p u)
          _ = (1 + p * u) + p := (Nat.add_assoc _ _ _).symm
      have hright : p * Nat.succ v = p * v + p := Nat.mul_succ p v
      have h' : (1 + p * u) + p = p * v + p :=
        hleft.symm.trans (h.trans hright)
      exact ih (add_right_cancel_zero h')

/--
An import-free replacement for the unavailable `Nat.dvd_pow_self`: a base
divides each of its positive powers.
-/
theorem dvd_pow_self_of_ne_zero {p n : Nat} (hn : n ≠ 0) : p ∣ p ^ n := by
  cases n with
  | zero => exact (hn rfl).elim
  | succ n =>
    refine ⟨p ^ n, ?_⟩
    exact (Nat.pow_succ p n).trans (Nat.mul_comm _ _)

/--
The elementary prime-power gap: a positive power of a number at least two
cannot be one less than another positive power of the same base.
-/
theorem one_add_p_pow_not_p_pow
    {p a c : Nat} (hp : 2 ≤ p) (ha : 1 ≤ a) (hc : 1 ≤ c)
    (h : 1 + p ^ a = p ^ c) : False := by
  have ha0 : a ≠ 0 := by
    cases a with
    | zero => exact (Nat.not_succ_le_zero 0 ha).elim
    | succ a =>
      intro hzero
      exact Nat.noConfusion hzero
  have hc0 : c ≠ 0 := by
    cases c with
    | zero => exact (Nat.not_succ_le_zero 0 hc).elim
    | succ c =>
      intro hzero
      exact Nat.noConfusion hzero
  rcases dvd_pow_self_of_ne_zero ha0 with ⟨u, hu⟩
  rcases dvd_pow_self_of_ne_zero hc0 with ⟨v, hv⟩
  apply one_add_mul_ne_mul hp
  calc
    1 + p * u = 1 + p ^ a := congrArg (fun n => 1 + n) hu.symm
    _ = p ^ c := h
    _ = p * v := hv

theorem p_pow_add_one_not_p_pow
    {p b c : Nat} (hp : 2 ≤ p) (hb : 1 ≤ b) (hc : 1 ≤ c)
    (h : p ^ b + 1 = p ^ c) : False := by
  apply one_add_p_pow_not_p_pow hp hb hc
  calc
    1 + p ^ b = p ^ b + 1 := Nat.add_comm _ _
    _ = p ^ c := h

/--
The standard associativity theorem for `Nat` carries `propext` in Lean 4.12.
This structural recursion is its strictly zero-axiom replacement.
-/
theorem mul_assoc_zero (a b c : Nat) : (a * b) * c = a * (b * c) := by
  induction c with
  | zero => rfl
  | succ c ih =>
    calc
      (a * b) * Nat.succ c = (a * b) * c + a * b := Nat.mul_succ _ _
      _ = a * (b * c) + a * b := congrArg (fun t => t + a * b) ih
      _ = a * (b * c + b) := (Nat.mul_add _ _ _).symm
      _ = a * (b * Nat.succ c) :=
        congrArg (fun t => a * t) (Nat.mul_succ _ _).symm

theorem ne_zero_of_two_lt {n : Nat} (h : 2 < n) : n ≠ 0 := by
  intro hzero
  subst n
  exact (Nat.not_succ_le_zero 2 h).elim

theorem four_le_pow_of_two_le {n k : Nat} (hn : 2 ≤ n) (hk : 2 ≤ k) :
    4 ≤ n ^ k := by
  cases n with
  | zero => exact (Nat.not_succ_le_zero 1 hn).elim
  | succ n =>
    cases n with
    | zero => exact (Nat.not_succ_le_self 1 hn).elim
    | succ n =>
      cases k with
      | zero => exact (Nat.not_succ_le_zero 1 hk).elim
      | succ k =>
        cases k with
        | zero => exact (Nat.not_succ_le_self 1 hk).elim
        | succ d =>
          have hnpos : 0 < Nat.succ (Nat.succ n) := Nat.zero_lt_succ _
          have hpowpos : 0 < (Nat.succ (Nat.succ n)) ^ d := Nat.pow_pos hnpos
          have hpowone : 1 ≤ (Nat.succ (Nat.succ n)) ^ d :=
            Nat.succ_le_of_lt hpowpos
          have hnat : 2 ≤ Nat.succ (Nat.succ n) :=
            Nat.succ_le_succ (Nat.succ_le_succ (Nat.zero_le _))
          have htwo : 2 ≤ (Nat.succ (Nat.succ n)) ^ d * Nat.succ (Nat.succ n) := by
            calc
              2 = 1 * 2 := rfl
              _ ≤ (Nat.succ (Nat.succ n)) ^ d * Nat.succ (Nat.succ n) :=
                Nat.mul_le_mul hpowone hnat
          have hpow : (Nat.succ (Nat.succ n)) ^ Nat.succ (Nat.succ d) =
              ((Nat.succ (Nat.succ n)) ^ d * Nat.succ (Nat.succ n)) *
                Nat.succ (Nat.succ n) := by
            calc
              (Nat.succ (Nat.succ n)) ^ Nat.succ (Nat.succ d) =
                  (Nat.succ (Nat.succ n)) ^ Nat.succ d * Nat.succ (Nat.succ n) :=
                Nat.pow_succ _ _
              _ = ((Nat.succ (Nat.succ n)) ^ d * Nat.succ (Nat.succ n)) *
                  Nat.succ (Nat.succ n) :=
                congrArg (fun t => t * Nat.succ (Nat.succ n)) (Nat.pow_succ _ _)
          calc
            4 = 2 * 2 := rfl
            _ ≤ ((Nat.succ (Nat.succ n)) ^ d * Nat.succ (Nat.succ n)) *
                Nat.succ (Nat.succ n) :=
              Nat.mul_le_mul htwo hnat
            _ = (Nat.succ (Nat.succ n)) ^ Nat.succ (Nat.succ d) := hpow.symm

theorem two_ne_pow_of_two_le {n k : Nat} (hn : 2 ≤ n) (hk : 2 ≤ k)
    (h : 1 + 1 = n ^ k) : False := by
  have hfour : 4 ≤ n ^ k := four_le_pow_of_two_le hn hk
  have htwoeq : 2 = n ^ k := h
  have hfourtwo : 4 ≤ 2 := htwoeq.symm ▸ hfour
  have hthreetwo : 3 ≤ 2 := Nat.le_trans (Nat.le_succ 3) hfourtwo
  exact (Nat.not_succ_le_self 2 hthreetwo).elim

theorem dvd_pow_of_dvd_base {p n k : Nat} (hd : p ∣ n) (hk : k ≠ 0) :
    p ∣ n ^ k := by
  rcases hd with ⟨q, hq⟩
  cases k with
  | zero => exact (hk rfl).elim
  | succ k =>
    refine ⟨n ^ k * q, ?_⟩
    calc
      n ^ Nat.succ k = n ^ k * n := Nat.pow_succ _ _
      _ = n ^ k * (p * q) := congrArg (fun t => n ^ k * t) hq
      _ = (n ^ k * p) * q := (mul_assoc_zero _ _ _).symm
      _ = (p * n ^ k) * q := congrArg (fun t => t * q) (Nat.mul_comm _ _)
      _ = p * (n ^ k * q) := mul_assoc_zero _ _ _

theorem add_pos_ne_one {u v : Nat} (hu : 0 < u) (hv : 0 < v)
    (h : u + v = 1) : False := by
  have hu1 : 1 ≤ u := Nat.succ_le_of_lt hu
  have hv1 : 1 ≤ v := Nat.succ_le_of_lt hv
  have htwo : 2 ≤ u + v := by
    calc
      2 = 1 + 1 := rfl
      _ ≤ u + v := Nat.add_le_add hu1 hv1
  have htwoone : 2 ≤ 1 := h ▸ htwo
  exact (Nat.not_succ_le_self 1 htwoone).elim

/--
Once B14 supplies the prime-power certificate, the primitive Beal equation
contradicts it by elementary natural-number arithmetic alone.
-/
theorem killshot_rad_prime_branch
    {A B C x y z p : Nat}
    (hBeal : IsBealSolutionCore A B C x y z)
    (hRadPrime : RadPrimeCase14Core A B C p)
    (hPowers : RadPrimePowerCertificate14Core A B C p) :
    False := by
  rcases hBeal with ⟨_, _, _, hx, hy, hz, hEq, hPrimitive⟩
  rcases hPowers with ⟨a, b, c, hA, hB, hC⟩
  have hpgt : 1 < p := hRadPrime.2.1
  have hp0 : 0 < p := Nat.lt_trans (Nat.zero_lt_succ 0) hpgt
  cases a with
  | zero =>
    cases b with
    | zero =>
      cases c with
      | zero =>
        have h : 1 + 1 = 1 := by
          simpa only [hA, hB, hC, Nat.pow_zero, Nat.one_pow] using hEq
        change Nat.succ (Nat.succ Nat.zero) = Nat.succ Nat.zero at h
        have hzero : Nat.succ Nat.zero = Nat.zero := Nat.succ.inj h
        exact Nat.noConfusion hzero
      | succ c =>
        have hbase : 2 ≤ p ^ Nat.succ c := by
          have hpowpos : 0 < p ^ c := Nat.pow_pos hp0
          have hpowone : 1 ≤ p ^ c := Nat.succ_le_of_lt hpowpos
          calc
            2 = 1 * 2 := rfl
            _ ≤ p ^ c * p := Nat.mul_le_mul hpowone (Nat.succ_le_of_lt hpgt)
            _ = p ^ Nat.succ c := (Nat.pow_succ _ _).symm
        have h : 1 + 1 = (p ^ Nat.succ c) ^ z := by
          simpa only [hA, hB, hC, Nat.pow_zero, Nat.one_pow] using hEq
        exact two_ne_pow_of_two_le hbase (Nat.le_of_lt hz) h
    | succ b =>
      cases c with
      | zero =>
        have h : 1 + (p ^ Nat.succ b) ^ y = 1 := by
          simpa only [hA, hB, hC, Nat.pow_zero, Nat.one_pow] using hEq
        exact add_pos_ne_one (Nat.zero_lt_succ _) (Nat.pow_pos (Nat.pow_pos hp0)) h
      | succ c =>
        have hBdvd : p ∣ (p ^ Nat.succ b) ^ y :=
          dvd_pow_of_dvd_base
            (dvd_pow_self_of_ne_zero (by intro h; exact Nat.noConfusion h))
            (ne_zero_of_two_lt hy)
        have hCdvd : p ∣ (p ^ Nat.succ c) ^ z :=
          dvd_pow_of_dvd_base
            (dvd_pow_self_of_ne_zero (by intro h; exact Nat.noConfusion h))
            (ne_zero_of_two_lt hz)
        rcases hBdvd with ⟨u, hu⟩
        rcases hCdvd with ⟨v, hv⟩
        apply one_add_mul_ne_mul (Nat.succ_le_of_lt hpgt)
        calc
          1 + p * u = 1 + (p ^ Nat.succ b) ^ y :=
            congrArg (fun t => 1 + t) hu.symm
          _ = (p ^ Nat.succ c) ^ z := by
            simpa only [hA, hB, hC, Nat.pow_zero, Nat.one_pow] using hEq
          _ = p * v := hv
  | succ a =>
    cases b with
    | zero =>
      cases c with
      | zero =>
        have h : (p ^ Nat.succ a) ^ x + 1 = 1 := by
          simpa only [hA, hB, hC, Nat.pow_zero, Nat.one_pow] using hEq
        exact add_pos_ne_one (Nat.pow_pos (Nat.pow_pos hp0)) (Nat.zero_lt_succ _) h
      | succ c =>
        have hAdvd : p ∣ (p ^ Nat.succ a) ^ x :=
          dvd_pow_of_dvd_base
            (dvd_pow_self_of_ne_zero (by intro h; exact Nat.noConfusion h))
            (ne_zero_of_two_lt hx)
        have hCdvd : p ∣ (p ^ Nat.succ c) ^ z :=
          dvd_pow_of_dvd_base
            (dvd_pow_self_of_ne_zero (by intro h; exact Nat.noConfusion h))
            (ne_zero_of_two_lt hz)
        rcases hAdvd with ⟨u, hu⟩
        rcases hCdvd with ⟨v, hv⟩
        apply one_add_mul_ne_mul (Nat.succ_le_of_lt hpgt)
        calc
          1 + p * u = 1 + (p ^ Nat.succ a) ^ x :=
            congrArg (fun t => 1 + t) hu.symm
          _ = (p ^ Nat.succ c) ^ z := by
            calc
              1 + (p ^ Nat.succ a) ^ x = (p ^ Nat.succ a) ^ x + 1 :=
                Nat.add_comm _ _
              _ = (p ^ Nat.succ c) ^ z := by
                simpa only [hA, hB, hC, Nat.pow_zero, Nat.one_pow] using hEq
          _ = p * v := hv
    | succ b =>
      cases c with
      | zero =>
        have h : (p ^ Nat.succ a) ^ x + (p ^ Nat.succ b) ^ y = 1 := by
          simpa only [hA, hB, hC, Nat.pow_zero, Nat.one_pow] using hEq
        exact add_pos_ne_one (Nat.pow_pos (Nat.pow_pos hp0))
          (Nat.pow_pos (Nat.pow_pos hp0)) h
      | succ c =>
        have hAdvd : p ∣ p ^ Nat.succ a :=
          dvd_pow_self_of_ne_zero (by intro h; exact Nat.noConfusion h)
        have hBdvd : p ∣ p ^ Nat.succ b :=
          dvd_pow_self_of_ne_zero (by intro h; exact Nat.noConfusion h)
        have hCdvd : p ∣ p ^ Nat.succ c :=
          dvd_pow_self_of_ne_zero (by intro h; exact Nat.noConfusion h)
        have hpone : p = 1 := hPrimitive p
          (by simpa only [hA] using hAdvd)
          (by simpa only [hB] using hBdvd)
          (by simpa only [hC] using hCdvd)
        exact (Nat.ne_of_gt hpgt hpone).elim

theorem killshot_rad_prime_power_contradiction
    {A B C x y z p : Nat}
    (hBeal : IsBealSolutionCore A B C x y z)
    (hRadPrime : RadPrimeCase14Core A B C p)
    (hPowers : RadPrimePowerCertificate14Core A B C p) :
    False :=
  killshot_rad_prime_branch hBeal hRadPrime hPowers

#print axioms RadPrimeCase14Core
#print axioms killshot_rad_prime_branch
#print axioms killshot_rad_prime_power_contradiction