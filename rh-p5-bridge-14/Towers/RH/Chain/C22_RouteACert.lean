/-
  # C22 — Route A Certificate: RiemannHypothesis via GrowthContradiction

  ## What this file proves

  Provides the Route A terminal theorem: `_root_.RiemannHypothesis` from two
  named open surfaces in `Towers.RH.GrowthContradiction`.

  The proof is a direct application — no lambda, no sorry, no trivial:

      RiemannHypothesis_via_route_A hG hR
        := riemannHypothesis_of_growth_and_repulsion hG hR

  The actual mathematical work — the only closed proof content — is entirely in
  `exp_loglog_dominates_sq` (GrowthContradiction.lean):

      ∀ᶠ t in atTop, C·(log t)² < exp(c₁·log t / log(log t))

  Proved via `Real.tendsto_exp_div_pow_atTop 2`, substituting v = log(log t),
  then `Real.exp_log htpos` + `Real.exp_lt_exp`. The combinator then derives
  `_root_.RiemannHypothesis` by contradiction: assume off-line zero →
  ZeroRepulsion gives large |ζ| values → GrowthBound caps them →
  exp_loglog_dominates_sq contradicts the cap.

  The pathway converges here. GrowthBound is explicitly the last open gate
  on Route A.

  ## Two named open surfaces (Clay rules)

  · **GrowthBound** : ∃ C > 0, ∀ t ≥ 2, |ζ(½+it)| ≤ C·(log t)²
    (Stronger than Lindelöf; unproved; false by Ω-results — documented as
    OPEN and not discharged here.)

  · **ZeroRepulsion** : (∃ off-line zero ρ) →
        ∃ c₁ > 0, ∀ B, ∃ t ≥ B, exp(c₁·log t / log log t) ≤ |ζ(½+it)|
    (Standard zero-repulsion lower bound; unavailable in Mathlib v4.12.0 —
    documented as OPEN and not discharged here.)

  No axiom beyond the classical trio.  No sorry.  No trivial.

  ## Axiom footprint

  ```
  #print axioms RiemannHypothesis_via_route_A
  -- propext, Classical.choice, Quot.sound
  ```

  SORRY: 0.  Classical trio only.
  GrowthBound and ZeroRepulsion: OPEN, undischarged.
  NOT a brick.  NOT a Clay submission.
  `_root_.RiemannHypothesis` is the real Clay statement (not True).
-/

import Towers.RH.GrowthContradiction

namespace TheoremaAureum

open Towers.RH

/-- **Route A terminal certificate (C22).**

    `_root_.RiemannHypothesis` from two named open surfaces:

    - `hG : GrowthBound`   — ∃ C > 0, ∀ t ≥ 2, |ζ(½+it)| ≤ C·(log t)²
    - `hR : ZeroRepulsion` — off-line zero → |ζ(½+it)| large for arbitrarily large t

    Direct application of `riemannHypothesis_of_growth_and_repulsion` from
    `Towers.RH.GrowthContradiction`.  That theorem's only closed mathematical
    content is `exp_loglog_dominates_sq` — a pure-calculus comparison proved
    via `Real.tendsto_exp_div_pow_atTop 2`.  No lambda.  No sorry.  No trivial.

    `#print axioms RiemannHypothesis_via_route_A`
    → `{propext, Classical.choice, Quot.sound}` -/
theorem RiemannHypothesis_via_route_A
    (hG : GrowthBound) (hR : ZeroRepulsion) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_growth_and_repulsion hG hR

end TheoremaAureum
