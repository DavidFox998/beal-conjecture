# Vendor workflows

[`main.yml`](main.yml) is the historical CI file from the
relocated `beal-level-26-foundations` kernel (`db7a556` /
`fea0c393`). It names foundations targets
(`BealLevel26Foundations`, scaffold). In this monorepo the
live parent CI is [`.github/workflows/main.yml`](../../../../.github/workflows/main.yml)
on `beal-conjecture`.

Do not run this vendor workflow as if it were the v26 mint
gate. Local parent checks:

```
lake build Level26
lake build HonestB0Search
```
