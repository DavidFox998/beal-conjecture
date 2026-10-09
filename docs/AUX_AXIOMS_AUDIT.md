# AUX_AXIOMS_AUDIT.md — beal-conjecture-private

Triage date: 2026-10-08. Audit docs only — no Lean edits.

## HEADLINE CORRECTION

The "auxiliary 3" are **not Lean axioms**. The INIT census matched the word
`axiom` at the start of docstring prose lines, not `axiom` commands.
Verified by reading each file:

| File:line | What it actually is |
|-----------|---------------------|
| `BealMatveevBealV25B0Search.lean:40` | Docstring prose: "axiom in `BealTrueV25`." — refers to the real `darmon_merel_4413_axiom`, declares nothing |
| `LLLTargetB8.lean:28` | Docstring prose: "axiom in `BealTrueV25`, not the default glob)." — same reference, declares nothing |
| `PAdicLLL_ZeroAxiom.lean:218` | Docstring prose: "axiom in `BealTrueV25`. -/" — same reference, declares nothing |

**True axiom count for the repo: 3**, all already in `AXIOMS.md`:
`darmon_merel_4413_axiom`, `frey_modular_13`, `ribet_level_lowering_26`.

There is nothing to "close" here — no `native_decide`/`by decide`
replacement is needed because no axiom was ever declared.

## What these files actually contain

### 1. BealMatveevBealV25B0Search.lean (507 lines, 0 sorry)

Computational search-bound module. Locked numerals
`C1_floor = 143186215390`, `B0_nat = 1000000`; mod-16 fourth-power
residues; shard certificates `shard_0_100` … `shard_900_1000`
covering `B < 1000` via `check_upto`. The docstring is explicit:
the full `∀ B ≤ B0` statement stays `def Prop`, `check_upto 10000`
overflows, and the file "does not mint" the unconditional version.
Ends with `#print axioms` sanity checks on its own theorems.

### 2. LLLTargetB8.lean (1077 lines)

LLL lattice analysis: three lattices (`L`, `L'`, 3-dim `L3`),
Minkowski bounds, the `|Λ| ≥ B⁻⁸` target. Documents *why* the LLL
lift is not inhabited (would need Matveev `C1` from `1.4·10¹¹`
down to `< 9`). All targets stay `def Prop`.

### 3. PAdicLLL_ZeroAxiom.lean (279 lines)

Defines (not declares) the "zero axiom" Props:
```lean
def LLL_reduces_bound_to_B0_zero_axiom : Prop :=
  ∀ (B : ℕ), B0_nat < B → ∀ (A : ℕ), B < A →
    A ^ 4 + B ^ 4 = (B + 3) ^ 13 → B ≤ C1_floor → B ≤ B0_nat

def beal_gap3_4_4_13_unconditional_zero_axiom : Prop :=
  ∀ B : ℕ, ¬ ∃ A : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13
```
Both are `def`, uninhabited by design ("Skeleton close",
"Unconditional gap-3 vanishing" — documented as not proved).

## Verdict

No action. The "auxiliary axioms" were a census artifact. The honest
inventory is 3 real axioms (see `AXIOMS.md`), and these three files
are clean computational/definitional modules with 0 sorry.
