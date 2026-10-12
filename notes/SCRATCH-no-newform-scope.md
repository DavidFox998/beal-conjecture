# SCRATCH. Scope of `no_newform_32_64_open`

Not part of the proof. Do not import this file. No theorem was changed to write it.

`no_solution_4413_of_frontier` assumes `no_newform_32_64_open`. The definition, in `DarmonMerel/3_RibetLowering4413.lean` after `RibetLevel`, is: a modular Frey curve with `a ≠ 0`, `b ≠ 0`, `gcd(|a|, |b|) = 1`, `c > 0`, and a `RibetLevel`, is impossible.

## Inventory

### Mazur products

`DarmonMerel/4_MazurTrick4413.lean`

- `B_mazur`, `C_mazur`: Pacetti–Villagra, Proposition 6.1, three splitting branches. Hecke eigenvalues are arguments.
- `mazur_trick_4413`: if `C q = 0` at every auxiliary prime, then `13 ∣ C q`, because `13 ∣ 0`. Vanishing does not eliminate a form.
- `Newform n` is an empty structure. `LevelLowered` is `opaque … := True`. Neither stores an eigenvalue.
- Newform counts `s2Gamma0NewformCount32 = 1` and `s2Gamma0NewformCount64 = 1` are numerals, not a classification theorem.

`DarmonMerel/5_WindingQuotient4413.lean`

The product that is proved to vanish is `C_q5`, the product of `B_computable` over `𝔽₅²`, using `a_q_32` and `a_q_64`. It is not `C_mazur` applied to a `Newform`.

- `winding_quotient_no_g_32`: `C_q5 1 (a_q_32 5) = 0`. `native_decide`. `a₅ = -2`.
- `winding_quotient_no_g_64`: `C_q5 1 (a_q_64 5) = 0`. `native_decide`. `a₅ = 2`.
- `C_q5_vanishes_both_signs`: the same zero for `χ = ±1` and both signs of `a₅`.
- `darmon_merel_elimination_4413`: the two trivial-character zeros.
- `C_q5_32_divisible_by_13`, `C_q5_64_divisible_by_13`: `13 ∣ 0`.

### Winding nonvanishing

`Mathlib/Modular/ManinSymbols.lean`: `card_P1_32 = 48`, `card_P1_64 = 96`, `plusDim_32 = 6`, `plusDim_64 = 10`. `e32`, `e64`, `T5_32`, `T5_64` are computed from the plus quotient.

`Mathlib/Modular/WindingQuotient.lean`

- `t5_minus6_e32`: `(T₅ - 6) e₃₂ = [0, 0, 4, -4, 0, 0]`.
- `t5_minus6_e64`: `(T₅ - 6) e₆₄ = [0, 0, 0, 2, 2, -4, 0, 0, 0, 0]`.
- `winding_nonzero_mod13_32`, `winding_nonzero_mod13_64`.
- `hecke32_eigenvalues`, `hecke64_eigenvalues`: on `eig32` and `eig64`, through `19`. `native_decide`.
- `eigenline_32_dim`, `eigenline_64_dim`: each `T₅`-eigenline has dimension `1`.

`Mathlib/Modular/FormalImmersion.lean`

- `FormalImmersionAtCusp 32 13` and `64 13`, witnessed by `q = 5` (`formal_immersion_32_13`, `formal_immersion_64_13`).
- `AbelJacobi_32_is_formal_immersion` is that test. `AbelJacobi_64_formal_immersion` is only `a₁ = 1`, nonzero mod `13`.
- `integral_two_torsion`: on `Y² = X³ - X`, `y = 0` forces `x ∈ {-1, 0, 1}`.
- The file states that none of this is a map `X₀(N) → J_e`.

`DarmonMerel/7_WindingQuotientAxiom4413.lean`

- `t5_e32_not_zero_mod13`, `t5_e64_not_zero_mod13`, `t5_32_on_newform`, `t5_64_on_newform`.
- `winding_elimination_4413` takes a nonzero solution, `Modular`, `LevelLowered`, the levels `32` and `64`, and `C_q5 = 0`, and ignores every one of them. The conclusion is the pair of numerical nonvanishings. It is not `False`.

### Rational points, not identified with `X₀(32)`

`Mathlib/Modular/Rank0_32a1.lean`: `no_rat_point_nonzero` is Fermat descent for `Y² = X³ - X`. A rational point in lowest terms with `y ≠ 0` is impossible. The file says this does not identify the model with `X₀(32)`.

`Mathlib/Modular/X0_32_Construction.lean`: `y² = x³ + 4x` is the Vélu target of `x³ - x`. Integral points `(0, 0)` and `(2, ±4)` are checked. Rank `0` and the identification with `X₀(32)` are LMFDB records, not theorems. The Frey equations in coordinates are not proved to be a rational point of `X₀(32)`.

### The trace route, already a theorem under one open

`Mathlib/Modular/CmVanishing32.lean`

- `cm_endomorphism_x3_sub_x`, `cm_endomorphism_x3_add_x`: `(X, Y) ↦ (-X, i Y)`.
- `splitting_through_19`, `cm_vanish_32`, `cm_vanish_64`: `a_p = 0` at the inert primes `3, 7, 11, 19`, read off the Hecke matrices. Not every inert prime.
- `three_not_dvd_c`, `freyTrace3_not_cong_neg_six`: a coprime Frey trace over `𝔽₉` lies in `{-2, 4, 6}`, hence is not `-6` mod `13`.
- `qcurve_extension_169_open`: for a modular curve with a `RibetLevel` and the Vélu/twist coefficient match, `13 ∣ freyTrace3 - (-6)`.
- `no_newform_32_64_of_qcurve`: that open implies `no_newform_32_64_open`, using `frey_qcurve_modular` and `ribet_level_lowering_4413.gkResidual`.

## Lemma 8.2 as this repository needs it

Darmon–Merel, J. Reine Angew. Math. 490 (1997), Lemma 8.2, is cited as the map `X₀(N) → J_e` and the formal-immersion test at the cusp. The paper's Frey curve is a different model. What has to be formalized here, to turn the theorems above into `no_newform_32_64_open`, is the following proposition.

Hypotheses, for `N ∈ {32, 64}` and `p = 13`:

1. `FormalImmersionAtCusp N 13`, already proved: `(T₅ - 6) e ≢ 0 (mod 13)`.
2. A Frey solution with `a ≠ 0`, `b ≠ 0`, `gcd = 1`, `c > 0`, `Modular E`, and a `RibetLevel c E N₀` with `N₀`'s level field in `{32, 64}`.
3. The missing geometric content: that package produces a non-cuspidal rational point of `X₀(N)` whose image in the winding quotient is congruent to the cusp modulo `13`.

Conclusion: that point is a cusp. The only rational points known on the CM models are the points with `Y = 0` on `Y² = X³ - X`, and the checked points on `y² = x³ + 4x`. Those are the points the repository associates with the excluded solutions `a = 0` or `b = 0`. A non-cuspidal point is therefore impossible, which is `False`.

That `False` is exactly `no_newform_32_64_open`. The numerical nonvanishing does not yield it. `winding_elimination_4413` returns the nonvanishing and discards the Frey hypotheses. `mazur_trick_4413` turns `C(5, g) = 0` into `13 ∣ 0`, which removes nothing.

Two further gaps sit in front of the geometric step. `Newform` has no eigenvalues, so `a_q_32` and `a_q_64` are not fields of the newform inside a `RibetLevel`. `X0_32_Construction` does not identify either Weierstrass model with `X₀(32)`.

## The `CmVanishing32` / file 6 layering

The re-layer is in place. `thirteen_not_dvd_two` and `no_newform_32_64_open` are in file 3, after `RibetLevel`. `CmVanishing32` imports file 3. File 6 imports file 7 and `CmVanishing32`. File 3 does not import `CmVanishing32` or file 6.

Import chain:

- `DarmonMerel/6_NoSolution4413.lean` imports file 7 and `CmVanishing32`.
- File 7 imports file 5 and `WindingQuotient`. File 5 imports file 4, which imports file 3.
- `CmVanishing32.lean` imports file 3 and file 4. `no_newform_32_64_of_qcurve` mentions `no_newform_32_64_open` and `qcurve_isogeny_input` uses `thirteen_not_dvd_two`. Both are defined in file 3. `inertInK` and `splitsInK` are defined in file 4.
- `DarmonMerel.lean` imports file 6 and then `CmVanishing32`. That order builds. It is not a Lean import cycle.

File 6 sees `no_newform_32_64_of_qcurve`. The capstone still assumes `no_newform_32_64_open`. `qcurve_extension_169_open` is not a hypothesis of `no_solution_4413_of_frontier`.

Candidate fixes:

1. Re-layer. Done. `no_newform_32_64_open` and `thirteen_not_dvd_two` are in file 3. `CmVanishing32` imports that module. File 6 imports `CmVanishing32`. This moved the open; it did not prove it.
2. Duplicate. Copy the trace contradiction into a file that file 6 already imports. The proof uses `freyTrace3_not_cong_neg_six`, the Vélu/twist match, and `gkResidual`. Duplicating those is the same dependency list without the import edge.
3. Prove the winding form of Lemma 8.2 in file 7, which sees the nonvanishing and does not import `CmVanishing32`. That does not use `qcurve_extension_169_open`.

## Minimal path

The trace route is the short one. Its arithmetic is proved. One statement is not.

1. Re-layer as in fix 1. Done. File 6 imports `CmVanishing32`, so `no_newform_32_64_of_qcurve` is in scope above the capstone. This was an import edit, not a mathematical proof. The implication is already `no_newform_32_64_of_qcurve`. The capstone hypothesis is still `no_newform_32_64_open`.
2. Prove `qcurve_extension_169_open`: a class in `GL₂(𝔽₁₆₉)` restricting to `ρ̄_E` up to `χ_{-2}`, with trace of `Frob_3²` equal to `-6`. `H²(G_ℚ, 𝔽₁₆₉ˣ)` is not defined. The local class of `±2` is already a coboundary over `𝔽₁₆₉` (`f169_linear_lift_scalar_exists`). This step is not a `decide`.
3. Apply `no_newform_32_64_of_qcurve`. The conclusion is `no_newform_32_64_open`. The proof is `freyTrace3_not_cong_neg_six`: the Frey trace is in `{-2, 4, 6}`.

The winding route, if the trace lift is declined:

1. Give `Newform` eigenvalues, or a theorem that the newform inside a `RibetLevel` of level `32` or `64` is the line `eig32` or `eig64`. The dimension-`1` computations are `native_decide`; the identification with `RibetLevel` is not.
2. Identify `X₀(32)` and `X₀(64)` with the CM models, and prove that a Frey solution with `a ≠ 0` and `b ≠ 0` is a non-cuspidal rational point. `no_rat_point_nonzero` is the descent on `Y² = X³ - X` only.
3. Promote `FormalImmersionAtCusp` from a matrix predicate to the formal immersion of `X₀(N) → J_e` at the cusp. The matrices are computed.
4. Conclude that the point is a cusp, contradicting `a ≠ 0` and `b ≠ 0`.

The hardest step on the short path is `qcurve_extension_169_open`. The repository has the scalar obstruction over `𝔽₁₃`, the scalar over `𝔽₁₆₉`, and the trace value `-6`. It does not have a Galois representation. The hardest step on the winding path is the map `X₀(N) → J_e`: every numerical input to Merel's test is already a theorem, and none of them mentions a modular curve.
