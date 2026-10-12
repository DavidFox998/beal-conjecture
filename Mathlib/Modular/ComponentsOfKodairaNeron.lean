import Mathlib.Modular.BlowupEvenA

/-!
# The two resolved rows and `components_n_plus_five_open`

`components_n_plus_five_open` says that every positive even `n` and every
coefficient tuple in `IsINStar`, on a `π`-minimal Frey curve whose
Weierstrass discriminant equals `deltaGauss`, has `n + 5` Néron components.

`kodaira_neron_odd_a_open` and `kodaira_neron_even_a_open` do not take those
hypotheses. Each takes `c` odd, one parity of `a`, and `qiLocalMinimalAtPi`,
and returns the count `7` or `9`. They do not mention `n`, `IsINStar`, or
`weierstrassDisc`.

On the two rows the resolutions computed, the arithmetic is `7 = 2 + 5` and
`9 = 4 + 5`. That is the implication the two opens support.

`pacetti_of_components` applies the general open only at those two rows.
`components_odd_a_instance` and `components_even_a_instance` are those two
applications. Parity produces the `IsINStar` witness, and the same parity
is what `components_of_kodaira_neron` reads.
-/

namespace FreyCurve4413

/-- On a `π`-minimal Frey curve with `c` odd, the two Kodaira–Néron opens
give the component counts of the two parity rows.

Odd `a` gives `NeronSpecialFiberComponents E = 7`, hence `2 + 5`.
Even `a` gives `NeronSpecialFiberComponents E = 9`, hence `4 + 5`.
-/
theorem components_of_kodaira_neron
    (hOdd : BlowupOddA.kodaira_neron_odd_a_open)
    (hEven : BlowupEvenA.kodaira_neron_even_a_open)
    (E : FreyCurve4413)
    (hc : E.c.natAbs % 2 = 1)
    (hmin : qiLocalMinimalAtPi E) :
    (E.a.natAbs % 2 = 1 → NeronSpecialFiberComponents E = 2 + 5) ∧
      (E.a.natAbs % 2 = 0 → NeronSpecialFiberComponents E = 4 + 5) := by
  refine ⟨?_, ?_⟩
  · intro ha
    rw [hOdd E hc ha hmin, BlowupOddA.D6Node.node_count]
  · intro ha
    rw [hEven E hc ha hmin, BlowupEvenA.EvenAComponent.length_nine]

/-- The `n = 2` call inside `pacetti_of_components`.

`a` odd and `c` odd give `a_odd_IsINStar`. That is the witness
`conductor_of_components` passes to `components_n_plus_five_open` at
`n = 2`, together with `a_odd_weierstrass_eq_delta`. The same parity and
`qiLocalMinimalAtPi` are the hypotheses `components_of_kodaira_neron`
turns into `2 + 5`, which is `7`.
-/
theorem components_odd_a_instance
    (hOdd : BlowupOddA.kodaira_neron_odd_a_open)
    (hEven : BlowupEvenA.kodaira_neron_even_a_open)
    (E : FreyCurve4413)
    (hc : E.c.natAbs % 2 = 1)
    (ha : E.a.natAbs % 2 = 1)
    (hmin : qiLocalMinimalAtPi E) :
    IsINStar 2 GaussInt.zero (a2AfterPi E) a3AfterPiSq (a4AfterPi E)
        (a6AfterPiSq E) (b6AfterPiSq E) (quadDiscAfterPiSq E) ∧
      weierstrassDisc GaussInt.zero (a2AfterPi E) a3AfterPiSq (a4AfterPi E)
          (a6AfterPiSq E) = deltaGauss E ∧
      NeronSpecialFiberComponents E = 7 := by
  have hStar := a_odd_IsINStar E hc ha
  have hmodel := a_odd_weierstrass_eq_delta E
  have hm := (components_of_kodaira_neron hOdd hEven E hc hmin).1 ha
  refine ⟨hStar, hmodel, ?_⟩
  rw [hm]

/-- The `n = 4` call inside `pacetti_of_components`.

`a` even and `c` odd give `even_a_IsINStar`. That is the witness
`conductor_of_components` passes to `components_n_plus_five_open` at
`n = 4`, together with `even_a_weierstrass_eq_delta`. The same parity and
`qiLocalMinimalAtPi` are the hypotheses `components_of_kodaira_neron`
turns into `4 + 5`, which is `9`.
-/
theorem components_even_a_instance
    (hOdd : BlowupOddA.kodaira_neron_odd_a_open)
    (hEven : BlowupEvenA.kodaira_neron_even_a_open)
    (E : FreyCurve4413)
    (hc : E.c.natAbs % 2 = 1)
    (ha : E.a.natAbs % 2 = 0)
    (hmin : qiLocalMinimalAtPi E) :
    IsINStar 4 GaussInt.zero (a2AfterPiThenPiSq E) GaussInt.zero
        (a4AfterPiThenPiSq E) (a6AfterPiThenPiSq E) (b6AfterPiThenPiSq E)
        (quadDiscAfterPiThenPiSq E) ∧
      weierstrassDisc GaussInt.zero (a2AfterPiThenPiSq E) GaussInt.zero
          (a4AfterPiThenPiSq E) (a6AfterPiThenPiSq E) = deltaGauss E ∧
      NeronSpecialFiberComponents E = 9 := by
  have hStar := even_a_IsINStar E hc ha
  have hmodel := even_a_weierstrass_eq_delta E
  have hm := (components_of_kodaira_neron hOdd hEven E hc hmin).2 ha
  refine ⟨hStar, hmodel, ?_⟩
  rw [hm]

end FreyCurve4413
