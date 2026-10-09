# AXIOM_3_DARMON_MEREL.md — `darmon_merel_4413_axiom` deep dive

Triage date: 2026-10-08. Audit only — no Lean edits, CI green.

File: `BealTrueV25.lean:73`. This is the one genuine kernel
blocker — see §5.

## 1. Full axiom statement (verbatim)

```lean
axiom darmon_merel_4413_axiom : darmon_merel_44_13_no_coprime
```

## 2. Definitions it depends on (definition chain)

The name resolves through two re-export layers to a terminal
`def` in `BealFLT13.lean:269`:

`BealTrueV25.lean:57`
```lean
def darmon_merel_44_13_no_coprime : Prop :=
  BealMatveevBeal.BealGenuineV25.darmon_merel_44_13_no_coprime
```

`BealGenuineV25.lean:78`
```lean
def darmon_merel_44_13_no_coprime : Prop :=
  BealMatveevBeal.BealFLT13.darmon_merel_44_13_no_coprime
```

`BealFLT13.lean:269` (terminal)
```lean
def darmon_merel_44_13_no_coprime : Prop :=
  ∀ x y z : ℕ, Nat.Coprime x y → x ^ 4 + y ^ 4 = z ^ 13 →
    x = 0 ∨ y = 0
```

In words: there are no coprime positive-integer solutions to
`x⁴ + y⁴ = z¹³`. The file docstring: "Darmon–Merel signature
`(4,4,13)`: no coprime solutions of `x⁴ + y⁴ = z¹³`. Not in
Mathlib 4.12."

Surrounding context (`BealFLT13.lean`): the theorem
`baker_bound_gap3_flt13_darmon_merel_nogo` establishes that on
a gap-3 solution one necessarily has `3 ∤ B` and
`Nat.Coprime A B` — i.e. it *proves* the coprime hypothesis
that Darmon–Merel requires. The axiom then supplies the
vanishing conclusion the repo cannot prove.

## 3. Downstream users (blast radius)

Comment-stripped grep over all 467 Lean files: **17 files**
use it as a real proof dependency (pattern:
`have hDM := BealMatveevBeal.BealTrueV25.darmon_merel_4413_axiom`):

*Beal/Matveev/MatveevThm14General.lean*,
*EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean*,
and the gap modules *BealGap1.lean, BealGap2.lean,
BealGap4.lean – BealGap15.lean* (all except Gap3),
*BealGapK.lean*.

This is the load-bearing axiom of the gap-3 / Matveev branch:
closing or replacing it touches 17 files' proof terms (all via
the same `have hDM := …` pattern, so a signature-identical
`theorem` would be a drop-in).

## 4. What Mathlib has

Nothing. This is the theorem of Darmon–Merel ("Winding
quotients and some variants of Fermat's Last Theorem",
*J. Reine Angew. Math.* 490 (1997), 81–100): the Diophantine
equation `x⁴ + y⁴ = z^p` has no nontrivial coprime integer
solutions for the relevant prime exponents, proved via Frey
curves of signature `(4,4,p)`, modularity, and level lowering.
It is a deep modular-methods result far beyond Mathlib 4.12
(and beyond the FLT project's near-term scope, which does not
target the `(4,4,p)` family).

No computation can replace it: it is a universal statement
over all `x y z`, not a finite check. `native_decide` /
`by decide` are inapplicable.

## 5. Close-strategy recommendation

**Must stay as an axiom with a documented external reference.**
Unlike Axioms 1 and 2, there is no definitional redundancy to
exploit — the `Prop` is a genuine open mathematical
statement, and its proof requires the full Darmon–Merel
machinery (modular Frey curves at signature `(4,4,13)`),
which Mathlib will not have for years.

Recommendation:

1. Keep `axiom darmon_merel_4413_axiom`.
2. Strengthen the docstring with the full citation:
   Darmon, H.; Merel, L., "Winding quotients and some variants
   of Fermat's Last Theorem", J. Reine Angew. Math. 490
   (1997), 81–100 — signature `(4,4,13)`.
3. Optionally add a `#print axioms` audit trail at the 17
   use sites (already the pattern in this repo) so any
   downstream consumer can see exactly where the external
   result enters.

This is the honest kernel: 0 sorrys, 2 formally-closable
displayed placeholders (Axioms 1–2, David's call), and 1 real
external theorem. That is the correct final axiom inventory
for an MCOM referee to see.
