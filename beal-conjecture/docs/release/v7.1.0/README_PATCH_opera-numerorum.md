# *Opera Numerorum* README patch — v7.1.0

Add the following row under the supporting projects in the tower-status
table. Add the paragraph immediately below the table or in the table’s Beal
status subsection.

```markdown
| Beal's Conjecture | [beal-conjecture](https://github.com/DavidFox998/beal-conjecture) | 3 explicit Shimura-side Props | v7.1.0 CONDITIONAL — zero named project axioms, Lean footprint `{propext, Quot.sound}`, CI #230 GREEN; conditional on Q-expansion, old/new complement, and localized rank-one inputs |
```

```markdown
### Beal Conjecture — v7.1.0

The v7.1.0 Beal development is a machine-checked **conditional** theorem:
an inhabited `GaloisEdgeWitness` implies Beal’s Conjecture. The former opaque
global assumptions have been replaced by typed provider data and three
inspectable Shimura-side propositions:
`QExpansionPrincipleOnV`, `OldNewDecompHyp`, and `LocalizedRankOne`.

The repository declares no named project-level axioms and reports the Lean
foundational footprint `{propext, Quot.sound}`. This is not an unconditional
claim: the q-expansion/degeneracy-map, old/new-complement, and
Hecke-localized rank-one constructors remain explicit research boundaries.

Release DOI: `https://doi.org/10.5281/zenodo.XXXXXXX`  
Concept DOI: `https://doi.org/10.5281/zenodo.YYYYYYY`
```

Replace `XXXXXXX` and `YYYYYYY` after Zenodo mints the v7.1.0 record.