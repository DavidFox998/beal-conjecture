---
name: Lean let-binders in theorem statements
description: A let-bound chart open in a theorem statement can be introduced before the quantified point.
---

In a Lean theorem statement of the form `let U := ...; ∀ x : ..., ...`, `intro x` can introduce the let-bound `U` under the name `x` rather than the quantified point. Introduce both binders (or reduce the let) before using the point.

**Why:** A projective chart-stalk proof produced an apparently impossible type mismatch: the supposed point had the type of an open subset. The error was not a discrepancy between `Proj` and the chart. The first `intro` had named the let-bound open, leaving the point unintroduced.

**How to apply:** If an `intro`-bound term unexpectedly has the type of a chart open, inspect the leading `let` binders in the goal before changing geometric definitions or adding transports.