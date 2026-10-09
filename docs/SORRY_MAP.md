# SORRY_MAP.md — beal-conjecture-private

Triage date: 2026-10-08. Audit docs only — no Lean edits.

## HEADLINE

**True sorry count: 0.** A comment-stripped grep (all `/-- ... -/`
and `--` comments removed, then `\bsorry\b` matched) across all
467 Lean files returns zero hits.

The naive INIT count of "86 sorry lines" was entirely docstring and
comment prose — predominantly the phrase "Does not use sorry.",
which the codebase uses as a documented invariant (e.g.
`BealMatveevThm14.lean` carries it 10 times across 1178 lines).

## BealMatveevThm14.lean

1178 lines, 0 real sorrys. The 10 naive hits are all
"Does not use sorry." in section docstrings (lines 46, 264, 301,
371, 449, 542, 648, 677, 775, 944). Nothing to inventory, nothing
to fix.

## Method

`strip_comments` (nested `/- -/` + `--` line comments) applied to
every `.lean` file fetched from `main`, then regex `\bsorry\b`
on code lines only. 4 parallel workers, all 467 files covered.
