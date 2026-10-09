# AXIOM_1_FREY.md — `frey_modular_13` deep dive

Triage date: 2026-10-08. Audit only — no Lean edits, CI green.

File: `Level26/BealLevel26Foundations/lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean`
(76 lines, full file read). Namespace
`BealLevel26Foundations.Modularity.FreyModularity13`.

## 1. Full axiom statement (verbatim)

```lean
axiom frey_modular_13 : ∀ (A B C : Nat), Modularity (FreyCurve13 A B C)
```

## 2. Definitions it depends on (40-line context)

**`FreyCurve13`** — a displayed triple, NOT a Weierstrass model,
NOT a Mathlib elliptic curve:

```lean
structure FreyCurve13 (A B C : Nat) where
  coeffA : Nat := A
  coeffB : Nat := B
  coeffC : Nat := C
```

**`Modularity`** — a named predicate with a single displayed
constructor (v5.2.0 `R = T` token, not Wiles–Taylor / BCDT):

```lean
inductive Modularity : Type → Prop
  | displayed_from_R_T : ∀ (A B C : Nat), Modularity (FreyCurve13 A B C)
```

**`frey_conductor_26`** — the `Nat` `26` (a label, not a conductor
computation):

```lean
def frey_conductor_26 : Nat := 26
```

**`freyLevel26_computational`** — the displayed identity
`2 * 13 = 26`, proved by `rfl`.

The file's own docstring is explicit: Mathlib 4.12 has no
modularity theorem and no Frey-curve constructor; the axiom is
"secured by" LMFDB/Cremona labels `26a1`/`26b1` (Weierstrass
models `[1,0,1,-5,-8]` and `[1,-1,1,-3,3]`) archived in
`Descent_26.json`. It "does not prove modularity and does not
construct a Galois representation."

## 3. Downstream users (blast radius)

Comment-stripped grep over all 467 Lean files. Real proof
dependencies (not `#check`/docstring mentions):

| File | Use |
|------|-----|
| `Mazur/BealExponent13_Contradiction.lean:43` | `⟨frey_modular_13, X0_26_Q_four_cusps⟩` — tuple component |
| `Mazur/BealTheoremFromMazurChain26.lean:172` | `⟨frey_modular_13, rfl, ribet_level_lowering_26, …⟩` — tuple component |
| `Final/BealExponent13_Forall.lean:239` | `#check` only — no dependency |
| `Ribet/RibetLevelLowering_26.lean:167` | `#check` only — no dependency |

Blast radius if closed by definitional theorem: 2 files consume
it as a term; both would type-check unchanged against a
`theorem` of the same signature (no call-site edits needed).

## 4. What Mathlib has

Nothing applicable. Mathlib 4.12 has no modularity theorem
(Wiles/Taylor/BCDT), no Frey-curve constructor, no residual
Galois representations. Kevin Buzzard's FLT formalization
project (5-year EPSRC grant from 2024) explicitly does not aim
to complete Wiles' proof; prediction markets price a formalized
modularity theorem by 2029 at NO. There is no Mathlib
`Modularity` predicate for elliptic curves over `ℚ` to target.

## 5. Close-strategy recommendation

**Formally redundant — closable as a definitional theorem.**
The axiom's type is *identical* to the existing constructor's:

```lean
-- constructor: displayed_from_R_T : ∀ (A B C : Nat), Modularity (FreyCurve13 A B C)
-- axiom:      frey_modular_13 : ∀ (A B C : Nat), Modularity (FreyCurve13 A B C)
```

A `theorem` with the same statement, proved by the constructor,
would close the kernel axiom with zero call-site changes.

**Honesty caveat (must be documented if closed):** this closes
the *displayed* modularity token, not Wiles–Taylor. The file
already says this ("That axiom is **not** Wiles–Taylor"), so the
replacement must carry the same disclaimer: real modularity of
the Frey curve remains an external result secured by the
LMFDB/Descent_26.json certificates, not a Lean theorem.

Recommendation: replace `axiom` with the constructor-proved
`theorem` + keep the "not Wiles–Taylor" docstring. David's call.
