# Workflows

[`main.yml`](main.yml) is the beal-conjecture CI workflow.

It runs on pushes and pull requests to **`main`**. It does not
automatically run on `merge-foundations-43735b3-for-v26`. Local
verification for the v26 slice is:

```
lake build HonestB0Search
lake build Level26
```

Axioms expected: `[propext, Classical.choice, Quot.sound]`.
Do not treat a green `main` badge as a v26 mint.
