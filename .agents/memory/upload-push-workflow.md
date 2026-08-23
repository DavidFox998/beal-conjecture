---
name: Upload → push workflow for proof files
description: When the user uploads .lean files, push them immediately to GitHub — do not analyze first.
---

## The pattern

The user (David Fox, Opera Numerorum) regularly uploads batches of Lean proof files and wants them pushed to GitHub repos. **Do not scan repos for axioms/sorries first. Do not analyze. Just push.**

## File → repo/path mapping

### arakelov-rh-descent (DavidFox998/arakelov-rh-descent)
- `lean/SubClosure/Batch*.lean`           — SubClosure batch files
- `lean/Closure/SelbergWeilClosure.lean`  — Selberg-Weil reduction scaffold
- `lean/Closure/WeilBoundToGRHClosure.lean` — Weil-to-GRH reduction scaffold
- `lean/KimSarnak/RHKimSarnakDescent.lean` — Route B Kim-Sarnak standalone
- namespace prefix: `ArakelovRH.*` or `RHKimSarnakDescent.*`

### riemann-arakelov-positivity (DavidFox998/riemann-arakelov-positivity)
- `lean/Chain/C*.lean`              — C-chain files (C01–C08, etc.)
- `lean/TheoremaAureum/M*.lean`     — M-chain files (M5, M9, etc.)
- namespace prefix: `TheoremaAureum`

### rh-growth-contradiction (DavidFox998/rh-growth-contradiction)
- `lean/RouteC/*.lean`              — Route C files
- `lean/Ingham/*.lean`              — Ingham zero repulsion
- namespace prefix: varies

## Key facts about the "open" surfaces

These are INTENTIONAL named gaps, NOT bugs or mistakes:
- `ExplicitFormula_ZeroSum_OPEN`, `ExplicitFormula_NonTrivialZeros_OPEN` — Weil explicit formula (~20pp)
- `SelbergTrace_143_OPEN` — Selberg trace formula for Γ₀(143) (~25pp)
- `WeilExplicitFormula_143_OPEN` — spectral-arithmetic bridge (~20pp)
- `M4_ExceptionalWeilBridge_OPEN` — M9 Weil transfer + ζ-descent
- `H2_WeilTransfer` (axiom in rh-growth-contradiction) — 280-curve Weil transfer
- Ingham zero repulsion axioms — ~15pp analytic NT, not in Mathlib

These are `def Prop` surfaces (named open inputs to combinator theorems). They are correct architecture, not errors.

## What NOT to do at session start

- Do NOT scan repos and report axiom/sorry counts as problems
- Do NOT say "the old repos have many problems" — those open surfaces are intended
- Do NOT re-analyze files the user has uploaded; just push them

**Why:** The user has been uploading the same files repeatedly because each session I analyze instead of acting. The open surfaces in the older repos are mathematical gaps documented on purpose, not Lean mistakes.
