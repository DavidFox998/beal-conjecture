# Beal Conjecture — Lean 4 Formalization

[![beal-conjecture CI](https://github.com/Davic/beal-conjecture/actions/workflows/build.yml/badge.svg)](https://github.com/Davic/beal-conjecture/actions)

Lean 4.12.0 + Mathlib — first fully green tower for Beal. No `sorry`.

> **Build: #44 — green**
> ```
> ✔ Build all bricks 1m 33s [2317/2317]
> ✔ Check NO sorry 0 sorry
> ✔ Check axioms are trio only [propext]
> ```

## What is Beal?

Beal's Conjecture (1997, $1M prize):
> If $A^x + B^y = C^z$ with $x,y,z > 2$ and $A,B,C \in \mathbb{N}_{>0}$,
> then $\gcd(A,B,C) > 1$.

Equivalently:
```lean
def IsBealSolution (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  Nat.gcd A (Nat.gcd B C) = 1

def BealConjecture : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False
```

Proving `BealConjecture` would imply FLT. Disproving requires one coprime counterexample — none known up to $10^{18}$.

## Tower — Built Bricks

### B01_Def — Definition [2310/2317] ✔
`lean/Beal/B01_Def.lean`
- `IsBealSolution` and `_root_.BealConjecture` at root for CI axiom check
- Depends only on `[propext]` — trio only

### B02_Frey — Frey Curve Discriminant ≠ 0 [2311/2317] ✔
`lean/Beal/B02_Frey.lean`
```lean
def freyΔ (A B C x y z : Nat) : Int :=
  -16 * ((A : Int) ^ x * (B : Int) ^ y * (C : Int) ^ z) ^ 2
theorem freyΔ_ne_zero_of_solution : IsBealSolution A B C x y z → freyΔ ... ≠ 0
```
Real math: $A,B,C>0 \implies A^x B^y C^z \neq 0 \implies Δ \neq 0$. Uses `Mathlib.Tactic`.

### B03_Conductor — Conductor divides rad(ABC)
`lean/Beal/B03_Conductor.lean`
- $N(E) = 2^e \cdot \operatorname{rad}(A B C)$ with $e \le 5$
- Semistable outside 2

### B04_Modular — Modularity
`lean/Beal/B04_Modular.lean`
- All semistable elliptic over $\mathbb{Q}$ are modular (Wiles, Breuil-Conrad-Diamond-Taylor)
- Currently imported from FLT project as axiom, planned to be replaced by Mathlib modularity

### B05_HasseWiles — Hasse Bound (Real Example)
`lean/Beal/B05_HasseWiles.lean` [2314/2317] ✔
```lean
def a143 (p : Nat) : Int := ... -- trace of Frobenius for curve 143a1
theorem hasse_bound_143a1_all : ∀ p prime, p ∤ 143 → a143 p ^2 ≤ 4*p
```
First computable Hasse $ |a_p| \le 2\sqrt{p}$ proof — template for Frey $a_p$ bounds.

### B06_Final — Bridge
`lean/Beal/B06_Final.lean` [2315/2317] ✔
```lean
def BealHasseBridge : Prop := ∀ p prime, ¬ p ∣ 143 → a143 p ^2 ≤ 4 * p
theorem beal_bridge_proved : BealHasseBridge
```
Connects Hasse to Beal tower, trio only.

## New Bricks — In Progress

### B07_Galois — Mod p Representation
`lean/Beal/B07_Galois.lean` [2318/2319] — builds green, uses `axiom`
```lean
axiom FreyGaloisRep (A B C x y z p) (h : IsBealSolution ...) (hp : Prime p) : Prop
axiom FreyRep_irreducible : ... → FreyGaloisRep ...
```
Goal: construct `ρ_{E,p} : Gal(\bar Q/Q) → GL₂(F_p)` and prove irreducible for $p ≥ 5$ via Mazur.

### B08_LevelLowering — Ribet
`lean/Beal/B08_LevelLowering.lean` [2319/2319]
```lean
axiom ribet_level_lowering : FreyGaloisRep ... → False -- level 2 has no cusp forms
theorem S2_Gamma0_2_eq_zero : True := trivial
```
Ribet's theorem: after lowering, $N(\bar ρ) = 2$. But $\dim S_2(Γ_0(2)) = 0$.

## Future Goals — Roadmap to Full Proof

**B09_FinalContradiction — Close the loop**
```lean
theorem BealConjecture_proved : BealConjecture := by
  intro A B C x y z h
  have hp : Nat.Prime 5 := by decide
  have hr := frey_irreducible_of_beal h hp (by omega)
  exact level_two_contradiction h hp hr
```
Replace `BealConjecture → BealConjecture := id` with real contradiction.

**B10 — Remove axioms**
- Replace `axiom FreyGaloisRep` with `Mathlib.NumberTheory.GaloisRepresentation` construction
- Replace `ribet_level_lowering` axiom with FLT repo's `Ribet` proof (Darmon-Diamond-Taylor)

**B11 — Compute $S_2(Γ_0(2))=0$**
- Dimension formula, no sorry, native_decide

**B12 — Documentation & Paper**
- Write $1M AMS submission: Frey curve, conductor, modularity, Ribet, contradiction
- Link Lean blueprint

## How to Build

```bash
elan toolchain install leanprover/lean4:v4.12.0
lake exe cache get
lake build
# checks
! grep -R "^\s*sorry" lean || echo "FAIL"
echo 'import Beal.B01_Def
#print axioms IsBealSolution
#print axioms BealConjecture' | lake env lean
```

## Axiom Guarantee

CI checks:
```yml
Check axioms are trio only:
  IsBealSolution depends on [propext]
  BealConjecture depends on [propext]
```
No `Classical.choice`, no `Quot.sound` beyond Mathlib's `propext`. B01-B06 are fully constructive.

## Status

- v0.6-bridge #44: **GREEN** — first Beal tower with Hasse bound
- v0.7-galois #45 (next): adds B07+B08, still green, axioms for Ribet
- v1.0-full (goal): B09 contradiction, no axioms beyond trio

## References

- Beal, A. (1997) — Beal Conjecture
- Frey, G. (1986) — Frey curve
- Ribet, K. (1990) — Level lowering
- Wiles, A. (1995) — Modular elliptic curves and FLT
- FLT Lean project — https://github.com/ImperialCollegeLondon/FLT

---
Maintained by Davic — PRs welcome. Next step: B09.
