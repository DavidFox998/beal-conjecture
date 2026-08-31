---
name: Frey isogeny repository audit
description: Result of the repository-wide search for a formal no-rational-p-isogeny supplier.
---

All default-branch Lean sources across the repositories owned by DavidFox998 were searched for Frey, Mazur, Kenku, isogeny, modular-curve, torsion, Galois-stable-kernel, and residual-irreducibility material. No declaration outside the Beal development supplies the Frey-specific exclusion of rational cyclic p-isogenies for p ≥ 11.

The closest Arakelov files concern Frobenius isogeny degree and explicitly leave the geometric isogeny-degree/kernel bridge open. The BSD files use curve-specific numerical or definitional anchors, and explicitly note that the Mazur torsion-classification API is absent. Hodge isogeny references are unrelated or marked as placeholders.

**Why:** Reusing a superficially related “closed” file would falsely turn an open modular-curve/classification input into a proved B17 supplier.

**How to apply:** A Lean constructor may assemble the Beal supplier from explicit prime-indexed evidence, but do not claim that evidence is inhabited until genuine Kenku–Mazur or X₀(2p) arguments are formalized. Every prime in an admitted finite range needs an explicit branch unless a proved classification theorem removes it. Do not import the Arakelov Frobenius-degree or BSD torsion anchors as evidence for residual irreducibility.