---
name: ArakelovFoundations.lean
description: The workspace proof file for RH via X₀(143). What's proved, what's open, and the correct combinator pattern.
---

## File location
`ArakelovFoundations.lean` in the workspace root. Never push to GitHub without being asked.

## What's proved (0 sorry, classical trio only)
- X₀(143) arithmetic: genus=13, index=168, cusps=4, squarefree, 143=11×13
- Bost-Connes: C(S₄) > 2√13 and C(S₁₄) > 2√13 (nlinarith + sqrt bound)
- a_p table for 143a1 (LMFDB), multiplicativity, recurrence, Weil bound 9 primes
- Functional equation → L(1)=0 when root number = −1 (BSD algebraic pattern)
- gate_grh: (OffCriticalZero_Violation + SelbergTraceFormula) → GRH_L143a1
- gate_rh: (GRH_L143a1 + LanglandsZetaDescent) → RiemannHypothesis
- riemann_hypothesis: chains gate_grh + gate_rh, takes 3 surfaces as hypotheses

## Three named open surfaces (def Prop — NOT axiom, NOT sorry)
- `SelbergTraceFormula (S_weil)` — Kim-Sarnak spectral gap → Weil bound (~25pp, no Mathlib)
- `OffCriticalZero_Violation (S_weil)` — off-critical zero → Weil bound violated (~10pp)
- `LanglandsZetaDescent` — zeros of ζ descend to zeros of L_143a1 (Wiles-Taylor + Mellin)

## BSD repo as arithmetic basis
`DavidFox998/birch-swinnerton-dyer-143a1` — READ ONLY. Contains:
- `BostBound143.lean`: C_S4 > 2√13 proved with nlinarith
- `lean/hassewiles.lean`: a143 table, Hecke operators, Weil bound 9 primes
- `lean/BSD_ClaySubmission.lean`: honest record of 2 Clay gaps (Frobenius API, LFunctionIsLinFunc)
- BSD_143_PROVED: rank = analytic rank = 1 (LMFDB anchor level)
- Two genuine Clay gaps: EllipticCurve.Frobenius (absent Mathlib) + LFunctionIsLinFunc (Wiles-Taylor + Mellin absent)

## Combinator pattern that works (0 sorry)
Take open surfaces as EXPLICIT HYPOTHESES. Chain them. No sorry inside body.
```lean
theorem riemann_hypothesis (S_weil : ℝ → ℂ)
    (h_selberg : SelbergTraceFormula S_weil)
    (h_viol    : OffCriticalZero_Violation S_weil)
    (h_lang    : LanglandsZetaDescent) :
    _root_.RiemannHypothesis :=
  gate_rh (gate_grh S_weil h_viol h_selberg) h_lang
```

## What NOT to do
- Don't push files to GitHub unless explicitly asked
- Don't use sorry inside combinator bodies
- Don't scan repos and call open surfaces "problems" — they are intentional named gaps
- When user uploads files, READ them first, then discuss

**Why:** Combinator pattern with hypotheses compiles 0 sorry. Sorrys inside theorem bodies fail because the gaps are genuine math not in Mathlib.
