# Chart infrastructure and remaining Mathlib interfaces

This directory supplies the `BealMathlibMissing` library. It depends on Mathlib
and the geometric declarations in `Beal/Beal.General/`.

## Method and structure

`ProjProper`, `TwistingSheaf`, and `Family` describe graded/Rees constructions
and identify remaining interfaces. The chart modules develop quotient ideals,
saturations, injectivity, torsion bounds, and overlap presentations.
`ChartTrueEquiv` packages the v38 true-chart injectivity with kernel constraints,
nonvanishing examples, and annihilator presentations.

Named `def ... : Prop` gaps are not proofs. The chart statements concern their
displayed models and hypotheses; the library is not a general Beal certificate.
The ordinary `BealEven` library does not import this chart engine.

## Verification

From the repository root with the pinned manifest:

```sh
lake build BealMathlibMissing
```

Use the per-declaration printed axiom sets and the submission editing ledger;
do not infer a repository-wide axiom audit from a scoped build.
