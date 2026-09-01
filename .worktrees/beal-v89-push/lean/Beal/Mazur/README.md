# Level-26 Mazur route

This directory formalizes the conditional `X₀(26)` route used for the residual
prime `13` branch of the Frey/Mazur argument.

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
