# `certificates/`

This folder holds committed, machine-readable evidence for the Beal chamber of
*Opera Numerorum*. A certificate file records concrete data that a script or
Lean declaration can replay; it is not automatically a proof of every
mathematical interpretation attached to that data.

The Level-26 model certificate belongs here because it is part of the
reproducibility trail for the `X₀(26)` route. Its role is to keep coefficients,
discriminants, factorizations, and finite checks stable across releases. The
separate p-adic certificate interface in `lean/Beal/Mazur/Gates/` states the
stronger evidence required for a genuine local obstruction and does not invent
an instance from this folder.

When adding a certificate, document its producer, inputs, replay command, and
the exact boundary it does—and does not—cross.