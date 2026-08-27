# Lean/Mathlib 4.15 experiment

This directory belongs only to the `beal-4.15-experimental` branch. It tests
upstream infrastructure without changing the Lean/Mathlib 4.12 DOI line.

## What the q-expansion probe establishes

`Mathlib415QExpansionProbe.lean` imports
`Mathlib.NumberTheory.ModularForms.QExpansion` and checks the declarations for:

- the analytic cusp function attached to a slash-invariant form of principal
  congruence level;
- recovery of the original form through the q-parameter;
- differentiability and analyticity of the cusp function on the unit disc;
- vanishing of a cusp form at the origin of the q-disc; and
- exponential decay at the cusp.

## What it does not establish

Mathlib 4.15 still marks formal-power-series q-expansions as a TODO in this
module. The probe does not provide integral models, reduction modulo `ℓ`,
level-raising degeneracy maps, old/new decomposition, multiplicity one, or
Ihara's lemma. Those remain explicit project boundaries.

This branch must not be merged into the v7.1.0 DOI line. Its upgrade work is
reserved for v7.2.0 or later.
