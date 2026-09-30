---
name: Polynomial chart gluing via open-cover copying
description: Copy an existing open cover along chartwise scheme isomorphisms to get literal polynomial-spectrum glue objects without presenting product overlaps.
---

An open cover's canonical gluing uses its actual chart objects. A canonical Proj basic-open cover still glues basic-open subschemes, even after separately proving those opens are isomorphic to polynomial spectra. Use `OpenCover.copy` to form another cover whose `obj` is the desired family of polynomial spectra and whose `map` is each chart isomorphism followed by the original inclusion. Its canonical glue data then has the desired literal objects.

**Why:** The pinned gluing interface builds glue data from a cover with its literal objects. Copying the cover proves openness and coverage by transporting along the chart isomorphisms, so the inherited pullback overlaps and triple cocycle need no polynomial product-overlap presentation or manual glue-data transport.

**How to apply:** First construct each chartwise iso into the original basic-open cover; then copy that cover with `Equiv.refl` on indices and the chosen chart family. Use the *copied* cover's `gluedCover.cocycle` and `fromGlued` to state the polynomial-chart gluing theorem. Check separately that desired independently defined restrictions agree with the abstract ones via the ring/scheme squares when transition identifications matter.