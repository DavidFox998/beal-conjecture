# Beal Conjecture — Lean 4 Formalization

[![beal-conjecture CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/build.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions)

Lean 4.12.0 + Mathlib — 20 bricks green, 0 sorry, trio only.

> **Build: #66 — 20 BRICKS GREEN 💚**
> ```
> ✔ Build all bricks 1m 40s [2329/2329]
> ✔ Check NO sorry — 0 sorry
> ✔ Check axioms are trio only — [propext]
> ✔ B14 REAL: p ∤ rad(ABC) → p ∤ N — [propext] only
> ✔ B08 REAL: dim S₂(Γ₀(2)) = 0
> ```

## What is Beal?

Beal's Conjecture (1997, $1M prize):
> If $A^x + B^y = C^z$ with $x,y,z > 2$ and $A,B,C \in \mathbb{N}_{>0}$,
> then $\gcd(A,B,C) > 1$.

```lean
def IsBealSolution (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  Nat.gcd A (Nat.gcd B C) = 1

def BealConjecture : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False

def FermatLastTheorem : Prop :=
  ∀ a b c n, n ≥ 3 → a>0 → b>0 → c>0 → ¬(a^n + b^n = c^n)

theorem beal_implies_fermat : BealConjecture → FermatLastTheorem
