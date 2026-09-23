# Full million-case search: exact external evidence, not a Beal theorem

The companion foundations worktree based on
`385ff85c78c351de83b3fd625a208c9dea003647` computes exact fourth
roots for every integer `0 ≤ B ≤ 1,000,000` in
`A^4 + B^4 = (B+3)^13`. Its independently replayed checkpoint records
zero candidates. See `scripts/check_gap3_full10e6.py` and
`certs/gap3_full10e6_checkpoints.json` **in the foundations repository**.

The external calculation is not a Lean proof of
`gap3_B_le_B0_no_solution`. The newly added
`BealMatveevBealV25B0Search.Full10e6` module retains
`Full10e6KernelCert` as an explicit input. A SHA-256 digest checks that
two external runs agree on recorded data; it does not import proof terms
into Lean.

`lean/Beal/Main.lean` here converts the existing *conditional* level-26
`BealConjecture` into the common-prime statement for general positive bases
and exponents at least three. Its `BealData` argument carries the
`BealCertificates_26` package. No constructor of that complete package has
been provided. A restricted `(4,4,13)` scan cannot fill those general
geometric and modularity hypotheses. The main theorem is therefore
conditional, not an unconditional solution of Beal's conjecture.

There is no v25.0.2 inhabited-search tag, unconditional release, or new
foundations DOI to cite. The existing DOI badges refer to earlier releases
and must not be relabeled as proof of these claims.