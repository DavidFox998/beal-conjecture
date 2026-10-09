import Init
import DarmonMerel.«5_WindingQuotient4413»

/-!
# Winding element at levels 32 and 64

`winding_elimination_4413` is a theorem. It is the numerical half of
Merel's formal-immersion test at `q = 5`:

```text
(T_5 - (5 + 1)) {0, ∞}  ≢  0   (mod 13)
```

on the plus modular symbols of `Γ₀(32)` and `Γ₀(64)`. Both vectors are
nonzero already over `ℤ`.

The matrices are the Hecke operator `T_5` on
`ModularSymbols(N, 2, sign = +1)`, written on the basis below.
Manin symbols are `ℙ¹(ℤ/Nℤ)`. The relations are

```text
(c, d) + (d, -c) = 0
(c, d) + (d, -c-d) + (-c-d, c) = 0
(c, d) - (-c, d) = 0
```

The last line is the star involution, so the quotient is the plus
space. `T_5` is the sum over the Cremona–Heilbronn matrices of
determinant `5`. `{0, ∞}` is the class of the Manin symbol `(0, 1)`.

Checked against the weight-2 newforms:

* level `11`: dimensions `(3, 2, 1)` for signs `(0, +1, -1)`, and
  `T_5` has eigenvalues `1` and `6` on the plus space (`11a` has
  `a₅ = 1`; `6 = 5 + 1` is the Eisenstein eigenvalue);
* level `32`: full dimension `9 = 2·1 + 8 - 1`, and `a₅ = -2` occurs
  once, which is LMFDB `32.2.a.a`;
* level `64`: full dimension `17 = 2·3 + 12 - 1`, and `a₅ = 2` occurs
  once, which is LMFDB `64.2.a.a`.

`(T_5 - 6) e ≠ 0` does not contradict `a⁴ + b⁴ = c¹³`. Darmon–Merel
still need the map from the modular curve to the winding quotient and
Lemma 8.2. Those are not decided by these matrices. This file does not
prove `False`.

## Citations

* Henri Darmon and Loïc Merel, *Winding quotients and some variants of
  Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), 81–100.
  Section 7 (winding element `e`), §8 Lemma 8.2.
* William Stein, *Modular Forms, a Computational Approach*, Chapter 3
  and Chapter 8 (Manin symbols, Heilbronn matrices).
-/

/-- `s` with `(s * u) % N = Nat.gcd u N`, the smallest such `s < N`. -/
def bezoutMod (u N : Nat) : Nat × Nat :=
  let g := Nat.gcd u N
  let rec find (fuel s : Nat) : Nat :=
    match fuel with
    | 0 => 0
    | fuel + 1 => if (s * u) % N = g then s else find fuel (s + 1)
  (g, find N 0)

/-- Walk `s ↦ s + N/g` until `gcd(s, N) = 1`. -/
def forceCoprime (s N g : Nat) : Nat :=
  let d := if g = 0 then 0 else N / g
  let rec go (fuel s : Nat) : Nat :=
    match fuel with
    | 0 => s
    | fuel + 1 => if Nat.gcd s N = 1 then s else go fuel ((s + d) % N)
  if g = 1 then s else go (g + 1) s

/-- Canonical second coordinate on the `g` associates, as in Sage's `P1List`. -/
def minimizeV (v N g : Nat) : Nat :=
  if g ≤ 1 then v
  else
    let Ng := N / g
    let vNg := (v * Ng) % N
    let rec go (fuel t vv minV : Nat) : Nat :=
      match fuel with
      | 0 => minV
      | fuel + 1 =>
        let vv' := (vv + vNg) % N
        let t' := (t + Ng) % N
        let minV' := if vv' < minV && Nat.gcd t' N = 1 then vv' else minV
        go fuel t' vv' minV'
    go (g - 1) 1 v v

/-- Canonical representative of `(u : v)` in `ℙ¹(ℤ/Nℤ)`.

`none` when `gcd(u, v, N) ≠ 1`.
-/
def p1Normalize (N u v : Nat) : Option (Nat × Nat) :=
  if N = 0 then none
  else
    let u := u % N
    let v := v % N
    if u = 0 then
      if Nat.gcd v N = 1 then some (0, 1) else none
    else
      let (g, s0) := bezoutMod u N
      if Nat.gcd g v ≠ 1 then none
      else
        let s := if g = 1 then s0 else forceCoprime s0 N g
        some (g % N, minimizeV ((s * v) % N) N g)

/-- The set `ℙ¹(ℤ/Nℤ)`, listed without repetition. -/
def p1Symbols (N : Nat) : List (Nat × Nat) :=
  (List.range N).foldl (init := []) fun acc u =>
    (List.range N).foldl (init := acc) fun acc v =>
      match p1Normalize N u v with
      | none => acc
      | some r => if acc.contains r then acc else acc ++ [r]

/-- Sage's example: `p1_normalize(90, 7, 77) = (1, 11)`. -/
theorem p1_normalize_90_7_77 : p1Normalize 90 7 77 = some (1, 11) := by
  native_decide

/-- Sage's example: `p1_normalize(90, 7, 78) = (1, 24)`. -/
theorem p1_normalize_90_7_78 : p1Normalize 90 7 78 = some (1, 24) := by
  native_decide

/-- `|ℙ¹(ℤ/32ℤ)| = 32 · (1 + 1/2) = 48`. -/
theorem p1_card_32 : (p1Symbols 32).length = 48 := by
  native_decide

/-- `|ℙ¹(ℤ/64ℤ)| = 64 · (1 + 1/2) = 96`. -/
theorem p1_card_64 : (p1Symbols 64).length = 96 := by
  native_decide

/-- Plus-space basis at level `32`.

Free Manin symbols after the relations, in enumeration order:
`(1,0), (2,15), (4,5), (4,7), (8,3), (16,1)`.
-/
def basis32 : List (Nat × Nat) :=
  [(1, 0), (2, 15), (4, 5), (4, 7), (8, 3), (16, 1)]

/-- Plus-space basis at level `64`.

`(1,0), (2,31), (4,9), (4,11), (4,13), (4,15), (8,5), (8,7), (16,3), (32,1)`.
-/
def basis64 : List (Nat × Nat) :=
  [(1, 0), (2, 31), (4, 9), (4, 11), (4, 13), (4, 15), (8, 5), (8, 7), (16, 3), (32, 1)]

theorem basis32_length : basis32.length = 6 := by decide

theorem basis64_length : basis64.length = 10 := by decide

/-- `{0, ∞}` in the level-`32` plus basis. It equals `-(1, 0)`. -/
def e32 : List ℤ := [-1, 0, 0, 0, 0, 0]

/-- `{0, ∞}` in the level-`64` plus basis. It equals `-(1, 0)`. -/
def e64 : List ℤ := [-1, 0, 0, 0, 0, 0, 0, 0, 0, 0]

/-- `T_5` on the level-`32` plus space, rows in `basis32`. -/
def T5_32 : List (List ℤ) := [
  [6, 0, 0, 0, 0, 0],
  [0, 6, 0, 0, 0, 0],
  [-4, 8, 2, 4, 0, -4],
  [4, -8, 4, 2, 0, 4],
  [0, 0, 0, 0, 6, 0],
  [0, 0, 0, 0, 0, 6]
]

/-- `T_5` on the level-`64` plus space, rows in `basis64`. -/
def T5_64 : List (List ℤ) := [
  [6, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 6, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, -4, 0, 2, 2, 2, 1, -1, 2, -4],
  [-2, 0, 0, 2, 0, 4, -1, 1, -2, 2],
  [-2, 8, 4, 0, 2, 0, 1, -1, -2, 2],
  [4, -4, 2, 2, 2, 0, -1, 1, 2, 0],
  [0, 0, 0, 0, 0, 0, 0, 6, 0, 0],
  [0, 0, 0, 0, 0, 0, 6, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 6, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 6]
]

def intDot (row v : List ℤ) : ℤ :=
  row.zip v |>.foldl (init := 0) fun s (x, y) => s + x * y

def matVec (rows : List (List ℤ)) (v : List ℤ) : List ℤ :=
  rows.map (intDot · v)

def vecScale (k : ℤ) (v : List ℤ) : List ℤ :=
  v.map (k * ·)

def vecSub (a b : List ℤ) : List ℤ :=
  a.zip b |>.map fun (x, y) => x - y

/-- `(T_5 - (5 + 1)) v`. -/
def t5Minus6 (T : List (List ℤ)) (v : List ℤ) : List ℤ :=
  vecSub (matVec T v) (vecScale 6 v)

/-- True when some coordinate is nonzero modulo `m`. -/
def nonzeroMod (m : ℤ) (v : List ℤ) : Bool :=
  v.any fun x => x % m != 0

/-- Cuspidal eigenvector for `a₅(32.2.a.a) = -2`. -/
def eig32 : List ℤ := [0, 0, -1, 1, 0, 0]

/-- Cuspidal eigenvector for `a₅(64.2.a.a) = 2`. -/
def eig64 : List ℤ := [0, 0, 0, -1, 1, 0, 0, 0, 0, 0]

theorem t5_32_on_newform : matVec T5_32 eig32 = vecScale (-2) eig32 := by
  native_decide

theorem t5_64_on_newform : matVec T5_64 eig64 = vecScale 2 eig64 := by
  native_decide

theorem t5_minus6_e32 : t5Minus6 T5_32 e32 = [0, 0, 4, -4, 0, 0] := by
  native_decide

theorem t5_minus6_e64 : t5Minus6 T5_64 e64 = [0, 0, 0, 2, 2, -4, 0, 0, 0, 0] := by
  native_decide

/-- Merel's test at level `32`: `(T_5 - 6) e ≢ 0 (mod 13)`. -/
theorem t5_e32_not_zero_mod13 : nonzeroMod 13 (t5Minus6 T5_32 e32) = true := by
  native_decide

/-- Merel's test at level `64`: `(T_5 - 6) e ≢ 0 (mod 13)`. -/
theorem t5_e64_not_zero_mod13 : nonzeroMod 13 (t5Minus6 T5_64 e64) = true := by
  native_decide

/-- Formal-immersion numbers for the two CM levels.

The hypotheses are the ones the old axiom took: a nonzero solution, a
modular Frey curve, a lowered newform, the levels `32` and `64`, and
the Mazur products `C(5, g) = 0`. The conclusion is only
`(T_5 - 6) e ≢ 0 (mod 13)` at both levels. Those products vanish and
the winding vector is still nonzero mod `13`; the two facts sit
together, and neither one is `False`.

Citation: Darmon–Merel 1997, §7 and Lemma 8.2. The lemma's map
`X₀(N) → J_e` is not constructed here.
-/
theorem winding_elimination_4413
    (a b c : ℤ) (_ha : a ≠ 0) (_hb : b ≠ 0)
    (_h_eq : a ^ 4 + b ^ 4 = c ^ 13)
    (E : FreyCurve4413) {n : ℕ} (_g : Newform n)
    (_hMod : Modular E) (_hLow : LevelLowered E _g)
    (_hLevels : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64)
    (_hC32 : C_q5 1 (a_q_32 5) = 0)
    (_hC64 : C_q5 1 (a_q_64 5) = 0) :
    nonzeroMod 13 (t5Minus6 T5_32 e32) = true ∧
      nonzeroMod 13 (t5Minus6 T5_64 e64) = true :=
  ⟨t5_e32_not_zero_mod13, t5_e64_not_zero_mod13⟩
