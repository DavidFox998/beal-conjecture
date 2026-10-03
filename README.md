# foundations-level-26 — Beal Level 26 Matveev-Baker Foundations

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22922473.svg)](https://doi.org/10.5281/zenodo.22922473)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22912430.svg)](https://doi.org/10.5281/zenodo.22912430)

## v37-true-chart — `modelXtChart` is the true chart

`modelXtChart` is
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²)`.
`modelXtChart_equiv_DplusXt` is `chart_Dplus_Xt_true_presentation`.
Tag `v37-true-chart` is merge `84c03d5b`. DataCite reports
`10.5281/zenodo.23120540` findable for version `v37-true-chart`.
The previous `main` record is `3dd7728f`, DOI `10.5281/zenodo.23054568`.

* `BealEven`: `V(2) = Proj(Rees/(2))` at `7d48c25d`. `D₊(2t) = ⊥`
  because `(2t)² = 0` at `567adc81`.
* In `Rees/(2)`, `2t` is a nonzero nilpotent, `(2t)² = 0`, at
  `42819197`: `2` is regular, `1 ∉ I`, and `2 ∈ I²`.
* On the chart `D₊(Xt)`, `U = 2t/Xt` is a nonzero nilpotent, `U² = 0`,
  at `02e45751`, from `Xⁿ ∉ Iⁿ⁺¹` by the cusp `X ↦ t²`, `Y ↦ t³`.
  The chart relations are `X·U = 0`, `Y = X·V`, `Y² = X³`, and `U² = 0`.
  `chartOfModelBase` is a ring hom from
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U²)` into the chart,
  and it factors through `U²`.
  Model quotients: modulo `⟨X, U, V⟩` the ring is `𝔽₂[a,b]`, modulo
  `⟨a, b⟩` the coefficient ring is `𝔽₂`, and modulo `⟨a, b, X, U, V⟩`
  the model is `𝔽₂`.

Closed in `8f783ade`:

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

False:

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
  `v₂` at least that integer. `PadicInt.valuation 0 = 0`, so the zero
  coefficient is covered by the norm.
* `centre_X_pow_mul_X_cube_sub_one_not_mem`:
  `X^m · (X³ − 1) ∉ I^{m+1}`, hence `∉ I^{m+2}`. The coefficient of
  `X^m` is `-1`.

Closed in `Beal/MathlibMissing/ChartInjective.lean`:

* `chart_X_add_V_sq_ne_zero`. The class `X + V²` is nonzero in `D₊(Xt)`.
  Its degree-2 Rees numerator is `2·(X³ − 1) t²`. `(Xt)^k` times that
  numerator lies in the scalar ideal `(2)` only if
  `X^k · (X³ − 1) ∈ I^{k+2}`, which the coefficient bound forbids.
* `chartOfModelTrue_normal_X_add_Vsq_ne_zero`: the normal-form class of
  `X + V²` does not map to zero.
* Unique representatives `A(V) + X·B(V) + X²·C(V)` in
  `𝔽₂[a,b][X,V] / (X²·(X + V²))`. The class of `X + V²` is nonzero there
  because `B = 1`. `chartOfModelTrue_injective_iff_normalForm` identifies
  injectivity with the kernel condition on that representative.

* `bitReduced_signed_bound`. A nonzero `0`-`1` form
  `A(V) + X·B(V) + X²·C(V)`, reduced by `Y² = X³ − 2`, has a coefficient
  `(-1)^s · 2^q` at an index whose centre bound is `q`. The index is the
  lowest power of `X`, except when only the `C` series meets that power:
  the leading coefficient of `(X³ − 2)^q` is then `1` and both bounds
  are `0`.
* `twice_centre_blocks_signed`. The `S`-series of a normal form matches
  that integer series on each monomial of `𝔽₂[a,b]`, and it cannot be
  `X^m·α = 2·αₛ`, `X^m·β = 2·βₛ` with `αₛ + Y·βₛ ∈ I^{D+m}`.

* `chartVanishing_reesEquation`, `chartOfModelTrue_injective`, and
  `chart_Dplus_Xt_true_presentation`. Vanishing of a normal form in
  `D₊(Xt)` is `X^m·α = 2·αₛ`, `X^m·β = 2·βₛ` with
  `αₛ + Y·βₛ ∈ I^{D+m}`. The signed bound forces `A = B = C = 0`, so
  `𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²) ≃ D₊(Xt)`.

* `chart_Dplus_Xt_presentation`. The constant `a` is outside
  `chartTrueIdeal`, so
  `𝔽₂[X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²) ≃ D₊(Xt)/(a, b)`.

`modelXtChart` is
`𝔽₂[a,b][X,Y,U,V] / (X·U, Y − X·V, Y² − X³, U + X² + X·V²)`,
equivalent to `D₊(Xt)` by `modelXtChart_equiv_DplusXt`.
`modelRelationIdeal` drops `U + X² + X·V²`.

`BealEven` does not import `Beal/MathlibMissing/Family.lean`.
Printed axioms of the new declarations are `propext`, `Classical.choice`,
and `Quot.sound`. `lake build BealEven` and `lake build BealMathlibMissing`
both exit 0.

## About: working v33 even-valuation blow-up

The local 2-adic even branch starts from the Tate normal form
`y² + xy = x³ + a₂x² + a₄x + a₆` (or the corresponding translated
Weierstrass equation over `ℤ_[2]`). Write
`R_Z = ℤ_[2][X,Y]/(f)`, `I = (2,X,Y)`, and
`Rees(I) = ⊕ₙ Iⁿtⁿ`. For translated charts satisfying the
coefficient divisibility hypotheses of the even nodal branch, on `D₊(2t)`
the divided presentation is `Spec(ℤ_[2][U,V]/(F))`, with
`f(2U,2V) = 4F`.
The `D₊(Xt)` and `D₊(Yt)` presentations use saturated graph
ideals, not unsaturated ones. The homogeneous ideal generated by
`(2)` in `Rees(I)` yields the graded quotient `ReesMod2`. A three-open cover of
`Proj(ReesMod2)` and the v33 global gluing with the three explicit
polynomial-chart spectra are checked. Product overlaps are abstract
pullbacks; no product-overlap polynomial presentation is claimed.

As an illustrative specialization, not a separately named Lean theorem,
for `y² + xy = x³ + 8` the reduced `2t` equation is
`V² + UV = 0`; its point `(U,V) = (0,0)` is only in
`D₊(overline{2t})`. See
[`Beal/RELEASE_NOTES_v33.md`](Beal/RELEASE_NOTES_v33.md) for the
checked file ledger and limits. The existing generic-fibre
comparison lives in `TateEvenGenericFibre.lean`;
`TateEvenBranchGenericFibre.lean` (59 lines) now packages the
actual blow-up's generic-fibre isomorphism over `D(2)`, without
changing the existing `TateEvenBranch.lean`. This working version has not
been tagged or minted.

For v33, [`beal-conjecture`](https://github.com/DavidFox998/beal-conjecture)
is the main whole-project audit repository and intended GitHub-release and
Zenodo deposit source. [`beal-level-26-foundations`](https://github.com/DavidFox998/beal-level-26-foundations)
is the work-repository mirror, to be synchronized after minting. The checked
global statement is `Proj(ReesMod2) ≅ Glue(S_2t/(2), S_Xt/(2), S_Yt/(2))`,
with abstract pullback overlaps; no global identification with the actual
special-fibre pullback or degree-one/nonvanishing certificate is claimed.
The DOI badges above and the older release citations below identify
historical foundations records, **not** a v33 DOI.

## End-of-proof interface and v25 forward retrofit

The immutable end-of-proof release is
[`v30.1.7-beal-final-43735b3`](https://doi.org/10.5281/zenodo.22912430)
at commit `995b9c4810869c1ce6531b32080e668c1f5ff233`, tree
`bce7290beae71b1213de18b52c861050164eb1b1`, annotated tag object
`4254aac7923b1ac48f33a5359c90c4e1bd242bf3`, GitHub release
`394412409`, and version DOI
[10.5281/zenodo.22912430](https://doi.org/10.5281/zenodo.22912430).
`BealFinal/Main.lean` packages the six-stage
Tate–Mazur–Ribet–Kolyvagin–Conditional-32–Requires ledger and keeps the
general Beal common-prime conclusion as explicit `BealFinalData` input.

The post-final retrofit
[`v25.0.1-forward-43735b3`](https://doi.org/10.5281/zenodo.22922473)
is commit `385ff85c78c351de83b3fd625a208c9dea003647`, tree
`4be5f2f8fc9ee3dd31893a6c99e6b22728e2ca6b`, annotated tag object
`626bbf615e9365a8af4b9f1b290259adee2936fd`, GitHub release `394869393`,
and version DOI
[10.5281/zenodo.22922473](https://doi.org/10.5281/zenodo.22922473).
`BealMatveevBealV25B0Search.Forward` exposes `MatveevBoundData`,
`Level26SearchData`, `MatveevLevel26ForwardData`, `B0_search_forward`,
`beal_matveev_level26_forward`, and `v25_numerical_surface_forward`.

The forward numerical surface records
`Δ = 16A⁸B⁸(A⁴+B⁴)²`, `v₂₉(Δ) = 26v₂₉(B+3)`,
`13 ∣ v₂₉(Δ)`, `928/29 = 32`, `32*29 = 928`,
`|SL₂(𝔽₁₃)| = 2184`, `48 < 2184`, `a₂₉ = -10`,
`L/Ω = 1/3, 1/7`, and `Sel₂_card = 1`. These numerals do not construct
the remaining mathematical boundaries. The `B < 1000` elimination is proved;
the exhaustive `B ≤ 10⁶` proposition and general Beal common-prime theorem
remain explicit inputs.

The clean combined build used 5,215 jobs:
`BealMatveevBealV25B0Search` at `5148/5215`,
`BealMatveevBealV25B0Search.Forward` at `5213/5215`, and
`BealFinal.Main` at `5214/5215`. The three retrofit projections report
exactly `[propext, Classical.choice, Quot.sound]`. Lean is `v4.12.0`,
Mathlib is `809c3fb3b5c8f5d7dace56e200b426187516535a`, and the manifest
SHA-256 is
`c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`.
No `lake update` or vendoring was used.

## Integrated Tate–Mazur–Ribet–Kolyvagin methodology

Branch `integrated-43735b3-full-tate-mazur-ribet-kolyvagin-conditional-32`
combines the four full formal surfaces and the conditional level-`32` bridge
over baseline `43735b3`.  The dependency order is mathematical rather than
promotional:

1. the Frey model proves
   `Δ = 16 A⁸ B⁸ (A⁴ + B⁴)²`;
2. the local numerical layer proves
   `v₂₉(Δ) = 26 v₂₉(B+3)` and `13 ∣ v₂₉(Δ)`;
3. the displayed conductor arithmetic proves `928 / 29 = 32` and
   `32 * 29 = 928`;
4. the Mazur surface proves the independent numerals
   `|SL₂(𝔽₁₃)| = 2184` and `48 < 2184`;
5. the Kolyvagin surface preserves the displayed normalized values
   `L/Ω = 1/3` and `1/7`, the displayed `Sel₂_card = 1`, and the distinction
   between `¬ Subsingleton E(ℚ)` and `Nonempty (Fintype E(ℚ))`; and
6. `Conditional32Newform.Bridge` combines the proved Frey numerics with
   explicit Mazur, Tate, and Ribet hypotheses.  Its conclusion is evidence
   for the conditional chain, not a constructed Mathlib newform.

The modules interact as follows.  `TateCurve` isolates the local
uniformization, Néron-conductor, and inertia obligations at `29`.
`MazurCurve` isolates the geometric `X₀(13)` and absolute-irreducibility
obligations.  `RibetCurve` consumes modularity, irreducibility, local
conductor, and unramifiedness data to state genuine lowering from `928` to
`32`, followed by identification and elimination.  `KolyvaginCurve` is a
separate analytic and Mordell–Weil line: it does not replace any input to
level lowering.  `RequiresTateMazurRibetFor32.Doc` records this separation and
the exact remaining foundations.

The formal boundary remains substantial and explicit: Wiles/BCDT modularity
for the displayed Frey curve; its geometric mod-`13` Galois representation
and absolute irreducibility; Tate uniformization, Tate's algorithm, a Néron
model, cyclotomic inertia, and mod-`13` unramifiedness at the required primes;
genuine Ribet level lowering; identification of the resulting level-`32`
newform with `32a1`; and a complete Kraus treatment of every bad-reduction
class.  On the Kolyvagin side, formal elliptic-curve `L`-functions, periods,
Kato–Kolyvagin implications, Mordell–Weil finite generation, Selmer exact
sequences, and concrete `Fintype` witnesses remain unavailable at this pin.
No numerical display is presented as a substitute for these constructions.

## Working branch `tate-v29` (from `phase-darmon-merel-4413` `43735b3`)

Tate display at `29` for Frey `A⁴+B⁴=C¹³`. Inhabited: Mathlib `Δ = 16 A⁸ B⁸ (A⁴+B⁴)²`, `v₂₉(Δ) = 26 v₂₉(C)` when `29 ∤ AB`, residual `32`/`928`, numeral `928/29 = 32`, `v₂₉(Δ) ≥ 0`. Still `def Prop`: Tate’s algorithm, Néron `N_E`, `Frey_conductor_29_is_Neron`. See [`docs/tate-v29/README.md`](docs/tate-v29/README.md). Do **not** merge to `phase-darmon-merel-4413` yet. beal-conjecture v26 `5e2906b` / badge `5806dad` / DOI `10.5281/zenodo.22832505` stays untouched.

## Working branch `mazur-x0-13` (from `phase-darmon-merel-4413` `43735b3`)

Mazur via `X₀(13)`. Inhabited: genus Nat `0`, cusp count `2`, `|SL₂(𝔽₁₃)| = 13·12·14 = 2184`, `48 < 2184`, `13 = 2²+3²`, `288/48 = 6`. Does **not** inhabit `X₀(13)(ℚ) = {2 cusps}` (genus 0 ⇒ infinitely many rational points). Still `def Prop`: `X0_13_Q_infinite`, Frey `ρ_{E,13}` irreducible, Serre non-Borel, `mazur_no_Frey_13_isogeny`. See [`docs/mazur-x0-13/README.md`](docs/mazur-x0-13/README.md) and [`docs/roadmap_without_wiles/README.md`](docs/roadmap_without_wiles/README.md). Do **not** merge to `phase-darmon-merel-4413` yet. beal-conjecture v26 `5e2906b` / `5806dad` stays untouched.

## Working branch `ribet-928-32` (from `phase-darmon-merel-4413` `43735b3`)

Ribet display `928/29=32`. Inhabited: numeral `928/29=32`, `32·29=928`, `928≠32`, `29 ∤ 32`, residual `32` when `29 ∤ AB` and `928` when `29 ∣ AB`. Still `def Prop`: abstract Ribet `Ribet_928_to_32`, `no_newforms_at_32_mod13`, `explicit_a29_mod13`. See [`docs/ribet-928-32/README.md`](docs/ribet-928-32/README.md). Do **not** merge to `phase-darmon-merel-4413` yet. beal-conjecture v26 `5e2906b` / `5806dad` stays untouched.

## Working branch `kolyvagin-fintype` (from `phase-darmon-merel-4413` `43735b3`)

Kolyvagin display for Cremona `26a1`/`26b1`. Inhabited: `¬IsRankZero` via `(4,4)`/`(1,0)`, `L/Ω = 1/3` and `1/7`, `|Sel₂|=1`, `3·7=21`, `2⁰=1`, Sage `certified_mwrank` display `0`, `Δ = -17576` / `-1664`. Algebraic MW rank 0 as `Nonempty (Fintype (E(ℚ)))` stays `def Prop` (not Subsingleton). Kato/Kolyvagin implication stays `def Prop`. See [`docs/kolyvagin-fintype/README.md`](docs/kolyvagin-fintype/README.md). Do **not** merge to `phase-darmon-merel-4413` yet. beal-conjecture v26 `5e2906b` / `5806dad` stays untouched.

[![Matveev-Beal CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml)

This repo is foundations-level-26, the Matveev proof for beal-conjecture f7bbdc5. Current HEAD: 0 sorry. `matveev_gap3_lower` is the **B≤10^6 integer-gap** close (`|Λ| > exp(-height_B0 log height_B0)` on gap-3 solutions with `B ≤ 10^6`) via `matveev_thm14_n2_explicit_of_nat` and `matveev_product_bound_of_B_le_B0`. `MatveevLLL.lean` proves the elementary CF lemmas (`4/13` is a convergent of the log ratio; integer gap `<` `B⁴/A⁴`), the upper bound `|Λ| < 1/B`, that `1/max(4 log A, 13 log(B+3))` is **not** a lower bound on a solution, the C=10³⁰ floor-form approximation `|4⌊C log A⌋ − 13⌊C log(B+3)⌋ − C Λ| < 17`, and the rank-3 lattice setup (`det L = C`, `v = 4 b₁ − 13 b₂ ∈ L`, on a solution with `B > 10⁶` the tight ratio makes `C|Λ| < 1` so `‖v‖ < 32` and `λ₁ < 32`). Minkowski does not enlarge `|Λ|`. It proves Lovász `‖bᵢ*‖² ≥ (1/2) ‖bᵢ₋₁*‖²`, the swap factor `D < (3/4) D`, integer displayed `‖b₁‖²`, nearest-integer size-reduction, and `‖b₁‖ ≤ 2 λ₁` for an LLL-reduced Z-basis (`lll_svt_bound_of_reduced`). `baker_davenport_gs_lower` is the rearrangement `r ≤ |v₃|` and `17 < r` ⇒ `|Λ| ≥ (r−17)/C`; on `B > 10⁶` one has `|v₃| < 18`, so this does not beat `|Λ| < 1/B`. `lll_algorithm_terminates` is now a theorem: the displayed rank-3 lattice has an LLL-reduced generating triple (size-reduction is finite; each Lovász-failing swap drops the integer potential `D=d₁d₂d₃` by a factor `< 3/4`). Displayed `lll_svt_bound` (`‖b₁‖ ≤ 2^{(n-1)/2} λ₁ = 2 λ₁` for `n=3`) and `lll_det_bound` (`‖b₁‖ ≤ 2^{(n-1)/4} det^{1/n} = √2 · C^{1/3} ≈ 2.8e10`) are theorems; both are *upper* bounds on a short first vector and do **not** give `B ≤ 10⁶` — a reduced first vector is short (`‖b₁‖ ≤ 2λ₁ < 64`), the opposite of the large `r` that `baker_davenport_gs_lower` would need. `baker_davenport_no_cutoff` records that on `B > 10⁶` one has `|v₃| < 18`, so `r ∈ (17,18)` and `(r−17)/C < 10⁻³⁰ < 10⁻⁶`. `MatveevBugeaud.lean` proves the displayed-lattice no-go: `|v₃| < 17 + C|Λ|` so any usable `17 < r ≤ |v₃|` has `(r−17)/C < |Λ|`, hence cannot beat `|Λ| < 1/B` or `B⁴/A⁴`; `C/B0 = 10^{24}`; a reduced first vector satisfies `‖b₁‖ < 64`. It keeps `bugeaud_LLL_reduction_proof` / `baker_davenport_reduction` / `baker_bound_gap3` as uninhabited `def Prop` — `|Λ| < 1/B` does not force `B ≤ 10⁶` because the elementary gap is `1/(B+3)¹³ < 1/B`. `MatveevInterpolation.lean` starts genuine Matveev 2000 p.5 interpolation (Δ, Vandermonde, polynomial product theorem, Hadamard, higher-order Schwarz, Cauchy estimates, Siegel / G_a jet vanishing) and proves the bare-real ∀-reals claim is **false**. The analytic `|Δ| ≤ exp(−c L K)` bound is **conditional** on a vanishing-order hypothesis; polynomial vanishing and the G_a jet of `Φ` (`α1=α2=1`) are inhabited. Independent frequencies make the order-`N` jet of `{z^ℓ α1^{k1 z} α2^{k2 z}}` injective (`wuestholz_product_theorem_exp_Gm`, also as `P ∈ ℤ[y0,y1,y2]`); the full-order disjunction is `P = 0 ∨` dependence. Proper algebraic subgroups of `𝐆_a × 𝐆_m²` that can contain `W` are classified; independence keeps `W` out of every candidate (`W_not_in_proper_candidate_of_indep`). Intermediate `T ≥ c L K` is strictly weaker than full jet order and reduces to the inhabited disjunction only when `(L+1)(N1+1)(N2+1) ≤ c L K`. Uniformly in `N1,N2` the subgroup theorem stays `def Prop` (Philippon is not in Mathlib 4.12) and does not close `C1_floor`. `WuestholzSubgroup.lean` records the intermediate-`T` no-go: `c = 1/2`, `1/242`, `1/1000` all lose to `coeffCount 1 10 10 = 242`, and even linear `K ∼ N1+N2` has no uniform `c`. `WuestholzProduct.lean` packages the inhabited product theorem as `T < coeffCount ∨ P = 0 ∨` dependence (displayed `1 10 10` is `T < 242`); the uniform exponential product theorem stays `def Prop`. `floor_form_approx_of_C` holds for every scaling `C`; `baker_davenport_reduction_nogo` / `bugeaud_LLL_method_fails` prove no `C` produces a Baker–Davenport witness above `17 + C/B0` on `B ≥ B0`. `MatveevThreeLogs.lean` proves the log-method no-go: a dummy third logarithm does not change `Λ` (`Lambda3 = Lambda`); `log B0 > 13` so any `C1 ≥ 1` (including `C1_floor`, the jet `242`, and the ideal `C1 = 1`) gives `exp(−C1 log A log(B+3)) < B⁴/A⁴` on a solution with `B ≥ B0`; a four-factor jet is cubic (`coeffCount3 0 10 10 10 = 1331`) and still has no uniform `c`. `baker_bound_gap3` stays `def Prop`. `BealKraus.lean` proves the displayed Frey discriminant `16 A⁸ B⁸ (B+3)²⁶` and the valuation obstruction `13 ∣ 26` / `13 ∤ 8`: `C` is a Ribet-lowering candidate at `13` while primes `p ∤ 6` dividing `A` are not, so this curve is not a Fermat-style uniform level-`32` check. `BealKrausZsig.lean` proves the Gaussian/Thue argument-form no-go: `N(A²+iB²)=(B+3)¹³`; a Matveev-style bound on `|sin(13θ)|` beats `B⁴/C¹³` only for `C1 < 5/log 13 < 2`, so `C1_floor`, `242`, and even `C1=2` lose on `B≥B0`. Zsigmondy / Mihăilescu / `A²+iB² = ε(u+iv)¹³` stay `def Prop`. `BealCatalanZsig.lean` proves gap-3 is not Catalan shape, `3 ∤ B` gives `gcd(A,B)=1` so a Zsigmondy prime in `B` does not force `13 ∣ v_p(A)`, and the same `C1 < 2` cutoff still fails. `BealDarmonMerel.lean` proves `3 ∣ B` forces `3 ∣ A` so Darmon–Merel coprime hypothesis fails; `13 ∣ 26` / `13 ∤ 8` so an unlowered prime in `A` makes the residual estimate not divide 32. Darmon–Merel / Ribet stay `def Prop`. `BealDarmonMerel44p.lean` proves the displayed residual is not 32 on `B > 0` and that `A = a¹³`, `B = b¹³` is Fermat exponent 13. `BealFLT13.lean` proves there are no gap-3 solutions with `3 ∣ B` by 3-adic descent, so every solution is coprime — Darmon–Merel's remaining case, still not in Mathlib 4.12. `BealGenuineV25.lean` proves that Darmon–Merel `(4,4,13)` would close `baker_bound_gap3` vacuously, but that statement is not a theorem here, and a `B ≥ B0` solution would refute it. `BealTrueV25.lean` takes Darmon–Merel `(4,4,13)` as `axiom darmon_merel_4413_axiom` and inhabits `baker_bound_gap3_true` (kernel `baker_bound_gap3`) vacuously via 3-adic descent + `ex falso`. That inhabitant is axiom-relative (`[propext, Classical.choice, Quot.sound, darmon_merel_4413_axiom]`), 0 sorry, not Mathlib 4.12, and not the minted unconditional v25 tag. `BealUnconditionalV25.lean` proves `baker_bound_gap3_unconditional_nogo`: `hGen` and `hLLL` stay `def Prop` and cannot cut `B ≤ 10⁶` (every `C1 ≥ 1` loses to `B⁴/A⁴`; no Baker–Davenport witness above `17+C/B0`; cubic jet `1331`). `BealGap1.lean` proves `baker_bound_gap1_unconditional_nogo` for `A⁴+B⁴=(B+1)¹³`: coprime from the start, `3 ∣ B` compatible, same log/LLL lose, `(1,0)` is a solution. `BealGap2.lean` proves `baker_bound_gap2_unconditional_nogo` for `A⁴+B⁴=(B+2)¹³`: `B` odd `A` even, `3 ∣ B` impossible like `f1cb039`, same log/LLL lose, no `(1,0)`. `BealGap4.lean` proves `baker_bound_gap4_unconditional_nogo` for `A⁴+B⁴=(B+4)¹³`: `B` odd `A` even, `3 ∣ B` compatible like gap-1, `5 ∣ B` impossible, same log/LLL lose, no `(1,0)`. `BealGap5.lean` proves `baker_bound_gap5_unconditional_nogo` for `A⁴+B⁴=(B+5)¹³`: `B` even `A` odd, `3 ∣ B` impossible like `f1cb039`, `5 ∣ B` impossible by 5-descent, same log/LLL lose, no `(1,0)`. `BealGap6.lean` proves `baker_bound_gap6_unconditional_nogo` for `A⁴+B⁴=(B+6)¹³`: `B` odd `A` even, even `B` dies as `6` or `14` mod 16, `3 ∣ B` impossible by 3-descent (`C₁=B₁+2≡2`), `5 ∣ B` compatible (`C≡1 mod 5`), same log/LLL lose, no `(1,0)`. `BealGap7.lean` proves `baker_bound_gap7_unconditional_nogo` for `A⁴+B⁴=(B+7)¹³`: `B` even `A` odd, `3 ∣ B` compatible (`C≡1`), `5 ∣ B` impossible (`C≡2 mod 5`), `7 ∣ B` impossible by 7-descent (`C₁=B₁+1≡1`), same log/LLL lose, no `(1,0)`. `BealGap8.lean` proves `baker_bound_gap8_unconditional_nogo` for `A⁴+B⁴=(B+8)¹³`: `B` odd `A` even, even `B` dies after nine `/2` as residue `8` mod 16, `3 ∣ B` impossible (`C≡2 mod 3`), `5 ∣ B` impossible (`C≡3 mod 5`), `7 ∣ B` compatible (`C≡1`), same log/LLL lose, no `(1,0)`. `BealGap9.lean` proves `baker_bound_gap9_unconditional_nogo` for `A⁴+B⁴=(B+9)¹³`: `B` even `A` odd, `3 ∣ B` impossible by 3-descent (`C₁=B₁+3` picks up another `3`, then `9 X = (3 B₃+1)¹³` with `3 B₃+1 ≡ 1`), `5 ∣ B` impossible (`C≡4 mod 5`), `7 ∣ B` compatible (`C≡2`, `A⁴ ≡ 2`), same log/LLL lose, no `(1,0)`. `BealGap10.lean` proves `baker_bound_gap10_unconditional_nogo` for `A⁴+B⁴=(B+10)¹³`: `A` even; even `B` reduces after three `/2` to last-step `2(4B₃+5)¹³` (even `B₃` / `5∣B₃` / `B≡1,3` die; leftover both-odd 5-free `B₃≡2∨4`); `3 ∣ B` compatible (`C≡1`); `5 ∣ B` impossible by original 5-descent (`C₁=B₁+2`); `7 ∣ B` impossible (`C≡3`); odd `B` is coprime Darmon–Merel; same log/LLL lose, no `(1,0)`. `BealGap11.lean` proves `baker_bound_gap11_unconditional_nogo` for `A⁴+B⁴=(B+11)¹³`: `B` even `A` odd (odd `B` dies mod 16, like gap-1/5/7/9); `3 ∣ B` impossible (`C≡2 mod 3`, same as gap-2/5/8); `11 ∣ B` impossible by 11-descent (`C₁=B₁+1≡1`); `5 ∣ B` compatible (`C≡1`, `A⁴ ≡ 1`); `7 ∣ B` compatible (`C≡4`, `A⁴ ≡ 4`); remaining coprime Darmon–Merel; same log/LLL lose, no `(1,0)`. `BealGap12.lean` proves `baker_bound_gap12_unconditional_nogo` for `A⁴+B⁴=(B+12)¹³`: `B` odd `A` even (even `B` dies after six `/2` as residue `12` mod 16, like gap-4); `3 ∣ B` impossible by 3-descent (`C₁=B₁+4≡1`); `5 ∣ B` impossible (`C≡2 mod 5`); `7 ∣ B` impossible (`C≡5 mod 7`); remaining coprime Darmon–Merel; same log/LLL lose, no `(1,0)`. `BealGap13.lean` proves `baker_bound_gap13_unconditional_nogo` for `A⁴+B⁴=(B+13)¹³`: `B` even `A` odd (odd `B` dies mod 16, like gap-1/5/7/9/11); `3 ∣ B` compatible (`C≡1`, `A⁴ ≡ 1`); `5 ∣ B` impossible (`C≡3 mod 5`); `7 ∣ B` impossible (`C≡6 mod 7`); `11 ∣ B` impossible (`C≡2`, `C¹³ ≡ 8`); `13 ∣ B` impossible by 13-descent (`C₁=B₁+1≡1`); remaining coprime Darmon–Merel; same log/LLL lose, no `(1,0)`. `BealGap14.lean` proves `baker_bound_gap14_unconditional_nogo` for `A⁴+B⁴=(B+14)¹³`: `B` odd `A` even (even `B` dies after three `/2` as `2(4B₃+7)¹³` residue `6` or `14`); `3 ∣ B` impossible (`C≡2 mod 3`); `5 ∣ B` impossible (`C≡4 mod 5`); `7 ∣ B` impossible by 7-descent (`C₁=B₁+2≡2`); remaining coprime Darmon–Merel; same log/LLL lose, no `(1,0)`. `BealGap15.lean` proves `baker_bound_gap15_unconditional_nogo` for `A⁴+B⁴=(B+15)¹³`: `B` even `A` odd (odd `B` dies mod 16, like gap-1/5/7/9/11/13); `3 ∣ B` impossible by 3-descent (`C₁=B₁+5≡2`, last `27 X`); `5 ∣ B` impossible by 5-descent (`C₁=B₁+3≡3`, last `125 X`); `7 ∣ B` compatible (`C≡1`, `A⁴ ≡ 1`); remaining coprime Darmon–Merel; same log/LLL lose, no `(1,0)`. `BealGapK.lean` proves generic `k` infrastructure: odd `k` ⇒ `B` even `A` odd; even `k` ⇒ `A` even only; not `∀k ¬sol`. `EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean` re-exports those wrappers and proves `C<100` only when `A,B≤B0`; on `B≥B0` one has `C≥1000001`, so `C≤73` is not a Baker close; `baker_bound_B0_1e6` / `hGen_padic` / `hLLL_padic` stay `def Prop`; v25 is not minted. `L≥1` and `α1=α2=1` forces `Δ=0`. C1_floor=143186215390. B0_nat=1000000. Not unrestricted `matveev_inequality_real_target` (product false for huge B), not `hLLL`. lake build BealMatveevBeal green. NOT waiting on Mathlib.

Monorepo beal-conjecture stays beal-conjecture, this repo is foundations-level-26 Matveev-Beal complement.

## BealMatveevBeal — Matveev–Beal Gap-3 / Gap-1 / Gap-2 / Gap-4 / Gap-5 / Gap-6 / Gap-7 / Gap-8 / Gap-9 / Gap-10 / Gap-11 / Gap-12 / Gap-13 / Gap-14 / Gap-15 / Gap-K / Effective p-adic / Bugeaud–Laurent / p-adic LLL Documentation

Concept DOI: **10.5281/zenodo.22379293**
Latest tag: **v24-v24x-final-rank3-b0-div-c-nogo** (successor of `v24-v24x-final-rank3-shape-nogo` at `c1d173e`)
Lean: Mathlib 4.12 — foundations-level-26 — beal-conjecture stays beal-conjecture
Build: `lake build BealMatveevBeal` green — `./scripts/verify-matveev-beal.sh` green — 0 sorry

### Current status: `baker_bound_gap3` / `baker_bound_gap1` / `baker_bound_gap2` / `baker_bound_gap4` / `baker_bound_gap5` / `baker_bound_gap6` / `baker_bound_gap7` / `baker_bound_gap8` / `baker_bound_gap9` / `baker_bound_gap10` / `baker_bound_gap11` / `baker_bound_gap12` / `baker_bound_gap13` / `baker_bound_gap14` / `baker_bound_gap15` / `baker_bound_gapK` / `baker_bound_B0_1e6` stay `def Prop` uninhabited

- **`baker_bound_gap3` `def Prop` uninhabited** — `∀ A B, A^4+B^4=(B+3)^13 → B ≤ B0_nat` with `B0_nat=1000000` `rfl`, `C1_floor=143186215390` `rfl` — named theorem stays `def Prop` — unconditional tag `v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations` **not minted**.
- **`f1cb039` `no_sol_when_three_dvd_B` closed** — no gap-3 solutions with `3∣B`; remaining solutions coprime.
- **`b71eb73` axiom-relative close** — `BealTrueV25.baker_bound_gap3_true` via `axiom darmon_merel_4413_axiom`; not the minted unconditional tag.
- **`563e8e3` `baker_bound_gap3_unconditional_nogo`** — `hGen` / `hLLL` lose; `#print axioms` `[propext, Classical.choice, Quot.sound]` only.
- **Gap-1 `BealGap1`** — `A^4+B^4=(B+1)^13` is coprime from the start; `3∣B` is compatible (`A^4≡1 mod 3`); `(1,0)` is a solution; `baker_bound_gap1` stays `def Prop`; `baker_bound_gap1_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap1_true` reuses the existing Darmon–Merel axiom.
- **Gap-2 `BealGap2`** — `A^4+B^4=(B+2)^13`; `B` odd and `A` even (`B` even dies mod 16); `3∣B` impossible (`C≡2 mod 3`, same idea as `f1cb039`); `(1,0)` is not a solution; `baker_bound_gap2` stays `def Prop`; `baker_bound_gap2_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap2_true` reuses the existing Darmon–Merel axiom.
- **Gap-4 `BealGap4`** — `A^4+B^4=(B+4)^13`; `B` odd and `A` even (`B` even dies as `4·odd` mod 16); `3∣B` compatible (`C≡1 mod 3`, like gap-1); `5∣B` impossible (`C≡4 mod 5`); `(1,0)` is not a solution; `baker_bound_gap4` stays `def Prop`; `baker_bound_gap4_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap4_true` reuses the existing Darmon–Merel axiom.
- **Gap-5 `BealGap5`** — `A^4+B^4=(B+5)^13`; `B` even and `A` odd (odd `B` dies mod 16, like gap-1); `3∣B` impossible (`C≡2 mod 3`, same idea as `f1cb039` / gap-2); `5∣B` impossible (5-descent dies as RHS `≡1` mod 5); `(1,0)` is not a solution; `baker_bound_gap5` stays `def Prop`; `baker_bound_gap5_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap5_true` reuses the existing Darmon–Merel axiom.
- **Gap-6 `BealGap6`** — `A^4+B^4=(B+6)^13`; `B` odd and `A` even (even `B` dies as `6` or `14` mod 16, not gap-2’s `2` or `10`); `3∣B` impossible by 3-descent (`C₁=B₁+2≡2`, same idea as `f1cb039` / gap-3); `5∣B` compatible (`C≡1 mod 5`); `(1,0)` is not a solution; `baker_bound_gap6` stays `def Prop`; `baker_bound_gap6_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap6_true` reuses the existing Darmon–Merel axiom.
- **Gap-7 `BealGap7`** — `A^4+B^4=(B+7)^13`; `B` even and `A` odd (odd `B` dies mod 16, like gap-1/5); `3∣B` compatible (`C≡1 mod 3`, like gap-1/4); `5∣B` impossible (`C≡2 mod 5`); `7∣B` impossible by 7-descent (`C₁=B₁+1≡1`); `(1,0)` is not a solution; `baker_bound_gap7` stays `def Prop`; `baker_bound_gap7_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap7_true` reuses the existing Darmon–Merel axiom.
- **Gap-8 `BealGap8`** — `A^4+B^4=(B+8)^13`; `B` odd and `A` even (even `B` dies after nine `/2` as residue `8` mod 16, not gap-2/4/6); `3∣B` impossible (`C≡2 mod 3`, same idea as `7a1c53b` / `59d8a4a`); `5∣B` impossible (`C≡3 mod 5`); `7∣B` compatible (`C≡1 mod 7`); `(1,0)` is not a solution; `baker_bound_gap8` stays `def Prop`; `baker_bound_gap8_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap8_true` reuses the existing Darmon–Merel axiom.
- **Gap-9 `BealGap9`** — `A^4+B^4=(B+9)^13`; `B` even and `A` odd (odd `B` dies mod 16, like gap-1/5/7); `3∣B` impossible by 3-descent (`C₁=B₁+3` picks up another `3`, then `9 X = (3 B₃+1)¹³` with `3 B₃+1 ≡ 1`, like `f1cb039` / gap-6); `5∣B` impossible (`C≡4 mod 5`, same as gap-4); `7∣B` compatible (`C≡2 mod 7`, `A⁴ ≡ 2`); `(1,0)` is not a solution; `baker_bound_gap9` stays `def Prop`; `baker_bound_gap9_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap9_true` reuses the existing Darmon–Merel axiom.
- **Gap-10 `BealGap10`** — `A^4+B^4=(B+10)^13`; `A` is even; even `B` reduces after three `/2` to last-step `A₃⁴+B₃⁴=2(4B₃+5)¹³` (even `B₃` dies as residue `10`; last-step `5∣B₃` dies by descent; `B≡1,3 mod 5` die; leftover both-odd 5-free `B₃≡2∨4`); `3∣B` compatible (`C≡1`); `5∣B` impossible by original 5-descent (`C₁=B₁+2`); `7∣B` impossible (`C≡3`); odd `B` is coprime Darmon–Merel; `(1,0)` is not a solution; `baker_bound_gap10` stays `def Prop`; `baker_bound_gap10_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap10_true` on odd `B` reuses the existing Darmon–Merel axiom.
- **Gap-11 `BealGap11`** — `A^4+B^4=(B+11)^13`; `B` even and `A` odd (odd `B` dies mod 16, like gap-1/5/7/9); `3∣B` impossible (`C≡2 mod 3`, same as gap-2 `7a1c53b` / gap-5 `59d8a4a` / gap-8 `bf43afc`); `11∣B` impossible by 11-descent (`A=11A₁ B=11B₁ C=11(B₁+1)`, then `1331 X=(B₁+1)¹³` with `B₁+1≡1`); `5∣B` compatible (`C≡1`, `A⁴≡1`); `7∣B` compatible (`C≡4`, `A⁴≡4`); remaining `3∤B` `11∤B` are coprime Darmon–Merel; `(1,0)` is not a solution; `baker_bound_gap11` stays `def Prop`; `baker_bound_gap11_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap11_true` reuses the existing Darmon–Merel axiom.
- **Gap-12 `BealGap12`** — `A^4+B^4=(B+12)^13`; `B` odd and `A` even (even `B` dies after six `/2` as residue `12` mod 16, like gap-2 `7a1c53b` / gap-4 `5388a60` / gap-6 `8425abd` / gap-8 `bf43afc` / gap-10); `3∣B` impossible by 3-descent (`C₁=B₁+4≡1`, like gap-3 `563e8e3` / gap-6); `5∣B` impossible (`C≡2 mod 5`, same as gap-2 / gap-8 / gap-9); `7∣B` impossible (`C≡5 mod 7`, not in `{0,1,2,4}`, new versus gap-10 `C≡3`); remaining `3∤B` `5∤B` `7∤B` are coprime Darmon–Merel; `(1,0)` is not a solution; `baker_bound_gap12` stays `def Prop`; `baker_bound_gap12_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap12_true` reuses the existing Darmon–Merel axiom.
- **Gap-13 `BealGap13`** — `A^4+B^4=(B+13)^13`; `B` even and `A` odd (odd `B` dies mod 16, like gap-1/5/7/9/11); `3∣B` compatible (`C≡1`, `A⁴≡1`); `5∣B` impossible (`C≡3 mod 5`); `7∣B` impossible (`C≡6 mod 7`); `11∣B` impossible (`C≡2`, `C¹³≡8` vs `{0,1,3,4,5,9}`, not the gap-11 11-descent); `13∣B` impossible by 13-descent (`C₁=B₁+1≡1`, last `2197 X=(B₁+1)¹³`); remaining `5∤B` `7∤B` `11∤B` `13∤B` are coprime Darmon–Merel (including the `3∣B` branch); `(1,0)` is not a solution; `baker_bound_gap13` stays `def Prop`; `baker_bound_gap13_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap13_true` reuses the existing Darmon–Merel axiom.
- **Gap-14 `BealGap14`** — `A^4+B^4=(B+14)^13`; `B` odd and `A` even (even `B` dies after three `/2` as `2(4B₃+7)¹³` residue `6` or `14`, like gap-2/6); `3∣B` impossible (`C≡2 mod 3`, same as gap-2/5/8/11); `5∣B` impossible (`C≡4 mod 5`, same as gap-4/9); `7∣B` impossible by 7-descent (`C₁=B₁+2≡2`, last `343 X=(B₁+2)¹³`, like gap-7); remaining `3∤B` `5∤B` `7∤B` are coprime Darmon–Merel; `(1,0)` is not a solution; `baker_bound_gap14` stays `def Prop`; `baker_bound_gap14_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap14_true` reuses the existing Darmon–Merel axiom.
- **Gap-15 `BealGap15`** — `A^4+B^4=(B+15)^13`; `B` even and `A` odd (odd `B` dies mod 16, like gap-1/5/7/9/11/13); `3∣B` impossible by 3-descent (`C₁=B₁+5≡2`, last `27 X=(B₁+5)¹³`, like gap-3/6/12); `5∣B` impossible by 5-descent (`C₁=B₁+3≡3`, last `125 X=(B₁+3)¹³`, like gap-5/10); `7∣B` compatible (`C≡1`, `A⁴≡1`); remaining `3∤B` `5∤B` are coprime Darmon–Merel; `(1,0)` is not a solution; `baker_bound_gap15` stays `def Prop`; `baker_bound_gap15_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; axiom-relative `baker_bound_gap15_true` reuses the existing Darmon–Merel axiom.
- **Gap-K `BealGapK`** — generic `A^4+B^4=(B+k)^13`; odd `k` forces `B` even and `A` odd; even `k` forces `A` even only (not `B` odd — gap-10 leftover); `gcd(B,B+k)∣k`; `p∣k` and `p∣B` force `p∣A`; `v_p(k)=1` descents for `p=3,5,7,11,13`; residue kills with congruence hypotheses; remaining coprime solutions are Darmon–Merel `(4,4,13)`; **not** `∀k ¬sol` (`(1,0)` and `k=m⁴`, `B=0`); recovers axiom closes for gaps 2..9,11..15 and odd-`B` gap-10; `baker_bound_gapK` stays `def Prop`; `baker_bound_gapK_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only.
- **Effective level-lowering / p-adic `EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6`** — GapK wrappers; conditional `C<100` when `A,B≤B0` (`C¹³≤2·10²⁴<10²⁶=100¹³`); on `B≥B0` and `k≥1` one has `C≥1000001` so `C≤73` / `B≤72` do not apply; `baker_bound_B0_1e6` / `hGen_padic` / `hLLL_padic` stay `def Prop`; Bugeaud–Laurent / Kraus / Oesterlé / Ribet-to-32 / FLT 13 are not in Mathlib 4.12; `baker_bound_B0_1e6_unconditional_nogo` `[propext, Classical.choice, Quot.sound]` only; **v25 not minted**.
- **Bugeaud–Laurent import plan `BugeaudLaurent`** — Mathlib 4.12 has `ℚ_[p]` / `padicValNat` but no Iwasawa `log_p`, no Bugeaud–Laurent 1996, no p-adic LLL, no `dim S₂(32)=1`; the 2-adic valuation of `A⁴+B⁴=C¹³` is compatible on odd `k` (`v₂=0` on both sides); real logs lose at `C1=1` and at the placeholder `1000`; `bugeaud_laurent_1996_two_logs` / `p_adic_LLL_reduction` / `baker_bound_B0_1e6` stay `def Prop`; does **not** fork Mathlib; **v25 not minted**.
- **p-adic LLL / window no-go `PAdicLLL`** — Mathlib 4.12 has `PadicInt` / `ℤ_[p]` but no LLL module; on a gap-`k` solution with `k≥1` and `B≥2` one has `¬ A ≤ B+10`, so the proposed `A ∈ [B, B+10]` `native_decide` shards cannot close `matveev_gap3_lower` (already the integer-gap `B≤B0` theorem); `4 ≤ 1000` does not bound `B`; the floor lattice `b1=(1,0)`, `b2=(⌊C_LLL α⌋, C_LLL)` contains `(1,0)` of Euclidean length `1 < B0`, so the draft Euclidean `lll_lower_bound` is false (`lll_euclidean_lower_bound_fails`); the unbounded `|u α + v| > exp(−B0)` draft is false by Dirichlet (`lll_form_lower_bound_fails`); `exp(−B0) < 1/C1_floor` so that bound cannot beat `|Λ| < 1/B`; `p_adic_LLL_reduction` / `LLL_reduces_bound_to_B0` / `LLL_reduces_bound_to_B0_theorem` / `hGen_padic` / `hLLL_padic` stay `def Prop`; does **not** inhabit `p_adic_LLL_reduced` as the constant true proposition; **v25 not minted**.
- **Integer-form / binary-log no-go `PAdicLLL_ZeroAxiom`** — the naive `u·a+v·C1` form always has kernel `(C1,-a)` in the claimed box with no gap-3 hypothesis; `Nat.sqrt C1_floor < B0_nat`, so Minkowski from `det=C1` cannot force `λ1≥B0`; `LLL_reduces_bound_to_B0_zero_axiom` stays `def Prop`; **v25 not minted**.
- **Rank-3 B0/C cutoff nogo `BealMatveevBealV25Rank3`** — **separate** Lake target, not in the default `BealMatveevBeal` glob (`lake build BealMatveevBeal` stays independent). Wraps `gap3_B_lt_A_of_sol` (`B < A`), `|Λ| < 1/B`, and rank-3 `v = 4 b₁ − 13 b₂` with `‖v‖ < 32` on `B > B0`. `C_LLL_v25 = C1_floor` (not `C1²`); `B0/C > 1/B` is true (`B0_div_C_gt_inv_B`); on a solution `|Λ| < 1/B < B0/C`, so `|Λ| ≥ B0/C` fails (`lll_B0_div_C_lower_bound_fails`). `λ₁ < 32 < B0`, so a vector of scale `C|Λ| < B0` is long versus `λ₁`. Does **not** import `MatveevThm14General`. Does **not** claim Euclidean length `≥ B0` or `|u α + v| > exp(−B0)` (`lll_euclidean_lower_bound_fails`, `lll_form_lower_bound_fails`). `LLL_reduces_bound_to_B0` / `LLL_reduces_bound_to_B0_v25` / `hGen` / `hLLL` stay `def Prop`; **v25 not minted**. Prior tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
- **Gap-3 `B ≤ B0` search slice `BealMatveevBealV25B0Search`** — **separate** Lake target (also compiles root `LLLTargetB8`). Mod-16 reject plus floor fourth-root (`Nat.sqrt` twice). `check_B_true_no_sol` extracts the Bool checker. `check_range` is `List.range.foldl` (not an `hi`-deep recursive loop); `check_range_true_of_all` is the foldl invariant. `∀ B < 1000` is ten `native_decide` shards of 100 (`shard_0_100` … `shard_900_1000`), not one shard of 1000 and not 100 shards through 10000. On a solution with `B ≥ 100`, `|Λ| ≤ 2/B⁹` (`abs_Lambda_lt_two_div_B_pow_nine`); that tightens `|Λ| < 1/B` but does not mint v25 (`abs_Lambda_ge_B_pow_neg_eight` / `LLL_reduces_C1_to_lt_nine` stay `def Prop`). Phase-lift lattices: old `L` with `C=10⁴⁸`, `b1=(1,0)` still has `λ₁=1` (no nonzero `ℤ×ℤ` vector of Euclidean length `< 1`); new `L'` with `b1'=(C, ⌊C log(B+3)⌋)`, `b2'=(0,C)`, `det=C²`, `λ₁=C`. `C/B⁸ ≤ 1` on `B≥B0`; `C·(2/B⁹) < C/2`. Candidate `v_short'` is in `L'` on `|Λ|<B⁻⁸` only if it is `0`. 3-dim `L3` with `C₃=10³⁰` has `det=C₃` and `λ₁=1` (not `C₃^{1/3}`); need `C1'≤8` vs typical `30`–`50`. The short-vector hyp of `LLL_lift_to_B8_of_short_vector_C48` stays uninhabited. The implication `|Λ| ≥ B⁻⁸` ⇒ no `B ≥ B0` solution is a theorem; the LLL hypothesis is not inhabited. The full `∀ B ≤ 10⁶` statement stays `def Prop` (`Gap3B0Million` wires 10k foldl shards of 100 as an implication, not a `native_decide` close). Root `LLLTargetB8_C1_lower_bound` proves `C1' ≤ 8` cannot hold on a solution (`2/B⁹ < 1/B⁸`); `LLL_reduces_C1_to_lt_nine` is equivalent to “no `B ≥ B0` solution” and `LLL_cannot_reach_B8` stays `def Prop`. Root `DarmonMerelFrey4413` is the displayed Frey curve `y²=x(x−A⁴)(x+B⁴)` (`Δ=16 A⁸ B⁸ (A⁴+B⁴)²`, on a solution `16 A⁸ B⁸ C²⁶`); Ribet-to-32 and the level-32 table stay `def Prop` (no new axiom). Root `Level32Table` recomputes LMFDB `32a1` (`a₃=0`, `a₅=−2`, `a₂₉=−10`) by `𝔽_p` point counts; `l=3,5` match so they do not eliminate, and `level_32_no_newform_for_Frey_gap3` stays `def Prop`. Root `Level928Table` splits `29 ∣ ABC` (at most one of `A,B,C`) and records displayed residual `928`; `level_928_no_match_bad_29` stays `def Prop`. Root `Ribet29C_Lowering` re-exports `v₂₉(Δ)=26 v₂₉(C)` and inhabits `a₇=−4 ≠ 0` on residue `(A,B)≡(2,3) (mod 7)`; Ribet-to-32 and the full `29 ∣ C` branch stay `def Prop` (residue `(1,6)` still matches). Root `Ribet29C_Residue16` recomputes `a₁₁(32a1)=0`; the `(1,6)` class is mixed at `l=11` (`a₁₁=0` lifts exist) so `full_29C_eliminated` stays `def Prop`. Root `Ribet29C_Residue16_L23` recomputes `a₂₃(32a1)=0` (not `−6`); the same class is mixed at `l=23`. Root `MazurIrreducibility13` inhabits `29 ∣ j.den` when `29 ∣ C` and `29 ∤ AB`; Mazur irreducibility / Ribet inertia / Serre image stay `def Prop` (no new axiom). Root `Inertia29Unramified` inhabits `v₂₉(c₄)=0`; Kodaira `I_{26k}` stays `def Prop`. Root `SerreImage13` inhabits `32a1` `j=1728`; CM image / Serre open image stay `def Prop`. Root `MazurIrreducibilityFull` / `TateGalois` / `SerreImageFull` name the four Mathlib gaps as `def Prop`. Root `X0_26_Full2Torsion` inhabits LMFDB `26.42.2.a.1` / González `Y²=x⁶−8x⁵+8x⁴−18x³+8x²−8x+1` and affine `(0,±1)` (`f(0)=1 ≠ 49`), plus displayed `|Sel₂|=1` (`2⁰=1`) and torsion Nats `3`/`7`; Kenku / mwrank / `|J₀(26)(ℚ)|=21` stay `def Prop`. Root `Tate_I29_Inertia` inhabits truncated `j(q)=q⁻¹+744+196884q` and `v(j⁻¹)=26k=v(Δ)`; Tate uniformization stays `def Prop`. Root `Ribet_Level32` inhabits `928/29=32`; abstract Ribet / Frey-needs-Wiles stay `def Prop`. Root `Serre_Large_vs_CM_Small` inhabits `2²+3²=13` and Cartan `288`; `card(im)≤48` / `ρ_Frey ≅ ρ_{32a1}` stay `def Prop`. Root `J0_26_BSD_26a1_26b1` inhabits Cremona `26a1`/`26b1` `Δ=−17576/−1664` and BSD quotients `1/3`,`1/7`; Kolyvagin rank 0 stays `def Prop`. See `ARCHIVE_4413.md`. Popcount is not a sound reject. **v25 not minted**.

The historical foundations mirror slug remains `beal-level-26-foundations`
(not renamed: its concept DOI
[10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293) stays
attached). Display title:
**Beal Level 26 Foundations — Matveev 2000 Thm1.4 n=2 + Bugeaud LLL → Baker B0=10^6**.

This URL formerly hosted the Level 26 kernel through
`v24.4.0-Beal-44-13-Level-26-v24x-Final-Summary` (`db7a556`,
DOI [10.5281/zenodo.22732209](https://doi.org/10.5281/zenodo.22732209)).
That closing tree lives at
[`DavidFox998/beal-conjecture`](https://github.com/DavidFox998/beal-conjecture)
`Level26/BealLevel26Foundations` (`f7bbdc5` / `e823a52` wiring, 0 sorry).
See `README_MOVED.md`.

This repository owns the **Matveev–Beal** formalization: inhabit
`matveev_inequality_real_target` / `|Λ| > exp(C_exp_bound)` toward
unconditional `B ≤ B0 = 10^6`. The minted tag
`v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations`
is v25 only when `baker_bound_gap3` greens via
`baker_conditional_gap3_full` with no `hBaker` (`hGen` / `hLLL`
0-sorry). `BealTrueV25.baker_bound_gap3_true` is the axiom-relative
vacuous close, not that mint. `BealUnconditionalV25` proves the
displayed `hGen` / `hLLL` methods cannot cut `B ≤ 10⁶`. Mathlib 4.12
has no Matveev 2000 Thm 1.4.

```
Beal/Matveev/MatveevThm14General.lean
MatveevThm14Proof.lean
MatveevLLL.lean
MatveevInterpolation.lean
MatveevBugeaud.lean
WuestholzSubgroup.lean
WuestholzProduct.lean
MatveevThreeLogs.lean
BealKraus.lean
BealKrausZsig.lean
BealCatalanZsig.lean
BealDarmonMerel.lean
BealDarmonMerel44p.lean
BealFLT13.lean
BealGenuineV25.lean
BealTrueV25.lean
BealUnconditionalV25.lean
BealGap1.lean
BealGap2.lean
BealGap4.lean
BealGap5.lean
BealGap6.lean
BealGap7.lean
BealGap8.lean
BealGap9.lean
BealGap10.lean
BealGap11.lean
BealGap12.lean
BealGap13.lean
BealGap14.lean
BealGap15.lean
BealGapK.lean
EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean
BugeaudLaurent.lean
PAdicLLL.lean
PAdicLLL_ZeroAxiom.lean
```

Separate Lake target (not in the default glob above):
`BealMatveevBealV25Rank3.lean` — `lake build BealMatveevBealV25Rank3`.

**0 `sorry`.** `matveev_gap3_lower` is the B≤10^6 integer-gap theorem
(`matveev_gap3_lower_B_le_B0_target`), not the unrestricted Level26
`matveev_inequality_real_target`. The integer gap lives in
`MatveevThm14Proof.lean` (`matveev_thm14_n2_explicit_of_nat`).

On a gap-3 solution, `B < A` and `A ≈ (B+3)^{13/4}`. The old
`A < B+3` bound is false. Usable: `log A < (13/4) log(B+3)`.

- `gap3_A_bounds` — `0 < A`, `1 < A`, `1 < B+3`, `A^4 < (B+3)^13`,
  `log A < (13/4) log(B+3)` (proved)
- `matveev_theorem_1_4_general` — Matveev 2000 Thm 1.4 n=2 on
  `α1 = A`, `α2 = B+3`, `b1=4`, `b2=-13`, `D=1`, `B=13`
  (uninhabited `def Prop`; not in Mathlib 4.12; we own Matveev)
- `matveev_product_bound_gap3` — unrestricted product on every
  solution (uninhabited `def Prop`: LHS is `O((log(B+3))³)`, RHS constant)
- `matveev_product_bound_of_B_le_B0` / `matveev_product_bound_of_B3_le_height`
  — the product that *is* a theorem, when `B ≤ 10^6` via `log 13 < 3`
- `matveev_thm14_n2_explicit_of_nat` — integer gap
  `|4 log A − 13 log C| > exp(−C1·log A·log C·B0)` for integers
  `A,C > 1` with `A⁴ ≠ C¹³` (proved; not interpolation)
- `matveev_gap3_lower_of_integer_gap_of_B_le_B0` — integer gap +
  `B ≤ 10^6` product ⇒ `|Λ| > exp(C_exp_bound)` (proved; no `hGen`)
- `matveev_gap3_lower_of_general_of_B_le_B0` — `hGen` + `B ≤ 10^6`
  ⇒ `|Λ| > exp(C_exp_bound)` (proved; does not inhabit `hGen`)
- `matveev_gap3_conditional_B_of_general` — `hGen` ⇒
  `B^4(1+δ) > δ(B+3)^13` with Matveev `δ`. Does **not** give
  `B ≤ 10^6` (that is LLL / `baker_bound_gap3`)
- `matveev_gap3_lower_of` — general + unrestricted product ⇒
  unrestricted target (proved; does not inhabit the hypotheses)
- `matveev_gap3_lower` — B≤10^6 integer-gap close (proved).
  Unrestricted `matveev_theorem_1_4_gap3_target` stays a `def Prop`
- `four_thirteenths_is_convergent` — on a solution,
  `|log(B+3)/log A − 4/13| < 1/(2·13²)`, so `4/13` is a
  convergent (proved; expected, not a Baker cutoff)
- `integer_gap_lt_ratio` — `1/(B+3)¹³ < B⁴/A⁴` on a solution
  (proved; integer-gap Matveev never contradicts the upper bound)
- `abs_Lambda_tight_sandwich` — `B⁴/(B+3)¹³ ≤ |Λ| ≤ B⁴/A⁴`
  (proved; same order, no Baker cutoff)
- `abs_Lambda_le_inv_B` — `|Λ| < 1/B` on a solution (proved;
  elementary `1/(B+3)¹³ < 1/B`, so not a Baker cutoff)
- `abs_Lambda_lt_inv_max_log_coeff` — `|Λ|` is *smaller* than
  `1/max(4 log A, 13 log(B+3))` (proved; that is not a lower bound)
- `LLL_e2_linear_form_approx` — displayed C=10³⁰ floor form
  approximates `C Λ` with error `< 17` (proved; not LLL)
- `LLL_basis_det` / `LLL_v_mem` / `LLL_v_norm_lt_thirty_two` /
  `LLL_lambda1_lt_thirty_two` — rank-3 columns have `det = C`;
  `v = 4 b₁ − 13 b₂` is in `L`; on a solution with `B > 10⁶`
  the tight ratio (not `1/B`) gives `‖v‖ < 32` and `λ₁ < 32`
  (proved). Minkowski is an *upper* bound on `λ₁` and does
  not raise `|Λ|`. Conditional SVT, reduced-basis existence,
  displayed `lll_svt_bound` / `lll_det_bound`, and the
  Baker–Davenport rearrangement are theorems; they do **not**
  give `B ≤ 10⁶`
- `interpolationDeterminant` — Matveev 2000 p.5 Δ(L,K,N1,N2,α1,α2);
  Vandermonde / binomial specialisations nonzero (proved)
- `wuestholz_product_theorem_Ga` — polynomial product theorem on `𝐆_a`
  (proved)
- `wuestholz_product_theorem_exp_Gm` — independent `α1,α2`: a nonzero
  integer coefficient vector cannot make `Φ` vanish to order
  `(L+1)(N1+1)(N2+1)` at `0` (proved; jet invertibility). The
  `MvPolynomial` form
  `wuestholz_product_theorem_exp_Gm_of_mvPolynomial` is the same
  criterion for `P ∈ ℤ[y0,y1,y2]`. The full-order disjunction
  `wuestholz_product_theorem_exp_of_full_order` is
  `P = 0 ∨` dependence. Graph containment
  `y1^a y2^b=1` along `W` is dependence
  (`mul_dep_of_W_in_graph`); independence keeps `W`
  out of every proper candidate. Intermediate
  `T ≥ c L K` is strictly weaker than full jet order
  (`no_uniform_c_reaches_full_order`) and reduces to
  the inhabited disjunction only when the jet
  dimension is already `≤ c L K`. The uniform
  subgroup theorem stays `def Prop`
- `siegel_lemma` / `matveevPhi_vanishing_exists_T` — underdetermined
  integer jet has a nonzero kernel of Siegel height; G_a `Φ`
  (`α1=α2=1`) vanishes to order `N/2` (proved)
- `interpolationDeterminant_L_pos_alpha_one` — `L≥1`, `α1=α2=1`
  forces `Δ=0` (proved; degenerate smallness)
- `size_upper_bound_hadamard` — `|Δ| ≤ n! X^n` (proved; large).
  Analytic `|Δ| ≤ exp(−c L K)` stays `def Prop`
- `matveev_thm14_n2_real_explicit_is_false` — bare-real ∀-reals
  Matveev claim is false (proved)
- `matveev_interpolation_track1` — integer-gap n=2 bound (proved)
- `bugeaud_LLL_reduction_proof` / `baker_bound_gap3_from_ratio`
  — implication “ratio upper bound ⇒ `B ≤ 10⁶`” (uninhabited
  `def Prop`; inhabiting it would inhabit Level 26
  `baker_bound_gap3`)
- `bugeaud_bd_lower_lt_inv_B` / `exists_reduced_b1_lt_sixty_four`
  — displayed-lattice Baker–Davenport no-go (proved in
  `MatveevBugeaud.lean`): usable `(r−17)/C < |Λ|`, so this LLL
  setup cannot force `B ≤ 10⁶`
- `no_uniform_c_easy_half` / `no_uniform_c_linear_in_N` /
  `wuestholz_subgroup_theorem_of_jet_dim` — intermediate-`T`
  no-go (proved in `WuestholzSubgroup.lean`): no uniform `c`
  reaches jet dimension; the inhabited special case needs
  `coeffCount ≤ c L K`. Uniform `wuestholz_subgroup_theorem`
  stays `def Prop`
- `wuestholz_product_theorem_exp_or_small_T` /
  `wuestholz_product_theorem_exp_one_ten_ten` — full-order
  product packaging (proved in `WuestholzProduct.lean`):
  `T < coeffCount ∨ P = 0 ∨` dependence, and at displayed
  degrees `1 10 10` this is `T < 242 ∨ P = 0 ∨` dependence.
  Uniform `wuestholz_product_theorem_exp` stays `def Prop`
  (Philippon is not in Mathlib 4.12)
- `floor_form_approx_of_C` / `baker_davenport_reduction_nogo` /
  `bugeaud_LLL_method_fails` — the floor error `< 17` holds for
  **every** scaling `C`; any usable `(r−17)/C < |Λ|`, so no `C`
  (including `C = B^k`) yields a witness `r > 17 + C/B0` on
  solutions with `B ≥ B0`. `baker_davenport_reduction` stays
  `def Prop`
- `baker_bound_gap3_nogo_logs` / `Lambda3_eq_Lambda` /
  `no_uniform_c_cubic_in_N` — log-method no-go (proved in
  `MatveevThreeLogs.lean`): padding `Λ` with `0 · log 2` does
  not change the form; any `C1 ≥ 1` has
  `exp(−C1 log A log(B+3)) < B⁴/A⁴` on a solution with
  `B ≥ B0`, so Matveev-style exponentials cannot cut
  `B ≤ 10⁶`. A four-factor jet is cubic (`1331` at
  `0 10 10 10`) and still has no uniform `c`. Uniform
  `wuestholz_product_theorem_exp` / `baker_bound_gap3` stay
  `def Prop` (Philippon for `𝐆_a × 𝐆_m³` is not in Mathlib 4.12)
- `baker_bound_gap3_kraus_nogo` / `freyDiscNat_of_sol` /
  `frey_A_not_ribet_lowered` — displayed Frey / Kraus no-go
  (proved in `BealKraus.lean`): `Δ = 16 A⁸ B⁸ (B+3)²⁶`;
  `13 ∣ 26` so `C` lowers at `p=13`, but `13 ∤ 8` so primes
  `p ∤ 6` dividing `A` do not. This is not Fermat-style
  level `32`. Darmon–Merel / Ribet stay `def Prop`
- `baker_bound_gap3_gaussian_nogo` /
  `baker_bound_gap3_z_i_nogo` — Gaussian / Thue no-go
  (proved in `BealKrausZsig.lean`): `N(A²+iB²)=(B+3)¹³`;
  a Matveev-style bound on `|sin(13θ)|` needs `C1 < 2`,
  and `C1_floor` / `242` / `2` all lose to `B⁴/C¹³` on
  `B ≥ B0`. The thirteenth-power factorization, Zsigmondy,
  and Catalan stay `def Prop`
- `baker_bound_gap3_mihailescu_zsigmondy_nogo` —
  Catalan / Zsigmondy no-go (proved in `BealCatalanZsig.lean`):
  gap-3 is not `X^p − Y^q = 1`; `3 ∤ B` gives `gcd(A,B)=1`;
  a prime in `B` does not force `13 ∣ v_p(A)`; the argument
  form still needs `C1 < 2`
- `baker_bound_gap3_darmon_merel_nogo` —
  Darmon–Merel / Ribet residual-level no-go (proved in
  `BealDarmonMerel.lean`): `3 ∣ B` forces `3 ∣ A` so
  `gcd(A,B) ≠ 1` and Darmon–Merel coprime hypothesis fails;
  `13 ∣ 26` so `C` lowers while `13 ∤ 8` so an unlowered
  prime in `A` makes the residual estimate not divide 32.
  Darmon–Merel / Ribet stay `def Prop`
- `baker_bound_gap3_darmon_merel_44p_nogo` —
  Darmon–Merel signature (4,4,p) / Ribet-to-32 no-go (proved in
  `BealDarmonMerel44p.lean`): displayed residual ≠ 32 on `B > 0`;
  `A = a¹³` and `B = b¹³` is Fermat exponent 13. Darmon–Merel,
  Ribet-to-32, and FLT stay `def Prop`
- `baker_bound_gap3_flt13_darmon_merel_nogo` —
  FLT 13 / Darmon–Merel 44p / 3-adic descent no-go (proved in
  `BealFLT13.lean`): `3 ∣ B` is impossible; every solution is
  coprime, which is Darmon–Merel's remaining case. Darmon–Merel
  (4,4,13) and FLT 13 stay `def Prop`
- `baker_bound_gap3_darmon_merel_4413_3adic_nogo` —
  Darmon–Merel (4,4,13) + 3-adic vacuous-close no-go (proved in
  `BealGenuineV25.lean`): Darmon–Merel `(4,4,13)` would imply
  no gap-3 solutions and hence `baker_bound_gap3` vacuously;
  it is not a theorem in Mathlib 4.12, and a `B ≥ B0` solution
  would refute it. Darmon–Merel / FLT 13 / Ribet-to-32 stay
  `def Prop`
- `baker_bound_gap3_true` — axiom-relative inhabitant of the
  kernel `baker_bound_gap3` (proved in `BealTrueV25.lean`):
  `axiom darmon_merel_4413_axiom` plus 3-adic descent plus
  `ex falso`. `#print axioms` includes
  `darmon_merel_4413_axiom`. Not Mathlib 4.12. The theorem is
  not named `baker_bound_gap3`. This does **not** mint
  `v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations`
- `baker_bound_gap3_unconditional_nogo` — `hGen` + `hLLL` no-go
  (proved in `BealUnconditionalV25.lean`): every `C1 ≥ 1` has
  `exp(−C1 log A log(B+3)) < B⁴/A⁴` on `B ≥ B0`; no scaling
  `C > 0` yields `r > 17 + C/B0`; cubic jet `1331`; remaining
  solutions are coprime with residual ≠ 32 and `A > B0`.
  `hGen`, `hLLL`, and `baker_bound_gap3_of_hGen_hLLL` stay
  `def Prop`. Darmon–Merel / FLT 13 / Ribet-to-32 stay
  `def Prop`. Not a minted unconditional v25 tag
- `baker_bound_gap1_unconditional_nogo` — gap-1
  `A⁴ + B⁴ = (B+1)¹³` no-go (proved in `BealGap1.lean`):
  coprime from the start; `3 ∣ B` is compatible (`A⁴ ≡ 1`);
  every `C1 ≥ 1` loses to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport
  witness above `17 + C/B0`. `(1,0)` is a solution.
  `baker_bound_gap1` / `hGen_gap1` / `hLLL_gap1` stay `def Prop`.
  Axiom-relative `baker_bound_gap1_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap2_unconditional_nogo` — gap-2
  `A⁴ + B⁴ = (B+2)¹³` no-go (proved in `BealGap2.lean`):
  `B` odd, `A` even; `3 ∣ B` impossible (`C ≡ 2 mod 3`);
  every `C1 ≥ 1` loses to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport
  witness above `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap2` / `hGen_gap2` / `hLLL_gap2` stay `def Prop`.
  Axiom-relative `baker_bound_gap2_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap4_unconditional_nogo` — gap-4
  `A⁴ + B⁴ = (B+4)¹³` no-go (proved in `BealGap4.lean`):
  `B` odd, `A` even; `3 ∣ B` compatible (`C ≡ 1 mod 3`);
  `5 ∣ B` impossible (`C ≡ 4 mod 5`); every `C1 ≥ 1` loses
  to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport witness above
  `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap4` / `hGen_gap4` / `hLLL_gap4` stay `def Prop`.
  Axiom-relative `baker_bound_gap4_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap5_unconditional_nogo` — gap-5
  `A⁴ + B⁴ = (B+5)¹³` no-go (proved in `BealGap5.lean`):
  `B` even, `A` odd; `3 ∣ B` impossible (`C ≡ 2 mod 3`);
  `5 ∣ B` impossible by 5-descent; every `C1 ≥ 1` loses
  to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport witness above
  `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap5` / `hGen_gap5` / `hLLL_gap5` stay `def Prop`.
  Axiom-relative `baker_bound_gap5_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap6_unconditional_nogo` — gap-6
  `A⁴ + B⁴ = (B+6)¹³` no-go (proved in `BealGap6.lean`):
  `B` odd, `A` even; even `B` dies as `6` or `14` mod 16;
  `3 ∣ B` impossible by 3-descent (`C₁ = B₁+2 ≡ 2`);
  `5 ∣ B` compatible (`C ≡ 1 mod 5`); every `C1 ≥ 1` loses
  to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport witness above
  `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap6` / `hGen_gap6` / `hLLL_gap6` stay `def Prop`.
  Axiom-relative `baker_bound_gap6_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap7_unconditional_nogo` — gap-7
  `A⁴ + B⁴ = (B+7)¹³` no-go (proved in `BealGap7.lean`):
  `B` even, `A` odd; `3 ∣ B` compatible (`C ≡ 1 mod 3`);
  `5 ∣ B` impossible (`C ≡ 2 mod 5`); `7 ∣ B` impossible
  by 7-descent (`C₁ = B₁+1 ≡ 1`); every `C1 ≥ 1` loses
  to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport witness above
  `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap7` / `hGen_gap7` / `hLLL_gap7` stay `def Prop`.
  Axiom-relative `baker_bound_gap7_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap8_unconditional_nogo` — gap-8
  `A⁴ + B⁴ = (B+8)¹³` no-go (proved in `BealGap8.lean`):
  `B` odd, `A` even; even `B` dies after nine `/2` as
  residue `8` mod 16; `3 ∣ B` impossible (`C ≡ 2 mod 3`);
  `5 ∣ B` impossible (`C ≡ 3 mod 5`); `7 ∣ B` compatible
  (`C ≡ 1 mod 7`); every `C1 ≥ 1` loses to `B⁴/A⁴` on
  `B ≥ B0`; no Baker–Davenport witness above `17 + C/B0`.
  `(1,0)` is not a solution.
  `baker_bound_gap8` / `hGen_gap8` / `hLLL_gap8` stay `def Prop`.
  Axiom-relative `baker_bound_gap8_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap9_unconditional_nogo` — gap-9
  `A⁴ + B⁴ = (B+9)¹³` no-go (proved in `BealGap9.lean`):
  `B` even, `A` odd; `3 ∣ B` impossible by 3-descent
  (`C₁ = B₁+3` picks up another `3`, then
  `9 X = (3 B₃+1)¹³` with `3 B₃+1 ≡ 1`);
  `5 ∣ B` impossible (`C ≡ 4 mod 5`); `7 ∣ B` compatible
  (`C ≡ 2 mod 7`, `A⁴ ≡ 2`); every `C1 ≥ 1` loses
  to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport witness above
  `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap9` / `hGen_gap9` / `hLLL_gap9` stay `def Prop`.
  Axiom-relative `baker_bound_gap9_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap10_unconditional_nogo` — gap-10
  `A⁴ + B⁴ = (B+10)¹³` no-go (proved in `BealGap10.lean`):
  `A` even; even `B` reduces after three `/2` to last-step
  `2(4B₃+5)¹³` (even `B₃` / `5∣B₃` / `B≡1,3` die; leftover
  both-odd 5-free `B₃≡2∨4`); `3 ∣ B` compatible (`C ≡ 1`);
  `5 ∣ B` impossible by 5-descent (`C₁ = B₁+2`);
  `7 ∣ B` impossible (`C ≡ 3`); odd `B` is coprime Darmon–Merel;
  every `C1 ≥ 1` loses to `B⁴/A⁴` on `B ≥ B0`; no
  Baker–Davenport witness above `17 + C/B0`. `(1,0)` is not
  a solution. `baker_bound_gap10` / `hGen_gap10` / `hLLL_gap10`
  stay `def Prop`. Axiom-relative `baker_bound_gap10_true` on
  odd `B` reuses `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap11_unconditional_nogo` — gap-11
  `A⁴ + B⁴ = (B+11)¹³` no-go (proved in `BealGap11.lean`):
  `B` even, `A` odd; `3 ∣ B` impossible (`C ≡ 2 mod 3`);
  `11 ∣ B` impossible by 11-descent (`C₁ = B₁+1 ≡ 1`);
  `5 ∣ B` compatible (`C ≡ 1`, `A⁴ ≡ 1`); `7 ∣ B` compatible
  (`C ≡ 4`, `A⁴ ≡ 4`); remaining solutions are coprime
  Darmon–Merel; every `C1 ≥ 1` loses to `B⁴/A⁴` on `B ≥ B0`;
  no Baker–Davenport witness above `17 + C/B0`. `(1,0)` is not
  a solution. `baker_bound_gap11` / `hGen_gap11` / `hLLL_gap11`
  stay `def Prop`. Axiom-relative `baker_bound_gap11_true`
  reuses `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap12_unconditional_nogo` — gap-12
  `A⁴ + B⁴ = (B+12)¹³` no-go (proved in `BealGap12.lean`):
  `B` odd, `A` even; even `B` dies after six `/2` as
  `4 (16 B₆ + 3)¹³` residue `12` mod 16; `3 ∣ B` impossible
  by 3-descent (`C₁ = B₁+4 ≡ 1`); `5 ∣ B` impossible
  (`C ≡ 2 mod 5`); `7 ∣ B` impossible (`C ≡ 5 mod 7`);
  remaining solutions are coprime Darmon–Merel; every
  `C1 ≥ 1` loses to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport
  witness above `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap12` / `hGen_gap12` / `hLLL_gap12` stay
  `def Prop`. Axiom-relative `baker_bound_gap12_true`
  reuses `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap13_unconditional_nogo` — gap-13
  `A⁴ + B⁴ = (B+13)¹³` no-go (proved in `BealGap13.lean`):
  `B` even, `A` odd; `3 ∣ B` compatible (`C ≡ 1`, `A⁴ ≡ 1`);
  `5 ∣ B` impossible (`C ≡ 3 mod 5`); `7 ∣ B` impossible
  (`C ≡ 6 mod 7`); `11 ∣ B` impossible (`C ≡ 2`, `C¹³ ≡ 8`);
  `13 ∣ B` impossible by 13-descent (`C₁ = B₁+1 ≡ 1`);
  remaining solutions are coprime Darmon–Merel; every
  `C1 ≥ 1` loses to `B⁴/A⁴` on `B ≥ B0`; no Baker–Davenport
  witness above `17 + C/B0`. `(1,0)` is not a solution.
  `baker_bound_gap13` / `hGen_gap13` / `hLLL_gap13` stay
  `def Prop`. Axiom-relative `baker_bound_gap13_true`
  reuses `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap14_unconditional_nogo` — gap-14
  `A⁴ + B⁴ = (B+14)¹³` no-go (proved in `BealGap14.lean`):
  `B` odd, `A` even; even `B` dies after three `/2` as
  `2 (4 B₃ + 7)¹³` residue `6` or `14` mod 16; `3 ∣ B`
  impossible (`C ≡ 2 mod 3`); `5 ∣ B` impossible
  (`C ≡ 4 mod 5`); `7 ∣ B` impossible by 7-descent
  (`C₁ = B₁+2 ≡ 2`); remaining solutions are coprime
  Darmon–Merel; every `C1 ≥ 1` loses to `B⁴/A⁴` on
  `B ≥ B0`; no Baker–Davenport witness above `17 + C/B0`.
  `(1,0)` is not a solution. `baker_bound_gap14` /
  `hGen_gap14` / `hLLL_gap14` stay `def Prop`.
  Axiom-relative `baker_bound_gap14_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gap15_unconditional_nogo` — gap-15
  `A⁴ + B⁴ = (B+15)¹³` no-go (proved in `BealGap15.lean`):
  `B` even, `A` odd; `3 ∣ B` impossible by 3-descent
  (`C₁ = B₁+5 ≡ 2`, last `27 X`); `5 ∣ B` impossible by
  5-descent (`C₁ = B₁+3 ≡ 3`, last `125 X`); `7 ∣ B`
  compatible (`C ≡ 1`, `A⁴ ≡ 1`); remaining solutions are
  coprime Darmon–Merel; every `C1 ≥ 1` loses to `B⁴/A⁴` on
  `B ≥ B0`; no Baker–Davenport witness above `17 + C/B0`.
  `(1,0)` is not a solution. `baker_bound_gap15` /
  `hGen_gap15` / `hLLL_gap15` stay `def Prop`.
  Axiom-relative `baker_bound_gap15_true` reuses
  `darmon_merel_4413_axiom`. Not a minted v25 tag
- `baker_bound_gapK_unconditional_nogo` — generic
  `A⁴ + B⁴ = (B+k)¹³` infrastructure (proved in
  `BealGapK.lean`): odd `k` ⇒ `B` even `A` odd; even `k` ⇒
  `A` even only; `gcd(B,B+k)∣k`; `p∣k` and `p∣B` force `p∣A`;
  `v_p(k)=1` descents; residue kills with hyps; not `∀k ¬sol`
  (gap-1 `(1,0)` and `k=m⁴`, `B=0`); recovers gaps 2..9,11..15
  and odd-`B` gap-10. `baker_bound_gapK` / `hGen_gapK` /
  `hLLL_gapK` stay `def Prop`. Not a minted v25 tag
- `baker_bound_B0_1e6_unconditional_nogo` — effective
  level-lowering / p-adic no-go (proved in
  `EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean`):
  GapK parity / gcd / descent / residue wrappers; `C<100`
  only under `A,B≤B0`; positive `k` does not force `B≤72`
  (`C=B+k` grows with `B`); real-log / LLL still lose every
  `C1≥1` on `B≥B0`. `baker_bound_B0_1e6` / `hGen_padic` /
  `hLLL_padic` stay `def Prop`. Not a minted v25 tag
- `bugeaud_laurent_unconditional_nogo` — Bugeaud–Laurent /
  p-adic LLL import-plan no-go (proved in `BugeaudLaurent.lean`):
  Mathlib 4.12 has `ℚ_[p]` and `padicValNat` but no Iwasawa
  logarithm, no Bugeaud–Laurent 1996 explicit `c(p)`, no LLL
  over `ℤ_p`, and no `dim S₂(32)=1`. On odd `k` the 2-adic
  valuation of both sides is `0`, so a valuation identity does
  not replace p-adic logs. Real logs lose at `C1=1` and at the
  placeholder `1000`. `bugeaud_laurent_1996_two_logs` /
  `p_adic_LLL_reduction` / `baker_bound_B0_1e6` stay `def Prop`.
  Does not fork Mathlib. Not a minted v25 tag
- `p_adic_LLL_unconditional_nogo` — p-adic LLL / window no-go
  (proved in `PAdicLLL.lean`): Mathlib 4.12 has `PadicInt` /
  `ℤ_[p]` but no LLL module. On `k≥1`, `B≥2` a gap solution
  cannot have `A ≤ B+10` (`2(B+10)⁴ < (B+1)¹³`), so the
  proposed `check_gap3_range` window is empty of solutions.
  `matveev_gap3_lower` stays the integer-gap close. `4 ≤ 1000`
  does not bound `B`. The floor lattice `b1=(1,0)` has
  Euclidean length `1 < B0` (`lll_euclidean_lower_bound_fails`).
  Unbounded `|u α + v| > exp(−B0)` fails by Dirichlet
  (`lll_form_lower_bound_fails`); `exp(−B0) < 1/C1_floor`.
  `p_adic_LLL_reduction` / `LLL_reduces_bound_to_B0` /
  `LLL_reduces_bound_to_B0_theorem` stay `def Prop`. Does not
  fork Mathlib. Not a minted v25 tag
- `p_adic_lll_zero_axiom_unconditional_nogo` — integer-form /
  binary-log no-go (proved in `PAdicLLL_ZeroAxiom.lean`):
  `u·a+v·C1` always vanishes at `(C1,-a)` in the claimed box
  with no solution hypothesis; `Nat.sqrt C1 < B0`.
  `LLL_reduces_bound_to_B0_zero_axiom` stays `def Prop`. Not a
  minted v25 tag
- `rank3_shape_nogo` / `lll_B0_div_C_shape_nogo` — rank-3
  Bugeaud–Laurent *shape* plus B0/C cutoff nogo (proved in
  `BealMatveevBealV25Rank3.lean`, **separate** Lake target):
  `B < A`, `|Λ| < 1/B`, and `‖v‖ < 32` for
  `v = 4 b₁ − 13 b₂` on a solution with `B > B0`.
  `C_LLL_v25 = C1_floor`; `B0/C > 1/B` is true; `|Λ| ≥ B0/C`
  fails on a solution. The `by_cases` implication
  `future_unconditional_shape` is a theorem; neither branch is
  inhabited. Does not claim Euclidean `≥ B0`.
  `LLL_reduces_bound_to_B0` / `LLL_reduces_bound_to_B0_v25` /
  `hGen` / `hLLL` stay `def Prop`. Not a minted v25 tag
- `gap3_B_lt_1000_no_sol` — first `B ≤ B0` search close
  (proved in `BealMatveevBealV25B0Search.lean`, **separate**
  Lake target): mod-16 + floor fourth-root, foldl `check_range`,
  ten shards of 100. `gap3_B_le_B0_no_solution` stays `def Prop`.
  Not a minted v25 tag

`baker_conditional_gap3_full` takes `baker_bound_gap3`, not the
Matveev target. After the lower bound, the remaining implication
`matveev_inequality_real_target → baker_bound_gap3` is still an
uninhabited `def Prop` (LLL / Bugeaud `hLLL`). Mathlib 4.12 has
no LLL reduction theorem. The CF lemmas do not close v25.

```bash
lake update
lake exe cache get   # optional, uses the mathlib oleans cache
lake build BealMatveevBeal
lake build BealMatveevBealV25Rank3  # separate Rank-3 shape target; not default
lake build BealMatveevBealV25B0Search  # B<1000 + LLLTargetB8 + Gap3B0Million + C1'≤8 nogo + Frey (4,4,13) + Level32Table + Level928Table + Ribet29C_Lowering + Ribet29C_Residue16 + Ribet29C_Residue16_L23 + MazurIrreducibility13 + Inertia29Unramified + SerreImage13 + MazurIrreducibilityFull + TateGalois + SerreImageFull + Mazur_X0_13_RationalPoints + Tate_I29_Inertia + Ribet_Level32 + Serre_Large_vs_CM_Small + TwoDescent_26a1_26 + X0_26_Full2Torsion + BSD_MordellWeil + J0_26_BSD_26a1_26b1 + Tate_Frey_Conductor_29 + Mazur_X0_13_No_Isogeny + Ribet_Level_Lowering_29_to_32 + Kolyvagin_MW_Rank0_26a1_26b1
```

Lake requires the local vendor
`Level26/BealLevel26Foundations` (beal-conjecture @ `fea0c393`
subdirectory only; not the whole `beal_conjecture` default
`Beal` lib). Import wrappers live under
`BealConjecture.Level26.BealLevel26Foundations.*`.
Axioms on the real pack: `[propext, Classical.choice, Quot.sound]`.

## Citation for the relocated v24.4.0 closing

```bibtex
@software{beal_level26_v24_4_0,
  title = {Beal Level 26 Foundations v24.4.0: v24.x Final Summary},
  author = {Fox, David},
  year = {2026},
  doi = {10.5281/zenodo.22732209},
  url = {https://doi.org/10.5281/zenodo.22732209},
  note = {Concept DOI 10.5281/zenodo.22379293, GitHub tag
    v24.4.0-Beal-44-13-Level-26-v24x-Final-Summary on db7a556,
    now at beal-conjecture/Level26/BealLevel26Foundations}
}
```

See [`docs/X0_26_SECTION_8994d38.md`](docs/X0_26_SECTION_8994d38.md)
for the `8994d38` `X₀(26)` / TwoDescent / BSD status. That note
does **not** mint v25. The `beal_level_26_foundations` Lake
require is the local vendor `Level26/BealLevel26Foundations`.
See [`docs/roadmap_without_wiles/README.md`](docs/roadmap_without_wiles/README.md)
for the four remaining Darmon–Merel `def Prop` gaps without
Wiles (Tate conductor at `29`, Mazur via `X₀(13)`, Ribet
`928/29=32`, Kolyvagin `Fintype` rank 0).
