import Init
import DarmonMerel.«4_MazurTrick4413»

/-!
# Mazur products for `32.2.a.a` and `64.2.a.a`

Both newforms have complex multiplication by `ℚ(√-1)` (LMFDB). For `d = 1`
the Nebentypus is trivial, so `ε(q) = ε⁻¹(q) = 1`, and `χ(𝔮) = ±1`.
At a split prime the norm in Proposition 6.1 is the identity on `ℤ`.

`q = 5` splits as `(2 + i)(2 - i)`. Reducing at `2 + i` gives `i ≡ -2 ≡ 3 (mod 5)`.
For each residue pair `(a, b)` the Frey model is

```text
y² = x³ + (4a) x² + 2(a² + b² i) x.
```

If `a⁴ + b⁴ ≡ 0 (mod 5)`, the branch is the multiplicative one,
`(5 + 1)² - a₅(g)²`. Otherwise `B` is `a₅(E) χ - a₅(g)`, with `a₅(E)` the
trace of Frobenius of that model over `𝔽₅`.

LMFDB q-expansions, trivial character:

* `32.2.a.a`: `q - 2q⁵ + 6q¹³ + …`, so `a₅ = -2`, `a₁₃ = 6`, and
  `a₃ = a₇ = a₁₁ = 0`.
* `64.2.a.a`: `q + 2q⁵ - 6q¹³ + …`, so `a₅ = 2`, `a₁₃ = -6`, and
  `a₃ = a₇ = a₁₁ = 0`.

The product `C(5, g)` is `0` for both forms and for both signs of `χ`.
`13 ∣ 0`, so the test `13 ∤ C(5, g)` does not eliminate either form.
That is the CM behaviour recorded by Pacetti–Villagra: the forms of the
trivial solutions pass Mazur's test at every auxiliary prime.

## Citations

* Pacetti–Villagra Torcomian, arXiv:2007.11486, Proposition 6.1.
* LMFDB, newforms `32.2.a.a` and `64.2.a.a`.
* Darmon–Merel, J. Reine Angew. Math. 490 (1997), §4: the lowered form of
  level `32` is the CM representation of `X₀(32) : Y² = X³ - X`.
-/

/-- Hecke coefficient `a_q` of LMFDB `32.2.a.a`. -/
def a_q_32 : ℕ → ℤ
  | 3 => 0
  | 5 => -2
  | 7 => 0
  | 11 => 0
  | 13 => 6
  | _ => 0

/-- Hecke coefficient `a_q` of LMFDB `64.2.a.a`. -/
def a_q_64 : ℕ → ℤ
  | 3 => 0
  | 5 => 2
  | 7 => 0
  | 11 => 0
  | 13 => -6
  | _ => 0

example : a_q_32 5 = -2 := rfl
example : a_q_64 5 = 2 := rfl
example : a_q_32 3 = 0 ∧ a_q_32 7 = 0 ∧ a_q_32 11 = 0 := by decide
example : a_q_32 13 = 6 ∧ a_q_64 13 = -6 := by decide

/-- Legendre symbol `(· / 5)`. -/
def legendre5 (x : ℕ) : ℤ :=
  match x % 5 with
  | 0 => 0
  | 1 => 1
  | 4 => 1
  | _ => -1

/-- Partial sum of `(f(x) / 5)` for `x = 0, …, fuel - 1`. -/
def trace5Aux : ℕ → ℕ → ℕ → ℤ
  | _, _, 0 => 0
  | A, B, k + 1 =>
    let x := k
    let f := (x * x * x + A * x * x + B * x) % 5
    legendre5 f + trace5Aux A B k

/-- Trace of Frobenius over `𝔽₅` of `y² = x³ + A x² + B x`. -/
def trace5 (A B : ℕ) : ℤ :=
  - trace5Aux A B 5

/-- `y² = x³ - x` has `a₅ = -2`, and `y² = x³ + x` has `a₅ = 2`. -/
example : trace5 0 4 = -2 := by native_decide
example : trace5 0 1 = 2 := by native_decide

/-- Proposition 6.1 at `q = 5`, with `ε = 1` and `χ(𝔮) = chi`.

`a` and `b` are residues in `𝔽₅`. The prime above `5` is `2 + i`, so `i ≡ 3`.
-/
def B_computable (chi ag : ℤ) (a b : ℕ) : ℤ :=
  let a := a % 5
  let b := b % 5
  if (a ^ 4 + b ^ 4) % 5 = 0 then
    Nm (((5 : ℤ) + 1) ^ 2 - ag ^ 2)
  else
    let A := (4 * a) % 5
    let Bv := (2 * (a ^ 2 + b ^ 2 * 3)) % 5
    Nm (trace5 A Bv * chi - ag)

/-- `C(5, g) = ∏_{(a, b) ∈ 𝔽₅²} B(5, g; a, b)`. -/
def C_q5 (chi ag : ℤ) : ℤ :=
  prodNat 5 fun a => prodNat 5 fun b => B_computable chi ag a b

/-- `C(5, 32.2.a.a) = 0` for `χ = 1`. -/
theorem winding_quotient_no_g_32 : C_q5 1 (a_q_32 5) = 0 := by
  native_decide

/-- `C(5, 64.2.a.a) = 0` for `χ = 1`. -/
theorem winding_quotient_no_g_64 : C_q5 1 (a_q_64 5) = 0 := by
  native_decide

/-- Both LMFDB signs and both choices `χ = ±1` give the zero product. -/
theorem C_q5_vanishes_both_signs :
    C_q5 1 (-2) = 0 ∧ C_q5 1 2 = 0 ∧
    C_q5 (-1) (-2) = 0 ∧ C_q5 (-1) 2 = 0 := by
  native_decide

/-- Neither candidate is removed by `13 ∤ C(5, g)`: the products are `0`. -/
theorem darmon_merel_elimination_4413 :
    C_q5 1 (a_q_32 5) = 0 ∧ C_q5 1 (a_q_64 5) = 0 := by
  have h32 := winding_quotient_no_g_32
  have h64 := winding_quotient_no_g_64
  exact ⟨h32, h64⟩

theorem C_q5_32_divisible_by_13 : (13 : ℤ) ∣ C_q5 1 (a_q_32 5) := by
  rw [winding_quotient_no_g_32]
  exact Int.dvd_zero 13

theorem C_q5_64_divisible_by_13 : (13 : ℤ) ∣ C_q5 1 (a_q_64 5) := by
  rw [winding_quotient_no_g_64]
  exact Int.dvd_zero 13
