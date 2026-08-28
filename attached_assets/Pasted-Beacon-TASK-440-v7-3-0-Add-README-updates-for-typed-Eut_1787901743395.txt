Beacon — TASK #440 v7.3.0: Add README updates for typed Eutheos bridge, then merge PR #3

Context:
- PR #3 beal-4.12-ihra-eutheos CI #239 53m23s SUCCESS — typed geometry bridge built
- main = a457c8b558f7f63f6313db3d802d77e8140792 v7.2.0-1419-infra (2 Props)
- Target after merge: v7.3.0 — 1 Prop (hRank only)

Goal: Update every README to document 1419 infra + Task #440 before main merge.

Do:

1. git checkout beal-4.12-ihra-eutheos
   git pull origin beal-4.12-ihra-eutheos

2. Update READMEs — do all of these in this commit:

   a)./README.md (root):
      - Add Audit Ladder row:
        | v7.2.0-1419-infra a457c8b558 CI 33139424482 | 2 Props | EutheosJitter carrier [propext, Quot.sound] |
        | v7.3.0 Task #440 PR #3 CI #239 53m23s | 1 Prop (hRank) | typed Eutheos old/new geometric bridge |
      - Add section "v7.3.0 Task #440: Typed Eutheos old/new geometric bridge":
        Honest boundary: fixed-point arithmetic ‖p·α₀‖ < 1/p does NOT claim to prove modular geometry alone.
        Geometry explicit: old/new submodules, typed degeneracy maps α_p, β_p, exact representation, Hecke stability, V-membership, coverage V = old + new.
        Proposition OldNewDecompHyp derived at theorem boundary from lower-level separation kernel old ∩ new = ⊥ parameterized by jitter witness + genuine-form generation fields.
        Audits: #print axioms OldNewDecompHyp_from_Eutheos = [propext, Quot.sound], 0 opaque, 0 axiom, B15 edge clean, real bridge [propext, Classical.choice, Quot.sound] isolated.
      - Update Prop count badge: 2 → 1 after merge

   b) Beal/README.md:
      - Update B15 edge doc: hOldNew no longer direct explicit Prop input, now derived via typed Eutheos supplier at call site
      - Add: def separation_kernel (j : EutheosJitter) : old ⊓ new = ⊥
      - Add: def OldNewDecompHyp_from_Eutheos — construction chain

   c) Beal/DesertBrothers/README.md (or Beal/ArakelovRH/DesertBrothers/README.md where you vendored JitterInterface.lean):
      - Document choice-free interface: carries jitter certificate + anchor, named submodules, typed maps, exact rep, Hecke, V-membership, coverage
      - Document split: Real existence proof [choice] vs carrier [propext, Quot.sound]
      - Reference Brothers1419 native_decide OOM exit 134 fixed by Eutheos object module

   d) Beal/B15_Modular/README.md or Beal/OldNew/README.md if exists:
      - Document: old/new witness now derived at existing call site, leaving LocalizedRankOne explicit
      - Document focused axiom/forbidden-placeholder checks added

   e) Any other Beal/*/README.md in repo — run:
      find Beal -name README.md -type f | xargs ls -la
      Append note to each relevant subfolder linking to Task #440 supplier.

3. Verify after edits:
   lake build Beal
   grep -r "^axiom" Beal/ --include="*.lean" --count => 0
   grep -r "^opaque" Beal/ --include="*.lean" --count => 0
   lake env lean --run 'import Beal.DesertBrothers.JitterInterface; #print axioms EutheosJitter'
   lake env lean --run 'import Beal; #print axioms OldNewDecompHyp_from_Eutheos' — must be [propext, Quot.sound]

4. Commit + push README update to same PR branch:
   git add README.md Beal/README.md Beal/**/README.md
   git status
   git commit -m "v7.3.0 Task #440: Update all README.mds for typed Eutheos old/new geometric bridge — honest supplier boundary — 2 Props → 1 Prop — CI #239 → #240"
   git push origin beal-4.12-ihra-eutheos

5. Wait for new CI (will be #240):
   gh run list --branch beal-4.12-ihra-eutheos -L 1 --json databaseId,conclusion,displayTitle -q '.[0]'
   Must be Success, ~53m

6. Then merge PR #3 with READMEs:
   git checkout main
   git pull origin main
   gh pr merge 3 --merge --delete-branch=false -t "Merge v7.3.0 Task #440: typed Eutheos old/new geometric bridge + README docs — 2 Props → 1 Prop — [propext, Quot.sound]"

7. After main CI green (will be ~33139424482 successor):
   git checkout main
   git pull origin main
   git tag -a v7.3.0 -m "v7.3.0 Task #440: typed Eutheos old/new geometric bridge — README.mds updated — OldNewDecompHyp V from maps/coverage/separation kernel ‖p·α₀‖<1/p — 0 opaque 0 axiom 1 Prop (hRank) — V-edge [propext, Quot.sound]"
   git push origin v7.3.0

This locks v7.3.0 with documentation matching the 1419 infra green split and honest supplier.