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
