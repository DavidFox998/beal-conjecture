import Init
import DarmonMerel.«3_RibetLowering4413»

/-!
# Mazur's trick for `a⁴ + b⁴ = c¹³`

After level lowering, a newform `g ∈ S₂(Γ₀(n), ε)` is discarded by comparing
its Hecke eigenvalues with the Frey curve at auxiliary primes. Pacetti–Villagra,
Proposition 6.1, attach to each prime `q ∤ 13 n` and each pair `(a, b)` an
integer `B(q, g; a, b)`. Mazur's congruence says `13 ∣ B(q, g; a, b)`, hence
`13` divides the product `C(q, g)`.

For `d = 1` one has `Q₃ = Q₅ = ∅` (`Qmod_empty_d1`), so the Nebentypus `ε`
of Pacetti–Villagra §3 is the trivial character. In particular
`ε(q) = ε⁻¹(q) = 1`. The multiplicative-reduction branch is written with
`ε⁻¹(q)`, as in Proposition 6.1; the factor `ε(q)` gives the same integer.

## Splitting in `K = ℚ(√-1)`

An odd prime splits if and only if it is `1 (mod 4)`, and it is inert if and
only if it is `3 (mod 4)`. The prime `2` ramifies. The definitions below are
those congruences.

## Newforms at the lowered levels

LMFDB, trivial character (the character `ε` is trivial for `d = 1`):

* `S₂(Γ₀(32))`, label `32.2.a`, is the single newform `32.2.a.a`
  (dimension 1, coefficient field `ℚ`, CM discriminant `-4`).
* `S₂(Γ₀(64))`, label `64.2.a`, is the single newform `64.2.a.a`
  (dimension 1, coefficient field `ℚ`).

The dimension-2 form at level 64 is `64.2.b.a`, in the space `64.2.b` of
nontrivial character `χ₆₄(33, ·)`. It is not a newform of `S₂(Γ₀(64))`.
The same counts agree with the genus formula: `dim S₂(Γ₀(32)) = 1`, and
`dim S₂(Γ₀(64)) = 3` of which the old subspace has dimension 2.

## When the test is zero

If `C(q, g) = 0` for every auxiliary `q`, then `13 ∣ C(q, g)` as well, so
the product gives no bound on the residual prime. That divisibility is
`mazur_trick_4413`. Golfieri–Pacetti–Villagra identify the vanishing with
an elliptic curve over `K`; this file proves the divisibility.

## Citations

* Pacetti–Villagra Torcomian, *ℚ-curves, Hecke characters and some Diophantine
  equations*, arXiv:2007.11486, Proposition 6.1 and the product `C(q, g)` in §6.
* Pacetti, Dubrovnik, 19 June 2023, slide “When does the method fail?”.
* Franco Golfieri, Ariel Pacetti, and Lucas Villagra Torcomian, *On the
  equation `x² + d y⁶ = zᵖ` for square-free `1 ≤ d ≤ 20`*, 2021.
-/

/-- `q` splits in `ℚ(√-1)`: the odd-prime splitting law `q ≡ 1 (mod 4)`. -/
def splitsInK (q : ℕ) : Bool :=
  q % 4 == 1

/-- `q` is inert in `ℚ(√-1)`: the odd-prime splitting law `q ≡ 3 (mod 4)`. -/
def inertInK (q : ℕ) : Bool :=
  q % 4 == 3

example : splitsInK 5 = true := rfl
example : inertInK 7 = true := rfl
example : splitsInK 2 = false := rfl
example : inertInK 2 = false := rfl

/-- `ε(q)` for `d = 1`. The character is trivial, so the value is `1`. -/
def epsilon_d1 (_q : ℕ) : ℤ :=
  1

/-- `ε⁻¹(q)` for `d = 1`. The character is trivial, so the value is `1`. -/
def epsilonInv_d1 (_q : ℕ) : ℤ :=
  1

theorem epsilon_d1_eq_inv (q : ℕ) : epsilon_d1 q = epsilonInv_d1 q := rfl

/-- Field norm down to `ℤ`.

Proposition 6.1 writes `N(…)`. On the rational newforms `32.2.a.a` and
`64.2.a.a` the coefficient field is `ℚ`, so the norm is the identity.
-/
def Nm (z : ℤ) : ℤ :=
  z

/-- Mazur's integer `B(q, g; a, b)` from Pacetti–Villagra, Proposition 6.1.

`aE` and `chi` are the factors `a_𝔮(E)` and `χ(𝔮)` when `q` splits, and
`a_q(E)` and `χ(q)` when `q` is inert. `aG` is `a_q(g)`. `c` is the
coordinate in `a⁴ + b⁴ = c¹³`, used for the branch `q ∣ c`.

```text
q ∤ c and q splits:  N(a_q(E) χ(q) - a_q(g))
q ∤ c and q inert:   N(a_q(g)² - a_q(E) χ(q) - 2 q ε(q))
q ∣ c:               N(ε⁻¹(q) (q + 1)² - a_q(g)²)
```

The Hecke eigenvalues are arguments: they are not computed in this file.
The branch `q = 2`, where `2` ramifies and `2 ∤ c`, is outside the
proposition (`2` divides the lowered level) and returns `0`.
-/
def B_mazur {n : ℕ} (q : ℕ) (g : Newform n) (a b c aE chi aG : ℤ) : ℤ :=
  let _pair := (g, a, b)
  let qDvdC := decide (q ∣ c.natAbs)
  if splitsInK q && !qDvdC then
    Nm (aE * chi - aG)
  else if inertInK q && !qDvdC then
    Nm (aG ^ 2 - aE * chi - 2 * (q : ℤ) * epsilon_d1 q)
  else if qDvdC then
    Nm (epsilonInv_d1 q * ((q : ℤ) + 1) ^ 2 - aG ^ 2)
  else
    0

example : B_mazur 5 (Newform.mk : Newform 32) (1 : ℤ) 0 1 3 1 1 = 2 := rfl
example : B_mazur 7 (Newform.mk : Newform 64) (0 : ℤ) 1 1 1 1 2 = -11 := rfl
example : B_mazur 3 (Newform.mk : Newform 32) (1 : ℤ) 1 3 0 0 1 = 15 := rfl
example : B_mazur 2 (Newform.mk : Newform 32) (1 : ℤ) 0 1 0 0 0 = 0 := rfl

/-- Product of the first `k` values of `f`, empty product `1`. -/
def prodNat : ℕ → (ℕ → ℤ) → ℤ
  | 0, _ => 1
  | m + 1, f => prodNat m f * f m

/-- `C(q, g) = ∏_{(x, y) ∈ 𝔽_q²} B(q, g; x, y)`, with residues `0 ≤ x, y < q`.

Proposition 6.1 multiplies only the pairs that satisfy the Diophantine
equation modulo `q`. The product here runs over the whole plane, as in the
elimination sketch: if every factor vanishes, the restricted product vanishes.
-/
def C_mazur {n : ℕ} (q : ℕ) (_g : Newform n) (B : ℕ → ℕ → ℤ) : ℤ :=
  prodNat q fun x => prodNat q fun y => B x y

example : C_mazur 0 (Newform.mk : Newform 32) (fun _ _ => 0) = 1 := rfl

theorem prodNat_dvd (d : ℤ) (k : ℕ) (f : ℕ → ℤ)
    (hk : 0 < k) (h : ∀ i, i < k → d ∣ f i) : d ∣ prodNat k f := by
  induction k with
  | zero =>
    omega
  | succ k ih =>
    cases k with
    | zero =>
      have hf : d ∣ f 0 := h 0 (by omega)
      show d ∣ prodNat (Nat.succ 0) f
      rw [prodNat, prodNat, Int.one_mul]
      exact hf
    | succ k =>
      have hp : d ∣ prodNat (Nat.succ k) f :=
        ih (by omega) fun i hi => h i (Nat.lt_succ_of_lt hi)
      exact Int.dvd_trans hp (Int.dvd_mul_right _ (f (Nat.succ k)))

/-- If `13` divides every factor, then `13` divides `C(q, g)`. -/
theorem C_mazur_dvd {n : ℕ} (q : ℕ) (g : Newform n) (B : ℕ → ℕ → ℤ)
    (hq : 0 < q) (h : ∀ x y, x < q → y < q → (13 : ℤ) ∣ B x y) :
    (13 : ℤ) ∣ C_mazur q g B := by
  have hrow : ∀ x, x < q → (13 : ℤ) ∣ prodNat q (B x) :=
    fun x hx => prodNat_dvd 13 q (B x) hq fun y hy => h x y hx hy
  have outer : (13 : ℤ) ∣ prodNat q (fun x => prodNat q (B x)) :=
    prodNat_dvd 13 q (fun x => prodNat q (B x)) hq hrow
  simpa [C_mazur] using outer

/-- If `C(q, g) = 0` at every auxiliary prime, Mazur's congruence still holds.

`13 ∣ 0`, so a vanishing product does not give `13 ∤ C(q, g)`.
-/
theorem mazur_trick_4413 {n : ℕ} (_g : Newform n) (C : ℕ → ℤ)
    (hC : ∀ q : ℕ, 1 < q → ¬ (q ∣ 13 * n) → C q = 0) :
    ∀ q : ℕ, 1 < q → ¬ (q ∣ 13 * n) → (13 : ℤ) ∣ C q := by
  intro q hq hdiv
  rw [hC q hq hdiv]
  exact Int.dvd_zero 13

/-- Number of newforms in `S₂(Γ₀(32))`, LMFDB label `32.2.a.a`. -/
def s2Gamma0NewformCount32 : ℕ :=
  1

/-- Number of newforms in `S₂(Γ₀(64))`, LMFDB label `64.2.a.a`. -/
def s2Gamma0NewformCount64 : ℕ :=
  1

/-- Dimension of LMFDB `64.2.b.a` (nontrivial character), not of `S₂(Γ₀(64))`. -/
def s2Character64bDimension : ℕ :=
  2

example : s2Gamma0NewformCount32 = 1 := rfl
example : s2Gamma0NewformCount64 = 1 := rfl
example : s2Character64bDimension = 2 := rfl

/-- An elliptic curve over `K = ℚ(√-1)`. The Weierstrass model is not stored. -/
structure EllipticCurveK where

/-- `ρ_g = ρ_Ẽ` in the failure criterion of Mazur's test.

The relation in Golfieri–Pacetti–Villagra is the residual isomorphism
`ρ_{g, K, 13} ⊗ χ⁻¹ ≃ ρ_Ẽ`. The predicate is sealed.
-/
opaque ResidualEqual {n : ℕ} (_g : Newform n) (_Etilde : EllipticCurveK) : Prop := True
