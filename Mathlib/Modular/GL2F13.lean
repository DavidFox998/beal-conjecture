import Init

/-!
# `GL₂(𝔽₁₃)` : order `13` means a transvection

This file is matrix arithmetic over `𝔽₁₃`. It is not a Galois
representation, and it does not produce a term of `RhoE13Open`.

`RhoE13Open` is `opaque`. Lean does not generate an equation lemma, so
the defining body cannot be unfolded. The implication from
`Psi13HasNoQiRoot` and `ImageContainsSL2` to `RhoE13Open` is therefore
not a theorem. It is recorded in `Irreducibility13` as the open
proposition `rhoE13_open_of_psi`.

What is proved here:

* `transvection_classification_13`: a matrix with `M ^ 13 = 1` and
  `M ≠ 1` is conjugate in `GL₂(𝔽₁₃)` to `(1 1; 0 1)`.
* `normal_closure_contains_SL2`: every matrix of determinant `1` is a
  product of such conjugates. The conjugates are taken in the whole
  group `GL₂(𝔽₁₃)`.

`dickson_13_open` is the step that resists. An irreducible subgroup
which contains some element of order `13` contains `SL₂(𝔽₁₃)`. The
normal-closure theorem uses conjugates by matrices that need not lie in
the subgroup. Moving the fixed line of the transvection by an element of
the subgroup is not formalized.
-/

namespace GL2F13

theorem v0 : ((0 : Fin 13) : Nat) = 0 := by decide
theorem v1 : ((1 : Fin 13) : Nat) = 1 := by decide
theorem v2 : ((2 : Fin 13) : Nat) = 2 := by decide
theorem v3 : ((3 : Fin 13) : Nat) = 3 := by decide
theorem v4 : ((4 : Fin 13) : Nat) = 4 := by decide
theorem v5 : ((5 : Fin 13) : Nat) = 5 := by decide
theorem v6 : ((6 : Fin 13) : Nat) = 6 := by decide
theorem v7 : ((7 : Fin 13) : Nat) = 7 := by decide
theorem v8 : ((8 : Fin 13) : Nat) = 8 := by decide
theorem v9 : ((9 : Fin 13) : Nat) = 9 := by decide
theorem v10 : ((10 : Fin 13) : Nat) = 10 := by decide
theorem v11 : ((11 : Fin 13) : Nat) = 11 := by decide
theorem v12 : ((12 : Fin 13) : Nat) = 12 := by decide

theorem fin13_cases {P : Fin 13 → Prop}
    (h0 : P 0) (h1 : P 1) (h2 : P 2) (h3 : P 3) (h4 : P 4) (h5 : P 5)
    (h6 : P 6) (h7 : P 7) (h8 : P 8) (h9 : P 9) (h10 : P 10) (h11 : P 11)
    (h12 : P 12) (x : Fin 13) : P x := by
  have h : (x : Nat) = 0 ∨ (x : Nat) = 1 ∨ (x : Nat) = 2 ∨ (x : Nat) = 3 ∨
      (x : Nat) = 4 ∨ (x : Nat) = 5 ∨ (x : Nat) = 6 ∨ (x : Nat) = 7 ∨
      (x : Nat) = 8 ∨ (x : Nat) = 9 ∨ (x : Nat) = 10 ∨ (x : Nat) = 11 ∨
      (x : Nat) = 12 := by omega
  rcases h with h | h | h | h | h | h | h | h | h | h | h | h | h
  · have hx : x = 0 := Fin.ext (h.trans v0.symm); rw [hx]; exact h0
  · have hx : x = 1 := Fin.ext (h.trans v1.symm); rw [hx]; exact h1
  · have hx : x = 2 := Fin.ext (h.trans v2.symm); rw [hx]; exact h2
  · have hx : x = 3 := Fin.ext (h.trans v3.symm); rw [hx]; exact h3
  · have hx : x = 4 := Fin.ext (h.trans v4.symm); rw [hx]; exact h4
  · have hx : x = 5 := Fin.ext (h.trans v5.symm); rw [hx]; exact h5
  · have hx : x = 6 := Fin.ext (h.trans v6.symm); rw [hx]; exact h6
  · have hx : x = 7 := Fin.ext (h.trans v7.symm); rw [hx]; exact h7
  · have hx : x = 8 := Fin.ext (h.trans v8.symm); rw [hx]; exact h8
  · have hx : x = 9 := Fin.ext (h.trans v9.symm); rw [hx]; exact h9
  · have hx : x = 10 := Fin.ext (h.trans v10.symm); rw [hx]; exact h10
  · have hx : x = 11 := Fin.ext (h.trans v11.symm); rw [hx]; exact h11
  · have hx : x = 12 := Fin.ext (h.trans v12.symm); rw [hx]; exact h12

/-- Powers in `𝔽₁₃`. -/
def spow (a : Fin 13) : Nat → Fin 13
  | 0 => 1
  | n + 1 => spow a n * a

theorem fermat_0 : spow (0 : Fin 13) 13 = 0 := by decide
theorem fermat_1 : spow (1 : Fin 13) 13 = 1 := by decide
theorem fermat_2 : spow (2 : Fin 13) 13 = 2 := by decide
theorem fermat_3 : spow (3 : Fin 13) 13 = 3 := by decide
theorem fermat_4 : spow (4 : Fin 13) 13 = 4 := by decide
theorem fermat_5 : spow (5 : Fin 13) 13 = 5 := by decide
theorem fermat_6 : spow (6 : Fin 13) 13 = 6 := by decide
theorem fermat_7 : spow (7 : Fin 13) 13 = 7 := by decide
theorem fermat_8 : spow (8 : Fin 13) 13 = 8 := by decide
theorem fermat_9 : spow (9 : Fin 13) 13 = 9 := by decide
theorem fermat_10 : spow (10 : Fin 13) 13 = 10 := by decide
theorem fermat_11 : spow (11 : Fin 13) 13 = 11 := by decide
theorem fermat_12 : spow (12 : Fin 13) 13 = 12 := by decide

/-- Fermat: `x ^ 13 = x` in `𝔽₁₃`. -/
theorem fermat13 (x : Fin 13) : spow x 13 = x :=
  fin13_cases (P := fun x => spow x 13 = x)
    fermat_0 fermat_1 fermat_2 fermat_3 fermat_4 fermat_5 fermat_6
    fermat_7 fermat_8 fermat_9 fermat_10 fermat_11 fermat_12 x

def invNat : Nat → Fin 13
  | 0 => 0
  | 1 => 1
  | 2 => 7
  | 3 => 9
  | 4 => 10
  | 5 => 8
  | 6 => 11
  | 7 => 2
  | 8 => 5
  | 9 => 3
  | 10 => 4
  | 11 => 6
  | 12 => 12
  | _ => 0

def inv (a : Fin 13) : Fin 13 := invNat a.val

theorem inv_cancel_1 : (1 : Fin 13) * inv 1 = 1 := by decide
theorem inv_cancel_2 : (2 : Fin 13) * inv 2 = 1 := by decide
theorem inv_cancel_3 : (3 : Fin 13) * inv 3 = 1 := by decide
theorem inv_cancel_4 : (4 : Fin 13) * inv 4 = 1 := by decide
theorem inv_cancel_5 : (5 : Fin 13) * inv 5 = 1 := by decide
theorem inv_cancel_6 : (6 : Fin 13) * inv 6 = 1 := by decide
theorem inv_cancel_7 : (7 : Fin 13) * inv 7 = 1 := by decide
theorem inv_cancel_8 : (8 : Fin 13) * inv 8 = 1 := by decide
theorem inv_cancel_9 : (9 : Fin 13) * inv 9 = 1 := by decide
theorem inv_cancel_10 : (10 : Fin 13) * inv 10 = 1 := by decide
theorem inv_cancel_11 : (11 : Fin 13) * inv 11 = 1 := by decide
theorem inv_cancel_12 : (12 : Fin 13) * inv 12 = 1 := by decide

theorem mul_inv_cancel (a : Fin 13) (ha : a ≠ 0) : a * inv a = 1 := by
  have h := fin13_cases (P := fun a => a ≠ 0 → a * inv a = 1)
    (by intro h0; exact absurd rfl h0)
    (by intro _; exact inv_cancel_1)
    (by intro _; exact inv_cancel_2)
    (by intro _; exact inv_cancel_3)
    (by intro _; exact inv_cancel_4)
    (by intro _; exact inv_cancel_5)
    (by intro _; exact inv_cancel_6)
    (by intro _; exact inv_cancel_7)
    (by intro _; exact inv_cancel_8)
    (by intro _; exact inv_cancel_9)
    (by intro _; exact inv_cancel_10)
    (by intro _; exact inv_cancel_11)
    (by intro _; exact inv_cancel_12) a
  exact h ha

theorem inv_mul_cancel (a : Fin 13) (ha : a ≠ 0) : inv a * a = 1 := by
  rw [Fin.mul_comm, mul_inv_cancel a ha]

theorem add_mul13 (a b c : Fin 13) : (a + b) * c = a * c + b * c := by
  grind

theorem mul_eq_zero {a b : Fin 13} (h : a * b = 0) : a = 0 ∨ b = 0 := by
  by_cases ha : a = 0
  · exact Or.inl ha
  · right
    have h1 : inv a * (a * b) = 0 := by rw [h, Fin.mul_zero]
    rw [← Fin.mul_assoc, Fin.mul_comm (inv a) a, mul_inv_cancel a ha, Fin.one_mul] at h1
    exact h1

theorem sq_eq_zero {a : Fin 13} (h : a * a = 0) : a = 0 :=
  (mul_eq_zero h).elim id id

structure Mat2 where
  a : Fin 13
  b : Fin 13
  c : Fin 13
  d : Fin 13
deriving DecidableEq

def mul (M N : Mat2) : Mat2 where
  a := M.a * N.a + M.b * N.c
  b := M.a * N.b + M.b * N.d
  c := M.c * N.a + M.d * N.c
  d := M.c * N.b + M.d * N.d

def det (M : Mat2) : Fin 13 := M.a * M.d - M.b * M.c

def eye : Mat2 := ⟨1, 0, 0, 1⟩

def zero : Mat2 := ⟨0, 0, 0, 0⟩

def add (M N : Mat2) : Mat2 := ⟨M.a + N.a, M.b + N.b, M.c + N.c, M.d + N.d⟩

def sub (M N : Mat2) : Mat2 := ⟨M.a - N.a, M.b - N.b, M.c - N.c, M.d - N.d⟩

def smul (s : Fin 13) (M : Mat2) : Mat2 := ⟨s * M.a, s * M.b, s * M.c, s * M.d⟩

def trace (M : Mat2) : Fin 13 := M.a + M.d

/-- The standard transvection `(1 1; 0 1)`. -/
def u (t : Fin 13) : Mat2 := ⟨1, t, 0, 1⟩

/-- The lower transvection `(1 0; t 1)`. -/
def l (t : Fin 13) : Mat2 := ⟨1, 0, t, 1⟩

/-- The Weyl element `(0 -1; 1 0)`. -/
def w : Mat2 := ⟨0, 12, 1, 0⟩

/-- The nilpotent `(0 1; 0 0)`. -/
def e12 : Mat2 := ⟨0, 1, 0, 0⟩

def matInv (M : Mat2) : Mat2 :=
  let s := inv (det M)
  ⟨s * M.d, s * -M.b, s * -M.c, s * M.a⟩

def mpow : Mat2 → Nat → Mat2
  | _, 0 => eye
  | M, n + 1 => mul (mpow M n) M

def coeff (t : Fin 13) : Nat → Fin 13 × Fin 13
  | 0 => (1, 0)
  | n + 1 =>
    let p := coeff t n
    (-p.2, p.1 + p.2 * t)

theorem mul_assoc (A B C : Mat2) : mul (mul A B) C = mul A (mul B C) := by
  cases A; cases B; cases C
  simp [mul]
  grind

theorem mul_eye (A : Mat2) : mul A eye = A := by
  cases A
  simp [mul, eye]
  grind

theorem eye_mul (A : Mat2) : mul eye A = A := by
  cases A
  simp [mul, eye]
  grind

theorem det_mul (A B : Mat2) : det (mul A B) = det A * det B := by
  cases A; cases B
  simp [mul, det]
  grind

theorem det_eye : det eye = 1 := by
  simp [det, eye]

theorem det_pow (M : Mat2) (n : Nat) : det (mpow M n) = spow (det M) n := by
  induction n with
  | zero => simp [mpow, det, eye, spow]
  | succ n ih => rw [mpow, spow, det_mul, ih]

theorem det_eq_one_of_mpow13 (M : Mat2) (h : mpow M 13 = eye) : det M = 1 := by
  have hdet := det_pow M 13
  rw [h, det_eye] at hdet
  exact (fermat13 (det M)).symm.trans hdet.symm

theorem u_mul (s t : Fin 13) : mul (u s) (u t) = u (s + t) := by
  simp [mul, u]
  grind

theorem l_mul (s t : Fin 13) : mul (l s) (l t) = l (s + t) := by
  simp [mul, l]
  grind

theorem w_fact : mul (mul (u 12) (l 1)) (u 12) = w := by
  simp [mul, u, l, w]

theorem diag_fact (t s : Fin 13) (hs : s * t = 1) :
    mul (mul (mul (u t) (l (-s))) (u t)) w = ⟨t, 0, 0, s⟩ := by
  simp [mul, u, l, w]
  grind

theorem factor_c (a b c d s : Fin 13) (hs : s * c = 1) (hdet : a * d - b * c = 1) :
    mul (mul (mul (u (a * s)) w) ⟨c, 0, 0, s⟩) (u (d * s)) = ⟨a, b, c, d⟩ := by
  simp [mul, u, w]
  grind

theorem factor_c0 (a b d s : Fin 13) (hs : s * a = 1) (hdet : a * d = 1) :
    mul (u (a * b)) ⟨a, 0, 0, s⟩ = ⟨a, b, 0, d⟩ := by
  simp [mul, u]
  grind

theorem msq (M : Mat2) (hdet : det M = 1) :
    mul M M = sub (smul (trace M) M) eye := by
  cases M
  simp [mul, det, sub, smul, eye, trace] at hdet ⊢
  grind

theorem mul_add_right (A B C : Mat2) :
    mul (add A B) C = add (mul A C) (mul B C) := by
  cases A; cases B; cases C
  simp [mul, add]
  grind

theorem mul_smul_left (s : Fin 13) (A B : Mat2) :
    mul (smul s A) B = smul s (mul A B) := by
  cases A; cases B
  simp [mul, smul]
  grind

theorem mpow_lin (M : Mat2) (hdet : det M = 1) (n : Nat) :
    mpow M n =
      add (smul (coeff (trace M) n).1 eye) (smul (coeff (trace M) n).2 M) := by
  induction n with
  | zero =>
      cases M
      simp [mpow, coeff, add, smul, eye]
      grind
  | succ n ih =>
      rw [mpow, ih, mul_add_right, mul_smul_left, mul_smul_left, msq M hdet]
      cases M
      simp [mul, add, smul, sub, eye, trace, coeff] at *
      grind

theorem coeff_ne_0 : coeff (0 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_1 : coeff (1 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_eq_2 : coeff (2 : Fin 13) 13 = (1, 0) := by decide
theorem coeff_ne_3 : coeff (3 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_4 : coeff (4 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_5 : coeff (5 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_6 : coeff (6 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_7 : coeff (7 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_8 : coeff (8 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_9 : coeff (9 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_10 : coeff (10 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_11 : coeff (11 : Fin 13) 13 ≠ (1, 0) := by decide
theorem coeff_ne_12 : coeff (12 : Fin 13) 13 ≠ (1, 0) := by decide

/-- The Cayley–Hamilton recurrence at exponent `13` is `(1, 0)` only for trace `2`. -/
theorem coeff_trace (t : Fin 13) (h : coeff t 13 = (1, 0)) : t = 2 := by
  have hstep := fin13_cases (P := fun t => coeff t 13 = (1, 0) → t = 2)
    (by intro h; exact absurd h coeff_ne_0)
    (by intro h; exact absurd h coeff_ne_1)
    (by intro _; rfl)
    (by intro h; exact absurd h coeff_ne_3)
    (by intro h; exact absurd h coeff_ne_4)
    (by intro h; exact absurd h coeff_ne_5)
    (by intro h; exact absurd h coeff_ne_6)
    (by intro h; exact absurd h coeff_ne_7)
    (by intro h; exact absurd h coeff_ne_8)
    (by intro h; exact absurd h coeff_ne_9)
    (by intro h; exact absurd h coeff_ne_10)
    (by intro h; exact absurd h coeff_ne_11)
    (by intro h; exact absurd h coeff_ne_12) t
  exact hstep h

theorem unipotent_sq (M : Mat2) (hdet : det M = 1) (htr : trace M = 2) :
    mul (sub M eye) (sub M eye) = zero := by
  cases M
  simp [mul, sub, eye, det, trace, zero] at *
  grind

theorem add_zero (M : Mat2) : add M zero = M := by
  cases M
  simp [add, zero]

theorem smul_zero (M : Mat2) : smul 0 M = zero := by
  cases M
  simp [smul, zero]
  grind

theorem smul_one (M : Mat2) : smul 1 M = M := by
  cases M
  simp [smul]
  grind

theorem smul_eye_coeff (γ : Fin 13) (h : smul γ eye = eye) : γ = 1 := by
  have hentry := congrArg Mat2.a h
  simp [smul, eye, Fin.mul_one] at hentry
  exact hentry

theorem alpha_one_of_beta_zero (M : Mat2) (α β : Fin 13)
    (h : add (smul α eye) (smul β M) = eye) (hb : β = 0) : α = 1 := by
  rw [hb, smul_zero, add_zero] at h
  exact smul_eye_coeff α h

theorem mpow_scalar (lam : Fin 13) (n : Nat) :
    mpow (smul lam eye) n = smul (spow lam n) eye := by
  induction n with
  | zero =>
      simp [mpow, spow, smul, eye]
  | succ n ih =>
      rw [mpow, spow, ih]
      simp [mul, smul, eye]
      grind

theorem scalar_from_beta (M : Mat2) (α β : Fin 13)
    (h : add (smul α eye) (smul β M) = eye) (hb : β ≠ 0) :
    M = smul (inv β * (1 - α)) eye := by
  have hinv : inv β * β = 1 := inv_mul_cancel β hb
  have hb0 : β * M.b = 0 := by
    have hentry := congrArg Mat2.b h
    simp [add, smul, eye, Fin.mul_zero, Fin.zero_add] at hentry
    exact hentry
  have hc0 : β * M.c = 0 := by
    have hentry := congrArg Mat2.c h
    simp [add, smul, eye, Fin.mul_zero, Fin.zero_add] at hentry
    exact hentry
  have hbz : M.b = 0 := (mul_eq_zero hb0).resolve_left hb
  have hcz : M.c = 0 := (mul_eq_zero hc0).resolve_left hb
  cases M
  simp [add, smul, eye] at h ⊢
  grind

theorem eye_of_beta (M : Mat2) (α β : Fin 13)
    (h : add (smul α eye) (smul β M) = eye) (hb : β ≠ 0)
    (hpow : mpow M 13 = eye) : M = eye := by
  have hM := scalar_from_beta M α β h hb
  have hsc := mpow_scalar (inv β * (1 - α)) 13
  rw [← hM, hpow] at hsc
  have hγ : spow (inv β * (1 - α)) 13 = 1 := smul_eye_coeff _ hsc.symm
  rw [fermat13] at hγ
  rw [hγ, smul_one] at hM
  exact hM

def pC (N : Mat2) : Mat2 := ⟨N.a, 1, N.c, 0⟩

def pB (N : Mat2) : Mat2 := ⟨N.b, 0, N.d, 1⟩

theorem conj_c (N : Mat2) (hN : mul N N = zero) (hc : N.c ≠ 0) :
    det (pC N) ≠ 0 ∧ mul N (pC N) = mul (pC N) e12 := by
  cases N
  simp [mul, det, zero, e12, pC] at *
  grind

theorem conj_b (N : Mat2) (hN : mul N N = zero) (hb : N.b ≠ 0) :
    det (pB N) ≠ 0 ∧ mul N (pB N) = mul (pB N) e12 := by
  cases N
  simp [mul, det, zero, e12, pB] at *
  grind

theorem mul_inv_eye (M : Mat2) (h : det M ≠ 0) (hs : inv (det M) * det M = 1) :
    mul (matInv M) M = eye := by
  cases M
  simp [mul, matInv, det, eye] at *
  grind

theorem conj_shift (P N : Mat2) (hinv : mul (matInv P) P = eye)
    (h : mul N P = mul P e12) :
    mul (mul (matInv P) N) P = e12 := by
  calc
    mul (mul (matInv P) N) P = mul (matInv P) (mul N P) := by rw [mul_assoc]
    _ = mul (matInv P) (mul P e12) := by rw [h]
    _ = mul (mul (matInv P) P) e12 := by rw [mul_assoc]
    _ = mul eye e12 := by rw [hinv]
    _ = e12 := by rw [eye_mul]

theorem conj_unipotent (P N : Mat2) (hinv : mul (matInv P) P = eye) :
    mul (mul (matInv P) (add eye N)) P =
      add eye (mul (mul (matInv P) N) P) := by
  cases P; cases N
  simp [mul, matInv, add, eye] at *
  grind

theorem add_eye_sub (M : Mat2) : add eye (sub M eye) = M := by
  cases M
  simp [add, sub, eye]
  grind

theorem add_eye_e12 : add eye e12 = u 1 := by
  simp [add, eye, e12, u]

theorem sub_ne_of_ne (M : Mat2) (hne : M ≠ eye) : sub M eye ≠ zero := by
  intro h
  apply hne
  have hadd := add_eye_sub M
  rw [h, add_zero] at hadd
  exact hadd.symm

theorem nil_diagonal (N : Mat2) (hN : mul N N = zero) (hb : N.b = 0) (hc : N.c = 0) :
    N = zero := by
  have h11 : N.a * N.a = 0 := by
    have hentry := congrArg Mat2.a hN
    simp [mul, hb, hc, Fin.mul_zero, Fin.zero_mul, Fin.add_zero] at hentry
    exact hentry
  have h22 : N.d * N.d = 0 := by
    have hentry := congrArg Mat2.d hN
    simp [mul, hb, hc, Fin.mul_zero, Fin.zero_mul, Fin.add_zero] at hentry
    exact hentry
  have ha : N.a = 0 := sq_eq_zero h11
  have hd : N.d = 0 := sq_eq_zero h22
  have heta : N = ⟨N.a, N.b, N.c, N.d⟩ := by cases N; rfl
  rw [ha, hb, hc, hd] at heta
  simpa [zero] using heta

/-- `M ^ 13 = 1` and `M ≠ 1`. Since `13` is prime this is order `13`;
see `order_thirteen`. -/
def HasOrder13 (M : Mat2) : Prop :=
  mpow M 13 = eye ∧ M ≠ eye

/-- `P⁻¹ T P = (1 1; 0 1)`. -/
def IsConjugate (T : Mat2) : Prop :=
  ∃ P : Mat2, det P ≠ 0 ∧ mul (mul (matInv P) T) P = u 1

theorem mpow_add (M : Mat2) (m n : Nat) :
    mpow M (m + n) = mul (mpow M m) (mpow M n) := by
  induction n with
  | zero => simp [mpow, mul_eye]
  | succ n ih =>
      rw [Nat.add_succ, mpow, ih, mpow, mul_assoc]

theorem mpow_eye (n : Nat) : mpow eye n = eye := by
  induction n with
  | zero => rfl
  | succ n ih => rw [mpow, ih, mul_eye]

theorem mpow_mul_nat (M : Mat2) (n a : Nat) :
    mpow M (n * a) = mpow (mpow M n) a := by
  induction a with
  | zero => simp [mpow, Nat.mul_zero]
  | succ a ih => rw [Nat.mul_succ, mpow_add, ih, mpow]

theorem bezout13 (k : Nat) (hlt : k < 13) (h0 : 0 < k) :
    ∃ q, (invNat k).val * k = 13 * q + 1 := by
  have h : k = 1 ∨ k = 2 ∨ k = 3 ∨ k = 4 ∨ k = 5 ∨ k = 6 ∨ k = 7 ∨
      k = 8 ∨ k = 9 ∨ k = 10 ∨ k = 11 ∨ k = 12 := by omega
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨0, by decide⟩
  · exact ⟨1, by decide⟩
  · exact ⟨2, by decide⟩
  · exact ⟨3, by decide⟩
  · exact ⟨3, by decide⟩
  · exact ⟨5, by decide⟩
  · exact ⟨1, by decide⟩
  · exact ⟨3, by decide⟩
  · exact ⟨2, by decide⟩
  · exact ⟨3, by decide⟩
  · exact ⟨5, by decide⟩
  · exact ⟨11, by decide⟩

theorem no_smaller_exponent (M : Mat2) (h13 : mpow M 13 = eye) (k : Nat)
    (hk : mpow M k = eye) (h0 : 0 < k) (hlt : k < 13) : M = eye := by
  rcases bezout13 k hlt h0 with ⟨q, hq⟩
  have hcomm : (invNat k).val * k = k * (invNat k).val := Nat.mul_comm _ _
  have hleft : mpow M ((invNat k).val * k) = M := by
    rw [hq, mpow_add, mpow_mul_nat, h13, mpow_eye, eye_mul]
    simp [mpow, eye_mul]
  have hright : mpow M (k * (invNat k).val) = eye := by
    rw [mpow_mul_nat, hk, mpow_eye]
  rw [hcomm] at hleft
  exact hleft.symm.trans hright

/-- `M ^ 13 = 1` and `M ≠ 1` means the order is exactly `13`. -/
theorem order_thirteen (M : Mat2) (h : HasOrder13 M) (k : Nat)
    (h0 : 0 < k) (hlt : k < 13) : mpow M k ≠ eye := by
  intro hk
  exact h.2 (no_smaller_exponent M h.1 k hk h0 hlt)

theorem trace_two_of_order13 (M : Mat2) (h : HasOrder13 M) : trace M = 2 := by
  have hdet : det M = 1 := det_eq_one_of_mpow13 M h.1
  have hlin := mpow_lin M hdet 13
  rw [h.1] at hlin
  have hlin' := hlin.symm
  by_cases hb : (coeff (trace M) 13).2 = 0
  · have hα : (coeff (trace M) 13).1 = 1 :=
      alpha_one_of_beta_zero M _ _ hlin' hb
    exact coeff_trace (trace M) (Prod.ext hα hb)
  · exact absurd (eye_of_beta M _ _ hlin' hb h.1) h.2

theorem conjugate_of_nilpotent (M : Mat2) (hsq : mul (sub M eye) (sub M eye) = zero)
    (hne : M ≠ eye) : IsConjugate M := by
  let N := sub M eye
  have hN : N ≠ zero := sub_ne_of_ne M hne
  have hshift (P : Mat2) (hdetP : det P ≠ 0) (hcomm : mul N P = mul P e12) :
      mul (mul (matInv P) M) P = u 1 := by
    have hinv := mul_inv_eye P hdetP (inv_mul_cancel _ hdetP)
    have hE := conj_shift P N hinv hcomm
    have hM := conj_unipotent P N hinv
    rw [show add eye N = M from add_eye_sub M] at hM
    rw [hE, add_eye_e12] at hM
    exact hM
  by_cases hc : N.c = 0
  · by_cases hb : N.b = 0
    · exact absurd (nil_diagonal N hsq hb hc) hN
    · rcases conj_b N hsq hb with ⟨hdetP, hcomm⟩
      exact ⟨pB N, hdetP, hshift (pB N) hdetP hcomm⟩
  · rcases conj_c N hsq hc with ⟨hdetP, hcomm⟩
    exact ⟨pC N, hdetP, hshift (pC N) hdetP hcomm⟩

/-- Every element of order `13` in `GL₂(𝔽₁₃)` is conjugate to `(1 1; 0 1)`. -/
theorem transvection_classification_13 (M : Mat2) (h : HasOrder13 M) : IsConjugate M := by
  have hdet : det M = 1 := det_eq_one_of_mpow13 M h.1
  have htr : trace M = 2 := trace_two_of_order13 M h
  exact conjugate_of_nilpotent M (unipotent_sq M hdet htr) h.2

theorem ofNat_succ (n : Nat) : Fin.ofNat 13 (n + 1) = Fin.ofNat 13 n + 1 := by
  apply Fin.ext
  simp [Fin.ofNat, Fin.val_add]

theorem mpow_u (t : Fin 13) : ∀ n, mpow (u t) n = u (Fin.ofNat 13 n * t)
  | 0 => by
      simp [mpow, u, eye, Fin.ofNat, Fin.zero_mul]
  | n + 1 => by
      rw [mpow, mpow_u t n, u_mul, ofNat_succ, add_mul13, Fin.one_mul]

theorem mpow_l (t : Fin 13) : ∀ n, mpow (l t) n = l (Fin.ofNat 13 n * t)
  | 0 => by
      simp [mpow, l, eye, Fin.ofNat, Fin.zero_mul]
  | n + 1 => by
      rw [mpow, mpow_l t n, l_mul, ofNat_succ, add_mul13, Fin.one_mul]

theorem ofNat_13 : Fin.ofNat 13 13 = 0 := by decide

theorem u_zero : u 0 = eye := by
  simp [u, eye]

theorem l_zero : l 0 = eye := by
  simp [l, eye]

theorem u_order (t : Fin 13) (ht : t ≠ 0) : HasOrder13 (u t) := by
  refine ⟨?_, ?_⟩
  · rw [mpow_u, ofNat_13, Fin.zero_mul, u_zero]
  · intro h
    have hentry := congrArg Mat2.b h
    simp [u, eye] at hentry
    exact ht hentry

theorem l_order (t : Fin 13) (ht : t ≠ 0) : HasOrder13 (l t) := by
  refine ⟨?_, ?_⟩
  · rw [mpow_l, ofNat_13, Fin.zero_mul, l_zero]
  · intro h
    have hentry := congrArg Mat2.c h
    simp [l, eye] at hentry
    exact ht hentry

theorem u_or (t : Fin 13) : u t = eye ∨ IsConjugate (u t) := by
  by_cases ht : t = 0
  · exact Or.inl (by rw [ht, u_zero])
  · exact Or.inr (transvection_classification_13 (u t) (u_order t ht))

theorem l_or (t : Fin 13) : l t = eye ∨ IsConjugate (l t) := by
  by_cases ht : t = 0
  · exact Or.inl (by rw [ht, l_zero])
  · exact Or.inr (transvection_classification_13 (l t) (l_order t ht))

def listMul : List Mat2 → Mat2
  | [] => eye
  | T :: Ts => mul T (listMul Ts)

theorem listMul_append : ∀ L1 L2 : List Mat2,
    listMul (L1 ++ L2) = mul (listMul L1) (listMul L2)
  | [], L2 => by simp [listMul, eye_mul]
  | T :: Ts, L2 => by
      simp [listMul, listMul_append Ts L2, mul_assoc]

theorem listMul_singleton (A : Mat2) : listMul [A] = A := by
  simp [listMul, mul_eye]

def wWord : List Mat2 := [u 12, l 1, u 12]

def diagWord (t s : Fin 13) : List Mat2 :=
  [u t, l (-s), u t] ++ wWord

def sl2Word (M : Mat2) (s : Fin 13) : List Mat2 :=
  (([u (M.a * s)] ++ wWord) ++ diagWord M.c s) ++ [u (M.d * s)]

def sl2WordC0 (M : Mat2) (s : Fin 13) : List Mat2 :=
  [u (M.a * M.b)] ++ diagWord M.a s

theorem listMul_wWord : listMul wWord = w := by
  simp [listMul, wWord, mul_eye]
  rw [← mul_assoc]
  exact w_fact

theorem listMul_diagWord (t s : Fin 13) (hs : s * t = 1) :
    listMul (diagWord t s) = ⟨t, 0, 0, s⟩ := by
  rw [diagWord, listMul_append, listMul_wWord]
  simp [listMul, mul_eye]
  rw [← mul_assoc]
  exact diag_fact t s hs

theorem listMul_sl2Word (M : Mat2) (s : Fin 13) (hs : s * M.c = 1) (hdet : det M = 1) :
    listMul (sl2Word M s) = M := by
  rw [sl2Word, listMul_append, listMul_append, listMul_append,
    listMul_singleton, listMul_wWord, listMul_diagWord _ _ hs, listMul_singleton]
  have hdet' : M.a * M.d - M.b * M.c = 1 := by simpa [det] using hdet
  simpa using factor_c M.a M.b M.c M.d s hs hdet'

theorem a_ne_of_c0 (M : Mat2) (hdet : det M = 1) (hc : M.c = 0) : M.a ≠ 0 := by
  intro ha
  simp [det, hc, ha] at hdet
  grind

theorem listMul_sl2WordC0 (M : Mat2) (s : Fin 13) (hs : s * M.a = 1)
    (hdet : det M = 1) (hc : M.c = 0) : listMul (sl2WordC0 M s) = M := by
  rw [sl2WordC0, listMul_append, listMul_singleton, listMul_diagWord _ _ hs]
  have hdet' : M.a * M.d = 1 := by
    simp [det, hc] at hdet
    grind
  have hM : M = ⟨M.a, M.b, 0, M.d⟩ := by
    have heta : M = ⟨M.a, M.b, M.c, M.d⟩ := by cases M; rfl
    rw [hc] at heta
    exact heta
  rw [hM]
  exact factor_c0 M.a M.b M.d s hs hdet'

def AllElem : List Mat2 → Prop
  | [] => True
  | T :: Ts => ((∃ t, T = u t) ∨ (∃ t, T = l t)) ∧ AllElem Ts

theorem all_append : ∀ L1 L2, AllElem L1 → AllElem L2 → AllElem (L1 ++ L2)
  | [], _, _, h2 => h2
  | T :: Ts, L2, h1, h2 => by
      rcases h1 with ⟨hT, hTs⟩
      exact ⟨hT, all_append Ts L2 hTs h2⟩

theorem all_u (t : Fin 13) : AllElem [u t] :=
  ⟨Or.inl ⟨t, rfl⟩, trivial⟩

theorem wWord_all : AllElem wWord :=
  ⟨Or.inl ⟨12, rfl⟩, ⟨Or.inr ⟨1, rfl⟩, ⟨Or.inl ⟨12, rfl⟩, trivial⟩⟩⟩

theorem diagWord_all (t s : Fin 13) : AllElem (diagWord t s) :=
  all_append _ _ ⟨Or.inl ⟨t, rfl⟩, ⟨Or.inr ⟨-s, rfl⟩, ⟨Or.inl ⟨t, rfl⟩, trivial⟩⟩⟩
    wWord_all

theorem sl2Word_all (M : Mat2) (s : Fin 13) : AllElem (sl2Word M s) := by
  rw [sl2Word]
  exact all_append _ _ (all_append _ _ (all_append _ _ (all_u _) wWord_all)
    (diagWord_all _ _)) (all_u _)

theorem sl2WordC0_all (M : Mat2) (s : Fin 13) : AllElem (sl2WordC0 M s) := by
  rw [sl2WordC0]
  exact all_append _ _ (all_u _) (diagWord_all _ _)

theorem ul_or (T : Mat2) (h : (∃ t, T = u t) ∨ (∃ t, T = l t)) :
    T = eye ∨ IsConjugate T := by
  rcases h with ⟨t, rfl⟩ | ⟨t, rfl⟩
  · exact u_or t
  · exact l_or t

theorem allElem_or : ∀ L, AllElem L → ∀ T, T ∈ L → T = eye ∨ IsConjugate T
  | [], _, _, h => by simp at h
  | A :: As, hL, T, hT => by
      rcases hL with ⟨hA, hAs⟩
      rw [List.mem_cons] at hT
      rcases hT with hTA | hT
      · rw [← hTA] at hA
        exact ul_or T hA
      · exact allElem_or As hAs T hT

def strip : List Mat2 → List Mat2
  | [] => []
  | T :: Ts => if T = eye then strip Ts else T :: strip Ts

theorem listMul_strip : ∀ L, listMul (strip L) = listMul L
  | [] => rfl
  | T :: Ts => by
      by_cases h : T = eye
      · simp [strip, h, listMul, eye_mul, listMul_strip Ts]
      · simp [strip, h, listMul, listMul_strip Ts]

theorem strip_conj : ∀ L, (∀ T, T ∈ L → T = eye ∨ IsConjugate T) →
    ∀ T, T ∈ strip L → IsConjugate T
  | [], _, _, h => by simp [strip] at h
  | A :: As, hL, T, hT => by
      by_cases hA : A = eye
      · simp [strip, hA] at hT
        exact strip_conj As (fun U hU => hL U (List.mem_cons_of_mem A hU)) T hT
      · simp [strip, hA, List.mem_cons] at hT
        rcases hT with hTA | hT
        · rcases hL A List.mem_cons_self with hAe | hAc
          · exact absurd hAe hA
          · rw [hTA]
            exact hAc
        · exact strip_conj As (fun U hU => hL U (List.mem_cons_of_mem A hU)) T hT

theorem product_of_word (M : Mat2) (s : Fin 13) (hs : s * M.c = 1) (hdet : det M = 1) :
    ∃ L, (∀ T, T ∈ L → IsConjugate T) ∧ listMul L = M := by
  refine ⟨strip (sl2Word M s), ?_, ?_⟩
  · exact strip_conj _ (allElem_or _ (sl2Word_all M s))
  · rw [listMul_strip, listMul_sl2Word M s hs hdet]

theorem product_of_word_c0 (M : Mat2) (s : Fin 13) (hs : s * M.a = 1)
    (hdet : det M = 1) (hc : M.c = 0) :
    ∃ L, (∀ T, T ∈ L → IsConjugate T) ∧ listMul L = M := by
  refine ⟨strip (sl2WordC0 M s), ?_, ?_⟩
  · exact strip_conj _ (allElem_or _ (sl2WordC0_all M s))
  · rw [listMul_strip, listMul_sl2WordC0 M s hs hdet hc]

/-- The normal closure of `(1 1; 0 1)` in `GL₂(𝔽₁₃)` contains `SL₂(𝔽₁₃)`.

Every determinant-`1` matrix equals a product of `GL₂`-conjugates of the
standard transvection. Conjugates are by arbitrary invertible matrices,
not by elements of a proper subgroup.
-/
theorem normal_closure_contains_SL2 (M : Mat2) (hdet : det M = 1) :
    ∃ L : List Mat2, (∀ T, T ∈ L → IsConjugate T) ∧ listMul L = M := by
  by_cases hc : M.c = 0
  · have ha : M.a ≠ 0 := a_ne_of_c0 M hdet hc
    exact product_of_word_c0 M (inv M.a) (inv_mul_cancel M.a ha) hdet hc
  · exact product_of_word M (inv M.c) (inv_mul_cancel M.c hc) hdet

def apply (M : Mat2) (v : Fin 13 × Fin 13) : Fin 13 × Fin 13 :=
  (M.a * v.1 + M.b * v.2, M.c * v.1 + M.d * v.2)

def OnLine (v w : Fin 13 × Fin 13) : Prop :=
  ∃ s : Fin 13, w = (s * v.1, s * v.2)

def Subgroup (G : Mat2 → Prop) : Prop :=
  G eye ∧
    (∀ A B, G A → G B → G (mul A B)) ∧
      (∀ A, G A → det A ≠ 0) ∧
        (∀ A, G A → G (matInv A))

def FixesLine (G : Mat2 → Prop) (v : Fin 13 × Fin 13) : Prop :=
  v ≠ (0, 0) ∧ ∀ M, G M → OnLine v (apply M v)

/-- Dickson's step, not proved.

An `𝔽₁₃`-irreducible subgroup of `GL₂(𝔽₁₃)` that contains an element of
order `13` contains every determinant-`1` matrix. Irreducibility is the
absence of an invariant line over `𝔽₁₃`. A nonsplit Cartan has order
dividing `13² - 1 = 168`, which is not divisible by `13`, so an element
of order `13` does not sit in a subgroup that is irreducible over `𝔽₁₃`
and reducible over an extension. The generation proof above uses
conjugates from the ambient group. It does not move the fixed line
inside an arbitrary subgroup.

This proposition is not an axiom and not `sorry`. It does not produce
`RhoE13Open`.
-/
def dickson_13_open : Prop :=
  ∀ G : Mat2 → Prop, Subgroup G →
    (¬ ∃ v, FixesLine G v) →
      (∃ M, G M ∧ HasOrder13 M) →
        ∀ S, det S = 1 → G S

end GL2F13
