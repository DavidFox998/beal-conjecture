# Next steps (not a close)

We do not use the word final until `∀ A B C : ℕ` is in the
kernel without `False.elim`.

Prior: v4.8.0-iter-modularity-scaffold named the two
computational-assumption axioms. v4.9.0-iter-no-True-X0
set `X0_26_Q` to the four-label set with no True.

## v4.10.0 Iter PARI locked

`X0_26_Q = {P | P.label ∈ fourCuspsList}` — no True.
`x0_26_four_cusps_cert = [1,2,13,26]` matches
`certs/pari_x0_26_four_cusps.json`.
`verify-scaffold.sh` cats that JSON and checks SHA +
`fourCuspsList`. `verify_descent_26.py` still checks
SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.

`ExistsNoncuspidal_26` empty by `P.mem`.
`hGeomForbid_typed_true` no axioms (`hNotIn hInList`).
Only axioms: `frey_modular_13` and `ribet_level_lowering_26`,
both COMPUTATIONAL ASSUMPTION, secured by 26a1
`[1,0,1,-5,-8]` Δ `-17576`, 26b1 `[1,-1,1,-3,3]` Δ `-1664`,
PARI `|Sel₂|=1` twice, `det M₃=2`, `FreyLevel26` `2 * 13 = 26`.

Zenodo GitHub hook is ON.  Waiting for a version mint beyond
`10.5281/zenodo.22322627` (`v4.0.9`).  Do not invent a DOI.

## v4.12.0 Iter verify plus

`verify-scaffold.sh` locks
`docs/images/2-descent-level-26-26a1-26b1.webp`,
README `PARI 2-Descent Certificates — X0(26) Four Cusps`,
and `certs/pari_x0_26_four_cusps.json` keys `26a1` /
`26b1` / `SHA`. Facebook upload name gone. Certs unchanged:
26a1 `[1,0,1,-5,-8]` Δ `-17576`, 26b1 `[1,-1,1,-3,3]` Δ
`-1664`, `|Sel₂|=1` twice, `det M₃=2`, SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.

## v4.20.0 Iter package none docs locked

`docs/BealExponent13_Iter_Package.md` locks the axiom-free
Typed ∧ Forall table. Still not `∀ A B C : ℕ`.

## v4.19.0 Iter readme typed forall locked

README / About lock the v4.18.0 Typed ∧ Forall none table.
Still not `∀ A B C : ℕ`.

## v4.18.0 Iter typed forall package locked

`typed_and_forall` / `certified_typed_and_forall` are
`Typed ∧ Typed` with no axioms. The Iter conjunction
`Typed ∧ Iter_Package` is unchanged. Still not
`∀ A B C : ℕ`.

## v4.17.0 Iter forall bridge locked

`beal_forall_from_ribet` is the typed inhabitant from
`beal_exponent13_from_ribet` (no axioms).
`certified_from_forall` in Iter_Package is that same
inhabitant. Upstream `BealExponent13_Contradiction.certified`
still needs both computational-assumption axioms. Still not
`∀ A B C : ℕ`.

## v4.15.0 Iter typed forall bridge

`beal_forall_from_ribet` is `beal_exponent13_from_ribet`
in the Forall file. That inhabitant is axiom-free
(`certified_from_ribet` / `hGeomForbid_typed_true`).
Upstream `BealExponent13_Contradiction.certified` still
needs both computational-assumption axioms. Still not
`∀ A B C : ℕ`.

## v4.14.0 Iter citation contradiction locked

`CITATION.cff` locks version `v4.13.0-iter-contradiction-start`
commit `c2c47db` and the computational-boundary abstract
(four cusps `[1,2,13,26]`, `|Sel₂|=1` twice, `det M₃=2`,
SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`,
Frey `2*13=26`, 26a1 Δ `-17576`, 26b1 Δ `-1664`).
`certified_from_ribet` is exported from Contradiction and
wired into `BealExponent13_Iter_Package`. Still not
`∀ A B C : ℕ`.

## v4.13.1 Iter unstick

`verify-scaffold.sh` locks the 2-descent image, Facebook
name gone, README PARI figure, JSON `26a1`/`26b1`/`SHA`,
`fourCuspsList` `[1,2,13,26]`, `X0_26_Q_eq_fourCuspsList`
`rfl`, and `contradiction_from_ribet` /
`beal_exponent13_from_ribet`. It does not grep Zenodo DOI
record ids. Still not `∀ A B C : ℕ`.

## v4.13.0 Iter contradiction start

`BealExponent13_Contradiction` is started. It is
`ExistsNoncuspidal_26 → False` via
`ribet_level_lowering_26 (by rfl)`, plus the typed close
`hGeomForbid_typed_true` and `frey_modular_13`. It is
**not** `(A^13+B^13=C^13 coprime) → ExistsNoncuspidal_26`
and not `∀ A B C : ℕ`. The carrier is still
`X0_26_Point_Raw`. Do not inhabit `∀ A B C : ℕ` by
`False.elim`.

## v4.11.0 (placeholder shape, not this tag)

The older sketch
`(A^13+B^13=C^13 coprime) → ExistsNoncuspidal_26`
then `False` via `hGeomForbid_typed_true` is still not
in the kernel. v4.13.0 started the Ribet-path close
instead. Still computational. Do not inhabit
`∀ A B C : ℕ` by `False.elim`.
