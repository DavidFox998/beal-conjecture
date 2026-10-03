import Beal.MathlibMissing.Family
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Coefficient bound for powers of the numeral centre

On `Y² = X³ − 2` at `(0, 0)`, every class in the surface ring is uniquely
`α(X) + Y·β(X)` with `α, β ∈ S[X]` and `S = ℤ_[2][a,b]`. If that class lies in
`I^k` for `I = (2, X, Y)`, every coefficient of `α` and `β` is divisible by a
power of `2`:

* the coefficient of `X^i` in `α` has norm at most `2^{−⌈(k−i)/2⌉}`,
* the coefficient of `X^i` in `β` has norm at most `2^{−⌊(k−i)/2⌋}`.

`Nat` subtraction makes the bound `0` when `i ≥ k`. `PadicInt.valuation 0 = 0`,
so the inequality is the norm bound, which holds for the zero coefficient.
A nonzero coefficient then has `v₂` at least that integer.

The bound yields `X^m · (X³ − 1) ∉ I^{m+1}`, and therefore `∉ I^{m+2}`.
`ChartInjective.lean` applies that obstruction to the chart class `X + V²`:
its degree-2 Rees numerator is `2·(X³ − 1) t²`, so the class is nonzero in
`D₊(Xt)`. Every class in `𝔽₂[a,b][X,V] / (X²·(X + V²))` has a unique
representative `A(V) + X·B(V) + X²·C(V)`, and injectivity is that kernel
condition. `chartOfModelTrue_injective` stays open: vanishing of a general
normal form is not yet a Rees numerator in `2 · I^{d+m}`.
-/

namespace Beal.MathlibMissing

open Polynomial

/-- `⌈(k − i) / 2⌉` with `Nat` subtraction. This is `0` when `i ≥ k`. -/
def centreAlphaBound (k i : ℕ) : ℕ := (k - i + 1) / 2

/-- `⌊(k − i) / 2⌋` with `Nat` subtraction. -/
def centreBetaBound (k i : ℕ) : ℕ := (k - i) / 2

/-- Every coefficient of `c ∈ S` has 2-adic norm at most `2^{−n}`. -/
def twoAdicNormBound (n : ℕ) (c : S) : Prop :=
  ∀ m : Fin 2 →₀ ℕ, ‖MvPolynomial.coeff m c‖ ≤ (2 : ℝ) ^ (-(n : ℤ))

lemma mod_two_dichotomy (m : ℕ) : m % 2 = 0 ∨ m % 2 = 1 := by
  match h : m % 2 with
  | 0 => exact Or.inl rfl
  | 1 => exact Or.inr rfl
  | r + 2 =>
      have hlt := Nat.mod_lt m (by decide : 0 < 2)
      rw [h] at hlt
      exact absurd hlt (Nat.not_lt_of_ge (Nat.le_add_left 2 r))

lemma nat_div_two_add_one (m : ℕ) : m / 2 + 1 = (m + 2) / 2 := by
  set q := m / 2
  have hmod : m = 2 * q + m % 2 := by
    simpa [q] using (Nat.div_add_mod m 2).symm
  rcases mod_two_dichotomy m with h0 | h1
  · have hm : m = 2 * q := by rw [hmod, h0, add_zero]
    calc
      m / 2 + 1 = q + 1 := by simp [q]
      _ = (2 * (q + 1)) / 2 := by
        rw [Nat.mul_div_cancel_left _ (by decide : 0 < 2)]
      _ = (2 * q + 2) / 2 := by rw [Nat.mul_succ]
      _ = (m + 2) / 2 := by rw [hm]
  · have hm : m = 2 * q + 1 := by rw [hmod, h1]
    have hdiv : (1 + 2 * (q + 1)) / 2 = q + 1 := by
      rw [Nat.add_mul_div_left 1 (q + 1) (by decide : 0 < 2),
        Nat.div_eq_of_lt (by decide : 1 < 2), zero_add]
    have hsum : m + 2 = 1 + 2 * (q + 1) := by
      rw [hm, Nat.mul_succ]
      -- `2q + 1 + 2 = 1 + (2q + 2)`
      calc
        2 * q + 1 + 2 = 2 * q + (1 + 2) := by rw [Nat.add_assoc]
        _ = 2 * q + (2 + 1) := by rw [Nat.add_comm 1 2]
        _ = 2 * q + 2 + 1 := by rw [← Nat.add_assoc]
        _ = 1 + (2 * q + 2) := by rw [Nat.add_comm]
        _ = 1 + 2 * (q + 1) := by rw [Nat.mul_succ]
    calc
      m / 2 + 1 = q + 1 := by simp [q]
      _ = (m + 2) / 2 := by rw [← hdiv, hsum]

lemma nat_add_one_sub (n i : ℕ) (hi : i ≤ n) : n + 1 - i = n - i + 1 := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hi
  rw [Nat.add_assoc, Nat.add_sub_cancel_left, Nat.add_sub_cancel_left]

lemma nat_sub_pred (n i : ℕ) (hi : 1 ≤ i) (hn : i ≤ n) : n - (i - 1) = n - i + 1 := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hn
  have hcancel : i + k - i = k := Nat.add_sub_cancel_left i k
  have hrest : (i - 1) + 1 = i := Nat.sub_add_cancel hi
  calc
    i + k - (i - 1) = (i - 1) + 1 + k - (i - 1) := by rw [hrest]
    _ = (i - 1) + (k + 1) - (i - 1) := by rw [Nat.add_assoc, Nat.add_comm 1 k]
    _ = k + 1 := Nat.add_sub_cancel_left (i - 1) (k + 1)
    _ = i + k - i + 1 := congrArg (fun t => t + 1) hcancel.symm

lemma nat_sub_three (n i : ℕ) (hi : 3 ≤ i) (hn : i ≤ n) : n - (i - 3) = n - i + 3 := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hn
  have hcancel : i + k - i = k := Nat.add_sub_cancel_left i k
  have hrest : (i - 3) + 3 = i := Nat.sub_add_cancel hi
  calc
    i + k - (i - 3) = (i - 3) + 3 + k - (i - 3) := by rw [hrest]
    _ = (i - 3) + (k + 3) - (i - 3) := by rw [Nat.add_assoc, Nat.add_comm 3 k]
    _ = k + 3 := Nat.add_sub_cancel_left (i - 3) (k + 3)
    _ = i + k - i + 3 := congrArg (fun t => t + 3) hcancel.symm

lemma centreAlphaBound_ne_zero_lt {k i : ℕ} (h : centreAlphaBound k i ≠ 0) : i < k := by
  by_contra hk
  have hsub : k - i = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_not_gt hk)
  exact h (by simp [centreAlphaBound, hsub])

lemma centreBetaBound_ne_zero_le {k i : ℕ} (h : centreBetaBound k i ≠ 0) : i + 2 ≤ k := by
  by_contra hk
  have hlt : k < i + 2 := Nat.lt_of_not_ge hk
  by_cases hik : i ≤ k
  · obtain ⟨t, rfl⟩ := Nat.exists_eq_add_of_le hik
    have ht : t < 2 := by simpa [Nat.add_assoc] using hlt
    match t with
    | 0 => simp [centreBetaBound, Nat.add_sub_cancel_left] at h
    | 1 => simp [centreBetaBound, Nat.add_sub_cancel_left] at h
    | n + 2 => exact absurd ht (Nat.not_lt.mpr (Nat.le_add_left 2 n))
  · simp [centreBetaBound, Nat.sub_eq_zero_of_le (Nat.le_of_not_ge hik)] at h

lemma centreAlpha_two_le (n i : ℕ) (hi : i ≤ n) :
    centreAlphaBound (n + 1) i ≤ centreAlphaBound n i + 1 := by
  unfold centreAlphaBound
  rw [nat_add_one_sub n i hi]
  generalize n - i + 1 = m
  calc (m + 1) / 2 ≤ (m + 2) / 2 := Nat.div_le_div_right (Nat.le_succ _)
    _ = m / 2 + 1 := (nat_div_two_add_one m).symm

lemma centreBeta_two_eq (n i : ℕ) (hi : i ≤ n) :
    centreBetaBound n i + 1 = centreAlphaBound (n + 1) i := by
  unfold centreBetaBound centreAlphaBound
  rw [nat_add_one_sub n i hi, nat_div_two_add_one (n - i)]

lemma centreAlpha_shift (n i : ℕ) (hi : 1 ≤ i) (hn : i ≤ n) :
    centreAlphaBound n (i - 1) = centreAlphaBound (n + 1) i := by
  unfold centreAlphaBound
  rw [show n - (i - 1) + 1 = n - i + 2 by rw [nat_sub_pred n i hi hn],
    show n + 1 - i + 1 = n - i + 2 by rw [nat_add_one_sub n i hn]]

lemma centreBeta_shift (n i : ℕ) (hi : 1 ≤ i) (hn : i ≤ n) :
    centreBetaBound n (i - 1) = centreBetaBound (n + 1) i := by
  unfold centreBetaBound
  rw [nat_sub_pred n i hi hn, nat_add_one_sub n i hn]

lemma centreAlpha_eq_beta_succ (n i : ℕ) (hi : i ≤ n) :
    centreAlphaBound n i = centreBetaBound (n + 1) i := by
  unfold centreAlphaBound centreBetaBound
  rw [nat_add_one_sub n i hi]

lemma centreBeta_cube_ge (n i : ℕ) (hi : 3 ≤ i) (hn : i ≤ n) :
    centreAlphaBound (n + 1) i ≤ centreBetaBound n (i - 3) := by
  unfold centreAlphaBound centreBetaBound
  rw [show n + 1 - i + 1 = n - i + 2 by rw [nat_add_one_sub n i hn],
    show n - (i - 3) = n - i + 3 by exact nat_sub_three n i hi hn]
  exact Nat.div_le_div_right (Nat.le_succ _)

lemma centreAlphaBound_succ_self (m : ℕ) : centreAlphaBound (m + 1) m = 1 := by
  unfold centreAlphaBound
  rw [Nat.add_sub_cancel_left]

lemma twoAdicNormBound_zero (n : ℕ) : twoAdicNormBound n (0 : S) := by
  intro m
  simp only [MvPolynomial.coeff_zero, norm_zero]
  positivity

lemma twoAdicNormBound_of_bound_zero (c : S) : twoAdicNormBound 0 c := by
  intro m
  simpa using PadicInt.norm_le_one (MvPolynomial.coeff m c)

lemma twoAdicNormBound_anti {n m : ℕ} (h : n ≤ m) {c : S}
    (hc : twoAdicNormBound m c) : twoAdicNormBound n c := by
  intro t
  refine le_trans (hc t) ?_
  rw [show (2 : ℝ) ^ (-(m : ℤ)) = ((2 : ℝ) ^ m)⁻¹ by rw [zpow_neg, zpow_natCast],
    show (2 : ℝ) ^ (-(n : ℤ)) = ((2 : ℝ) ^ n)⁻¹ by rw [zpow_neg, zpow_natCast]]
  exact inv_le_inv_of_le (pow_pos (by norm_num) n)
    (pow_le_pow_right (by norm_num : (1 : ℝ) ≤ 2) h)

lemma twoAdicNormBound_neg {n : ℕ} {c : S} (hc : twoAdicNormBound n c) :
    twoAdicNormBound n (-c) := by
  intro m
  simpa [MvPolynomial.coeff_neg, norm_neg] using hc m

lemma twoAdicNormBound_add {n : ℕ} {c d : S}
    (hc : twoAdicNormBound n c) (hd : twoAdicNormBound n d) :
    twoAdicNormBound n (c + d) := by
  intro m
  rw [MvPolynomial.coeff_add]
  exact le_trans (PadicInt.nonarchimedean _ _) (max_le (hc m) (hd m))

lemma twoAdicNormBound_sub {n : ℕ} {c d : S}
    (hc : twoAdicNormBound n c) (hd : twoAdicNormBound n d) :
    twoAdicNormBound n (c - d) := by
  rw [sub_eq_add_neg]
  exact twoAdicNormBound_add hc (twoAdicNormBound_neg hd)

lemma two_zpow_succ (n : ℕ) :
    (2 : ℝ)⁻¹ * (2 : ℝ) ^ (-(n : ℤ)) = (2 : ℝ) ^ (-((n + 1 : ℕ) : ℤ)) := by
  rw [← zpow_neg_one, ← zpow_add₀ (by norm_num : (2 : ℝ) ≠ 0)]
  congr 1
  calc
    (-1 : ℤ) + (-(n : ℤ)) = -((1 : ℤ) + n) := by rw [← neg_add]
    _ = -(n + 1) := by rw [add_comm]
    _ = -((n + 1 : ℕ) : ℤ) := by norm_cast

lemma twoAdicNormBound_two_mul {n : ℕ} {c : S} (hc : twoAdicNormBound n c) :
    twoAdicNormBound (n + 1) ((2 : S) * c) := by
  intro m
  have h2 : (2 : S) = MvPolynomial.C ((2 : ℕ) : ℤ_[2]) :=
    (map_natCast (MvPolynomial.C : ℤ_[2] →+* S) 2).symm
  rw [h2, MvPolynomial.coeff_C_mul, PadicInt.norm_mul, PadicInt.norm_p]
  calc
    (2 : ℝ)⁻¹ * ‖MvPolynomial.coeff m c‖ ≤
        (2 : ℝ)⁻¹ * (2 : ℝ) ^ (-(n : ℤ)) :=
      mul_le_mul_of_nonneg_left (hc m) (inv_nonneg.mpr (by norm_num))
    _ = (2 : ℝ) ^ (-((n + 1 : ℕ) : ℤ)) := two_zpow_succ n

/-- `Y² − (X³ − 2)` in `S[X][Y]`. The outer variable is `Y`. -/
noncomputable def centreRel : Polynomial (Polynomial S) :=
  X ^ 2 - C (X ^ 3 - C (2 : S))

lemma centreRel_monic : centreRel.Monic := by
  rw [centreRel]
  exact monic_X_pow_sub_C _ (by decide : (2 : ℕ) ≠ 0)

lemma centreRel_degree : centreRel.degree = 2 := by
  rw [centreRel]
  exact degree_X_pow_sub_C (by decide : 0 < 2) _

/-- `α + Y·β` in `S[X][Y]`. -/
noncomputable def centreOfNormal (α β : Polynomial S) : Polynomial (Polynomial S) :=
  C α + C β * X

lemma centreOfNormal_coeff_zero (α β : Polynomial S) :
    (centreOfNormal α β).coeff 0 = α := by
  simp [centreOfNormal, coeff_C_mul_X]

lemma centreOfNormal_coeff_one (α β : Polynomial S) :
    (centreOfNormal α β).coeff 1 = β := by
  simp [centreOfNormal, coeff_C, coeff_C_mul_X]

lemma centreOfNormal_degree_le (α β : Polynomial S) :
    (centreOfNormal α β).degree ≤ 1 := by
  unfold centreOfNormal
  refine (degree_add_le _ _).trans (max_le ?_ ?_)
  · exact (degree_C_le).trans (by decide : (0 : WithBot ℕ) ≤ 1)
  · calc degree (C β * X) ≤ degree (C β) + degree (X : Polynomial (Polynomial S)) :=
        degree_mul_le _ _
      _ ≤ 0 + 1 := add_le_add degree_C_le (by simp)
      _ = 1 := by simp

lemma centreOfNormal_sub (α β α' β' : Polynomial S) :
    centreOfNormal (α - α') (β - β') =
      centreOfNormal α β - centreOfNormal α' β' := by
  unfold centreOfNormal
  simp only [map_sub]
  ring

lemma centreOfNormal_two : centreOfNormal (2 : Polynomial S) 0 = 2 := by
  rw [centreOfNormal, map_zero, zero_mul, add_zero, map_ofNat]

lemma centreOfNormal_X : centreOfNormal (X : Polynomial S) 0 = C X := by
  simp [centreOfNormal, map_zero]

lemma centreOfNormal_Y : centreOfNormal (0 : Polynomial S) 1 = X := by
  simp [centreOfNormal, map_zero, map_one]

lemma centreOfNormal_eq_zero_of_mem {α β : Polynomial S}
    (h : centreOfNormal α β ∈ Ideal.span {centreRel}) : α = 0 ∧ β = 0 := by
  have hdiv : centreRel ∣ centreOfNormal α β := Ideal.mem_span_singleton.mp h
  have hdeg : (centreOfNormal α β).degree < centreRel.degree := by
    rw [centreRel_degree]
    exact lt_of_le_of_lt (centreOfNormal_degree_le α β) (by decide)
  have h0 : centreOfNormal α β = 0 := eq_zero_of_dvd_of_degree_lt hdiv hdeg
  constructor
  · simpa [centreOfNormal_coeff_zero] using congrArg (fun p => p.coeff 0) h0
  · simpa [centreOfNormal_coeff_one] using congrArg (fun p => p.coeff 1) h0

/-- `MvPolynomial (Fin 1) S ≃ₐ[S] S[X]`. -/
noncomputable def centreCoeffToPoly :
    MvPolynomial (Fin 1) S ≃ₐ[S] Polynomial S :=
  (MvPolynomial.finSuccEquiv S 0).trans
    (Polynomial.mapAlgEquiv (MvPolynomial.isEmptyAlgEquiv S (Fin 0)))

lemma centreCoeffToPoly_C (s : S) : centreCoeffToPoly (MvPolynomial.C s) = C s := by
  simpa [MvPolynomial.algebraMap_eq, algebraMap_eq] using centreCoeffToPoly.commutes s

lemma centreCoeffToPoly_X : centreCoeffToPoly (MvPolynomial.X 0) = X := by
  rw [centreCoeffToPoly, AlgEquiv.trans_apply, MvPolynomial.finSuccEquiv_X_zero,
    Polynomial.coe_mapAlgEquiv, map_X]

/-- Swap `X` with `Y`, then read the polynomial as an element of `S[X][Y]`. -/
noncomputable def surfaceToCentrePoly :
    MvPolynomial (Fin 2) S ≃ₐ[S] Polynomial (Polynomial S) :=
  (MvPolynomial.renameEquiv S (Equiv.swap 0 1)).trans
    ((MvPolynomial.finSuccEquiv S 1).trans (Polynomial.mapAlgEquiv centreCoeffToPoly))

lemma surfaceToCentrePoly_Y : surfaceToCentrePoly (MvPolynomial.X 1) = X := by
  rw [surfaceToCentrePoly, AlgEquiv.trans_apply, AlgEquiv.trans_apply,
    MvPolynomial.renameEquiv_apply, MvPolynomial.rename_X, Equiv.swap_apply_right,
    MvPolynomial.finSuccEquiv_X_zero, Polynomial.coe_mapAlgEquiv, map_X]

lemma surfaceToCentrePoly_X : surfaceToCentrePoly (MvPolynomial.X 0) = C X := by
  rw [surfaceToCentrePoly, AlgEquiv.trans_apply, AlgEquiv.trans_apply,
    MvPolynomial.renameEquiv_apply, MvPolynomial.rename_X, Equiv.swap_apply_left]
  have hfin : (MvPolynomial.finSuccEquiv S 1) (MvPolynomial.X (1 : Fin 2)) =
      C (MvPolynomial.X (0 : Fin 1)) := by
    rw [show (1 : Fin 2) = Fin.succ (0 : Fin 1) from rfl]
    exact MvPolynomial.finSuccEquiv_X_succ
  rw [hfin, Polynomial.coe_mapAlgEquiv, map_C]
  exact congrArg C centreCoeffToPoly_X

lemma surfaceToCentrePoly_C (s : S) :
    surfaceToCentrePoly (MvPolynomial.C s) = C (C s) := by
  have h := surfaceToCentrePoly.commutes s
  rw [MvPolynomial.algebraMap_eq] at h
  rw [h, IsScalarTower.algebraMap_apply S (Polynomial S) (Polynomial (Polynomial S)),
    algebraMap_eq, algebraMap_eq]

lemma surfaceToCentrePoly_surfacePolynomial :
    surfaceToCentrePoly (surfacePolynomial valuationOneCurve) = centreRel := by
  rw [valuationOne_surfacePolynomial, map_add, map_sub, map_pow, map_pow,
    surfaceToCentrePoly_Y, surfaceToCentrePoly_X, surfaceToCentrePoly_C, centreRel, ← map_pow]
  have h2 : (2 : S) = MvPolynomial.C (2 : ℤ_[2]) :=
    (map_natCast (MvPolynomial.C : ℤ_[2] →+* S) 2).symm
  rw [← h2]
  have hsub : C (X ^ 3 - C (2 : S)) = C (X ^ 3) - C (C (2 : S)) := map_sub C _ _
  calc
    X ^ 2 - C (X ^ 3) + C (C (2 : S))
        = X ^ 2 - (C (X ^ 3) - C (C (2 : S))) := by ring
    _ = X ^ 2 - C (X ^ 3 - C (2 : S)) := by rw [← hsub]

/-- The class of `α(X) + Y·β(X)` in `S[X, Y]`. -/
noncomputable def centreNormalPoly (α β : Polynomial S) : MvPolynomial (Fin 2) S :=
  surfaceToCentrePoly.symm (centreOfNormal α β)

lemma surfaceToCentrePoly_normal (α β : Polynomial S) :
    surfaceToCentrePoly (centreNormalPoly α β) = centreOfNormal α β := by
  rw [centreNormalPoly, AlgEquiv.apply_symm_apply]

lemma centreNormalPoly_sub (α β α' β' : Polynomial S) :
    centreNormalPoly (α - α') (β - β') =
      centreNormalPoly α β - centreNormalPoly α' β' := by
  apply surfaceToCentrePoly.injective
  rw [map_sub, surfaceToCentrePoly_normal, surfaceToCentrePoly_normal,
    surfaceToCentrePoly_normal, centreOfNormal_sub]

lemma centreNormal_unique {α β α' β' : Polynomial S}
    (h : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) =
        Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α' β')) :
    α = α' ∧ β = β' := by
  have hmem : centreNormalPoly α β - centreNormalPoly α' β' ∈
      Ideal.span {surfacePolynomial valuationOneCurve} := (Ideal.Quotient.eq).mp h
  rw [← centreNormalPoly_sub] at hmem
  rw [Ideal.mem_span_singleton] at hmem
  rcases hmem with ⟨q, hq⟩
  have hspan : centreOfNormal (α - α') (β - β') ∈ Ideal.span {centreRel} := by
    rw [Ideal.mem_span_singleton]
    refine ⟨surfaceToCentrePoly q, ?_⟩
    have himg := congrArg surfaceToCentrePoly hq
    rwa [map_mul, surfaceToCentrePoly_surfacePolynomial, surfaceToCentrePoly_normal] at himg
  rcases centreOfNormal_eq_zero_of_mem hspan with ⟨hα, hβ⟩
  exact ⟨sub_eq_zero.mp hα, sub_eq_zero.mp hβ⟩

lemma exists_centreNormal_of_poly (p : MvPolynomial (Fin 2) S) :
    ∃ α β, Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve}) p =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly α β) := by
  let q : Polynomial (Polynomial S) := surfaceToCentrePoly p
  let r : Polynomial (Polynomial S) := q %ₘ centreRel
  have hr : r = q - centreRel * (q /ₘ centreRel) :=
    modByMonic_eq_sub_mul_div q centreRel_monic
  have hdeg : r.degree ≤ 1 := by
    have hlt : r.degree < centreRel.degree := degree_modByMonic_lt q centreRel_monic
    rw [centreRel_degree] at hlt
    by_cases hr0 : r = 0
    · simp [hr0]
    · have hnat : r.natDegree < 2 := (natDegree_lt_iff_degree_lt hr0).mpr hlt
      exact (natDegree_le_iff_degree_le).mp (Nat.le_of_lt_succ hnat)
  let α : Polynomial S := r.coeff 0
  let β : Polynomial S := r.coeff 1
  have hrform : r = centreOfNormal α β := by
    calc
      r = C β * X + C α := eq_X_add_C_of_degree_le_one hdeg
      _ = centreOfNormal α β := by rw [centreOfNormal, add_comm]
  refine ⟨α, β, (Ideal.Quotient.eq).mpr ?_⟩
  have hdiff : surfaceToCentrePoly (p - centreNormalPoly α β) =
      centreRel * (q /ₘ centreRel) := by
    rw [map_sub, surfaceToCentrePoly_normal, ← hrform, hr]
    ring
  have hpre : p - centreNormalPoly α β =
      surfacePolynomial valuationOneCurve * surfaceToCentrePoly.symm (q /ₘ centreRel) := by
    apply surfaceToCentrePoly.injective
    rw [hdiff, map_mul, surfaceToCentrePoly_surfacePolynomial, AlgEquiv.apply_symm_apply]
  rw [hpre]
  exact Ideal.mem_span_singleton.mpr ⟨surfaceToCentrePoly.symm (q /ₘ centreRel), rfl⟩

lemma exists_centreNormal (z : surfaceRing valuationOneCurve) :
    ∃ α β : Polynomial S,
      z = Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly α β) := by
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective z
  exact exists_centreNormal_of_poly p

lemma numeralCentre_eq_span :
    numeralCentreIdeal valuationOneCurve 0 0 =
      Ideal.span {
        (2 : surfaceRing valuationOneCurve),
        surfaceNumeralX valuationOneCurve 0,
        surfaceNumeralY valuationOneCurve 0 } := by
  apply le_antisymm
  · rw [numeralCentreIdeal, Ideal.map_span, Ideal.span_le]
    intro z hz
    obtain ⟨w, hw, rfl⟩ := hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hw
    rcases hw with rfl | rfl | rfl
    · rw [← two_eq_quotient_mk]
      exact Ideal.subset_span (Set.mem_insert _ _)
    · have hX : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X (0 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C ((0 : ℕ) : ℤ_[2]))) =
          surfaceNumeralX valuationOneCurve 0 := by
        simp [surfaceNumeralX]
      exact hX ▸ Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
    · have hY : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X (1 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C ((0 : ℕ) : ℤ_[2]))) =
          surfaceNumeralY valuationOneCurve 0 := by
        simp [surfaceNumeralY]
      exact hY ▸ Ideal.subset_span
        (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _)))
  · rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl | rfl
    · exact two_mem_numeralCentreIdeal valuationOneCurve 0 0
    · exact numeral_X_mem_centre valuationOneCurve 0 0
    · exact numeral_Y_mem_centre valuationOneCurve 0 0

lemma mem_numeralCentre_mul {J : Ideal (surfaceRing valuationOneCurve)}
    {z : surfaceRing valuationOneCurve} :
    z ∈ numeralCentreIdeal valuationOneCurve 0 0 * J ↔
      ∃ z1 z2 z3, z1 ∈ J ∧ z2 ∈ J ∧ z3 ∈ J ∧
        z = (2 : surfaceRing valuationOneCurve) * z1 +
          surfaceNumeralX valuationOneCurve 0 * z2 +
          surfaceNumeralY valuationOneCurve 0 * z3 := by
  rw [numeralCentre_eq_span]
  have hsplit : Ideal.span
        ({(2 : surfaceRing valuationOneCurve),
          surfaceNumeralX valuationOneCurve 0,
          surfaceNumeralY valuationOneCurve 0} : Set _) =
      Ideal.span {(2 : surfaceRing valuationOneCurve)} ⊔
        (Ideal.span {surfaceNumeralX valuationOneCurve 0} ⊔
          Ideal.span {surfaceNumeralY valuationOneCurve 0}) := by
    rw [Ideal.span_insert, Ideal.span_insert]
  rw [hsplit, Ideal.mul_comm, Ideal.mul_sup, Ideal.mul_sup,
    Ideal.mul_comm J (Ideal.span {(2 : surfaceRing valuationOneCurve)}),
    Ideal.mul_comm J (Ideal.span {surfaceNumeralX valuationOneCurve 0}),
    Ideal.mul_comm J (Ideal.span {surfaceNumeralY valuationOneCurve 0})]
  constructor
  · intro hz
    rcases (Submodule.mem_sup).mp hz with ⟨u, hu, v, hv, rfl⟩
    rcases (Submodule.mem_sup).mp hv with ⟨v1, hv1, v2, hv2, rfl⟩
    rcases (Ideal.mem_span_singleton_mul).mp hu with ⟨z1, hz1, rfl⟩
    rcases (Ideal.mem_span_singleton_mul).mp hv1 with ⟨z2, hz2, rfl⟩
    rcases (Ideal.mem_span_singleton_mul).mp hv2 with ⟨z3, hz3, rfl⟩
    refine ⟨z1, z2, z3, hz1, hz2, hz3, ?_⟩
    rw [add_assoc]
  · intro ⟨z1, z2, z3, hz1, hz2, hz3, hz⟩
    rw [add_assoc] at hz
    refine (Submodule.mem_sup).mpr
      ⟨(2 : surfaceRing valuationOneCurve) * z1,
        Ideal.mem_span_singleton_mul.mpr ⟨z1, hz1, rfl⟩,
        surfaceNumeralX valuationOneCurve 0 * z2 +
          surfaceNumeralY valuationOneCurve 0 * z3, ?_, hz.symm⟩
    exact (Submodule.mem_sup).mpr
      ⟨surfaceNumeralX valuationOneCurve 0 * z2,
        Ideal.mem_span_singleton_mul.mpr ⟨z2, hz2, rfl⟩,
        surfaceNumeralY valuationOneCurve 0 * z3,
        Ideal.mem_span_singleton_mul.mpr ⟨z3, hz3, rfl⟩, rfl⟩

lemma mem_numeralCentre_pow_succ (k : ℕ) {z : surfaceRing valuationOneCurve} :
    z ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ (k + 1) ↔
      ∃ z1 z2 z3,
        z1 ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ k ∧
          z2 ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ k ∧
          z3 ∈ numeralCentreIdeal valuationOneCurve 0 0 ^ k ∧
        z = (2 : surfaceRing valuationOneCurve) * z1 +
          surfaceNumeralX valuationOneCurve 0 * z2 +
          surfaceNumeralY valuationOneCurve 0 * z3 := by
  rw [pow_succ, Ideal.mul_comm]
  exact mem_numeralCentre_mul

private lemma expand_normal (α1 β1 α2 β2 α3 β3 : Polynomial S) :
    (2 : Polynomial (Polynomial S)) * centreOfNormal α1 β1 +
        C X * centreOfNormal α2 β2 +
        X * centreOfNormal α3 β3 =
      centreOfNormal
          ((2 : Polynomial S) * α1 + X * α2 + X ^ 3 * β3 - (2 : Polynomial S) * β3)
          ((2 : Polynomial S) * β1 + X * β2 + α3) +
        C β3 * centreRel := by
  simp only [centreOfNormal, centreRel, map_add, map_sub, map_mul, map_pow, map_ofNat]
  ring

lemma surface_generator_repr :
    (2 : surfaceRing valuationOneCurve) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (2 : Polynomial S) 0) ∧
    surfaceNumeralX valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly X 0) ∧
    surfaceNumeralY valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly 0 1) := by
  refine ⟨?_, ?_, ?_⟩
  · rw [two_eq_quotient_mk]
    apply (Ideal.Quotient.eq).mpr
    have h0 : MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])) -
        centreNormalPoly (2 : Polynomial S) 0 = 0 := by
      apply surfaceToCentrePoly.injective
      rw [map_sub, map_zero, surfaceToCentrePoly_C, surfaceToCentrePoly_normal,
        centreOfNormal_two]
      simp [map_natCast, map_ofNat]
    exact h0 ▸ Ideal.zero_mem _
  · rw [surfaceNumeralX, Nat.cast_zero]
    apply (Ideal.Quotient.eq).mpr
    have h0 : MvPolynomial.X (0 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (0 : ℤ_[2])) - centreNormalPoly X 0 = 0 := by
      apply surfaceToCentrePoly.injective
      rw [map_sub, map_sub, map_zero, surfaceToCentrePoly_X, surfaceToCentrePoly_C,
        surfaceToCentrePoly_normal, centreOfNormal_X]
      simp
    exact h0 ▸ Ideal.zero_mem _
  · rw [surfaceNumeralY, Nat.cast_zero]
    apply (Ideal.Quotient.eq).mpr
    have h0 : MvPolynomial.X (1 : Fin 2) -
        MvPolynomial.C (MvPolynomial.C (0 : ℤ_[2])) - centreNormalPoly 0 1 = 0 := by
      apply surfaceToCentrePoly.injective
      rw [map_sub, map_sub, map_zero, surfaceToCentrePoly_Y, surfaceToCentrePoly_C,
        surfaceToCentrePoly_normal, centreOfNormal_Y]
      simp
    exact h0 ▸ Ideal.zero_mem _

lemma coeff_centre_alpha (α1 α2 β3 : Polynomial S) (i : ℕ) :
    (((2 : Polynomial S) * α1 + X * α2 + X ^ 3 * β3 - (2 : Polynomial S) * β3).coeff i) =
      (2 : S) * α1.coeff i + (X * α2).coeff i + (X ^ 3 * β3).coeff i -
        (2 : S) * β3.coeff i := by
  have h2 : (2 : Polynomial S) = C (2 : S) := (C_eq_natCast 2).symm
  rw [h2]
  simp [coeff_add, coeff_sub, coeff_C_mul]

lemma coeff_centre_beta (β1 β2 α3 : Polynomial S) (i : ℕ) :
    (((2 : Polynomial S) * β1 + X * β2 + α3).coeff i) =
      (2 : S) * β1.coeff i + (X * β2).coeff i + α3.coeff i := by
  have h2 : (2 : Polynomial S) = C (2 : S) := (C_eq_natCast 2).symm
  rw [h2]
  simp [coeff_add, coeff_C_mul]

lemma twoAdic_alpha_step {n i : ℕ} {α1 α2 β3 : Polynomial S}
    (hα1 : twoAdicNormBound (centreAlphaBound n i) (α1.coeff i))
    (hβ3 : twoAdicNormBound (centreBetaBound n i) (β3.coeff i))
    (hα2 : ∀ j, twoAdicNormBound (centreAlphaBound n j) (α2.coeff j))
    (hβ3j : ∀ j, twoAdicNormBound (centreBetaBound n j) (β3.coeff j))
    (hi : i ≤ n) :
    twoAdicNormBound (centreAlphaBound (n + 1) i)
      (((2 : Polynomial S) * α1 + X * α2 + X ^ 3 * β3 -
          (2 : Polynomial S) * β3).coeff i) := by
  rw [coeff_centre_alpha]
  have ht1 : twoAdicNormBound (centreAlphaBound (n + 1) i) ((2 : S) * α1.coeff i) :=
    twoAdicNormBound_anti (centreAlpha_two_le n i hi) (twoAdicNormBound_two_mul hα1)
  have ht4 : twoAdicNormBound (centreAlphaBound (n + 1) i) ((2 : S) * β3.coeff i) := by
    rw [← centreBeta_two_eq n i hi]
    exact twoAdicNormBound_two_mul hβ3
  have ht2 : twoAdicNormBound (centreAlphaBound (n + 1) i) ((X * α2).coeff i) := by
    by_cases hi0 : i = 0
    · simp [hi0, coeff_X_mul_zero, twoAdicNormBound_zero]
    · obtain ⟨j, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hi0
      rw [coeff_X_mul]
      have hj : 1 ≤ j + 1 := Nat.succ_le_succ (Nat.zero_le _)
      have hn : j + 1 ≤ n := hi
      rw [← centreAlpha_shift n (j + 1) hj hn]
      simpa using hα2 j
  have ht3 : twoAdicNormBound (centreAlphaBound (n + 1) i) ((X ^ 3 * β3).coeff i) := by
    by_cases hi3 : 3 ≤ i
    · rw [coeff_X_pow_mul']
      simp only [hi3, if_true]
      exact twoAdicNormBound_anti (centreBeta_cube_ge n i hi3 hi) (hβ3j (i - 3))
    · rw [coeff_X_pow_mul']
      simp only [hi3, if_false, twoAdicNormBound_zero]
  exact twoAdicNormBound_sub (twoAdicNormBound_add (twoAdicNormBound_add ht1 ht2) ht3) ht4

lemma twoAdic_beta_step {n i : ℕ} {β1 β2 α3 : Polynomial S}
    (hβ1 : twoAdicNormBound (centreBetaBound n i) (β1.coeff i))
    (hβ2 : ∀ j, twoAdicNormBound (centreBetaBound n j) (β2.coeff j))
    (hα3 : twoAdicNormBound (centreAlphaBound n i) (α3.coeff i))
    (hi : i ≤ n) :
    twoAdicNormBound (centreBetaBound (n + 1) i)
      (((2 : Polynomial S) * β1 + X * β2 + α3).coeff i) := by
  rw [coeff_centre_beta]
  have htwo : centreBetaBound (n + 1) i ≤ centreBetaBound n i + 1 := by
    unfold centreBetaBound
    rw [nat_add_one_sub n i hi]
    generalize n - i = m
    calc (m + 1) / 2 ≤ (m + 2) / 2 := Nat.div_le_div_right (Nat.le_succ _)
      _ = m / 2 + 1 := (nat_div_two_add_one m).symm
  have ht1 : twoAdicNormBound (centreBetaBound (n + 1) i) ((2 : S) * β1.coeff i) :=
    twoAdicNormBound_anti htwo (twoAdicNormBound_two_mul hβ1)
  have ht2 : twoAdicNormBound (centreBetaBound (n + 1) i) ((X * β2).coeff i) := by
    by_cases hi0 : i = 0
    · simp [hi0, coeff_X_mul_zero, twoAdicNormBound_zero]
    · obtain ⟨j, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hi0
      rw [coeff_X_mul]
      have hj : 1 ≤ j + 1 := Nat.succ_le_succ (Nat.zero_le _)
      rw [← centreBeta_shift n (j + 1) hj hi]
      simpa using hβ2 j
  have ht3 : twoAdicNormBound (centreBetaBound (n + 1) i) (α3.coeff i) := by
    rw [← centreAlpha_eq_beta_succ n i hi]
    exact hα3
  exact twoAdicNormBound_add (twoAdicNormBound_add ht1 ht2) ht3

/-- If `α(X) + Y·β(X)` lies in `I^k` on `Y² = X³ − 2` at `(0, 0)`, then for every
`i` the coefficient of `X^i` in `α` has 2-adic norm at most `2^{−⌈(k−i)/2⌉}` and
the coefficient of `X^i` in `β` has norm at most `2^{−⌊(k−i)/2⌋}`. -/
theorem centreIdeal_power_coeff_bound {k : ℕ} {α β : Polynomial S}
    (h : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) ∈
        numeralCentreIdeal valuationOneCurve 0 0 ^ k) :
    ∀ i, twoAdicNormBound (centreAlphaBound k i) (α.coeff i) ∧
      twoAdicNormBound (centreBetaBound k i) (β.coeff i) := by
  induction k generalizing α β with
  | zero =>
      intro i
      have hA : centreAlphaBound 0 i = 0 := by
        unfold centreAlphaBound
        rw [Nat.zero_sub, zero_add]
      have hB : centreBetaBound 0 i = 0 := by
        unfold centreBetaBound
        rw [Nat.zero_sub]
      rw [hA, hB]
      exact ⟨twoAdicNormBound_of_bound_zero _, twoAdicNormBound_of_bound_zero _⟩
  | succ n ih =>
      intro i
      obtain ⟨z1, z2, z3, hz1, hz2, hz3, hz⟩ := mem_numeralCentre_pow_succ n |>.mp h
      obtain ⟨α1, β1, h1⟩ := exists_centreNormal z1
      obtain ⟨α2, β2, h2⟩ := exists_centreNormal z2
      obtain ⟨α3, β3, h3⟩ := exists_centreNormal z3
      have ih1 := ih (h1 ▸ hz1)
      have ih2 := ih (h2 ▸ hz2)
      have ih3 := ih (h3 ▸ hz3)
      set α' : Polynomial S :=
        (2 : Polynomial S) * α1 + X * α2 + X ^ 3 * β3 - (2 : Polynomial S) * β3
      set β' : Polynomial S := (2 : Polynomial S) * β1 + X * β2 + α3
      have hpoly :
          Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
              (centreNormalPoly α β) =
            Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
              (centreNormalPoly α' β') := by
        rw [hz, h1, h2, h3]
        rcases surface_generator_repr with ⟨hTwo, hX, hY⟩
        rw [hTwo, hX, hY]
        apply (Ideal.Quotient.eq).mpr
        have hdiff :
            centreNormalPoly (2 : Polynomial S) 0 * centreNormalPoly α1 β1 +
                centreNormalPoly X 0 * centreNormalPoly α2 β2 +
                centreNormalPoly 0 1 * centreNormalPoly α3 β3 -
                centreNormalPoly α' β' =
              surfaceToCentrePoly.symm (C β3) *
                surfacePolynomial valuationOneCurve := by
          apply surfaceToCentrePoly.injective
          rw [map_sub, map_add, map_add, map_mul, map_mul, map_mul, map_mul,
            surfaceToCentrePoly_normal, surfaceToCentrePoly_normal,
            surfaceToCentrePoly_normal, surfaceToCentrePoly_normal,
            surfaceToCentrePoly_normal, surfaceToCentrePoly_normal,
            surfaceToCentrePoly_normal,
            surfaceToCentrePoly_surfacePolynomial, AlgEquiv.apply_symm_apply,
            centreOfNormal_two, centreOfNormal_X, centreOfNormal_Y]
          have hα' : α' =
              (2 : Polynomial S) * α1 + X * α2 + X ^ 3 * β3 - (2 : Polynomial S) * β3 := rfl
          have hβ' : β' = (2 : Polynomial S) * β1 + X * β2 + α3 := rfl
          rw [hα', hβ', expand_normal]
          ring
        rw [hdiff]
        exact Ideal.mem_span_singleton.mpr ⟨surfaceToCentrePoly.symm (C β3), mul_comm _ _⟩
      rcases centreNormal_unique hpoly with ⟨rfl, rfl⟩
      by_cases hA : centreAlphaBound (n + 1) i = 0
      · refine ⟨hA ▸ twoAdicNormBound_of_bound_zero _, ?_⟩
        by_cases hB : centreBetaBound (n + 1) i = 0
        · exact hB ▸ twoAdicNormBound_of_bound_zero _
        · have hi2 := centreBetaBound_ne_zero_le hB
          have hin : i ≤ n := Nat.le_trans (Nat.le_succ i) (Nat.le_of_succ_le_succ hi2)
          exact twoAdic_beta_step (ih1 i).2 (fun j => (ih2 j).2) (ih3 i).1 hin
      · have hin : i ≤ n := Nat.le_of_lt_succ (centreAlphaBound_ne_zero_lt hA)
        refine ⟨twoAdic_alpha_step (ih1 i).1 (ih3 i).2 (fun j => (ih2 j).1)
            (fun j => (ih3 j).2) hin, ?_⟩
        by_cases hB : centreBetaBound (n + 1) i = 0
        · exact hB ▸ twoAdicNormBound_of_bound_zero _
        · exact twoAdic_beta_step (ih1 i).2 (fun j => (ih2 j).2) (ih3 i).1 hin

/-- A nonzero coefficient of `α` has `v₂ ≥ ⌈(k − i) / 2⌉`. -/
theorem centreIdeal_power_coeff_valuation_alpha {k : ℕ} {α β : Polynomial S}
    (h : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) ∈
        numeralCentreIdeal valuationOneCurve 0 0 ^ k)
    (i : ℕ) (m : Fin 2 →₀ ℕ)
    (hc : MvPolynomial.coeff m (α.coeff i) ≠ 0) :
    (centreAlphaBound k i : ℤ) ≤ (MvPolynomial.coeff m (α.coeff i)).valuation :=
  (PadicInt.norm_le_pow_iff_le_valuation _ hc _).mp
    ((centreIdeal_power_coeff_bound h i).1 m)

/-- A nonzero coefficient of `β` has `v₂ ≥ ⌊(k − i) / 2⌋`. -/
theorem centreIdeal_power_coeff_valuation_beta {k : ℕ} {α β : Polynomial S}
    (h : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) ∈
        numeralCentreIdeal valuationOneCurve 0 0 ^ k)
    (i : ℕ) (m : Fin 2 →₀ ℕ)
    (hc : MvPolynomial.coeff m (β.coeff i) ≠ 0) :
    (centreBetaBound k i : ℤ) ≤ (MvPolynomial.coeff m (β.coeff i)).valuation :=
  (PadicInt.norm_le_pow_iff_le_valuation _ hc _).mp
    ((centreIdeal_power_coeff_bound h i).2 m)

lemma coeff_X_pow_mul_X_cube_sub_one (m : ℕ) :
    (X ^ m * (X ^ 3 - 1 : Polynomial S)).coeff m = (-1 : S) := by
  rw [coeff_X_pow_mul']
  simp [coeff_sub, coeff_X_pow, coeff_one]

lemma not_twoAdicNormBound_neg_one : ¬ twoAdicNormBound 1 (-1 : S) := by
  intro h
  have hcoeff := h 0
  rw [show (-1 : S) = MvPolynomial.C (-1 : ℤ_[2]) by simp, MvPolynomial.coeff_C,
    if_pos rfl, norm_neg, norm_one] at hcoeff
  simp only [zpow_neg, zpow_natCast] at hcoeff
  norm_num at hcoeff

/-- `X^m · (X³ − 1) ∉ I^{m+1}` at `(0, 0)`. The coefficient of `X^m` is `-1`,
and `⌈((m + 1) − m) / 2⌉ = 1`. In particular `X⁴ − X ∉ I²`, and the same
polynomial lies outside every higher power `I^{m+2}`. -/
theorem centre_X_pow_mul_X_cube_sub_one_not_mem (m : ℕ) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (X ^ m * (X ^ 3 - 1)) 0) ∉
      numeralCentreIdeal valuationOneCurve 0 0 ^ (m + 1) := by
  intro h
  have hb := (centreIdeal_power_coeff_bound h m).1
  rw [coeff_X_pow_mul_X_cube_sub_one, centreAlphaBound_succ_self] at hb
  exact not_twoAdicNormBound_neg_one hb

#print axioms Beal.MathlibMissing.centreIdeal_power_coeff_bound
#print axioms Beal.MathlibMissing.centreIdeal_power_coeff_valuation_alpha
#print axioms Beal.MathlibMissing.centreIdeal_power_coeff_valuation_beta
#print axioms Beal.MathlibMissing.centre_X_pow_mul_X_cube_sub_one_not_mem

end Beal.MathlibMissing
