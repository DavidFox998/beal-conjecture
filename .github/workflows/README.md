# Workflows

[`main.yml`](main.yml) is **beal-conjecture** CI.

It runs on `main`, `merge-foundations-*`, `phase-*`, `v24*`,
`v25*`, `v26*`, pull requests, and `workflow_dispatch`.

v26 verification on this branch:

```
lake build HonestB0Search
lake build Level26
```

The historical `build` job stays on `main`. Do not look for
this run on `beal-level-26-foundations`.
