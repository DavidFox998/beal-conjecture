import Beal.«Beal.General».ZChartAllPrimeParameters

/-!
The change of coordinates on the overlap of the two affine charts:
if `z = 1/y`, then `u = x/y = x*z` and `v = z`. This is an
equation-level identity, not yet an equivalence of chart localizations
or an assertion about projective stalks.
-/

namespace Beal.General

/-- Clearing denominators in the two actual chart equations agrees
after the overlap substitution. The target can be any commutative
ring, not only a field or a rational point. -/
theorem projectiveWeierstrass_overlap_equation
    {T : Type*} [CommRing T]
    (W : WeierstrassCurve ℤ_[2])
    (k : ℤ_[2] →+* T) (x y z : T) (hyz : y * z = 1) :
    MvPolynomial.eval₂ k
        (fun i : Fin 2 => if i = 0 then x * z else z)
        (weierstrassInfinityChartEquation W) * y ^ 3 =
      MvPolynomial.eval₂ k
        (fun i : Fin 2 => if i = 0 then x else y)
        (localSurfaceEquation W 0 0) := by
  simp only [weierstrassInfinityChartEquation, localSurfaceEquation,
    localWeierstrassEquation, MvPolynomial.eval₂_add,
    MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul,
    MvPolynomial.eval₂_pow, MvPolynomial.eval₂_C,
    MvPolynomial.eval₂_X, map_zero, zero_add,
    WeierstrassCurve.map, ite_true, ite_false]
  change (z + k W.a₁ * (x * z) * z + k W.a₃ * z ^ 2 -
    ((x * z) ^ 3 + k W.a₂ * (x * z) ^ 2 * z +
      k W.a₄ * (x * z) * z ^ 2 + k W.a₆ * z ^ 3)) * y ^ 3 =
    y ^ 2 + k W.a₁ * x * y + k W.a₃ * y -
      (x ^ 3 + k W.a₂ * x ^ 2 + k W.a₄ * x + k W.a₆)
  calc
    _ = y ^ 2 * (y * z) +
      k W.a₁ * x * y * (y * z) ^ 2 +
      k W.a₃ * y * (y * z) ^ 2 -
      (x ^ 3 + k W.a₂ * x ^ 2 + k W.a₄ * x + k W.a₆) *
        (y * z) ^ 3 := by ring
    _ = _ := by rw [hyz]; ring

/-- The same denominator-clearing identity in the reverse direction:
`x = u/v`, `y = 1/v`, with `w = v⁻¹`. -/
theorem projectiveWeierstrass_overlap_equation_reverse
    {T : Type*} [CommRing T]
    (W : WeierstrassCurve ℤ_[2])
    (k : ℤ_[2] →+* T) (u v w : T) (hvw : v * w = 1) :
    MvPolynomial.eval₂ k
        (fun i : Fin 2 => if i = 0 then u * w else w)
        (localSurfaceEquation W 0 0) * v ^ 3 =
      MvPolynomial.eval₂ k
        (fun i : Fin 2 => if i = 0 then u else v)
        (weierstrassInfinityChartEquation W) := by
  have hwv : w * v = 1 := by simpa only [mul_comm] using hvw
  have h := projectiveWeierstrass_overlap_equation
    W k (u * w) w v hwv
  have hu : u * w * v = u := by
    calc
      u * w * v = u * (v * w) := by ring
      _ = u := by rw [hvw, mul_one]
  have heval :
      MvPolynomial.eval₂ k
        (fun i : Fin 2 => if i = 0 then u * w * v else v)
        (weierstrassInfinityChartEquation W) =
      MvPolynomial.eval₂ k
        (fun i : Fin 2 => if i = 0 then u else v)
        (weierstrassInfinityChartEquation W) := by
    congr 1
    funext i
    fin_cases i <;> simp [hu]
  rw [heval] at h
  calc
    _ = (MvPolynomial.eval₂ k
        (fun i : Fin 2 => if i = 0 then u else v)
        (weierstrassInfinityChartEquation W) * w ^ 3) * v ^ 3 := by
          rw [h]
    _ = _ := by
      rw [mul_assoc, ← mul_pow, hwv, one_pow, mul_one]

end Beal.General