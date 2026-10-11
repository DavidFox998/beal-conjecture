import Mathlib.Modular.ReducibleShape13
import Mathlib.Modular.LevelLowering4413
import Mathlib.Modular.EllipticCurveMinimal

open FreyCurve4413

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

`rho_E_13` and `rho_E_p_twisted` unfold to `GaloisRepresentation.unresolved`.
That marker is not the Galois action on the `13`-torsion, so
`tr(ρ(Frob)) = N + 1 - #E` is not a definition here. The missing
identification of the sealed `pointCountTrace` with the extension's trace
is `point_count_is_torsion_frob_trace_open`. `point_count_matches_shape_trace`
chains it with the character sum.
-/

/-- The trace of an upper-triangular matrix is the sum of the diagonal entries.

The middle entry is the extension class. It does not appear in the trace.
-/
theorem upper_triangular_trace (χ1 χ2 off : Fin 13) :
    GL2F13.trace (GL2F13.Mat2.mk χ1 off 0 χ2) = χ1 + χ2 := rfl

/-- The extension's trace is the character sum `twistedTrace`.

This is the last conjunct of `frobenius_trace_sum`. The off-diagonal entry
is arbitrary.
-/
theorem shapeExtension_trace (u t : Fin 13) (exp : Fin 12) (off : Fin 13) :
    GL2F13.trace (shapeExtension u t exp off) =
      ReducibleShape13.twistedTrace u t exp := by
  rw [shapeExtension, upper_triangular_trace]
  rfl

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
  · exact shapeExtension_trace (ε.χ z) t exp off

/-- Unfolding the residual representation produces the unresolved marker.

`rho_E_13` is `rho_E_p`. The twist `rho_E_p_twisted` is the same marker.
Neither stores a torsion module, a Frobenius element, or a trace, so
`tr(ρ(Frob)) = N + 1 - #E` is not an equation of this construction.
-/
theorem rho_construction_is_unresolved (E : FreyCurve4413) :
    rho_E_p E = GaloisRepresentation.unresolved ∧
      rho_E_p_twisted E = GaloisRepresentation.unresolved ∧
        rho_E_13 E = GaloisRepresentation.unresolved :=
  rho_E_p_is_unresolved E

theorem intCong13_of_fin_eq {a : Int} {r s : Fin 13} (hrs : r = s)
    (h : IntCong13 a r) : IntCong13 a s := by
  rcases h with ⟨k, hk⟩
  refine ⟨k, ?_⟩
  rw [← hrs]
  exact hk

/-- The sealed trace matches the character sum at a good prime.

`point_count_is_torsion_frob_trace_open` is the congruence of
`pointCountTrace` with the extension's trace. That hypothesis is what
unfolding `rho_E_13` does not give. `shapeExtension_trace` rewrites the
extension's trace as `twistedTrace`, which is the character sum
`frobenius_trace_sum` records for the shape.
-/
theorem point_count_matches_shape_trace
    (hfrob : point_count_is_torsion_frob_trace_open) :
    point_count_matches_shape_trace_open := by
  intro E ha hb hcop n ε exp hmatch normP hpos hgood
  rcases hfrob E ha hb hcop n ε exp hmatch normP hpos hgood with ⟨z, hz, off, hcong⟩
  refine ⟨z, hz, ?_⟩
  have hsum := shapeExtension_trace (ε.χ z) (normResidue13 normP) exp off
  exact intCong13_of_fin_eq hsum hcong

/-- Sealed trace, extension trace, and character sum, at one good prime.

The first congruence is `point_count_is_torsion_frob_trace_open`. The
equality is the trace conjunct of `frobenius_trace_sum`, applied to the
characters the shape supplies. `RhoSemisimpleMatches` does not store the
Frobenius element; the `π`-unit is the one the torsion-trace hypothesis
provides.
-/
theorem point_count_chain_at_good_prime
    (hshape : reducible_shape_13_open)
    (hfrob : point_count_is_torsion_frob_trace_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1)
    (normP : Nat) (hpos : 0 < normP) (hgood : ¬ normP ∣ E.c.natAbs) :
    ∃ n, ∃ ε : ReducibleShape13.PiUnitChar n, ∃ exp : Fin 12, ∃ z,
      ¬ piDivides z ∧
        ∃ off : Fin 13,
          IntCong13 (pointCountTrace E normP)
              (GL2F13.trace
                (shapeExtension (ε.χ z) (normResidue13 normP) exp off)) ∧
            GL2F13.trace (shapeExtension (ε.χ z) (normResidue13 normP) exp off) =
              ReducibleShape13.twistedTrace (ε.χ z) (normResidue13 normP) exp := by
  rcases frobenius_trace_sum hshape E ha hb hcop with ⟨n, ε, exp, _hray, hmatch, htr⟩
  rcases hfrob E ha hb hcop n ε exp hmatch normP hpos hgood with ⟨z, hz, off, hcong⟩
  rcases htr z hz (normResidue13 normP) off with ⟨_hu, _h4, _hprod, htrace⟩
  exact ⟨n, ε, exp, z, hz, off, hcong, htrace⟩
