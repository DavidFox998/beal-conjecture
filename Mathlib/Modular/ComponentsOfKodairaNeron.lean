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

end FreyCurve4413
