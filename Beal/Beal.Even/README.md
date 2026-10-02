# Beal.Even

`lake build BealEven` builds `Beal/Beal.Even/FullReduction.lean` only.
This library does not import `Beal/MathlibMissing/Family.lean`.

## v37-degree-one

The exceptional-fibre point on `Y² = X³ + 2` at `(0, 0)` lives in
`Beal.MathlibMissing`, on branch `beal-v37-degree-one`. `main` stays
`3dd7728f` with DOI `10.5281/zenodo.23054568`.

`BealEven` already has `V(2) = Proj(Rees/(2))` (`7d48c25d`) and
`D₊(2t) = ⊥` because `(2t)² = 0` (`567adc81`).

In `Family.lean`, commit `19a820c3`:

* `chartNodeHom : (Rees(I)/(2))_{(Xt)}₀ →+* 𝔽₂` by the cusp leading
  coefficient `X ↦ t²`, `Y ↦ t³`, `a, b ↦ 0`, extended along
  `HomogeneousLocalization.val` because `Xt ↦ 1`.
* Closed: `ideal_ABXYUV ≤ ker chartNodeHom`
  (`ker_contains_ABXYUV`). The kernel is maximal, the quotient by
  the kernel is `𝔽₂`, and `chartNodePrime` is that prime.
  `familySpecialFibreProjPoint` is `FromSpec.toFun` of the prime, a
  point of `D₊(Xt)` in `Proj(Rees(I)/(2))`.
* Closed: `chartOfModelBase_surjective` and
  `ker_eq_ideal_ABXYUV_holds`. The quotient by `ideal_ABXYUV` is
  `𝔽₂` (`ideal_ABXYUV_quotient_F2_holds`).
* Open: `chartOfModelBase` injective, and
  `chart_Dplus_Xt_presentation`.

Printed axioms are `propext`, `Classical.choice`, and `Quot.sound`.
