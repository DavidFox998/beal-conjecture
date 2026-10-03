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

False, in `Beal/MathlibMissing/ChartSurjection.lean`:

* `chartOfModelBase_injective`. `not_chartOfModelBase_injective`
  proves the map is not injective. The witness is `U + X² + X·V²`.
  `chartModelEval_kernelWitness` sends it to `0`: the degree-2 Rees
  numerator is `2 · X⁴` and `X⁴ ∈ I²`, so the numerator lies in the
  scalar ideal `(2)`. `chartKernelWitness_not_mem` shows the same
  polynomial lies outside `(X·U, Y − X·V, Y² − X³, U²)`. That ideal
  is properly contained in `ker chartModelEval`. `Xⁿ ∉ Iⁿ⁺¹` does
  not kill this class.

Closed in `Beal/MathlibMissing/ChartTrueIdeal.lean`:

* `chartTrueIdeal = (X·U, Y − X·V, Y² − X³, U + X² + X·V²)`.
  `chartTrueIdeal_contains_U2` puts `U²` in this ideal, from
  `U² = U·(U + X² + X·V²) + (X + V²)·(X·U)`.
* `chartOfModelTrue_surjective` is the induced surjection onto `D₊(Xt)`.
* `chartTrueIdeal_quotient_equiv_normal`:
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²) ≃
  𝔽₂[a,b][X,V] / (X²·(X + V²))`.
* `valuationOne_X_fourth_sub_X_not_mem_centre_sq`: `X⁴ − X ∉ I²`
  at `(0, 0)`. The numerator `2·(X⁴ − X)` of `X² + X·V²` is not in
  the scalar ideal `(2)` of the Rees algebra.

Closed in `Beal/MathlibMissing/CentrePower.lean`:

* `centreIdeal_power_coeff_bound`. If `α(X) + Y·β(X)` lies in `I^k`
  on `Y² = X³ − 2` at `(0, 0)`, the coefficient of `X^i` in `α` has
  2-adic norm at most `2^{−⌈(k−i)/2⌉}` and the coefficient of `X^i`
  in `β` has norm at most `2^{−⌊(k−i)/2⌋}`. A nonzero coefficient has
  `v₂` at least that integer.
* `centre_X_pow_mul_X_cube_sub_one_not_mem`:
  `X^m · (X³ − 1) ∉ I^{m+1}`, hence `∉ I^{m+2}`.

Closed in `Beal/MathlibMissing/ChartInjective.lean`:

* `chart_X_add_V_sq_ne_zero`. The class `X + V²` is nonzero in `D₊(Xt)`.
  Its numerator is `2·(X³ − 1) t²`, and the coefficient bound keeps
  `X^k · (X³ − 1)` out of `I^{k+2}`.
* `chartOfModelTrue_normal_X_add_Vsq_ne_zero`: that normal-form class does
  not map to zero.
* Unique representatives `A(V) + X·B(V) + X²·C(V)`. The class of `X + V²`
  is nonzero in the polynomial quotient because `B = 1`. Injectivity is
  equivalent to the kernel condition on that representative.
* `bitReduced_signed_bound`. A nonzero `0`-`1` form, reduced by
  `Y² = X³ − 2`, has a coefficient `(-1)^s · 2^q` at an index whose
  centre bound is `q`. That index is the lowest power of `X`, except
  when only `C` meets it: the leading coefficient of `(X³ − 2)^q` is
  then `1` and both bounds are `0`.

Open:

* `chartOfModelTrue_injective` and `chart_Dplus_Xt_true_presentation`.
  Chart vanishing of a general normal form is not yet `α = 2·αₛ`,
  `β = 2·βₛ` with `αₛ + Y·βₛ ∈ I^D`. The bijection
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²) ≃ D₊(Xt)`
  is not proved.
* `chart_Dplus_Xt_presentation`, an isomorphism with the parameter-free
  ring `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³)`. That ring drops `a`,
  `b`, and `U²`. It is not the chart.

Printed axioms are `propext`, `Classical.choice`, and `Quot.sound`.
