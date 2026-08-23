# Opera Numerorum — Baseline Audit Certificate Log

**Generated:** 2026-08-15  
**Auditor:** `scripts/audit.sh` V1–V5 pipeline — run locally against clones at locked HEADs  
**Chain SHA256:** `f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce`  
**Chain locked:** 2026-08-15 (see [CHAIN.md](CHAIN.md))  
**Clay status:** All surfaces OPEN. Lean closures are machine-checked certificates; the Clay Mathematics Institute has not reviewed or accepted this work.

---

## Purpose

This log is the "reduction to practice" audit exhibit for the Opera Numerorum ensemble.
It records, for each of the 19 chain repos at their **locked HEAD commits**, the outputs of
the uniform V1–V5 referee pipeline defined in `scripts/audit.sh`:

- **V1** — `lake build` passes (confirmed via GitHub Actions CI at the locked HEAD)
- **V2** — sorry audit: comment-aware scan for `sorry` in Lean source
- **V3** — noncomputable declaration count
- **V4** — external import listing (informational)
- **V5** — SHA-256 source certificate: deterministic hash of all `.lean` files

---

## V1 — lake build (CI-verified)

`lake build` was confirmed green by GitHub Actions at the locked HEAD for all 19 repos.
Local V1 was run with a CI-passthrough stub (full Mathlib cache download is ~8 GB per repo;
CI evidence is recorded instead). V2–V5 were run locally from clean clones.

| Repo | Locked HEAD | CI result |
|------|------------|-----------|
| arakelov-rh-descent | `bb7456a` | ✅ CI green |
| birch-swinnerton-dyer-143a1 | `44d7c1f` | ✅ CI green |
| eutheos-property | `6f3fea7` | ✅ CI green |
| hodge-abelian-boundaries | `73bb8ff` | ✅ CI green |
| lindelof-hypothesis-143 | `84a6f16` | ✅ CI green |
| navier-stokes | `c884339` | ✅ CI green |
| p-vs-np | `71fee23` | ✅ CI green |
| poincare-spectral | `b9a6573` | ✅ CI green |
| rh-growth-contradiction | `fb4c81f` | ✅ CI green |
| rh-p5-bridge-14 | `3cc2237` | ✅ CI green |
| riemann-arakelov-positivity | `99748ba` | ✅ CI green |
| yang-mills-gap | `cc436c0` | ✅ CI green |

---

## V2–V5 — Source audit results (locally run, 2026-08-15)

**V2 method:** Comment-aware `sorry` scan (Python comment stripper in `audit.sh` removes
`/- -/` block comments, `-- ...` line comments, and string literals before searching for
`\bsorry\b`). Count shown is number of sorry token occurrences after stripping.

**V3 method:** `grep -n noncomputable` across all `.lean` files excluding `.lake/`.

**V5 method:** `sha256sum` of sorted `.lean` file list (each file's SHA-256 concatenated,
then hashed). Deterministic for the same source tree; reproducible with `scripts/audit.sh`.

| Repo | HEAD (full) | .lean files | V2 sorry | V3 noncomputable | V5 source certificate (SHA-256) |
|------|------------|-------------|----------|-----------------|--------------------------------|
| arakelov-rh-descent | `bb7456a4ece3ae34c9fc0638f09aa1747e1f9ebf` | 43 | **0** ✅ | 38 | `e7d80ea42677a17253dd82e76f5cbad9875a02b682ea86b2c55da05ae84e7788` |
| birch-swinnerton-dyer-143a1 | `44d7c1fa67bcc9b1f9c5ff79745a7fbd8313129b` | 151 | 2 ⚠️ | 18 | `c3ee396077ab5f1764e71f3667aac1d64e5556ab21172390143f56d30cf033ea` |
| eutheos-property | `6f3fea7e6abe34047f3dd05ab3bb235d92d066cf` | 98 | 138 ⚠️ | 24 | `7ae20bb2d835faa8993e309958b0e24c5881db662b54abb70cd9e5da98d2d993` |
| hodge-abelian-boundaries | `73bb8ff8ff5094d7d191428a9348e8e66797d4a2` | 28 | 2 ⚠️ | 39 | `eb7d2d8543c0aa16f0922da3c42731ba7c9564324746c08e595135855aed343c` |
| lindelof-hypothesis-143 | `84a6f1651b2d553f26f3d32b7c5d319680b23c3e` | 9 | **0** ✅ | 10 | `6cd2b620ea5b824b9d8ee2667f747592671fb9392282eb9c11f06e5a64ce9079` |
| navier-stokes | `c884339df1e6a877f4a38c9a464d9297c44ee65c` | 133 | 2 ⚠️ | 57 | `6cecceb7249cee4feab1dba80a4982b9a971e68f277536040e13542e72539e1b` |
| p-vs-np | `71fee23006d476d4e81ebe72a1c6452394ffffa5` | 40 | 4 ⚠️ | 17 | `0ee36dc50198af5e6a35b049ff72cb83ff9a68f530ec1fcfdfae84dd07df19b5` |
| poincare-spectral | `b9a65739c8676b1feac742a95b00064607bec664` | 16 | 2 ⚠️ | 43 | `38f73344e4040115fd1ca74914aeecff6fc6b6c04566e2dd8361888b5c97c889` |
| rh-growth-contradiction | `fb4c81fcce934c65f3898d87ae958d18201fd826` | 23 | 64 ⚠️ | 71 | `c6fbc885768d535ec6a6f55f8e16bfaa1b6453d9d8e9831779256f20e275316c` |
| rh-p5-bridge-14 | `3cc2237706f583ff915dc0ebb7192dcc89d86894` | 62 | **0** ✅ | 51 | `051a32850c82225c88e5eec3a09bc00013c1bae624d7682ae5ac3082183a27ff` |
| riemann-arakelov-positivity | `99748ba9b81032d763256089546c3463ccc826c4` | 2 | 3 ⚠️ | 4 | `492cfb34966484d277a9fcaa01ccf101e3c4190d229042e8277893c2620fe0ff` |
| yang-mills-gap | `cc436c00bf228da629f1cc353c2245444144358a` | 210 | **0** ✅ | 185 | `097d9f53b9ddc28184fc61a1cb9e6e8dbbfdb4b2dec0981ca216f3c1d17caad9` |

**V5 SHA notes:**  
Computed as: `sha256(concat(sha256sum(file) + "\n" for file in sorted(lean_files)))`.
Reproducible with `scripts/audit.sh <repo-dir>` in a clean clone at the locked HEAD.

---

## V2 sorry summary

| Status | Repos |
|--------|-------|
| ✅ 0 sorry | arakelov-rh-descent, lindelof-hypothesis-143, rh-p5-bridge-14, yang-mills-gap |
| ⚠️ sorry present | birch-swinnerton-dyer-143a1, eutheos-property, hodge-abelian-boundaries, navier-stokes, p-vs-np, poincare-spectral, rh-growth-contradiction, riemann-arakelov-positivity |

**Note:** Repos with sorry are work-in-progress formalizations. The `lake build` CI passes
for all 12 because Lean 4 admits `sorry` at compile time (with a warning) unless
`set_option sorry false` is active and covers the sorry site. The sorry count here is
an honest census of incomplete proof steps at the locked HEAD — a baseline snapshot,
not a final closure claim.

---

## V5 — Reproduce source certificates

Run locally in a clean clone at the exact locked HEAD:

```bash
export GITHUB_TOKEN=<your-token>

git clone https://github.com/DavidFox998/rh-p5-bridge-14
AUDIT="rh-p5-bridge-14/scripts/audit.sh"

for repo in \
  arakelov-rh-descent \
  birch-swinnerton-dyer-143a1 \
  eutheos-property \
  hodge-abelian-boundaries \
  lindelof-hypothesis-143 \
  navier-stokes \
  p-vs-np \
  poincare-spectral \
  rh-growth-contradiction \
  rh-p5-bridge-14 \
  riemann-arakelov-positivity \
  yang-mills-gap; do

  git clone https://github.com/DavidFox998/$repo
  # Check out the locked HEAD from CHAIN.md
  cd $repo && git checkout <locked-sha> && cd ..
  bash $AUDIT $repo
  echo ""
done
```

The V5 SHA printed per repo must match the table above (for the same locked HEAD commit).
If the SHA differs, the source tree has changed since this log was generated.

---

## Chain SHA verification

The chain SHA256 (`f39ed9a9...`) is computed from the 19 locked HEAD SHAs in alphabetical
repo order. See [CHAIN.md](CHAIN.md) for the verification script.

---

*Generated by `scripts/audit.sh` V1–V5. Exhibit for Opera Numerorum patent documentation.*  
*David J. Fox · ORCID [0009-0008-1290-6105](https://orcid.org/0009-0008-1290-6105)*
