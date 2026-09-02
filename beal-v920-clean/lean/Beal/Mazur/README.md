# Level-26 Mazur route

This directory formalizes the conditional `X₀(26)` route used for the residual
prime `13` branch of the Frey/Mazur argument.

## v8.9.0 Real 80-Check Audit

Phase A now exposes the exact finite search spaces:

- `SUnits_26` indexes the eight signed squarefree representatives in `Q_S2_13`;
- `ledger` contains the four `26a1` and six `26b1` quartics;
- `Gates/SecondDescent_Real_26.lean` checks all `8 × 10 = 80` pairs at `p = 2`
  and `p = 13`.

The available `BinaryQuartic.hasFpPoint` result tables pass at both primes for
every ledger row, so all eighty pairs pass. Since this evaluator does not
depend on the S-unit index, the audit keeps all eight representatives and
proves that the resulting candidate set is not a singleton. It is therefore
an honest finite audit, not a proof of `Selmer = {1}`. The
`SecondDescentHypothesis_26` used by the rank interface remains explicitly
conditional until an S-unit-dependent covering map and local obstruction table
are formalized.

`ConditionalBealTheorem.lean` consumes this conditional Phase A boundary
together with the existing Phase B+C+D certificates; it does not assert an
unconditional Beal theorem.


## v9.2.0 reproducible level-26 certificate boundary

The dependency-free producer `scripts/level26_descent_certificate.py` records
the exact coefficient-defined Lean models and checks all 160 twisted
congruences (eight S-units, ten rows, and two bad-prime moduli).  Lean repeats
the same genuinely S-unit-dependent checks by `decide`.

`sagemath/reproduce_level26_descent.sage` prints exact Sage/mwrank versions and
database-returned models before replaying rank and two-descent commands into a
separate, uncommitted Sage log.  It cannot overwrite the checked congruence
log. This prevents the old Lean/LMFDB label conflation.
`SecondDescentHypothesis_26_real`
uses one narrow `Level26ExternalComputationInterface`: full `ℚ₂`/`ℚ₁₃`
lifting, covering completeness, and Selmer-to-rank soundness remain explicit
because the finite congruence witnesses do not prove them.  No unconditional
rank-zero theorem is claimed.

## Phase B real finite decomposition evidence

`Jacobian/J0_26_Decomp.lean` now records the two LMFDB level-26 newform class
q-expansions through `a₁₀₀`. The legacy twenty-coefficient declarations are
preserved, and a decided theorem records their historical factor-label ordering
against the LMFDB `26.a` and `26.b` class rows instead of silently conflating
the labels.

An explicit 57-row multiplication table checks
`a_(pn) = a_p a_n` for every `2n ≤ 100` and `13n ≤ 100`. Kernel-decided
theorems verify normalization, the bad-prime Hecke recurrences, distinctness at
`a₂`, and the finite dimension token `dim S₂(26) = 2`, reusing the existing
genus-two certificate. The combined
`JacobianTransportCertificate_Real_26` also replays the degree-six,
nonzero-discriminant, genus-two, and mod-3 determinant checks.

This is real finite evidence for Phase B, not the final isogeny. Mathlib 4.12
does not provide the required genus-two Jacobian or abelian-variety isogeny
API, so `JacobianTransportCertificate_26` remains a separate explicit
Prop-valued boundary.

## Structure

- `KernelToX0.lean` transports a genuine Galois-stable cyclic kernel to the
  mixed `X₀(2p)` moduli datum.
- `X0_26_Model.lean` records the explicit genus-two model, discriminant,
  rational cusps, and finite arithmetic certificates.
- `Jacobian/E26.lean` records the two elliptic factors and the finite descent
  ledger.
- `Gates/Descent_26_*` separates checked descent arithmetic from the explicit
  Selmer, torsion, and rank hypotheses.
- `Jacobian/J0_26_Decomp.lean` provides a proof-relevant conditional transport
  from the two elliptic factors to the `J₀(26)` rank boundary.
- `Gates/FormalImmersion_J0_26_NoSorry.lean` and
  `X0_26_RationalPoints.lean` package the conditional formal-immersion route to
  the four rational cusps.

## Formal status

Finite coefficient comparisons, point counts, and local checks are executable
evidence only. They do not construct a Jacobian isogeny, prove Mordell–Weil
rank transport, or establish rational-point exhaustiveness by themselves.
Those unavailable geometry and descent steps remain explicit proof-relevant
inputs. No unconditional rank-zero or four-cusp theorem is claimed.
