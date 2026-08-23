# Towers

`Towers` is the Lean 4 source root for `rh-p5-bridge-14`.

- `Common/` — shared arithmetic: conductor `143=11×13`
- `RH/` — Riemann Hypothesis bridge, 7 sub-towers
- `X0_143/` — modular curve `X₀(143)` basic + ideal growth

Builds on infrastructure from **[bost-connes](https://github.com/DavidFox998/bost-connes)** M1-M3 as input. No sorry, classical trio `{propext, Classical.choice, Quot.sound}`.
