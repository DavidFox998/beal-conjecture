# `Beal/`

Vendor Beal namespace for the relocated kernel.

| Entry | Role |
|---|---|
| [`BealForall.lean`](BealForall.lean) | `∀` packaging around the FullProof chain. Unconditional Beal is **not** claimed. |
| [`FullProof.lean`](FullProof.lean) | Import root of the 83-module closure. |
| [`FullProof/`](FullProof/) | Matveev / Baker / Bugeaud / Zsigmondy / Frey–Tate modules. |

`lake build Level26` on the parent package compiles the
declared roots of this closure (`BealMatveevThm14`,
`BealBakerB0ReductionCertificate`, `Beal.Foundations.J0_26_Decomp`).
`hGen` / `hLLL` stay `def Prop`.
