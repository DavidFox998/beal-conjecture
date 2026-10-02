# Beal.Even

`lake build BealEven` builds `Beal/Beal.Even/FullReduction.lean` only.
This library does not import `Beal/MathlibMissing/Family.lean`.

## v37-degree-one

The exceptional-fibre point on `Y² = X³ + 2` at `(0, 0)` lives in
`Beal.MathlibMissing`, on branch `beal-v37-degree-one`. `main` stays
`3dd7728f` with DOI `10.5281/zenodo.23054568`.

`BealEven` already has `V(2) = Proj(Rees/(2))` (`7d48c25d`) and
`D₊(2t) = ⊥` because `(2t)² = 0` (`567adc81`).

Closed in `8f783ade`, in `Beal/MathlibMissing/Family.lean`:

* `centreReesRatioPolynomialMap_surjective` generates the integral
  chart by the ratios `2/Xt`, `X/Xt`, and `Y/Xt`.
* `homogeneousQuotientAwayMap_surjective` carries that onto
  `(Rees(I)/(2))_{(Xt)}₀` because `(Xt)ⁿ ≠ 0`.
* At `(0, 0)` those ratios are `1`, `U = 2t/Xt`, and `V = Yt/Xt`.
  Scalars pass through `𝔽₂[a,b]` together with `X` and `Y`, so every
  element of `D₊(Xt)` is a polynomial in `a, b, X, Y, U, V`.
* `chartOfModelBase_surjective`:
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²) ↠ D₊(Xt)`.
* `chartNodeHom : D₊(Xt) →+* 𝔽₂` (`19a820c3`) by the cusp
  `X ↦ t²`, `Y ↦ t³`, `a, b ↦ 0`, `Xt ↦ 1`, extended along
  `HomogeneousLocalization.val`. It is surjective.
* `ker_contains_ABXYUV` and `ker_eq_ideal_ABXYUV_holds`:
  `ker chartNodeHom = ideal_ABXYUV = ⟨a, b, X, Y, U, V⟩`.
  `Y = X·V` makes `Y` redundant.
* `ideal_ABXYUV_quotient_F2_holds` transports
  `chart_node_quotient_equiv` along `Ideal.quotEquivOfEq`, so
  `chart / ⟨a, b, X, Y, U, V⟩ ≃ 𝔽₂`.
* `chartNodePrime` and `familySpecialFibreProjPoint = FromSpec.toFun`
  are a point of `D₊(Xt)` inside `Proj(Rees(I)/(2)) = V(2)`
  (`7d48c25d`).

Open:

* `chartOfModelBase_injective`. Vanishing in the chart should mean
  that a power of `Xt` times the Rees substitution of the polynomial
  lies in the scalar ideal `(2)` plus the graph relations.
  `valuationOne_X_pow_not_mem_centre_succ` is `Xⁿ ∉ Iⁿ⁺¹`.
* `chart_Dplus_Xt_presentation`, an isomorphism with the parameter-free
  ring `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`. That ring drops `a`,
  `b`, and `U²`. The model that matches this chart is
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)`.

Printed axioms are `propext`, `Classical.choice`, and `Quot.sound`.
