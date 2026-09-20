# Mazur / X₀(13) structural verification (v30)

`v30.0.0-level-26-structural-verification` ports foundations `v0.30-mcom-structural-verification`
at `2b60ccd` (chore `9160a6a` from `bc7e93b`). Lean 4.12 explicit
types, `open Nat Finset Classical`, `decide` not `native_decide`.

Theorems live in [`../../Mazur_X0_13_No_Isogeny_final.lean`](../../Mazur_X0_13_No_Isogeny_final.lean):

- `SL2_F13_card`: `13 * 12 * 14 = 2184`
- `forty_eight_lt_2184`: `48 < 2184`
- `thirteen_eq_two_squares`: `2² + 3² = 13`
- `two_eighty_eight_div_forty_eight`: `288 / 48 = 6`
- `displayed_cusps_card`: `((0, 1) : Finset ℕ).card = 2`
- parent names `X0_13_Q_infinite` /
  `frey_no_rational_13_isogeny` /
  `Serre_non_Borel_mod13` /
  `mazur_no_Frey_13_isogeny` as theorems

Honest: genus 0 ⇒ `X₀(13)(ℚ)` infinite.
`{2 cusps} = X₀(13)(ℚ)` is literature-false and is
**not** a theorem. Parent
`Mazur_X0_13_No_Isogeny.lean` keeps those names as
`def Prop`.

Concept DOI: `10.5281/zenodo.22379293`.
