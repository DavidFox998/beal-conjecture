# AXIOM_2_RIBET.md — `ribet_level_lowering_26` deep dive

Triage date: 2026-10-08. Audit only — no Lean edits, CI green.

File: `Level26/BealLevel26Foundations/lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean`
(69 lines, full file read). Namespace
`BealLevel26Foundations.Modularity.RibetLevelLowering26`.

## 1. Full axiom statement (verbatim)

```lean
axiom ribet_level_lowering_26 :
    (frey_conductor_26 = 26) → (ExistsNoncuspidal_26 → False)
```

## 2. Definitions it depends on (40-line context)

**`frey_conductor_26`** (from `FreyModularity_13.lean`):
```lean
def frey_conductor_26 : Nat := 26
```
The hypothesis `frey_conductor_26 = 26` is `rfl`-true by
definition — it is the displayed conductor label, "the
informal reading of `FreyLevel26 = 26`".

**`ExistsNoncuspidal_26`** (from `Chain/X0_26_Point.lean:166`):
```lean
def ExistsNoncuspidal_26 : Prop :=
  ∃ P : DisplayedX026CuspPoint, P.label ∉ fourCuspsList
```

**`DisplayedX026CuspPoint`** (`Chain/X0_26_Point.lean:74`) — the
key structure:
```lean
structure DisplayedX026CuspPoint where
  label : Nat
  mem : label ∈ fourCuspsList := by decide
```

Every `DisplayedX026CuspPoint` carries `mem : label ∈
fourCuspsList`. The file's own docstring notes:
"Empty by type: `P.mem` contradicts `P.label ∉ fourCuspsList`."
It is "not a noncuspidal rational point of `X₀(26)`" — a
displayed cusp-label type.

The file also contains `ribet_secured_by_certs : True`
(`trivial`), a documentation theorem listing the PARI
2.17.2 certificates (`ellrank [0,0]`, empty `ell2cover`,
`|Sel₂| = 1` twice, `det M₃ = 2` over `ZMod 3`,
`Descent_26.json` SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`).
It "does not prove level lowering."

## 3. Downstream users (blast radius)

Comment-stripped grep over all 467 Lean files. Real proof
dependencies:

| File | Use |
|------|-----|
| `Mazur/BealExponent13_Contradiction.lean:26` | `fun h => ribet_level_lowering_26 (by rfl) h` |
| `Mazur/BealTheoremFromMazurChain26.lean:172` | `⟨frey_modular_13, rfl, ribet_level_lowering_26, …⟩` |
| `Final/BealExponent13_Forall.lean:240` | `#check` only — no dependency |

Note `BealExponent13_Contradiction.lean:26` already supplies
`(by rfl)` for the conductor hypothesis — consistent with the
hypothesis being definitionally true.

Blast radius if closed by definitional theorem: 2 files, both
would type-check unchanged against a `theorem` of the same
signature.

## 4. What Mathlib has

Nothing applicable. Mathlib 4.12 has no residual Galois
representations and no Ribet level-lowering theorem. Ribet's
theorem (inventiones 1990) lives far beyond current Mathlib;
the FLT formalization project does not target it on any near
horizon.

## 5. Close-strategy recommendation

**Formally redundant — closable as a definitional theorem.**
Both hypotheses discharge from existing definitions:

* `frey_conductor_26 = 26` holds by `rfl` (it *is* `26`).
* `ExistsNoncuspidal_26 → False`: given `⟨P, h⟩` with
  `h : P.label ∉ fourCuspsList`, the structure field
  `P.mem : P.label ∈ fourCuspsList` gives `False` directly.

A `theorem` of the same signature, proved from these two
facts, closes the kernel axiom with zero call-site changes
(both consumers already pass `(by rfl)` / use it as a plain
term).

**Honesty caveat (must be documented if closed):** this closes
the *displayed* placeholder, not Ribet's theorem. The file
already says "It is **not** Ribet." The replacement must keep
that disclaimer: genuine level lowering (residual
representations, `ρ̄` finite-flat at 13, Serre conductor drop
`2·13·rad(ABC) → 26`) remains external, secured by the
PARI/Descent_26.json certificates listed in
`ribet_secured_by_certs`.

Recommendation: replace `axiom` with the definitionally-proved
`theorem` + keep the "not Ribet" docstring. David's call.
