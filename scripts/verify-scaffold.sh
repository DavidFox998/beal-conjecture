#!/usr/bin/env bash
set -euo pipefail

# verify-scaffold.sh — referee surface for the DarmonMerel/ roadmap scaffold
# and the Path B web presence (beal-conjecture canonical, no custom domain).
#
# Rewritten 2026-10-12: the old lean/BealLevel26Foundations/ existence checks
# predated the eacdb3ab repurposing and are dead. The scaffold is now the six
# DarmonMerel/ roadmap files (scaffold-only, 2026-10-09).

# === DarmonMerel/ scaffold surface: the six roadmap files ===
test -f DarmonMerel/1_FreyCurve4413.lean
test -f DarmonMerel/2_Modularity4413.lean
test -f DarmonMerel/3_RibetLowering4413.lean
test -f DarmonMerel/4_MazurMethod.lean
test -f DarmonMerel/5_WindingQuotient.lean
test -f DarmonMerel/6_MainTheorem.lean
test -f DarmonMerel/README.md

# Each file declares its module and its scaffold-only status.
grep -q "DarmonMerel.1_FreyCurve4413" DarmonMerel/1_FreyCurve4413.lean
grep -q "DarmonMerel.2_Modularity4413" DarmonMerel/2_Modularity4413.lean
grep -q "DarmonMerel.3_RibetLowering4413" DarmonMerel/3_RibetLowering4413.lean
grep -q "DarmonMerel.4_MazurMethod" DarmonMerel/4_MazurMethod.lean
grep -q "DarmonMerel.5_WindingQuotient" DarmonMerel/5_WindingQuotient.lean
grep -q "DarmonMerel.6_MainTheorem" DarmonMerel/6_MainTheorem.lean
for f in DarmonMerel/1_FreyCurve4413.lean \
         DarmonMerel/2_Modularity4413.lean \
         DarmonMerel/3_RibetLowering4413.lean \
         DarmonMerel/4_MazurMethod.lean \
         DarmonMerel/5_WindingQuotient.lean \
         DarmonMerel/6_MainTheorem.lean; do
  grep -q "scaffold only" "$f"
  grep -q "^import Mathlib" "$f"
done
grep -q "scaffold-only" DarmonMerel/README.md
grep -q "beal-conjecture" DarmonMerel/README.md

# === Path B web presence: canonical beal-conjecture, no custom domain ===
test -f docs/assets/v6.7.0/ribet_26_to_2.jpg
test -f docs/assets/v6.7.0/ribet_26_to_2.png
test -f docs/assets/v6.7.0/ribet_26_to_2.webp
test -f docs/assets/v6.7.0/tw_qn_infinite_family.jpg
test -f docs/assets/v6.7.0/tw_qn_infinite_family.png
test -f docs/assets/v6.7.0/tw_qn_infinite_family.webp
test -f docs/assets/v6.7.0/galois_token.jpg
test -f docs/assets/v6.7.0/galois_token.png
test -f docs/assets/v6.7.0/galois_token.webp
grep -q 'og:image" content="https://davidfox998.github.io/beal-conjecture/assets/v6.7.0/ribet_26_to_2.jpg"' \
  docs/index.html
grep -q 'og:image:type" content="image/jpeg"' docs/index.html
grep -q 'assets/v6.7.0/ribet_26_to_2.jpg' docs/facebook-share.json
grep -q 'image/jpeg' docs/facebook-share.json
test ! -e extensions/facebook
test ! -e docs/images/797726399_1063690106418837_5544926896290683567_n.webp
grep -q "assets/v6.7.0/ribet_26_to_2.jpg" docs/About.md
grep -q "assets/v6.7.0/tw_qn_infinite_family.jpg" docs/About.md
grep -q "assets/v6.7.0/galois_token.jpg" docs/About.md
grep -q "assets/v6.7.0/ribet_26_to_2.jpg" docs/Final/FINAL.md
grep -q "assets/v6.7.0/tw_qn_infinite_family.jpg" docs/Final/FINAL.md
grep -q "assets/v6.7.0/galois_token.jpg" docs/Final/FINAL.md
# (README.md no longer embeds the v6.7.0 asset images; the web presence
# lives in docs/index.html above.)

# No stale mirror or dead-domain references in the web surface.
if grep -rn "beal-level-26-foundations" docs/index.html docs/About.md \
    docs/Final/FINAL.md docs/facebook-share.json 2>/dev/null; then
  echo "FAIL: stale beal-level-26-foundations reference in docs web surface"
  exit 1
fi
if grep -rn "www.beal-conjecture" docs/index.html docs/About.md \
    docs/Final/FINAL.md docs/facebook-share.json 2>/dev/null; then
  echo "FAIL: dead www.beal-conjecture domain reference in docs web surface"
  exit 1
fi

# === Repo hygiene: top-level must-haves ===
test -f README.md
test -f CITATION.cff
test -f docs/index.html
test -f lean-toolchain
test -f lakefile.lean
grep -q "^# beal-conjecture" README.md
grep -q "github.com/DavidFox998/beal-conjecture" CITATION.cff

# === Computational certificates that still verify ===
python3 scripts/verify_coefficient_ledger.py
python3 scripts/replay_level26_hensel.py

echo "OK: DarmonMerel scaffold and Path B web presence are internally consistent"
