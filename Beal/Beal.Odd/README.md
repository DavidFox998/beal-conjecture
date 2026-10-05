# Odd-power arithmetic and the divided 2-chart

`FullReduction.lean` imports the even-branch geometric packaging and Mathlib's
parity API. It checks elementary odd-power residue and non-divisibility facts
in natural numbers, while re-exporting the previously constructed chart data.

This arithmetic statement does not place a point in a Rees `Proj` chart,
classify odd-exponent fibres, or prove the odd-exponent Beal conjecture.

The `BealOdd` library in the root Lake configuration is the verification entry
point. All hypotheses and the distinction between arithmetic and geometric
statements must be retained when using the results.
