# MCOM manuscript plan — Beal's Conjecture: conditional assembly + level-26 computational evidence

Status: planning document, not part of the release/verification chain.  No Lean
change.  Not covered by `scripts/verify-scaffold.sh`.

## 1. Why a rewrite, not an edit

The existing draft (`beal_mcom_draft (1).pdf`, dated 2026-08-23, tagged
`mcom-v1.0`) describes an architecture that no longer matches either repository:

- It is built around a single named axiom `FreyConductorReal = 2 · Rad(ABC)`
  and a 21-brick `B01`–`B21` chain proving Beal via Tate's algorithm → Ribet's
  level-lowering → level 2.
- The current `beal-conjecture` (`v11.0.0`) instead derives `BealConjecture`
  from **five ordinary theorem arguments** —
  `J0DecompositionSoundness_26`, `MwrankCertificateSoundness_26`,
  `FormalImmersionSoundness_26`, `FreyCurveExists`, `LevelLowering_26` — via
  `Beal.Final.ConditionalBealTheorem`, an X0(26)/J0(26)/formal-immersion route,
  not the old Tate/Ribet-to-level-2 route.  Verified: `BealConjecture` is the
  real, unrestricted statement
  (`lean/Beal/B01_Def.lean`): `∀ A B C x y z, IsBealSolution A B C x y z → False`.

Conclusion: the paper needs a full rewrite of the theorem-statement sections,
not a patch of the old draft.

## 2. Critical accuracy issue — must be resolved before any submission

`beal-level-26-foundations`'s `BealForall_real_witness_none` and
`beal_forall_in_kernel_from_beal_forall_none_separated` are **not** proofs of
the quantified Beal statement.  Traced to source:

- The real statement, `beal_forall_from_Is13Case_sketch`
  (`∀ A B C m n p, 2<m→2<n→2<p→A^m+B^n=C^p→gcd3 A B C>1`), is explicitly and
  permanently locked **uninhabited** by the repo's own
  `original_beal_forall_sketch_type_eq` theorem
  (`lean/BealLevel26Foundations/Chain/BealForallInKernel.lean`).
- What is inhabited is a differently-named
  `structure BealForall : Prop where of_none : frey_beal_forall_none_formula`.
- `frey_beal_forall_none_formula`
  (`lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean`)
  unfolds to a large conjunction of `rfl`-checkable numeral facts and token
  equalities (`2*13=26`, `x0_26_a1_disc = -17576`, etc.) — a build-time
  bookkeeping checklist, not the conjecture.

"None" means "this bookkeeping Prop needs no axioms beyond the kernel," not
"Beal's conjecture is proved."  README language such as "UNCONDITIONAL v7.1.0
BOTH none unconditional" is true only in that narrow internal sense and reads,
to any reviewer who does not trace the definitions, as a claim that Beal's
conjecture (or its level-26 case) has been proved unconditionally.  It has not.

**Action before drafting:** any manuscript section touching this repo must
state explicitly (a) which Prop is inhabited, (b) that it is distinct from the
quantified conjecture, and (c) that the quantified conjecture remains formally
uninhabited, citing the lock theorem by name.  Marketing-style phrasing from
the READMEs must not be reused verbatim.

## 3. What is genuinely strong and publishable

**`beal-conjecture` (v11.0.0):** `ConditionalBealTheorem` — a real conditional
reduction of the true `BealConjecture` to five explicit, ordinary theorem
arguments (not global axioms).  One-line proof term, `#print axioms` checked.
This is the strongest, most defensible result and should carry the paper.

**`beal-level-26-foundations`:** the computational number theory, presented
without the "none"/"BealForall" branding:

- PARI/GP-verified 2-descent on `26a1` (Δ = −17576) / `26b1` (Δ = −1664),
  Selmer computations, rank-zero certificates, cross-checked against LMFDB,
  SHA-256-locked reproducible certificate JSON (`certs/`, `scripts/verify_descent_26.py`).
- Finite explicit evidence around residual prime 13 (conductor arithmetic,
  cyclotomic character, unramified/semistable/finite-flat conditions) framed
  as computed data narrowing the shape of the remaining Tate/Ribet/modularity/
  Taylor–Wiles obligations — not as proofs of them.
- The Core/Wrapper/named-hypothesis axiom-bookkeeping discipline and its
  `#print axioms` audit tooling, as a reusable formal-verification methodology.

## 4. Proposed structure

1. Introduction — explicit no-proof-claimed statement up front.
2. The conjecture and the two-repository architecture (why split conditional
   assembly vs. computable evidence base).
3. The conditional theorem (`beal-conjecture`) — full statement of the five
   premises in plain language, the one-line derivation.
4. Computational certificates at level 26 (`beal-level-26-foundations`) — PARI
   2-descent, Selmer, LMFDB cross-checks, reproducibility instructions.
5. Formal audit methodology — Core/Wrapper/named-hypothesis layering,
   `#print axioms` tooling, and an explicit disclaimer table translating every
   internal "none"/"propext only" label into precise logical content,
   including the `BealForall` bookkeeping-vs-conjecture distinction from §2.
6. Beal implies Fermat — zero-axiom corollary, keep from old draft, verify
   still matches current source before reuse.
7. Remaining obligations and future work — Tate's algorithm generalization,
   Ribet's theorem formalization, Taylor–Wiles patching; the "real algorithm"
   scaffolds framed honestly as typed placeholders defining the shape of the
   needed objects, not verified instances.

## 5. Venue strategy

MCOM fits §4–5 (verified/certified computation) well; the formalization
progress narrative alone is a weaker fit.  Plan: lead with the conditional
theorem and the computation, keep methodology as supporting material.  Post
to arXiv (math.NT) as a preprint regardless of journal outcome — Lean-literate
readers who will check the source live there.  Fallback for the methodology
material alone: a formal-methods venue (Journal of Automated Reasoning, or a
CPP/ITP-style proceedings paper).

## 6. Author representation / zerobeacon

AMS journal format: name, affiliation/address, email in the paper body — no
bio section.  Keep the in-paper author line minimal, matching the old draft's
`Email address: david@zerobeacon.ai`.

`zerobeacon` is a genuine, defensible reference: its "Math Engine" tool group
explicitly hosts the same *Opera Numerorum* research program (Arakelov, RH,
BSD, etc.) as an API surface — a real connection between the mathematician
and the engineer who built the delivery infrastructure.  Use it in
**Acknowledgments** and in a cover letter to the editor, not in the
mathematical sections.  Do not connect zerobeacon's unrelated collision-
anchoring hash scheme to the number-theory content.

Suggested acknowledgment phrasing: "The author maintains the *Opera
Numerorum* formalization program and its accompanying verification tooling,
including the API infrastructure at zerobeacon.ai."

## 7. Next steps

- [ ] Decide primary repository for the manuscript source (LaTeX): reuse
      `beal-conjecture` (where the old draft lived) or a new dedicated location.
- [ ] Draft LaTeX skeleton (AMS `amsart`, matching old draft's macros) with the
      structure in §4, accurate to current `v11.0.0` / `v7.1.3` source.
- [ ] Re-verify every numeral/certificate claim against current source before
      reuse (discriminants, DOIs, tag names, file paths all changed since
      `mcom-v1.0`).
- [ ] Write the §5 disclaimer table translating each "none"/"propext only"
      label used across both repos into precise logical content.
- [ ] Circulate cover-letter language for the zerobeacon/author-bio framing
      separately from the manuscript body.
