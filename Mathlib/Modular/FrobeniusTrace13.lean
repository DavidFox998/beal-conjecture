import Mathlib.Modular.ReducibleShape13

/-!
# Frobenius trace of the reducible shape

`reducible_shape_13_open` is an extension of two characters. The data are a
ray-class character `ε` of `(ℤ[i] / π ^ n)ˣ` and an exponent `a ∈ ℤ/12ℤ`.
The diagonal characters are `ε · χ_cyc ^ a` and `ε⁻¹ · χ_cyc ^ (1 - a)`.
`complement_sum` is the product of those characters, equal to the cyclotomic
character. An extension is an upper-triangular matrix with that diagonal.
Its trace is the sum of the diagonal entries, for every off-diagonal entry.

On a `π`-unit, `u = ε.χ z` is a fourth root (`piUnitChar_order_div_four`).
At cyclotomic residue `t` the sum is `twistedTrace u t a`. That is
`frobenius_trace_sum_open`, and it is `frobenius_trace_sum`.

`pointCountTrace` is a sealed integer. The shape does not mention it, and
`RhoSemisimpleMatches` does not store a Frobenius element. Identifying the
sealed integer with this sum is `point_count_matches_shape_trace_open`.
-/

/-- The trace of an upper-triangular matrix is the sum of the diagonal entries.

The middle entry is the extension class. It does not appear in the trace.
-/
theorem upper_triangular_trace (χ1 χ2 off : Fin 13) :
    GL2F13.trace (GL2F13.Mat2.mk χ1 off 0 χ2) = χ1 + χ2 := rfl

/-- The two diagonal values multiply to the cyclotomic residue.

`e₁ + e₂ ≡ 1 (mod 12)` and `t ^ 12 = 1` for `t ≠ 0`, so
`u · t ^ e₁ · u⁻¹ · t ^ e₂ = t`. This is `χ₁ χ₂ = χ_cyc` on values.
-/
theorem shape_characters_product (u t : Fin 13) (hu : u ≠ 0) (ht : t ≠ 0)
    (exp : Fin 12) :
    (u * t ^ exp.val) *
        (GL2F13.inv u * t ^ (ReducibleShape13.complementExp exp).val) = t := by
  let e1 : Nat := exp.val
  let e2 : Nat := (ReducibleShape13.complementExp exp).val
  have hstep :
      (u * t ^ e1) * (GL2F13.inv u * t ^ e2) =
        t ^ e1 * t ^ e2 := by
    calc
      (u * t ^ e1) * (GL2F13.inv u * t ^ e2)
          = ((u * t ^ e1) * GL2F13.inv u) * t ^ e2 :=
            (Fin.mul_assoc (u * t ^ e1) (GL2F13.inv u) (t ^ e2)).symm
      _ = (u * (t ^ e1 * GL2F13.inv u)) * t ^ e2 := by
            rw [Fin.mul_assoc u (t ^ e1) (GL2F13.inv u)]
      _ = (u * (GL2F13.inv u * t ^ e1)) * t ^ e2 := by
            rw [Fin.mul_comm (t ^ e1) (GL2F13.inv u)]
      _ = ((u * GL2F13.inv u) * t ^ e1) * t ^ e2 := by
            rw [← Fin.mul_assoc u (GL2F13.inv u) (t ^ e1)]
      _ = (1 * t ^ e1) * t ^ e2 := by
            rw [GL2F13.mul_inv_cancel u hu]
      _ = t ^ e1 * t ^ e2 := by
            rw [Fin.one_mul]
  have hmod : (e1 + e2) % 12 = 1 := ReducibleShape13.complement_sum exp
  have hrepr := Nat.div_add_mod (e1 + e2) 12
  rw [hmod] at hrepr
  have hs : e1 + e2 = 12 * ((e1 + e2) / 12) + 1 := hrepr.symm
  have h12 : t ^ 12 = 1 := ReducibleShape13.fin13_pow_twelve t ht
  have hpow : t ^ (e1 + e2) = t := by
    rw [hs, ReducibleShape13.fin_pow_add, ReducibleShape13.fin_pow_mul, h12,
      ReducibleShape13.fin_one_pow, Fin.one_mul, ReducibleShape13.fin_pow_one]
  rw [hstep, ← ReducibleShape13.fin_pow_add, hpow]

/-- The shape forces the Frobenius trace of its extension.

Unfold `reducible_shape_13_open`. The characters are `ε · χ_cyc ^ a` and
`ε⁻¹ · χ_cyc ^ (1 - a)`. Any upper-triangular matrix with that diagonal has
trace `twistedTrace (ε.χ z) t a`, and `ε.χ z` is a fourth root. No
identification with `pointCountTrace` is used.
-/
theorem frobenius_trace_sum : frobenius_trace_sum_open := by
  intro hshape E ha hb hcop
  rcases hshape E ha hb hcop with ⟨n, ε, exp, hray, hmatch⟩
  refine ⟨n, ε, exp, hray, hmatch, ?_⟩
  intro z hz t off
  refine ⟨ε.nonzero z hz, ReducibleShape13.piUnitChar_order_div_four ε z hz, ?_, ?_⟩
  · intro ht
    exact shape_characters_product (ε.χ z) t (ε.nonzero z hz) ht exp
  · rw [upper_triangular_trace]
    rfl
