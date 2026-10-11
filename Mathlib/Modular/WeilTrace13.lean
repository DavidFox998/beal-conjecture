import Mathlib.Modular.FrobeniusTrace13

/-!
# Weil bound against the fourth-root traces, at norm `5`

`trace_residue_four` puts `u + t u⁻¹` in
`{1 + t, 5 + 8 t, 8 + 5 t, 12 + 12 t}` when `u ^ 4 = 1`.
At `t = 5` those four values are `6` or `7` in `𝔽₁₃`.

A general shape sum is `u · 5 ^ e₁ + u⁻¹ · 5 ^ e₂` with
`e₁ + e₂ ≡ 1 (mod 12)` (`complement_sum`). Since `5 ^ 4 = 1`, that sum
is again some `w + 5 w⁻¹` with `w ^ 4 = 1`. Every integer congruent to
`6` or `7` modulo `13` has absolute value at least `6`, and `6² = 36 > 20 = 4 · 5`.
Hasse's bound at a prime of norm `5` is `a² ≤ 20`, because `2 √5 < 6`.

A coprime solution has `5 ∤ |c|` (`five_not_dvd_c_of_coprime`). Fourth
powers modulo `5` are `0` or `1`, and `N(α) = a⁴ + b⁴ = c¹³`, so `5 ∣ c`
would force `5 ∣ a` and `5 ∣ b`. Then `5 ∤ N(Δ)` (`five_misses_discriminant_norm`):
no prime above `5` divides the norm of `Δ`. Good reduction at `5` is that
divisibility, not an extra hypothesis. `weil_contradiction_at_five` is `False`
for every coprime curve, from `reducible_shape_13_open`,
`point_count_is_torsion_frob_trace_open`, and `weil_bound_open`.
`frobenius_trace_sum` is the character-sum formula, proved from the shape.
`point_count_matches_shape_trace` chains that formula with the torsion-trace
identification.
-/

theorem five_isPrime : IsPrime 5 := by
  refine ⟨by decide, fun d hd => ?_⟩
  rcases hd with ⟨k, hk⟩
  match d with
  | 0 => simp at hk
  | 1 => exact Or.inl rfl
  | 2 => omega
  | 3 => omega
  | 4 => omega
  | 5 => exact Or.inr rfl
  | n + 6 =>
    cases k with
    | zero => simp at hk
    | succ k =>
      have hge : 6 ≤ (n + 6) * (k + 1) :=
        Nat.mul_le_mul (Nat.le_add_left 6 n) (Nat.succ_le_succ (Nat.zero_le k))
      have hlt : (n + 6) * (k + 1) = 5 := hk.symm
      omega

/-- `5 ∤ |c|` implies `5 ∤ N(Δ)`.

`N(Δ) = 2¹⁸ c³⁹`. An odd prime dividing the norm divides `c`, so the
contrapositive is this implication. It is the norm form of good reduction
at `5` for the Frey model. It is not the Weil bound.
-/
theorem five_misses_discriminant_norm (E : FreyCurve4413) (h5 : ¬ 5 ∣ E.c.natAbs) :
    ¬ 5 ∣ (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs := by
  intro hdvd
  exact h5 (odd_prime_dvd_discriminant_norm_divides_c E 5 five_isPrime (by decide) hdvd)

/-- Fourth powers modulo `5` are `0` or `1`. -/
theorem fourth_mod5 (n : Nat) : n ^ 4 % 5 = 0 ∨ n ^ 4 % 5 = 1 := by
  have hr : n % 5 = 0 ∨ n % 5 = 1 ∨ n % 5 = 2 ∨ n % 5 = 3 ∨ n % 5 = 4 := by omega
  have hp := Nat.pow_mod n 4 5
  rcases hr with h0 | h1 | h2 | h3 | h4
  · rw [hp, h0]; decide
  · rw [hp, h1]; decide
  · rw [hp, h2]; decide
  · rw [hp, h3]; decide
  · rw [hp, h4]; decide

theorem fourth_mod5_zero (n : Nat) (h : n ^ 4 % 5 = 0) : n % 5 = 0 := by
  have hr : n % 5 = 0 ∨ n % 5 = 1 ∨ n % 5 = 2 ∨ n % 5 = 3 ∨ n % 5 = 4 := by omega
  have hp := Nat.pow_mod n 4 5
  rcases hr with h0 | h1 | h2 | h3 | h4
  · exact h0
  · rw [hp, h1] at h; omega
  · rw [hp, h2] at h; omega
  · rw [hp, h3] at h; omega
  · rw [hp, h4] at h; omega

/-- A coprime solution has `5 ∤ |c|`.

`x⁴ ≡ 0` or `1 (mod 5)`. If `5 ∣ c`, then `5 ∣ a⁴ + b⁴`. The sum of two
residues from `{0, 1}` is `0` only when both are `0` (`1 + 1 = 2`, `1 + 0 = 1`).
Both zero forces `5 ∣ a` and `5 ∣ b`, which contradicts the gcd.
`N(α) = a⁴ + b⁴ = c¹³`, so the same non-divisibility is why no prime above
`5` meets `N(Δ)`.
-/
theorem five_not_dvd_c_of_coprime (a b c : Int) (heq : a ^ 4 + b ^ 4 = c ^ 13)
    (hcop : a.natAbs.gcd b.natAbs = 1) : ¬ 5 ∣ c.natAbs := by
  intro hc
  have hInt : (5 : Int) ∣ c := int_dvd_of_natAbs_dvd 5 c hc
  have hpow : (5 : Int) ∣ c ^ 13 := by
    have hc13 : c ∣ c ^ 13 := by
      rw [show c ^ 13 = c ^ 12 * c by rw [Int.pow_succ]]
      exact Int.dvd_mul_left _ _
    exact Int.dvd_trans hInt hc13
  rw [← heq] at hpow
  have hnat : (5 : Nat) ∣ (a ^ 4 + b ^ 4).natAbs := (Int.natAbs_dvd_natAbs).mpr hpow
  have habs : (a ^ 4 + b ^ 4).natAbs = a.natAbs ^ 4 + b.natAbs ^ 4 := by
    have ha4 : (a ^ 4).natAbs = a.natAbs ^ 4 := Int.natAbs_pow a 4
    have hb4 : (b ^ 4).natAbs = b.natAbs ^ 4 := Int.natAbs_pow b 4
    have hsum' : (a ^ 4 + b ^ 4).natAbs = (a ^ 4).natAbs + (b ^ 4).natAbs :=
      Int.natAbs_add_of_nonneg (Int.pow_nonneg_of_even (by decide : (4 : Nat) % 2 = 0))
        (Int.pow_nonneg_of_even (by decide : (4 : Nat) % 2 = 0))
    rw [hsum', ha4, hb4]
  rw [habs] at hnat
  have hsum : (a.natAbs ^ 4 + b.natAbs ^ 4) % 5 = 0 := Nat.mod_eq_zero_of_dvd hnat
  have hmod : (a.natAbs ^ 4 + b.natAbs ^ 4) % 5 =
      ((a.natAbs ^ 4 % 5) + (b.natAbs ^ 4 % 5)) % 5 := Nat.add_mod _ _ _
  have ha4 := fourth_mod5 a.natAbs
  have hb4 := fourth_mod5 b.natAbs
  rcases ha4 with ha0 | ha1
  · rcases hb4 with hb0 | hb1
    · have hga : 5 ∣ a.natAbs := Nat.dvd_of_mod_eq_zero (fourth_mod5_zero _ ha0)
      have hgb : 5 ∣ b.natAbs := Nat.dvd_of_mod_eq_zero (fourth_mod5_zero _ hb0)
      have hgcd : 5 ∣ a.natAbs.gcd b.natAbs := Nat.dvd_gcd hga hgb
      rw [hcop] at hgcd
      have : 5 ≤ 1 := Nat.le_of_dvd (by decide) hgcd
      omega
    · rw [hmod, ha0, hb1] at hsum
      omega
  · rcases hb4 with hb0 | hb1
    · rw [hmod, ha1, hb0] at hsum
      omega
    · rw [hmod, ha1, hb1] at hsum
      omega

theorem cast_mul_add (r n : Nat) :
    (13 : Int) * (n : Int) + (r : Int) = ↑(13 * n + r) := by
  simp

theorem negSucc_residue (r n : Nat) (hr : r ≤ 12) :
    (13 : Int) * (Int.negSucc n) + (r : Int) = -↑(13 * (n + 1) - r) := by
  rw [Int.negSucc_eq]
  omega

theorem natAbs_ge_of_residue (a : Int) (r : Nat) (hr6 : 6 ≤ r) (hr7 : r ≤ 7)
    (h : ∃ k : Int, a - (r : Int) = (13 : Int) * k) :
    6 ≤ a.natAbs := by
  rcases h with ⟨k, hk⟩
  have ha : a = 13 * k + (r : Int) := (Int.sub_eq_iff_eq_add.mp hk)
  match k with
  | Int.ofNat n =>
    have haN : a = ↑(13 * n + r) := by
      rw [ha]
      exact cast_mul_add r n
    rw [haN, Int.natAbs_natCast]
    omega
  | Int.negSucc n =>
    have haN : a = -↑(13 * (n + 1) - r) := by
      rw [ha]
      exact negSucc_residue r n (by omega)
    rw [haN, Int.natAbs_neg, Int.natAbs_natCast]
    omega

/-- An integer congruent to `6` or `7` modulo `13` fails `a² ≤ 20`.

`20 = 4 · 5` is the square form of `|a| ≤ 2 √5`. The least absolute values
in the two classes are `6` and `7`.
-/
theorem int_outside_weil_at_five (a : Int) (h : IntCong13 a 6 ∨ IntCong13 a 7) :
    ¬ a.natAbs * a.natAbs ≤ 4 * 5 := by
  have h6 : 6 ≤ a.natAbs := by
    rcases h with h6 | h7
    · rcases h6 with ⟨k, hk⟩
      have hv : Int.ofNat (6 : Fin 13).val = 6 := by decide
      rw [hv] at hk
      exact natAbs_ge_of_residue a 6 (by decide) (by decide) ⟨k, hk⟩
    · rcases h7 with ⟨k, hk⟩
      have hv : Int.ofNat (7 : Fin 13).val = 7 := by decide
      rw [hv] at hk
      exact natAbs_ge_of_residue a 7 (by decide) (by decide) ⟨k, hk⟩
  have h36 : 36 ≤ a.natAbs * a.natAbs := by
    have hmul : 6 * 6 ≤ a.natAbs * a.natAbs := Nat.mul_le_mul h6 h6
    simpa using hmul
  omega

theorem pow_ne_zero (a : Fin 13) (ha : a ≠ 0) (n : Nat) : a ^ n ≠ 0 := by
  induction n with
  | zero =>
    rw [ReducibleShape13.fin_pow_zero]
    decide
  | succ n ih =>
    rw [ReducibleShape13.fin_pow_succ]
    intro h
    rcases GL2F13.mul_eq_zero h with h1 | h2
    · exact ih h1
    · exact ha h2

theorem right_inv_unique (a x : Fin 13) (ha : a ≠ 0) (hx : x * a = 1) :
    x = GL2F13.inv a := by
  have hstep : x = x * (a * GL2F13.inv a) := by
    rw [GL2F13.mul_inv_cancel a ha, Fin.mul_one]
  rw [hstep, ← Fin.mul_assoc, hx, Fin.one_mul]

theorem inv_mul_units (a b : Fin 13) (ha : a ≠ 0) (hb : b ≠ 0) :
    GL2F13.inv (a * b) = GL2F13.inv a * GL2F13.inv b := by
  have hab : a * b ≠ 0 := by
    intro h
    rcases GL2F13.mul_eq_zero h with h1 | h2
    · exact ha h1
    · exact hb h2
  have hone : GL2F13.inv a * GL2F13.inv b * (a * b) = 1 := by
    have h1 : GL2F13.inv a * GL2F13.inv b * (a * b) =
        GL2F13.inv a * (GL2F13.inv b * (a * b)) := by
      rw [Fin.mul_assoc]
    have h2 : GL2F13.inv b * (a * b) = GL2F13.inv b * a * b := by
      rw [← Fin.mul_assoc]
    have h3 : GL2F13.inv b * a = a * GL2F13.inv b := Fin.mul_comm _ _
    have h4 : a * GL2F13.inv b * b = a * (GL2F13.inv b * b) := by
      rw [Fin.mul_assoc]
    rw [h1, h2, h3, h4, GL2F13.inv_mul_cancel b hb, Fin.mul_one,
      GL2F13.inv_mul_cancel a ha]
  exact (right_inv_unique (a * b) (GL2F13.inv a * GL2F13.inv b) hab hone).symm

theorem five_pow_four : (5 : Fin 13) ^ 4 = 1 :=
  ReducibleShape13.five_has_order_four.2

/-- At `t = 5` each proved shape is `6` or `7`. -/
theorem trace_shapes_at_five (u : Fin 13) (hu : u ≠ 0) (h4 : u ^ 4 = 1) :
    u + 5 * GL2F13.inv u = 6 ∨ u + 5 * GL2F13.inv u = 7 := by
  rcases ReducibleShape13.trace_residue_four u 5 hu h4 with h | h | h | h
  · left
    rw [h]
    decide
  · left
    rw [h]
    decide
  · right
    rw [h]
    decide
  · right
    rw [h]
    decide

/-- Every shape sum at `t = 5` is `6` or `7`.

`e₁ + e₂ ≡ 1 (mod 12)` and `5 ^ 4 = 1` reduce
`u · 5 ^ e₁ + u⁻¹ · 5 ^ e₂` to `w + 5 w⁻¹` for a fourth root `w`.
This is not a new constraint on the exponents.
-/
theorem twisted_trace_at_five (u : Fin 13) (hu : u ≠ 0) (h4 : u ^ 4 = 1)
    (exp : Fin 12) :
    ReducibleShape13.twistedTrace u 5 exp = 6 ∨
      ReducibleShape13.twistedTrace u 5 exp = 7 := by
  let e1 : Nat := exp.val
  let e2 : Nat := (ReducibleShape13.complementExp exp).val
  have hmod : (e1 + e2) % 12 = 1 := ReducibleShape13.complement_sum exp
  have hrepr := Nat.div_add_mod (e1 + e2) 12
  rw [hmod] at hrepr
  have hs : e1 + e2 = 12 * ((e1 + e2) / 12) + 1 := hrepr.symm
  have h5twelve : (5 : Fin 13) ^ 12 = 1 := by
    decide
  have h5s : (5 : Fin 13) ^ (e1 + e2) = 5 := by
    rw [hs, ReducibleShape13.fin_pow_add, ReducibleShape13.fin_pow_mul, h5twelve,
      ReducibleShape13.fin_one_pow, Fin.one_mul, ReducibleShape13.fin_pow_one]
  have h5e1 : (5 : Fin 13) ^ e1 ≠ 0 := pow_ne_zero 5 (by decide) e1
  have h5e2 : (5 : Fin 13) ^ e2 = 5 * GL2F13.inv ((5 : Fin 13) ^ e1) := by
    have hsplit : (5 : Fin 13) ^ e1 * (5 : Fin 13) ^ e2 = (5 : Fin 13) ^ (e1 + e2) :=
      (ReducibleShape13.fin_pow_add 5 e1 e2).symm
    rw [h5s] at hsplit
    have hleft : GL2F13.inv ((5 : Fin 13) ^ e1) * ((5 : Fin 13) ^ e1 * (5 : Fin 13) ^ e2) =
        GL2F13.inv ((5 : Fin 13) ^ e1) * 5 := by
      rw [hsplit]
    rw [← Fin.mul_assoc, GL2F13.inv_mul_cancel _ h5e1, Fin.one_mul] at hleft
    rw [Fin.mul_comm] at hleft
    exact hleft
  let w : Fin 13 := u * (5 : Fin 13) ^ e1
  have hw0 : w ≠ 0 := by
    intro hz
    rcases GL2F13.mul_eq_zero hz with h0 | h0
    · exact hu h0
    · exact h5e1 h0
  have hw4 : w ^ 4 = 1 := by
    have h5e4 : ((5 : Fin 13) ^ e1) ^ 4 = 1 := by
      rw [← ReducibleShape13.fin_pow_mul, Nat.mul_comm, ReducibleShape13.fin_pow_mul,
        five_pow_four, ReducibleShape13.fin_one_pow]
    rw [fin_mul_pow, h4, h5e4, Fin.mul_one]
  have hform : ReducibleShape13.twistedTrace u 5 exp =
      w + 5 * GL2F13.inv w := by
    rw [ReducibleShape13.twistedTrace, h5e2]
    have hrearr : GL2F13.inv u * (5 * GL2F13.inv ((5 : Fin 13) ^ e1)) =
        5 * (GL2F13.inv u * GL2F13.inv ((5 : Fin 13) ^ e1)) := by
      rw [← Fin.mul_assoc, Fin.mul_comm (GL2F13.inv u) 5, Fin.mul_assoc]
    have hinv : GL2F13.inv u * GL2F13.inv ((5 : Fin 13) ^ e1) = GL2F13.inv w :=
      (inv_mul_units u ((5 : Fin 13) ^ e1) hu h5e1).symm
    rw [hrearr, hinv]
  rw [hform]
  exact trace_shapes_at_five w hw0 hw4

/-- Under the shape and the point-count identification, the sealed trace at
norm `5` is an integer congruent to `6` or `7`.

`frobenius_trace_sum` supplies the characters and `u ^ 4 = 1`. The
congruence of the sealed integer with the character sum is
`point_count_matches_shape_trace`, from
`point_count_is_torsion_frob_trace_open`. `5 ∤ |c|` is
`five_not_dvd_c_of_coprime`, which is the good-reduction antecedent at
norm `5`.
-/
theorem pointCount_at_five_cong
    (hshape : reducible_shape_13_open)
    (hfrob : point_count_is_torsion_frob_trace_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    IntCong13 (pointCountTrace E 5) 6 ∨ IntCong13 (pointCountTrace E 5) 7 := by
  have hcount := point_count_matches_shape_trace hfrob
  rcases frobenius_trace_sum hshape E ha hb hcop with ⟨n, ε, exp, _hray, hmatch, htr⟩
  have h5c : ¬ 5 ∣ E.c.natAbs := five_not_dvd_c_of_coprime E.a E.b E.c E.h_eq hcop
  rcases hcount E ha hb hcop n ε exp hmatch 5 (by decide) h5c with ⟨z, hz, hcong⟩
  rcases htr z hz 5 0 with ⟨hu, h4, _hprod, _htrace⟩
  have ht : normResidue13 5 = 5 := by
    apply Fin.ext
    decide
  rw [ht] at hcong
  rcases twisted_trace_at_five (ε.χ z) hu h4 exp with h6 | h7
  · left
    rw [h6] at hcong
    exact hcong
  · right
    rw [h7] at hcong
    exact hcong

/-- The trace at norm `5` fails `a² ≤ 4 · 5`, given the shape and
`point_count_is_torsion_frob_trace_open`. Inertia, the Artin split, and the
ray-class bridge are not hypotheses. The character-sum step is
`point_count_matches_shape_trace`.
-/
theorem point_count_at_five_outside
    (hshape : reducible_shape_13_open)
    (hfrob : point_count_is_torsion_frob_trace_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    ¬ (pointCountTrace E 5).natAbs * (pointCountTrace E 5).natAbs ≤ 4 * 5 :=
  int_outside_weil_at_five _ (pointCount_at_five_cong hshape hfrob E ha hb hcop)

/-- `trace_outside_weil_open` holds.

The witness is norm `5`. The definition still lists inertia, the Artin
split, and the ray-class bridge; this proof does not use them. The `False`
for a coprime curve is `weil_contradiction_at_five`, whose open hypotheses
are exactly `reducible_shape_13_open`,
`point_count_is_torsion_frob_trace_open`, and `weil_bound_open`.
-/
theorem trace_outside_weil_at_five : trace_outside_weil_open := by
  intro hshape _hinertia _hartin _hray hfrob E ha hb hcop
  exact ⟨5, by decide, point_count_at_five_outside hshape hfrob E ha hb hcop⟩

/-- Good reduction at `5`, as a norm, together with a trace outside the range.

`five_not_dvd_c_of_coprime` supplies `5 ∤ |c|`. `five_misses_discriminant_norm`
turns that into `5 ∤ N(Δ)`. The second conjunct is the character-sum comparison.
-/
theorem five_good_trace_outside
    (hshape : reducible_shape_13_open)
    (hfrob : point_count_is_torsion_frob_trace_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    ¬ 5 ∣ (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs ∧
      ¬ (pointCountTrace E 5).natAbs * (pointCountTrace E 5).natAbs ≤ 4 * 5 := by
  have h5 : ¬ 5 ∣ E.c.natAbs := five_not_dvd_c_of_coprime E.a E.b E.c E.h_eq hcop
  exact ⟨five_misses_discriminant_norm E h5,
    point_count_at_five_outside hshape hfrob E ha hb hcop⟩

/-- Weil contradiction at norm `5`, for every coprime curve.

The open hypotheses are exactly `reducible_shape_13_open`,
`point_count_is_torsion_frob_trace_open`, and `weil_bound_open`. `5 ∤ |c|`
is `five_not_dvd_c_of_coprime`, not a hypothesis. `weil_bound_open` is
Hasse's bound over finite fields. `point_count_matches_shape_trace` is the
character-sum congruence, from the torsion-trace hypothesis and
`shapeExtension_trace`.
-/
theorem weil_contradiction_at_five
    (hshape : reducible_shape_13_open)
    (hfrob : point_count_is_torsion_frob_trace_open)
    (hweil : weil_bound_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) : False := by
  have hpack := five_good_trace_outside hshape hfrob E ha hb hcop
  exact hpack.2 (hweil E 5 (by decide))
