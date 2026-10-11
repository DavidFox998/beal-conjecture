import Init

/-!
# Frey trace over `𝔽₉`

The definitions below are the point count used by the descent. They are in
this file so Ribet's axiom can name `freyTrace3` without an import cycle.
The computation is unchanged.
-/

namespace Cm32

/-- `𝔽₉ = 𝔽₃[i]`, with `i² = -1 ≡ 2`. -/
abbrev F9 := Nat × Nat

def f9Add (z w : F9) : F9 :=
  ((z.1 + w.1) % 3, (z.2 + w.2) % 3)

def f9Mul (z w : F9) : F9 :=
  ((z.1 * w.1 + 3 - z.2 * w.2 % 3) % 3, (z.1 * w.2 + z.2 * w.1) % 3)

def f9Sq (z : F9) : F9 :=
  f9Mul z z

def nY (z : F9) : Nat :=
  go 9
where go : Nat → Nat
  | 0 => 0
  | k + 1 =>
    let y : F9 := (k / 3, k % 3)
    (if f9Sq y = z then 1 else 0) + go k

def freyRhs (a b : Nat) (x : F9) : F9 :=
  let A : F9 := ((4 * a) % 3, 0)
  let B := f9Mul (2, 0) (f9Add ((a * a) % 3, 0) (0, (b * b) % 3))
  let xx := f9Sq x
  f9Add (f9Add (f9Mul xx x) (f9Mul A xx)) (f9Mul B x)

def affine3 (a b : Nat) : Nat :=
  go 9
where go : Nat → Nat
  | 0 => 0
  | k + 1 =>
    let x : F9 := (k / 3, k % 3)
    nY (freyRhs a b x) + go k

/-- Trace of the Frey model over `𝔽₉` at residues `a, b ∈ {0, 1, 2}`. -/
def freyTrace3 (a b : Nat) : Int :=
  10 - (1 + affine3 a b : Nat)

/-- Nonnegative residue of an integer mod `3`. -/
def mod3 (a : Int) : Nat :=
  (a % 3).toNat

end Cm32
