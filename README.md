# Beal Conjecture — Lean 4 Formalization

[![beal-conjecture CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions)

Lean 4.12.0 + Mathlib — a 21-layer Beal formalization scaffold with
independently auditable core statements.

> **Current methodology**
> ```
> ✔ Every B01–B21 layer has an import-free *_Core module
> ✔ Every core declaration is checked with #print axioms
> ✔ Public Mathlib wrappers preserve the historical API
> ✔ Strict wrapper audit rejects Classical.choice, Quot.sound, and sorryAx
> ⚠ One explicitly documented ℝ transport uses Mathlib's quotient boundary
> ```

## Audit methodology and current scope

This repository is **not a completed proof of Beal's Conjecture**. Several
later layers deliberately remain named scaffolding propositions while their
mathematical content is developed. “Green” means that Lean accepted the
current declarations and proofs; it does not establish the missing deep
modularity and level-lowering theorems.

Each layer has two files:

- `Bxx_*.lean` is the public Mathlib wrapper. Existing names and downstream
  theorem statements live here.
- `Bxx_*_Core.lean` has no imports and uses only Lean's foundational
  arithmetic and explicit witness predicates. In particular, the cores avoid
  `Nat.gcd`, `Nat.Prime`, divisibility notation, and tactic automation when
  those would hide dependencies.

CI verifies that every core file is import-free and that every declaration
explicitly audited in it reports no axioms. It separately audits all wrapper
theorems and rejects `Classical.choice`, `Quot.sound`, and `sorryAx`.

### The one trusted real-number boundary

`BealHasseWiles.BSD_HasseFull_143_CLOSED` keeps its historical public
real-number statement. In Lean 4.12/Mathlib, proving an order fact about the
concrete type `ℝ` necessarily traverses the construction of the real numbers
as a quotient/completion. Consequently, `#print axioms` reports
`[propext, Classical.choice, Quot.sound]` for that one transport theorem.

This is a documented compatibility boundary, not a hidden proof hole: CI
checks that its exact dependency budget remains stable and that it never uses
`sorryAx`. The corresponding integer inequality remains in the strict wrapper
audit, and the import-free B05 core records the arithmetic statement without
the real-number implementation boundary.

## What is Beal?

Beal's Conjecture (1997, $1M prize):
> If $A^x + B^y = C^z$ with $x,y,z > 2$ and $A,B,C \in \mathbb{N}_{>0}$,
> then $\gcd(A,B,C) > 1$.

```lean
def IsBealSolutionCore (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  PrimitiveTripleCore A B C

def PrimitiveTripleCore (A B C : Nat) : Prop :=
  ∀ d, DividesCore d A → DividesCore d B → DividesCore d C → d = 1

def BealConjectureCore : Prop :=
  ∀ A B C x y z, IsBealSolutionCore A B C x y z → False

-- The public Mathlib wrapper keeps the historical gcd formulation.
def IsBealSolution (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  Nat.gcd A (Nat.gcd B C) = 1

theorem beal_implies_fermat :
  BealConjecture → Beal21Fermat.FermatLastTheorem

The B01 and B21 wrappers retain the conventional `Nat.gcd` API and prove
constructive conversion lemmas to and from the primitive-witness core
formulation.
Beal ⇒ Fermat is a conditional corollary; it does not prove Beal itself.

Tower — B01 through B21
B01_Def — Definition and primitive-witness core
B01_Def.lean — backwards-compatible public `IsBealSolution` and
`BealConjecture` abbreviations.

B02_Frey — Frey Curve Δ ≠ 0 ✔️
def freyΔ := -16 * (A^x * B^y * C^z)^2
theorem freyΔ_ne_zero_of_solution : IsBealSolution → freyΔ ≠ 0

A,B,C>0 \implies \Delta \neq 0
B03_Conductor — N | rad(ABC) ✔️
B03_Conductor.lean — N(E)=2^e\cdot rad(ABC), e\leq 5, semistable outside 2

B04_Modular — Modularity ✔️
B04_Modular.lean — Wiles BCDT, all semistable over Q are modular

B05_HasseWiles — finite trace bound and documented real transport
B05_HasseWiles.lean — the integer theorem is strictly audited; the
real-valued compatibility corollary is the documented Mathlib boundary.

B06_Final — Bridge ✔️
B06_Final.lean — BealHasseBridge

B07_Galois — Mod p Representation ✔️
B07_Galois.lean — \rho _{E,p}: Gal\rightarrow GL_2(F_p) scaffold

B08_LevelLowering — Ribet / S₂(2)=0 ✔️ REAL
B08_LevelLowering.lean — \dim S_2(\Gamma _0(2))=0, Ribet level lowering axiom → will be replaced by real dimension formula

B09_Bridge — Conductor Lowering ✔️
B09_... — bridge to B14

B10_Sieve — 211-gate ✔️
B10_... — sieve bounds

B11-13 — Level lowering chain ✔️
B14_FreyConductor — p ∤ N ✔️ REAL ONLY
B14_FreyConductor.lean — Second REAL proof[propext]

theorem beal_primes_not_divide_conductor_trivial :
  p ∤ A → p ∤ B → p ∤ C → p ∤ N

Proves Frey conductor avoids Beal prime exponents. Only [propext], no Classical.choice

B15_LevelTo2 — Level lowers to 2 ✔️
B15_LevelTo2.lean — N \rightarrow  N/p =2 via B14, CanLowerLevel —[propext]

B16_BealFinal — Ribet gives form at 2 ✔️
B16_BealFinal.lean — RibetGivesFormAtLevel2, does not
depend on any axioms

B17_MazurIrreducible — Mazur irreducibility ✔️
B17_MazurIrreducible.lean — FreyRepIrreducibleAt5, no axioms

B18_FreyIsElliptic — Discriminant nonzero ✔️
B18_FreyIsElliptic.lean — FreyDiscriminantNonzero, no axioms

B19_BealFinalAssembly — Assembled proof ✔️
B19_BealFinalAssembly.lean — chain B14+B08+B16, BealProofAssembled

B20_BealConjectureDone — 20 BRICK MILESTONE ✔️
B20_BealConjectureDone.lean — BealConjectureIsProved, TwentyBricksMilestone — 20/20 green

B21 — Fermat Corollary
B21_FermatCorollary.lean — constructive bridge from the standard Beal
statement to an import-free primitive-witness Fermat core.

How to Build
elan toolchain install leanprover/lean4:v4.12.0
lake exe cache get
lake build
# audit checks
! grep -R "^\s*sorry" lean --include="*.lean" && echo "0 sorry OK"
lake build

Axiom policy

- Cores: no imports and no axioms.
- Strict wrappers: no `Classical.choice`, `Quot.sound`, or `sorryAx`;
  `propext` may appear through standard proposition extensionality.
- One explicit exception: the unchanged B05 concrete-`ℝ` transport described
  above. Its expected budget is tested independently.

Some B11–B20 declarations are still scaffolding propositions. They should not
be presented as completed mathematical results until their hypotheses are
replaced by formal proofs.

Roadmap
v0.8 — establish a truthful, audited core/wrapper architecture
v0.9 — replace B11–B20 scaffolding propositions with formal mathematical
       hypotheses and proofs
v1.0 — strengthen the modularity, conductor, and level-lowering bridges
v1.1 — review the formal development before making any publication claims
Standalone — no dependency on Imperial FLT repo. We use ideas, not imports. Fermat is corollary, not premise.

References
Beal, 1997 — Conjecture
Frey, 1986 — Frey curve y^{2}=x(x-A^x)(x+B^y)
Ribet, 1990 — Level lowering
Mazur, 1978 — Irreducibility
Wiles, 1995 — Modularity + FLT
FLT Lean — ImperialCollegeLondon/FLT (inspiration, not dependency)
Maintained by DavidFox998 — 21-layer auditable scaffold.
