import Mathlib.Modular.ReducibleShape13

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

`5 ∤ |c|` implies `5 ∤ N(Δ)` (`five_misses_discriminant_norm`). That is the
norm condition for good reduction at `5`. The case `5 ∣ |c|` is not treated:
norm `5` then divides `N(Δ)`, and this prime is the wrong place to apply
the Weil bound. No replacement prime is chosen.
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

/-- Under the shape and the trace identification, the sealed trace at norm `5`
is an integer congruent to `6` or `7`.
-/
theorem pointCount_at_five_cong
    (hshape : reducible_shape_13_open)
    (htrace : frobenius_trace_sum_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    IntCong13 (pointCountTrace E 5) 6 ∨ IntCong13 (pointCountTrace E 5) 7 := by
  rcases hshape E ha hb hcop with ⟨n, ε, exp, _hray, hmatch⟩
  rcases htrace E ha hb hcop n ε exp hmatch 5 (by decide) with ⟨u, hu, h4, hcong⟩
  have ht : (⟨(5 : Nat) % 13, Nat.mod_lt (5 : Nat) (by decide)⟩ : Fin 13) = 5 := by
    apply Fin.ext
    decide
  rw [ht] at hcong
  rcases twisted_trace_at_five u hu h4 exp with h6 | h7
  · left
    rw [h6] at hcong
    exact hcong
  · right
    rw [h7] at hcong
    exact hcong

/-- The trace at norm `5` fails `a² ≤ 4 · 5`, given the shape and
`frobenius_trace_sum_open`. Inertia, the Artin split, and the ray-class
bridge are not hypotheses.
-/
theorem point_count_at_five_outside
    (hshape : reducible_shape_13_open)
    (htrace : frobenius_trace_sum_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    ¬ (pointCountTrace E 5).natAbs * (pointCountTrace E 5).natAbs ≤ 4 * 5 :=
  int_outside_weil_at_five _ (pointCount_at_five_cong hshape htrace E ha hb hcop)

/-- `trace_outside_weil_open` holds.

The witness is norm `5`. The inertia, Artin, and ray-class antecedents of
the definition are not used. The identification of the trace with the
character sum remains `frobenius_trace_sum_open`.
-/
theorem trace_outside_weil_at_five : trace_outside_weil_open := by
  intro hshape _hinertia _hartin _hray htrace E ha hb hcop
  exact ⟨5, by decide, point_count_at_five_outside hshape htrace E ha hb hcop⟩

/-- Good reduction at `5`, as a norm, together with a trace outside the range.

`five_misses_discriminant_norm` is the first conjunct. The second is the
character-sum comparison. The case `5 ∣ |c|` is not this theorem.
-/
theorem five_good_trace_outside
    (hshape : reducible_shape_13_open)
    (htrace : frobenius_trace_sum_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1)
    (h5 : ¬ 5 ∣ E.c.natAbs) :
    ¬ 5 ∣ (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs ∧
      ¬ (pointCountTrace E 5).natAbs * (pointCountTrace E 5).natAbs ≤ 4 * 5 :=
  ⟨five_misses_discriminant_norm E h5,
    point_count_at_five_outside hshape htrace E ha hb hcop⟩

/-- Weil contradiction at a prime of norm `5`, when `5 ∤ |c|`.

`weil_bound_open` at norm `5` and the character sum cannot both hold.
`5 ∤ |c|` is the good-reduction case: it is exactly `5 ∤ N(Δ)`.
If `5 ∣ |c|`, reduction at `5` is bad and this argument does not apply.
That case is the remaining gap on this prime. No second prime is substituted,
and no new exponent-divisibility hypothesis is used.
-/
theorem weil_contradiction_at_five
    (hshape : reducible_shape_13_open)
    (htrace : frobenius_trace_sum_open)
    (hweil : weil_bound_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1)
    (h5 : ¬ 5 ∣ E.c.natAbs) : False := by
  have hpack := five_good_trace_outside hshape htrace E ha hb hcop h5
  exact hpack.2 (hweil E 5 (by decide))
