#!/usr/bin/env bash
# Honest AMS / Math. Comp. referee surface for foundations-level-26.
# This repo owns the integer-gap B≤B0 Matveev lower bound (not Mathlib 4.12
# interpolation, not unrestricted matveev_inequality_real_target).
# Zero sorry/admit in Lean sources.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

fail() { echo "verify-matveev-beal: $*" >&2; exit 1; }

test -f lean-toolchain
test -f lakefile.lean
test -f lake-manifest.json
test -f CITATION.cff
test -f README.md
test -f LICENSE
test -f Beal/Matveev/MatveevThm14General.lean
test -f Beal/Matveev/MatveevThm14Proof.lean
test -f Beal/Matveev/MatveevLLL.lean
test -f MatveevThm14Proof.lean
test -f MatveevLLL.lean
test -f MatveevInterpolation.lean
test -f Beal/Matveev/MatveevInterpolation.lean
test -f MatveevBugeaud.lean
test -f Beal/Matveev/MatveevBugeaud.lean
test -f WuestholzSubgroup.lean
test -f Beal/Matveev/WuestholzSubgroup.lean
test -f WuestholzProduct.lean
test -f Beal/Matveev/WuestholzProduct.lean
test -f MatveevThreeLogs.lean
test -f Beal/Matveev/MatveevThreeLogs.lean
test -f BealKraus.lean
test -f Beal/Matveev/BealKraus.lean
test -f BealKrausZsig.lean
test -f Beal/Matveev/BealKrausZsig.lean
test -f BealCatalanZsig.lean
test -f Beal/Matveev/BealCatalanZsig.lean
test -f BealDarmonMerel.lean
test -f Beal/Matveev/BealDarmonMerel.lean
test -f BealDarmonMerel44p.lean
test -f Beal/Matveev/BealDarmonMerel44p.lean
test -f BealFLT13.lean
test -f Beal/Matveev/BealFLT13.lean
test -f BealGenuineV25.lean
test -f Beal/Matveev/BealGenuineV25.lean
test -f BealTrueV25.lean
test -f Beal/Matveev/BealTrueV25.lean
test -f BealUnconditionalV25.lean
test -f Beal/Matveev/BealUnconditionalV25.lean
test -f BealGap1.lean
test -f Beal/Matveev/BealGap1.lean
test -f BealGap2.lean
test -f Beal/Matveev/BealGap2.lean
test -f BealGap4.lean
test -f Beal/Matveev/BealGap4.lean
test -f BealGap5.lean
test -f Beal/Matveev/BealGap5.lean
test -f BealGap6.lean
test -f Beal/Matveev/BealGap6.lean
test -f BealGap7.lean
test -f Beal/Matveev/BealGap7.lean
test -f BealGap8.lean
test -f Beal/Matveev/BealGap8.lean
test -f BealGap9.lean
test -f Beal/Matveev/BealGap9.lean
test -f BealGap10.lean
test -f Beal/Matveev/BealGap10.lean
test -f BealGap11.lean
test -f Beal/Matveev/BealGap11.lean
test -f BealGap12.lean
test -f Beal/Matveev/BealGap12.lean
test -f BealGap13.lean
test -f Beal/Matveev/BealGap13.lean
test -f BealGap14.lean
test -f Beal/Matveev/BealGap14.lean
test -f BealGap15.lean
test -f Beal/Matveev/BealGap15.lean
test -f BealGapK.lean
test -f Beal/Matveev/BealGapK.lean
test -f EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean
test -f Beal/Matveev/EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean
test -f BugeaudLaurent.lean
test -f Beal/Matveev/BugeaudLaurent.lean
test -f PAdicLLL.lean
test -f Beal/Matveev/PAdicLLL.lean
test -f PAdicLLL_ZeroAxiom.lean
test -f Beal/Matveev/PAdicLLL_ZeroAxiom.lean
test -f BealMatveevBealV25Rank3.lean
if test -f Beal/Matveev/BealMatveevBealV25Rank3.lean; then
  fail "do not add Beal/Matveev/BealMatveevBealV25Rank3.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f BealMatveevBealV25B0Search.lean
if test -f Beal/Matveev/BealMatveevBealV25B0Search.lean; then
  fail "do not add Beal/Matveev/BealMatveevBealV25B0Search.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f LLLTargetB8.lean
if test -f Beal/Matveev/LLLTargetB8.lean; then
  fail "do not add Beal/Matveev/LLLTargetB8.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Gap3B0Million.lean
if test -f Beal/Matveev/Gap3_B_le_B0.lean; then
  fail "do not add Beal/Matveev/Gap3_B_le_B0.lean; .submodules Beal.Matveev would pull it into default"
fi
if test -d Beal/Matveev/Gap3Shards; then
  fail "do not add Beal/Matveev/Gap3Shards; .submodules Beal.Matveev would pull it into default"
fi
test -f scripts/gen_gap3_shards.py
test -f LLLTargetB8_C1_lower_bound.lean
if test -f Beal/Matveev/LLLTargetB8_C1_lower_bound.lean; then
  fail "do not add Beal/Matveev/LLLTargetB8_C1_lower_bound.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f DarmonMerelFrey4413.lean
if test -f Beal/Matveev/DarmonMerelFrey4413.lean; then
  fail "do not add Beal/Matveev/DarmonMerelFrey4413.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Level32Table.lean
if test -f Beal/Matveev/Level32Table.lean; then
  fail "do not add Beal/Matveev/Level32Table.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Level928Table.lean
if test -f Beal/Matveev/Level928Table.lean; then
  fail "do not add Beal/Matveev/Level928Table.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Ribet29C_Lowering.lean
if test -f Beal/Matveev/Ribet29C_Lowering.lean; then
  fail "do not add Beal/Matveev/Ribet29C_Lowering.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Ribet29C_Residue16.lean
if test -f Beal/Matveev/Ribet29C_Residue16.lean; then
  fail "do not add Beal/Matveev/Ribet29C_Residue16.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Ribet29C_Residue16_L23.lean
if test -f Beal/Matveev/Ribet29C_Residue16_L23.lean; then
  fail "do not add Beal/Matveev/Ribet29C_Residue16_L23.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f MazurIrreducibility13.lean
if test -f Beal/Matveev/MazurIrreducibility13.lean; then
  fail "do not add Beal/Matveev/MazurIrreducibility13.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f ARCHIVE_4413.md
test -f Inertia29Unramified.lean
if test -f Beal/Matveev/Inertia29Unramified.lean; then
  fail "do not add Beal/Matveev/Inertia29Unramified.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f SerreImage13.lean
if test -f Beal/Matveev/SerreImage13.lean; then
  fail "do not add Beal/Matveev/SerreImage13.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f MazurIrreducibilityFull.lean
if test -f Beal/Matveev/MazurIrreducibilityFull.lean; then
  fail "do not add Beal/Matveev/MazurIrreducibilityFull.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f TateGalois.lean
if test -f Beal/Matveev/TateGalois.lean; then
  fail "do not add Beal/Matveev/TateGalois.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f SerreImageFull.lean
if test -f Beal/Matveev/SerreImageFull.lean; then
  fail "do not add Beal/Matveev/SerreImageFull.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Mazur_X0_13_RationalPoints.lean
if test -f Beal/Matveev/Mazur_X0_13_RationalPoints.lean; then
  fail "do not add Beal/Matveev/Mazur_X0_13_RationalPoints.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Tate_I29_Inertia.lean
if test -f Beal/Matveev/Tate_I29_Inertia.lean; then
  fail "do not add Beal/Matveev/Tate_I29_Inertia.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Ribet_Level32.lean
if test -f Beal/Matveev/Ribet_Level32.lean; then
  fail "do not add Beal/Matveev/Ribet_Level32.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Serre_Large_vs_CM_Small.lean
if test -f Beal/Matveev/Serre_Large_vs_CM_Small.lean; then
  fail "do not add Beal/Matveev/Serre_Large_vs_CM_Small.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f X0_26_Full2Torsion.lean
if test -f Beal/Matveev/X0_26_Full2Torsion.lean; then
  fail "do not add Beal/Matveev/X0_26_Full2Torsion.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f TwoDescent_26a1_26.lean
if test -f Beal/Matveev/TwoDescent_26a1_26.lean; then
  fail "do not add Beal/Matveev/TwoDescent_26a1_26.lean; .submodules Beal.Matveev would pull it into default"
fi
if test -d BealTrueV25; then
  fail "do not create BealTrueV25/ subdirectory; conflicts with root BealTrueV25.lean"
fi
if test -d Towers; then
  fail "do not add Towers/; use root BSD_MordellWeil.lean and TwoDescent_26a1_26.lean"
fi
test -f docs/X0_26_SECTION_8994d38.md
test -f J0_26_BSD_26a1_26b1.lean
if test -f Beal/Matveev/J0_26_BSD_26a1_26b1.lean; then
  fail "do not add Beal/Matveev/J0_26_BSD_26a1_26b1.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f BSD_MordellWeil.lean
if test -f Beal/Matveev/BSD_MordellWeil.lean; then
  fail "do not add Beal/Matveev/BSD_MordellWeil.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Tate_Frey_Conductor_29.lean
if test -f Beal/Matveev/Tate_Frey_Conductor_29.lean; then
  fail "do not add Beal/Matveev/Tate_Frey_Conductor_29.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Mazur_X0_13_No_Isogeny.lean
if test -f Beal/Matveev/Mazur_X0_13_No_Isogeny.lean; then
  fail "do not add Beal/Matveev/Mazur_X0_13_No_Isogeny.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Ribet_Level_Lowering_29_to_32.lean
if test -f Beal/Matveev/Ribet_Level_Lowering_29_to_32.lean; then
  fail "do not add Beal/Matveev/Ribet_Level_Lowering_29_to_32.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f Kolyvagin_MW_Rank0_26a1_26b1.lean
if test -f Beal/Matveev/Kolyvagin_MW_Rank0_26a1_26b1.lean; then
  fail "do not add Beal/Matveev/Kolyvagin_MW_Rank0_26a1_26b1.lean; .submodules Beal.Matveev would pull it into default"
fi
test -f docs/roadmap_without_wiles/README.md
test -f Level26/BealLevel26Foundations/lakefile.lean
test -f Level26/BealLevel26Foundations/VENDOR.md
if test -d Level26/BealLevel26Foundations/.git; then
  fail "do not vendor the full beal-conjecture clone including .git"
fi
if test -f MW_Rank_Zero_Fintype_Skeleton.lean || test -f Tate_Frey_Conductor_Skeleton.lean ||
   test -f Mazur_X0_13_Skeleton.lean || test -f Ribet_Level_Lowering_Skeleton.lean; then
  fail "do not add pasted *_Skeleton.lean (sorry / True / WeierstrassCurve.mk)"
fi

grep -q 'leanprover/lean4:v4.12.0' lean-toolchain \
  || fail "lean-toolchain is not Lean 4.12.0"

grep -q '@\[default_target\]' lakefile.lean
grep -q 'BealMatveevBeal' lakefile.lean \
  || fail "lakefile.lean missing BealMatveevBeal"
if grep -q 'BealLevel26FoundationsScaffold' lakefile.lean; then
  fail "lakefile.lean still names the relocated Scaffold target"
fi

python3 - <<'PY'
import pathlib, re, sys

root = pathlib.Path(".")
lean_files = [
    p for p in root.rglob("*.lean")
    if ".lake" not in p.parts and "scripts" not in p.parts
]

sorry_pat = re.compile(r"^\s*sorry\b")
admit_pat = re.compile(r"^\s*admit\b")
sorries, admits = [], []
for p in lean_files:
    text = p.read_text(encoding="utf-8")
    for i, line in enumerate(text.splitlines(), 1):
        if sorry_pat.match(line):
            sorries.append(f"{p.as_posix()}:{i}")
        if admit_pat.match(line):
            admits.append(f"{p.as_posix()}:{i}")

if admits:
    print("unexpected admit:", *admits, sep="\n  ", file=sys.stderr)
    sys.exit(1)

if sorries:
    print("sorry budget is not empty:", file=sys.stderr)
    print("  found:", sorries, file=sys.stderr)
    sys.exit(1)

src = pathlib.Path("Beal/Matveev/MatveevThm14General.lean").read_text(encoding="utf-8")
if "theorem matveev_gap3_lower :" not in src:
    print("theorem matveev_gap3_lower missing", file=sys.stderr)
    sys.exit(1)
body = src.split("theorem matveev_gap3_lower :", 1)[1]
body = re.split(r"\n(?:def |theorem |lemma |/-!)", body, maxsplit=1)[0]
if re.search(r"^\s*sorry\b", body, re.M):
    print("matveev_gap3_lower still contains sorry", file=sys.stderr)
    sys.exit(1)
if "matveev_gap3_lower_B_le_B0_target" not in src:
    print("B≤B0 target missing", file=sys.stderr)
    sys.exit(1)
if "matveev_gap3_lower_of_integer_gap_of_B_le_B0" not in src:
    print("integer-gap B≤B0 close missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in src:
    print("C1_floor = 143186215390 missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "matveev_product_bound_of_B_le_B0" not in src:
    print("proved product bound missing", file=sys.stderr)
    sys.exit(1)
if "gap3_A_bounds" not in src:
    print("gap3_A_bounds missing", file=sys.stderr)
    sys.exit(1)
if "matveev_gap3_lower_of_general_of_B_le_B0" not in src:
    print("v25-sufficient packaging missing", file=sys.stderr)
    sys.exit(1)
if "matveev_thm14_n2_explicit_of_nat" not in pathlib.Path("MatveevThm14Proof.lean").read_text(encoding="utf-8"):
    print("matveev_thm14_n2_explicit_of_nat missing from MatveevThm14Proof.lean", file=sys.stderr)
    sys.exit(1)
if "import MatveevThreeLogs" not in src:
    print("MatveevThm14General.lean missing import MatveevThreeLogs", file=sys.stderr)
    sys.exit(1)
if "MatveevThreeLogs.baker_bound_gap3_nogo_logs" not in src:
    print("#check baker_bound_gap3_nogo_logs missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealKraus" not in src:
    print("MatveevThm14General.lean missing import BealKraus", file=sys.stderr)
    sys.exit(1)
if "BealKraus.baker_bound_gap3_kraus_nogo" not in src:
    print("#check baker_bound_gap3_kraus_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealKrausZsig" not in src:
    print("MatveevThm14General.lean missing import BealKrausZsig", file=sys.stderr)
    sys.exit(1)
if "BealKrausZsig.baker_bound_gap3_gaussian_nogo" not in src:
    print("#check baker_bound_gap3_gaussian_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealCatalanZsig" not in src:
    print("MatveevThm14General.lean missing import BealCatalanZsig", file=sys.stderr)
    sys.exit(1)
if "BealCatalanZsig.baker_bound_gap3_mihailescu_zsigmondy_nogo" not in src:
    print("#check baker_bound_gap3_mihailescu_zsigmondy_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealDarmonMerel" not in src:
    print("MatveevThm14General.lean missing import BealDarmonMerel", file=sys.stderr)
    sys.exit(1)
if "BealDarmonMerel.baker_bound_gap3_darmon_merel_nogo" not in src:
    print("#check baker_bound_gap3_darmon_merel_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealDarmonMerel44p" not in src:
    print("MatveevThm14General.lean missing import BealDarmonMerel44p", file=sys.stderr)
    sys.exit(1)
if "BealDarmonMerel44p.baker_bound_gap3_darmon_merel_44p_nogo" not in src:
    print("#check baker_bound_gap3_darmon_merel_44p_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealFLT13" not in src:
    print("MatveevThm14General.lean missing import BealFLT13", file=sys.stderr)
    sys.exit(1)
if "BealFLT13.baker_bound_gap3_flt13_darmon_merel_nogo" not in src:
    print("#check baker_bound_gap3_flt13_darmon_merel_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGenuineV25" not in src:
    print("MatveevThm14General.lean missing import BealGenuineV25", file=sys.stderr)
    sys.exit(1)
if "BealGenuineV25.baker_bound_gap3_darmon_merel_4413_3adic_nogo" not in src:
    print("#check baker_bound_gap3_darmon_merel_4413_3adic_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealTrueV25" not in src:
    print("MatveevThm14General.lean missing import BealTrueV25", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.baker_bound_gap3_true" not in src:
    print("#check baker_bound_gap3_true missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealUnconditionalV25" not in src:
    print("MatveevThm14General.lean missing import BealUnconditionalV25", file=sys.stderr)
    sys.exit(1)
if "BealUnconditionalV25.baker_bound_gap3_unconditional_nogo" not in src:
    print("#check baker_bound_gap3_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap1" not in src:
    print("MatveevThm14General.lean missing import BealGap1", file=sys.stderr)
    sys.exit(1)
if "BealGap1.baker_bound_gap1_unconditional_nogo" not in src:
    print("#check baker_bound_gap1_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap2" not in src:
    print("MatveevThm14General.lean missing import BealGap2", file=sys.stderr)
    sys.exit(1)
if "BealGap2.baker_bound_gap2_unconditional_nogo" not in src:
    print("#check baker_bound_gap2_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap4" not in src:
    print("MatveevThm14General.lean missing import BealGap4", file=sys.stderr)
    sys.exit(1)
if "BealGap4.baker_bound_gap4_unconditional_nogo" not in src:
    print("#check baker_bound_gap4_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap5" not in src:
    print("MatveevThm14General.lean missing import BealGap5", file=sys.stderr)
    sys.exit(1)
if "BealGap5.baker_bound_gap5_unconditional_nogo" not in src:
    print("#check baker_bound_gap5_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap6" not in src:
    print("MatveevThm14General.lean missing import BealGap6", file=sys.stderr)
    sys.exit(1)
if "BealGap6.baker_bound_gap6_unconditional_nogo" not in src:
    print("#check baker_bound_gap6_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap7" not in src:
    print("MatveevThm14General.lean missing import BealGap7", file=sys.stderr)
    sys.exit(1)
if "BealGap7.baker_bound_gap7_unconditional_nogo" not in src:
    print("#check baker_bound_gap7_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap8" not in src:
    print("MatveevThm14General.lean missing import BealGap8", file=sys.stderr)
    sys.exit(1)
if "BealGap8.baker_bound_gap8_unconditional_nogo" not in src:
    print("#check baker_bound_gap8_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap9" not in src:
    print("MatveevThm14General.lean missing import BealGap9", file=sys.stderr)
    sys.exit(1)
if "BealGap9.baker_bound_gap9_unconditional_nogo" not in src:
    print("#check baker_bound_gap9_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap10" not in src:
    print("MatveevThm14General.lean missing import BealGap10", file=sys.stderr)
    sys.exit(1)
if "BealGap10.baker_bound_gap10_unconditional_nogo" not in src:
    print("#check baker_bound_gap10_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap11" not in src:
    print("MatveevThm14General.lean missing import BealGap11", file=sys.stderr)
    sys.exit(1)
if "BealGap11.baker_bound_gap11_unconditional_nogo" not in src:
    print("#check baker_bound_gap11_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap12" not in src:
    print("MatveevThm14General.lean missing import BealGap12", file=sys.stderr)
    sys.exit(1)
if "BealGap12.baker_bound_gap12_unconditional_nogo" not in src:
    print("#check baker_bound_gap12_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap13" not in src:
    print("MatveevThm14General.lean missing import BealGap13", file=sys.stderr)
    sys.exit(1)
if "BealGap13.baker_bound_gap13_unconditional_nogo" not in src:
    print("#check baker_bound_gap13_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap14" not in src:
    print("MatveevThm14General.lean missing import BealGap14", file=sys.stderr)
    sys.exit(1)
if "BealGap14.baker_bound_gap14_unconditional_nogo" not in src:
    print("#check baker_bound_gap14_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGap15" not in src:
    print("MatveevThm14General.lean missing import BealGap15", file=sys.stderr)
    sys.exit(1)
if "BealGap15.baker_bound_gap15_unconditional_nogo" not in src:
    print("#check baker_bound_gap15_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BealGapK" not in src:
    print("MatveevThm14General.lean missing import BealGapK", file=sys.stderr)
    sys.exit(1)
if "BealGapK.baker_bound_gapK_unconditional_nogo" not in src:
    print("#check baker_bound_gapK_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6" not in src:
    print("MatveevThm14General.lean missing import EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6", file=sys.stderr)
    sys.exit(1)
if "EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.baker_bound_B0_1e6_unconditional_nogo" not in src:
    print("#check baker_bound_B0_1e6_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import BugeaudLaurent" not in src:
    print("MatveevThm14General.lean missing import BugeaudLaurent", file=sys.stderr)
    sys.exit(1)
if "BugeaudLaurent.bugeaud_laurent_unconditional_nogo" not in src:
    print("#check bugeaud_laurent_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import PAdicLLL" not in src:
    print("MatveevThm14General.lean missing import PAdicLLL", file=sys.stderr)
    sys.exit(1)
if "PAdicLLL.p_adic_LLL_unconditional_nogo" not in src:
    print("#check p_adic_LLL_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "PAdicLLL.not_A_le_B_add_ten_of_sol" not in src:
    print("#check not_A_le_B_add_ten_of_sol missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "PAdicLLL.not_A_le_B_add_ten_of_gap3" not in src:
    print("#check not_A_le_B_add_ten_of_gap3 missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "PAdicLLL.lll_euclidean_lower_bound_fails" not in src:
    print("#check lll_euclidean_lower_bound_fails missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "PAdicLLL.lll_form_dirichlet_nogo" not in src:
    print("#check lll_form_dirichlet_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if "import PAdicLLL_ZeroAxiom" not in src:
    print("MatveevThm14General.lean missing import PAdicLLL_ZeroAxiom", file=sys.stderr)
    sys.exit(1)
if "PAdicLLL_ZeroAxiom.p_adic_lll_zero_axiom_unconditional_nogo" not in src:
    print("#check p_adic_lll_zero_axiom_unconditional_nogo missing from MatveevThm14General.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^def check_gap3_range\b", src, re.M):
    print("do not rewrite matveev_gap3_lower with check_gap3_range shards", file=sys.stderr)
    sys.exit(1)

lll = pathlib.Path("MatveevLLL.lean").read_text(encoding="utf-8")
if "theorem four_thirteenths_is_convergent" not in lll:
    print("four_thirteenths_is_convergent missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem integer_gap_lt_ratio" not in lll:
    print("integer_gap_lt_ratio missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_ge_B4_div_B3_pow" not in lll:
    print("abs_Lambda_ge_B4_div_B3_pow missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_tight_sandwich" not in lll:
    print("abs_Lambda_tight_sandwich missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_le_inv_B" not in lll:
    print("abs_Lambda_le_inv_B missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem elementary_inv_max_compatible_with_inv_B" not in lll:
    print("elementary_inv_max_compatible_with_inv_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_lt_inv_max_log_coeff" not in lll:
    print("abs_Lambda_lt_inv_max_log_coeff missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem track1_exp_lt_ratio" not in lll:
    print("track1_exp_lt_ratio missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_e2_linear_form_approx" not in lll:
    print("LLL_e2_linear_form_approx missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem floor_form_approx_of_C" not in lll:
    print("floor_form_approx_of_C missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^def check_gap3_range\b", lll, re.M) or "for A in [B : B+10]" in lll:
    print("do not rewrite MatveevLLL.lean with check_gap3_range shards", file=sys.stderr)
    sys.exit(1)
if "gap3_lower_" in lll and "native_decide" in lll:
    print("do not add 977 native_decide shards to MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "def floorFormThird" not in lll:
    print("floorFormThird missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_basis_det" not in lll:
    print("LLL_basis_det missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_v_mem" not in lll:
    print("LLL_v_mem missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_v_norm_lt_thirty_two" not in lll:
    print("LLL_v_norm_lt_thirty_two missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_lambda1_lt_thirty_two" not in lll:
    print("LLL_lambda1_lt_thirty_two missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "def lllPotential" not in lll:
    print("lllPotential missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_algorithm_terminates" not in lll:
    print("lll_algorithm_terminates must be a theorem", file=sys.stderr)
    sys.exit(1)
if "def lllIsReducedBasis" not in lll:
    print("lllIsReducedBasis missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "def lllBasisPotential" not in lll:
    print("lllBasisPotential missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_svt_bound " not in lll and not re.search(r"^theorem lll_svt_bound\b", lll, re.M):
    print("lll_svt_bound must be a displayed theorem", file=sys.stderr)
    sys.exit(1)
if "theorem lll_det_bound " not in lll and not re.search(r"^theorem lll_det_bound\b", lll, re.M):
    print("lll_det_bound must be a displayed theorem", file=sys.stderr)
    sys.exit(1)
if "theorem lll_gs_lower_half_pow" not in lll:
    print("lll_gs_lower_half_pow missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_reduced_first_vec_le_lattice_vec" not in lll:
    print("lll_reduced_first_vec_le_lattice_vec missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem baker_davenport_no_cutoff" not in lll:
    print("baker_davenport_no_cutoff missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem baker_davenport_gs_lower" not in lll:
    print("baker_davenport_gs_lower rearrangement missing", file=sys.stderr)
    sys.exit(1)
if "theorem lll_svt_bound_of_reduced" not in lll:
    print("lll_svt_bound_of_reduced missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lllPotential_swap12_factor_lt" not in lll:
    print("lllPotential_swap12_factor_lt missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_lovasz_size_half" not in lll:
    print("lll_lovasz_size_half missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_b1_normSq_int" not in lll:
    print("LLL_b1_normSq_int missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_sub_lllNearestInt" not in lll:
    print("abs_sub_lllNearestInt missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "def lll_svt_bound" in lll:
    print("lll_svt_bound is now the displayed theorem, not a def Prop", file=sys.stderr)
    sys.exit(1)
if "def lll_det_bound" in lll:
    print("lll_det_bound is now the displayed theorem, not a def Prop", file=sys.stderr)
    sys.exit(1)
if "def baker_davenport_reduction" not in lll:
    print("baker_davenport_reduction must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def B0_nat" not in lll or "1000000" not in lll:
    print("B0_nat = 1000000 missing from MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "def bugeaud_LLL_reduction_proof" not in lll:
    print("bugeaud_LLL_reduction_proof must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem bugeaud_LLL_reduction_proof\b", lll, re.M):
    print("bugeaud_LLL_reduction_proof must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_davenport_reduction\b", lll, re.M):
    print("baker_davenport_reduction must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3_from_ratio\b", lll, re.M):
    print("baker_bound_gap3_from_ratio must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", lll, re.M):
    print("do not inhabit baker_bound_gap3 in MatveevLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem matveev_gap3_lower_unrestricted" in src or "theorem matveev_gap3_lower_unrestricted" in lll:
    print("do not inhabit unrestricted matveev_gap3_lower", file=sys.stderr)
    sys.exit(1)
if ".one `MatveevLLL" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing MatveevLLL glob", file=sys.stderr)
    sys.exit(1)
if ".one `MatveevInterpolation" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing MatveevInterpolation glob", file=sys.stderr)
    sys.exit(1)
if ".one `MatveevBugeaud" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing MatveevBugeaud glob", file=sys.stderr)
    sys.exit(1)
if ".one `WuestholzSubgroup" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing WuestholzSubgroup glob", file=sys.stderr)
    sys.exit(1)
if ".one `WuestholzProduct" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing WuestholzProduct glob", file=sys.stderr)
    sys.exit(1)
if ".one `MatveevThreeLogs" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing MatveevThreeLogs glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealKraus" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealKraus glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealKrausZsig" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealKrausZsig glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealCatalanZsig" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealCatalanZsig glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealDarmonMerel" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealDarmonMerel glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealDarmonMerel44p" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealDarmonMerel44p glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealFLT13" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealFLT13 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGenuineV25" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGenuineV25 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealTrueV25" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealTrueV25 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealUnconditionalV25" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealUnconditionalV25 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap1" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap1 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap2" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap2 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap4" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap4 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap5" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap5 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap6" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap6 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap7" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap7 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap8" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap8 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap9" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap9 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap10" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap10 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap11" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap11 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap12" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap12 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap13" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap13 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap14" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap14 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGap15" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGap15 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BealGapK" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BealGapK glob", file=sys.stderr)
    sys.exit(1)
if ".one `EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6 glob", file=sys.stderr)
    sys.exit(1)
if ".one `BugeaudLaurent" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing BugeaudLaurent glob", file=sys.stderr)
    sys.exit(1)
if ".one `PAdicLLL" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing PAdicLLL glob", file=sys.stderr)
    sys.exit(1)
if ".one `PAdicLLL_ZeroAxiom" not in pathlib.Path("lakefile.lean").read_text(encoding="utf-8"):
    print("lakefile.lean missing PAdicLLL_ZeroAxiom glob", file=sys.stderr)
    sys.exit(1)
lake = pathlib.Path("lakefile.lean").read_text(encoding="utf-8")
if "lean_lib «BealMatveevBealV25Rank3»" not in lake:
    print("lakefile.lean missing separate BealMatveevBealV25Rank3 library", file=sys.stderr)
    sys.exit(1)
if ".one `BealMatveevBealV25Rank3" not in lake:
    print("lakefile.lean missing BealMatveevBealV25Rank3 glob", file=sys.stderr)
    sys.exit(1)
default_globs = re.search(
    r"@\[default_target\]\s*lean_lib «BealMatveevBeal» where\s*globs := #\[(.*?)\]",
    lake, re.S)
if default_globs is None:
    print("could not parse default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "BealMatveevBealV25Rank3" in default_globs.group(1):
    print("BealMatveevBealV25Rank3 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "lean_lib «BealMatveevBealV25B0Search»" not in lake:
    print("lakefile.lean missing separate BealMatveevBealV25B0Search library", file=sys.stderr)
    sys.exit(1)
if ".one `BealMatveevBealV25B0Search" not in lake:
    print("lakefile.lean missing BealMatveevBealV25B0Search glob", file=sys.stderr)
    sys.exit(1)
if ".one `LLLTargetB8" not in lake:
    print("lakefile.lean missing LLLTargetB8 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Gap3B0Million" not in lake:
    print("lakefile.lean missing Gap3B0Million glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `LLLTargetB8_C1_lower_bound" not in lake:
    print("lakefile.lean missing LLLTargetB8_C1_lower_bound glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `DarmonMerelFrey4413" not in lake:
    print("lakefile.lean missing DarmonMerelFrey4413 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Level32Table" not in lake:
    print("lakefile.lean missing Level32Table glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Level928Table" not in lake:
    print("lakefile.lean missing Level928Table glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Ribet29C_Lowering" not in lake:
    print("lakefile.lean missing Ribet29C_Lowering glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Ribet29C_Residue16" not in lake:
    print("lakefile.lean missing Ribet29C_Residue16 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Ribet29C_Residue16_L23" not in lake:
    print("lakefile.lean missing Ribet29C_Residue16_L23 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `MazurIrreducibility13" not in lake:
    print("lakefile.lean missing MazurIrreducibility13 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Inertia29Unramified" not in lake:
    print("lakefile.lean missing Inertia29Unramified glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `SerreImage13" not in lake:
    print("lakefile.lean missing SerreImage13 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `MazurIrreducibilityFull" not in lake:
    print("lakefile.lean missing MazurIrreducibilityFull glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `TateGalois" not in lake:
    print("lakefile.lean missing TateGalois glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `SerreImageFull" not in lake:
    print("lakefile.lean missing SerreImageFull glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Mazur_X0_13_RationalPoints" not in lake:
    print("lakefile.lean missing Mazur_X0_13_RationalPoints glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Tate_I29_Inertia" not in lake:
    print("lakefile.lean missing Tate_I29_Inertia glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Ribet_Level32" not in lake:
    print("lakefile.lean missing Ribet_Level32 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Serre_Large_vs_CM_Small" not in lake:
    print("lakefile.lean missing Serre_Large_vs_CM_Small glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `TwoDescent_26a1_26" not in lake:
    print("lakefile.lean missing TwoDescent_26a1_26 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `X0_26_Full2Torsion" not in lake:
    print("lakefile.lean missing X0_26_Full2Torsion glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `BSD_MordellWeil" not in lake:
    print("lakefile.lean missing BSD_MordellWeil glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `J0_26_BSD_26a1_26b1" not in lake:
    print("lakefile.lean missing J0_26_BSD_26a1_26b1 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Tate_Frey_Conductor_29" not in lake:
    print("lakefile.lean missing Tate_Frey_Conductor_29 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Mazur_X0_13_No_Isogeny" not in lake:
    print("lakefile.lean missing Mazur_X0_13_No_Isogeny glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Ribet_Level_Lowering_29_to_32" not in lake:
    print("lakefile.lean missing Ribet_Level_Lowering_29_to_32 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if ".one `Kolyvagin_MW_Rank0_26a1_26b1" not in lake:
    print("lakefile.lean missing Kolyvagin_MW_Rank0_26a1_26b1 glob on BealMatveevBealV25B0Search", file=sys.stderr)
    sys.exit(1)
if 'require beal_level_26_foundations from "Level26/BealLevel26Foundations"' not in lake:
    print("lakefile.lean must require beal_level_26_foundations from local Level26/BealLevel26Foundations", file=sys.stderr)
    sys.exit(1)
if 'require beal_level_26_foundations from git' in lake:
    print("lakefile.lean must not keep the git require after the local vendor", file=sys.stderr)
    sys.exit(1)
if "BealMatveevBealV25B0Search" in default_globs.group(1):
    print("BealMatveevBealV25B0Search must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "LLLTargetB8" in default_globs.group(1):
    print("LLLTargetB8 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Gap3B0Million" in default_globs.group(1):
    print("Gap3B0Million must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "LLLTargetB8_C1_lower_bound" in default_globs.group(1):
    print("LLLTargetB8_C1_lower_bound must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "DarmonMerelFrey4413" in default_globs.group(1):
    print("DarmonMerelFrey4413 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Level32Table" in default_globs.group(1):
    print("Level32Table must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Level928Table" in default_globs.group(1):
    print("Level928Table must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Ribet29C_Lowering" in default_globs.group(1):
    print("Ribet29C_Lowering must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Ribet29C_Residue16" in default_globs.group(1):
    print("Ribet29C_Residue16 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Ribet29C_Residue16_L23" in default_globs.group(1):
    print("Ribet29C_Residue16_L23 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "MazurIrreducibility13" in default_globs.group(1):
    print("MazurIrreducibility13 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Inertia29Unramified" in default_globs.group(1):
    print("Inertia29Unramified must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "SerreImage13" in default_globs.group(1):
    print("SerreImage13 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "MazurIrreducibilityFull" in default_globs.group(1):
    print("MazurIrreducibilityFull must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "TateGalois" in default_globs.group(1):
    print("TateGalois must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "SerreImageFull" in default_globs.group(1):
    print("SerreImageFull must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Mazur_X0_13_RationalPoints" in default_globs.group(1):
    print("Mazur_X0_13_RationalPoints must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Tate_I29_Inertia" in default_globs.group(1):
    print("Tate_I29_Inertia must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Ribet_Level32" in default_globs.group(1):
    print("Ribet_Level32 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Serre_Large_vs_CM_Small" in default_globs.group(1):
    print("Serre_Large_vs_CM_Small must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "TwoDescent_26a1_26" in default_globs.group(1):
    print("TwoDescent_26a1_26 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "X0_26_Full2Torsion" in default_globs.group(1):
    print("X0_26_Full2Torsion must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "BSD_MordellWeil" in default_globs.group(1):
    print("BSD_MordellWeil must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "J0_26_BSD_26a1_26b1" in default_globs.group(1):
    print("J0_26_BSD_26a1_26b1 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Tate_Frey_Conductor_29" in default_globs.group(1):
    print("Tate_Frey_Conductor_29 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Mazur_X0_13_No_Isogeny" in default_globs.group(1):
    print("Mazur_X0_13_No_Isogeny must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Ribet_Level_Lowering_29_to_32" in default_globs.group(1):
    print("Ribet_Level_Lowering_29_to_32 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)
if "Kolyvagin_MW_Rank0_26a1_26b1" in default_globs.group(1):
    print("Kolyvagin_MW_Rank0_26a1_26b1 must not be in default BealMatveevBeal globs", file=sys.stderr)
    sys.exit(1)

bugeaud = pathlib.Path("MatveevBugeaud.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in bugeaud:
    print("MatveevBugeaud.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_v_third_abs_lt_C_mul_abs_Lambda_add" not in bugeaud:
    print("LLL_v_third_abs_lt_C_mul_abs_Lambda_add missing", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_third_lt_seventeen_add_C_div_B" not in bugeaud:
    print("bugeaud_third_lt_seventeen_add_C_div_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_bd_lower_lt_inv_B" not in bugeaud:
    print("bugeaud_bd_lower_lt_inv_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_bd_lower_lt_ratio" not in bugeaud:
    print("bugeaud_bd_lower_lt_ratio missing", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_bd_lower_lt_abs_Lambda" not in bugeaud:
    print("bugeaud_bd_lower_lt_abs_Lambda missing", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_required_r_gt_eighteen_of_B_lt_C" not in bugeaud:
    print("bugeaud_required_r_gt_eighteen_of_B_lt_C missing", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_C_div_B0_eq" not in bugeaud:
    print("LLL_C_div_B0_eq missing", file=sys.stderr)
    sys.exit(1)
if "theorem exists_reduced_b1_lt_sixty_four" not in bugeaud:
    print("exists_reduced_b1_lt_sixty_four missing", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_naive_gs_lt_inv_B0" not in bugeaud:
    print("bugeaud_naive_gs_lt_inv_B0 missing", file=sys.stderr)
    sys.exit(1)
if "theorem not_exists_reduced_b1_gt_required_r" not in bugeaud:
    print("not_exists_reduced_b1_gt_required_r missing", file=sys.stderr)
    sys.exit(1)
if "theorem floor_form_third_abs_lt" not in bugeaud:
    print("floor_form_third_abs_lt missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_davenport_reduction_nogo" not in bugeaud:
    print("baker_davenport_reduction_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_davenport_reduction_nogo_inv_B" not in bugeaud:
    print("baker_davenport_reduction_nogo_inv_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_davenport_no_witness_above_C_div_B0" not in bugeaud:
    print("baker_davenport_no_witness_above_C_div_B0 missing", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_LLL_method_fails" not in bugeaud:
    print("bugeaud_LLL_method_fails missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in bugeaud:
    print("C1_floor = 143186215390 missing from MatveevBugeaud.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in bugeaud:
    print("B0_nat = 1000000 missing from MatveevBugeaud.lean", file=sys.stderr)
    sys.exit(1)
if "def bugeaud_LLL_reduction_proof" not in bugeaud:
    print("bugeaud_LLL_reduction_proof must stay a def Prop in MatveevBugeaud.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_davenport_reduction" not in bugeaud:
    print("baker_davenport_reduction must stay a def Prop in MatveevBugeaud.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem bugeaud_LLL_reduction_proof\b", bugeaud, re.M):
    print("bugeaud_LLL_reduction_proof must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_davenport_reduction\b", bugeaud, re.M):
    print("baker_davenport_reduction must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3_from_ratio\b", bugeaud, re.M):
    print("baker_bound_gap3_from_ratio must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", bugeaud, re.M):
    print("do not inhabit baker_bound_gap3 in MatveevBugeaud.lean", file=sys.stderr)
    sys.exit(1)

wsg = pathlib.Path("WuestholzSubgroup.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in wsg:
    print("WuestholzSubgroup.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_easy_half" not in wsg:
    print("no_uniform_c_easy_half missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_one_div_thousand" not in wsg:
    print("no_uniform_c_one_div_thousand missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_linear_in_N" not in wsg:
    print("no_uniform_c_linear_in_N missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_subgroup_theorem_of_jet_dim" not in wsg:
    print("wuestholz_subgroup_theorem_of_jet_dim missing", file=sys.stderr)
    sys.exit(1)
if "theorem coeffCount_one_ten_ten" not in wsg:
    print("coeffCount_one_ten_ten missing", file=sys.stderr)
    sys.exit(1)
if "theorem siegel_T_lt_jet_dim" not in wsg:
    print("siegel_T_lt_jet_dim missing", file=sys.stderr)
    sys.exit(1)
if "def W_tangent" not in wsg:
    print("W_tangent missing", file=sys.stderr)
    sys.exit(1)
if "def vanishesToOrder" not in wsg:
    print("vanishesToOrder missing", file=sys.stderr)
    sys.exit(1)
if "structure AlgebraicSubgroup" not in wsg:
    print("AlgebraicSubgroup missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in wsg:
    print("C1_floor = 143186215390 missing from WuestholzSubgroup.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in wsg:
    print("B0_nat = 1000000 missing from WuestholzSubgroup.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in wsg:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_subgroup_theorem" not in wsg:
    print("wuestholz_subgroup_theorem must stay a def Prop in WuestholzSubgroup.lean", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_product_theorem_exp" not in wsg:
    print("wuestholz_product_theorem_exp must stay a def Prop in WuestholzSubgroup.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_subgroup_theorem\b", wsg, re.M):
    print("do not inhabit wuestholz_subgroup_theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_product_theorem_exp\b", wsg, re.M):
    print("do not inhabit wuestholz_product_theorem_exp", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", wsg, re.M):
    print("do not inhabit baker_bound_gap3 in WuestholzSubgroup.lean", file=sys.stderr)
    sys.exit(1)

prod = pathlib.Path("WuestholzProduct.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in prod:
    print("WuestholzProduct.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_or_small_T" not in prod:
    print("wuestholz_product_theorem_exp_or_small_T missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_one_ten_ten" not in prod:
    print("wuestholz_product_theorem_exp_one_ten_ten missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_of_jet_dim" not in prod:
    print("wuestholz_product_theorem_exp_of_jet_dim missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_Ga_base" not in prod:
    print("wuestholz_product_theorem_exp_Ga_base missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_for_product_theorem" not in prod:
    print("no_uniform_c_for_product_theorem missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in prod:
    print("C1_floor = 143186215390 missing from WuestholzProduct.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in prod:
    print("B0_nat = 1000000 missing from WuestholzProduct.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in prod:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_product_theorem_exp" not in prod:
    print("wuestholz_product_theorem_exp must stay a def Prop in WuestholzProduct.lean", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_subgroup_theorem" not in prod:
    print("wuestholz_subgroup_theorem must stay a def Prop in WuestholzProduct.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_davenport_reduction" not in prod:
    print("baker_davenport_reduction must stay a def Prop in WuestholzProduct.lean", file=sys.stderr)
    sys.exit(1)
if "def bugeaud_LLL_reduction_proof" not in prod:
    print("bugeaud_LLL_reduction_proof must stay a def Prop in WuestholzProduct.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_product_theorem_exp\b", prod, re.M):
    print("do not inhabit wuestholz_product_theorem_exp", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_subgroup_theorem\b", prod, re.M):
    print("do not inhabit wuestholz_subgroup_theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_davenport_reduction\b", prod, re.M):
    print("baker_davenport_reduction must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem bugeaud_LLL_reduction_proof\b", prod, re.M):
    print("bugeaud_LLL_reduction_proof must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", prod, re.M):
    print("do not inhabit baker_bound_gap3 in WuestholzProduct.lean", file=sys.stderr)
    sys.exit(1)

three = pathlib.Path("MatveevThreeLogs.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in three:
    print("MatveevThreeLogs.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_nogo_logs" not in three:
    print("baker_bound_gap3_nogo_logs missing", file=sys.stderr)
    sys.exit(1)
if "theorem matveev_lower_nogo_logs" not in three:
    print("matveev_lower_nogo_logs missing", file=sys.stderr)
    sys.exit(1)
if "theorem Lambda3_eq_Lambda" not in three:
    print("Lambda3_eq_Lambda missing", file=sys.stderr)
    sys.exit(1)
if "theorem log_B0_gt_thirteen" not in three:
    print("log_B0_gt_thirteen missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_exp_lt_ratio" not in three:
    print("C1_floor_exp_lt_ratio missing", file=sys.stderr)
    sys.exit(1)
if "theorem two_forty_two_exp_lt_ratio" not in three:
    print("two_forty_two_exp_lt_ratio missing", file=sys.stderr)
    sys.exit(1)
if "theorem one_exp_lt_ratio" not in three:
    print("one_exp_lt_ratio missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N" not in three:
    print("no_uniform_c_cubic_in_N missing", file=sys.stderr)
    sys.exit(1)
if "theorem coeffCount3_zero_ten_ten_ten" not in three:
    print("coeffCount3_zero_ten_ten_ten missing", file=sys.stderr)
    sys.exit(1)
if "theorem four_div_log_B0_lt_one" not in three:
    print("four_div_log_B0_lt_one missing", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_product_theorem_exp_Gm3" not in three:
    print("wuestholz_product_theorem_exp_Gm3 must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in three:
    print("C1_floor = 143186215390 missing from MatveevThreeLogs.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in three:
    print("B0_nat = 1000000 missing from MatveevThreeLogs.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in three:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_product_theorem_exp" not in three:
    print("wuestholz_product_theorem_exp must stay a def Prop in MatveevThreeLogs.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in three:
    print("baker_bound_gap3 must stay a def Prop in MatveevThreeLogs.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_product_theorem_exp\b", three, re.M):
    print("do not inhabit wuestholz_product_theorem_exp", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", three, re.M):
    print("do not inhabit baker_bound_gap3 in MatveevThreeLogs.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_davenport_reduction\b", three, re.M):
    print("baker_davenport_reduction must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem bugeaud_LLL_reduction_proof\b", three, re.M):
    print("bugeaud_LLL_reduction_proof must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_subgroup_theorem\b", three, re.M):
    print("wuestholz_subgroup_theorem must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_product_theorem_exp_Gm3\b", three, re.M):
    print("do not inhabit wuestholz_product_theorem_exp_Gm3", file=sys.stderr)
    sys.exit(1)

kraus = pathlib.Path("BealKraus.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in kraus:
    print("BealKraus.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_kraus_nogo" not in kraus:
    print("baker_bound_gap3_kraus_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_kraus_nogo_val" not in kraus:
    print("baker_bound_gap3_kraus_nogo_val missing", file=sys.stderr)
    sys.exit(1)
if "theorem freyDiscNat_of_sol" not in kraus:
    print("freyDiscNat_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem freyWeierstrass_Δ" not in kraus:
    print("freyWeierstrass_Δ missing", file=sys.stderr)
    sys.exit(1)
if "theorem not_thirteen_dvd_eight" not in kraus:
    print("not_thirteen_dvd_eight missing", file=sys.stderr)
    sys.exit(1)
if "theorem thirteen_dvd_twenty_six" not in kraus:
    print("thirteen_dvd_twenty_six missing", file=sys.stderr)
    sys.exit(1)
if "theorem padicValNat_freyDiscNat_at_A" not in kraus:
    print("padicValNat_freyDiscNat_at_A missing", file=sys.stderr)
    sys.exit(1)
if "theorem padicValNat_freyDiscNat_at_C" not in kraus:
    print("padicValNat_freyDiscNat_at_C missing", file=sys.stderr)
    sys.exit(1)
if "theorem frey_A_not_ribet_lowered" not in kraus:
    print("frey_A_not_ribet_lowered missing", file=sys.stderr)
    sys.exit(1)
if "theorem frey_C_ribet_lowered_candidate" not in kraus:
    print("frey_C_ribet_lowered_candidate missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_B_C_dvd_three" not in kraus:
    print("gcd_B_C_dvd_three missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol" not in kraus:
    print("A_odd_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in kraus:
    print("C1_floor = 143186215390 missing from BealKraus.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in kraus:
    print("B0_nat = 1000000 missing from BealKraus.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in kraus:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in kraus:
    print("baker_bound_gap3 must stay a def Prop in BealKraus.lean", file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_signature_44p" not in kraus:
    print("darmon_merel_signature_44p must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def kraus_uniform_residual_level" not in kraus:
    print("kraus_uniform_residual_level must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def ribet_level_lowering" not in kraus:
    print("ribet_level_lowering must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", kraus, re.M):
    print("do not inhabit baker_bound_gap3 in BealKraus.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_signature_44p\b", kraus, re.M):
    print("do not inhabit darmon_merel_signature_44p", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem kraus_uniform_residual_level\b", kraus, re.M):
    print("do not inhabit kraus_uniform_residual_level", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering\b", kraus, re.M):
    print("do not inhabit ribet_level_lowering", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_davenport_reduction\b", kraus, re.M):
    print("baker_davenport_reduction must not be a theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem bugeaud_LLL_reduction_proof\b", kraus, re.M):
    print("bugeaud_LLL_reduction_proof must not be a theorem", file=sys.stderr)
    sys.exit(1)

zsig = pathlib.Path("BealKrausZsig.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in zsig:
    print("BealKrausZsig.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_gaussian_nogo" not in zsig:
    print("baker_bound_gap3_gaussian_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_z_i_nogo" not in zsig:
    print("baker_bound_gap3_z_i_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem log_thirteen_gt_five_div_two" not in zsig:
    print("log_thirteen_gt_five_div_two missing", file=sys.stderr)
    sys.exit(1)
if "theorem five_div_log_thirteen_lt_two" not in zsig:
    print("five_div_log_thirteen_lt_two missing", file=sys.stderr)
    sys.exit(1)
if "theorem gaussianAlpha_norm_of_sol" not in zsig:
    print("gaussianAlpha_norm_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem gaussian_common_dvd" not in zsig:
    print("gaussian_common_dvd missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_gaussian_nogo" not in zsig:
    print("C1_floor_gaussian_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem two_forty_two_gaussian_nogo" not in zsig:
    print("two_forty_two_gaussian_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem two_gaussian_nogo" not in zsig:
    print("two_gaussian_nogo missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in zsig:
    print("C1_floor = 143186215390 missing from BealKrausZsig.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in zsig:
    print("B0_nat = 1000000 missing from BealKrausZsig.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in zsig:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in zsig:
    print("baker_bound_gap3 must stay a def Prop in BealKrausZsig.lean", file=sys.stderr)
    sys.exit(1)
if "def gaussian_associate_thirteenth_power" not in zsig:
    print("gaussian_associate_thirteenth_power must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def zsigmondy_gaussian_primitive_divisor" not in zsig:
    print("zsigmondy_gaussian_primitive_divisor must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def mihailescu_catalan" not in zsig:
    print("mihailescu_catalan must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", zsig, re.M):
    print("do not inhabit baker_bound_gap3 in BealKrausZsig.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem gaussian_associate_thirteenth_power\b", zsig, re.M):
    print("do not inhabit gaussian_associate_thirteenth_power", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem zsigmondy_gaussian_primitive_divisor\b", zsig, re.M):
    print("do not inhabit zsigmondy_gaussian_primitive_divisor", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem mihailescu_catalan\b", zsig, re.M):
    print("do not inhabit mihailescu_catalan", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_signature_44p\b", zsig, re.M):
    print("do not inhabit darmon_merel_signature_44p", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem kraus_uniform_residual_level\b", zsig, re.M):
    print("do not inhabit kraus_uniform_residual_level", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering\b", zsig, re.M):
    print("do not inhabit ribet_level_lowering", file=sys.stderr)
    sys.exit(1)

catz = pathlib.Path("BealCatalanZsig.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in catz:
    print("BealCatalanZsig.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_mihailescu_zsigmondy_nogo" not in catz:
    print("baker_bound_gap3_mihailescu_zsigmondy_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem gap3_not_catalan_shape" not in catz:
    print("gap3_not_catalan_shape missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_not_three_dvd_B" not in catz:
    print("gcd_A_B_eq_one_of_not_three_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol" not in catz:
    print("B_even_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem zsigmondy_prime_in_B_not_dvd_A" not in catz:
    print("zsigmondy_prime_in_B_not_dvd_A missing", file=sys.stderr)
    sys.exit(1)
if "theorem zsigmondy_does_not_force_thirteen_divides_vpA" not in catz:
    print("zsigmondy_does_not_force_thirteen_divides_vpA missing", file=sys.stderr)
    sys.exit(1)
if "theorem frey_B_not_ribet_lowered" not in catz:
    print("frey_B_not_ribet_lowered missing", file=sys.stderr)
    sys.exit(1)
if "theorem gaussian_gcd_divides_two" not in catz:
    print("gaussian_gcd_divides_two missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_mihailescu_zsigmondy_nogo" not in catz:
    print("C1_floor_mihailescu_zsigmondy_nogo missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in catz:
    print("C1_floor = 143186215390 missing from BealCatalanZsig.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in catz:
    print("B0_nat = 1000000 missing from BealCatalanZsig.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in catz:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in catz:
    print("baker_bound_gap3 must stay a def Prop in BealCatalanZsig.lean", file=sys.stderr)
    sys.exit(1)
if "def gaussian_associate_thirteenth_power" not in catz:
    print("gaussian_associate_thirteenth_power must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def zsigmondy_gaussian_primitive_divisor" not in catz:
    print("zsigmondy_gaussian_primitive_divisor must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def mihailescu_catalan" not in catz:
    print("mihailescu_catalan must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", catz, re.M):
    print("do not inhabit baker_bound_gap3 in BealCatalanZsig.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem gaussian_associate_thirteenth_power\b", catz, re.M):
    print("do not inhabit gaussian_associate_thirteenth_power", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem zsigmondy_gaussian_primitive_divisor\b", catz, re.M):
    print("do not inhabit zsigmondy_gaussian_primitive_divisor", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem mihailescu_catalan\b", catz, re.M):
    print("do not inhabit mihailescu_catalan", file=sys.stderr)
    sys.exit(1)

dm = pathlib.Path("BealDarmonMerel.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in dm:
    print("BealDarmonMerel.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_darmon_merel_nogo" not in dm:
    print("baker_bound_gap3_darmon_merel_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem three_dvd_A_of_three_dvd_B" not in dm:
    print("three_dvd_A_of_three_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_ne_one_of_three_dvd_B" not in dm:
    print("gcd_A_B_ne_one_of_three_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem darmon_merel_hypothesis_fails_when_three_dvd_B" not in dm:
    print("darmon_merel_hypothesis_fails_when_three_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem kraus_uniform_residual_level_32_nogo" not in dm:
    print("kraus_uniform_residual_level_32_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem frey_C_ribet_lowered" not in dm:
    print("frey_C_ribet_lowered missing", file=sys.stderr)
    sys.exit(1)
if "theorem frey_A_prime_survives_when_three_not_dvd_B" not in dm:
    print("frey_A_prime_survives_when_three_not_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_ne_zero_of_sol" not in dm:
    print("A_ne_zero_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in dm:
    print("C1_floor = 143186215390 missing from BealDarmonMerel.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in dm:
    print("B0_nat = 1000000 missing from BealDarmonMerel.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in dm:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in dm:
    print("baker_bound_gap3 must stay a def Prop in BealDarmonMerel.lean", file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_x4_y4_zp_no_coprime_solutions" not in dm:
    print("darmon_merel_x4_y4_zp_no_coprime_solutions must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_signature_44p" not in dm:
    print("darmon_merel_signature_44p must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def kraus_uniform_residual_level" not in dm:
    print("kraus_uniform_residual_level must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def ribet_level_lowering" not in dm:
    print("ribet_level_lowering must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", dm, re.M):
    print("do not inhabit baker_bound_gap3 in BealDarmonMerel.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_x4_y4_zp_no_coprime_solutions\b", dm, re.M):
    print("do not inhabit darmon_merel_x4_y4_zp_no_coprime_solutions", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_signature_44p\b", dm, re.M):
    print("do not inhabit darmon_merel_signature_44p", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem kraus_uniform_residual_level\b", dm, re.M):
    print("do not inhabit kraus_uniform_residual_level", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering\b", dm, re.M):
    print("do not inhabit ribet_level_lowering", file=sys.stderr)
    sys.exit(1)

dm44 = pathlib.Path("BealDarmonMerel44p.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in dm44:
    print("BealDarmonMerel44p.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_darmon_merel_44p_nogo" not in dm44:
    print("baker_bound_gap3_darmon_merel_44p_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem residualLevelEstimate_ne_thirty_two_of_sol" not in dm44:
    print("residualLevelEstimate_ne_thirty_two_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem uniform_level_32_requires_A_B_pth_powers" not in dm44:
    print("uniform_level_32_requires_A_B_pth_powers missing", file=sys.stderr)
    sys.exit(1)
if "theorem exists_thirteenth_root_of_thirteen_dvd_padic" not in dm44:
    print("exists_thirteenth_root_of_thirteen_dvd_padic missing", file=sys.stderr)
    sys.exit(1)
if "theorem fermat_shape_of_A_B_pth_powers" not in dm44:
    print("fermat_shape_of_A_B_pth_powers missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in dm44:
    print("C1_floor = 143186215390 missing from BealDarmonMerel44p.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in dm44:
    print("B0_nat = 1000000 missing from BealDarmonMerel44p.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in dm44:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in dm44:
    print("baker_bound_gap3 must stay a def Prop in BealDarmonMerel44p.lean", file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_signature_44p" not in dm44:
    print("darmon_merel_signature_44p must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def ribet_level_lowering_to_32" not in dm44:
    print("ribet_level_lowering_to_32 must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def fermat_last_theorem_thirteen" not in dm44:
    print("fermat_last_theorem_thirteen must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", dm44, re.M):
    print("do not inhabit baker_bound_gap3 in BealDarmonMerel44p.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_signature_44p\b", dm44, re.M):
    print("do not inhabit darmon_merel_signature_44p", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering_to_32\b", dm44, re.M):
    print("do not inhabit ribet_level_lowering_to_32", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem fermat_last_theorem_thirteen\b", dm44, re.M):
    print("do not inhabit fermat_last_theorem_thirteen", file=sys.stderr)
    sys.exit(1)

flt13 = pathlib.Path("BealFLT13.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in flt13:
    print("BealFLT13.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_flt13_darmon_merel_nogo" not in flt13:
    print("baker_bound_gap3_flt13_darmon_merel_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B" not in flt13:
    print("no_sol_when_three_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem three_not_dvd_B_of_sol" not in flt13:
    print("three_not_dvd_B_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem coprime_of_sol" not in flt13:
    print("coprime_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem three_dvd_both_of_three_dvd_sum_fourth" not in flt13:
    print("three_dvd_both_of_three_dvd_sum_fourth missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in flt13:
    print("C1_floor = 143186215390 missing from BealFLT13.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in flt13:
    print("B0_nat = 1000000 missing from BealFLT13.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in flt13:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in flt13:
    print("baker_bound_gap3 must stay a def Prop in BealFLT13.lean", file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_44_13_no_coprime" not in flt13:
    print("darmon_merel_44_13_no_coprime must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_signature_44p" not in flt13:
    print("darmon_merel_signature_44p must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def fermat_last_theorem_thirteen" not in flt13:
    print("fermat_last_theorem_thirteen must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def ribet_level_lowering_to_32" not in flt13:
    print("ribet_level_lowering_to_32 must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", flt13, re.M):
    print("do not inhabit baker_bound_gap3 in BealFLT13.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_44_13_no_coprime\b", flt13, re.M):
    print("do not inhabit darmon_merel_44_13_no_coprime", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_signature_44p\b", flt13, re.M):
    print("do not inhabit darmon_merel_signature_44p", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem fermat_last_theorem_thirteen\b", flt13, re.M):
    print("do not inhabit fermat_last_theorem_thirteen", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering_to_32\b", flt13, re.M):
    print("do not inhabit ribet_level_lowering_to_32", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", flt13, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gv25 = pathlib.Path("BealGenuineV25.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gv25:
    print("BealGenuineV25.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_darmon_merel_4413_3adic_nogo" not in gv25:
    print("baker_bound_gap3_darmon_merel_4413_3adic_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap3_of_darmon_merel_4413" not in gv25:
    print("no_gap3_of_darmon_merel_4413 missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_of_darmon_merel_4413" not in gv25:
    print("baker_bound_gap3_of_darmon_merel_4413 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_of_f1cb039" not in gv25:
    print("no_sol_when_three_dvd_B_of_f1cb039 missing", file=sys.stderr)
    sys.exit(1)
if "theorem coprime_of_remaining_sol" not in gv25:
    print("coprime_of_remaining_sol missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gv25:
    print("C1_floor = 143186215390 missing from BealGenuineV25.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gv25:
    print("B0_nat = 1000000 missing from BealGenuineV25.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gv25:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in gv25:
    print("baker_bound_gap3 must stay a def Prop in BealGenuineV25.lean", file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_44_13_no_coprime" not in gv25:
    print("darmon_merel_44_13_no_coprime must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def fermat_last_theorem_thirteen" not in gv25:
    print("fermat_last_theorem_thirteen must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def ribet_level_lowering_to_32" not in gv25:
    print("ribet_level_lowering_to_32 must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", gv25, re.M):
    print("do not inhabit baker_bound_gap3 in BealGenuineV25.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_44_13_no_coprime\b", gv25, re.M):
    print("do not inhabit darmon_merel_44_13_no_coprime", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem fermat_last_theorem_thirteen\b", gv25, re.M):
    print("do not inhabit fermat_last_theorem_thirteen", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering_to_32\b", gv25, re.M):
    print("do not inhabit ribet_level_lowering_to_32", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gv25, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom" in gv25:
    print("do not add Darmon-Merel axiom in BealGenuineV25.lean", file=sys.stderr)
    sys.exit(1)

truev = pathlib.Path("BealTrueV25.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in truev:
    print("BealTrueV25.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom" not in truev:
    print("darmon_merel_4413_axiom missing from BealTrueV25.lean", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_true" not in truev:
    print("baker_bound_gap3_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_le_B0" not in truev:
    print("baker_bound_gap3_le_B0 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap3_of_axiom" not in truev:
    print("no_gap3_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B" not in truev:
    print("no_sol_when_three_dvd_B missing from BealTrueV25.lean", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in truev:
    print("C1_floor = 143186215390 missing from BealTrueV25.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in truev:
    print("B0_nat = 1000000 missing from BealTrueV25.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in truev:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in truev:
    print("baker_bound_gap3 Prop alias missing from BealTrueV25.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", truev, re.M):
    print("use baker_bound_gap3_true, do not name the theorem baker_bound_gap3", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", truev, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

uncond = pathlib.Path("BealUnconditionalV25.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in uncond:
    print("BealUnconditionalV25.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom" in uncond:
    print("do not add Darmon-Merel axiom in BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap3_unconditional_nogo" not in uncond:
    print("baker_bound_gap3_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen" not in uncond:
    print("hGen missing from BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL" not in uncond:
    print("hLLL missing from BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio" not in uncond:
    print("hGen_exp_lt_ratio missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails" not in uncond:
    print("hLLL_method_fails missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses" not in uncond:
    print("C1_floor_hGen_loses missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N" not in uncond:
    print("no_uniform_c_cubic_in_N missing from BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in uncond:
    print("C1_floor = 143186215390 missing from BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in uncond:
    print("B0_nat = 1000000 missing from BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in uncond:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3" not in uncond:
    print("baker_bound_gap3 Prop alias missing from BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap3_of_hGen_hLLL" not in uncond:
    print("baker_bound_gap3_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", uncond, re.M):
    print("do not inhabit baker_bound_gap3 in BealUnconditionalV25.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen\b", uncond, re.M):
    print("do not inhabit hGen", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL\b", uncond, re.M):
    print("do not inhabit hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3_of_hGen_hLLL\b", uncond, re.M):
    print("do not inhabit baker_bound_gap3_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_44_13_no_coprime\b", uncond, re.M):
    print("do not inhabit darmon_merel_44_13_no_coprime", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem fermat_last_theorem_thirteen\b", uncond, re.M):
    print("do not inhabit fermat_last_theorem_thirteen", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering_to_32\b", uncond, re.M):
    print("do not inhabit ribet_level_lowering_to_32", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", uncond, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap1 = pathlib.Path("BealGap1.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap1:
    print("BealGap1.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap1" in gap1:
    print("do not add a second Darmon-Merel axiom in BealGap1.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap1:
    print("BealGap1.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap1_unconditional_nogo" not in gap1:
    print("baker_bound_gap1_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap1" not in gap1:
    print("hGen_gap1 missing from BealGap1.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap1" not in gap1:
    print("hLLL_gap1 missing from BealGap1.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap1" not in gap1:
    print("hGen_exp_lt_ratio_gap1 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap1" not in gap1:
    print("hLLL_method_fails_gap1 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap1" not in gap1:
    print("C1_floor_hGen_loses_gap1 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap1:
    print("gcd_A_B_eq_one_of_sol missing from BealGap1.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_gap1" not in gap1:
    print("B_even_of_sol_gap1 missing", file=sys.stderr)
    sys.exit(1)
if "theorem not_three_dvd_A_of_three_dvd_B" not in gap1:
    print("not_three_dvd_A_of_three_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap1_true" not in gap1:
    print("baker_bound_gap1_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_pos_gap1_of_axiom" not in gap1:
    print("no_pos_gap1_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem gap1_one_zero" not in gap1:
    print("gap1_one_zero missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap1" not in gap1:
    print("no_uniform_c_cubic_in_N_gap1 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap1:
    print("C1_floor = 143186215390 missing from BealGap1.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap1:
    print("B0_nat = 1000000 missing from BealGap1.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap1:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap1" not in gap1:
    print("baker_bound_gap1 Prop alias missing from BealGap1.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap1_of_hGen_hLLL" not in gap1:
    print("baker_bound_gap1_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap1\b", gap1, re.M):
    print("use baker_bound_gap1_true, do not name the theorem baker_bound_gap1", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap1\b", gap1, re.M):
    print("do not inhabit hGen_gap1", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap1\b", gap1, re.M):
    print("do not inhabit hLLL_gap1", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap1_of_hGen_hLLL\b", gap1, re.M):
    print("do not inhabit baker_bound_gap1_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_three_dvd_B", gap1, re.M):
    print("do not prove no_sol_when_three_dvd_B for gap-1", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap1, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap2 = pathlib.Path("BealGap2.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap2:
    print("BealGap2.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap2" in gap2:
    print("do not add a second Darmon-Merel axiom in BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap2:
    print("BealGap2.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap2_unconditional_nogo" not in gap2:
    print("baker_bound_gap2_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap2" not in gap2:
    print("hGen_gap2 missing from BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap2" not in gap2:
    print("hLLL_gap2 missing from BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap2" not in gap2:
    print("hGen_exp_lt_ratio_gap2 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap2" not in gap2:
    print("hLLL_method_fails_gap2 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap2" not in gap2:
    print("C1_floor_hGen_loses_gap2 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap2:
    print("gcd_A_B_eq_one_of_sol missing from BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_odd_of_sol_gap2" not in gap2:
    print("B_odd_of_sol_gap2 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_gap2" not in gap2:
    print("A_even_of_sol_gap2 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_even_B" not in gap2:
    print("no_sol_when_even_B missing from BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap2" not in gap2:
    print("no_sol_when_three_dvd_B_gap2 missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap2_true" not in gap2:
    print("baker_bound_gap2_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap2_of_axiom" not in gap2:
    print("no_gap2_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap2" not in gap2:
    print("no_uniform_c_cubic_in_N_gap2 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap2:
    print("C1_floor = 143186215390 missing from BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap2:
    print("B0_nat = 1000000 missing from BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap2:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap2" not in gap2:
    print("baker_bound_gap2 Prop alias missing from BealGap2.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap2_of_hGen_hLLL" not in gap2:
    print("baker_bound_gap2_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap2\b", gap2, re.M):
    print("use baker_bound_gap2_true, do not name the theorem baker_bound_gap2", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap2\b", gap2, re.M):
    print("do not inhabit hGen_gap2", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap2\b", gap2, re.M):
    print("do not inhabit hLLL_gap2", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap2_of_hGen_hLLL\b", gap2, re.M):
    print("do not inhabit baker_bound_gap2_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_even_of_sol_gap2\b", gap2, re.M):
    print("do not prove B_even_of_sol_gap2; B is odd for gap-2", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_odd_of_sol_gap2\b", gap2, re.M):
    print("do not prove A_odd_of_sol_gap2; A is even for gap-2", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap2, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap4 = pathlib.Path("BealGap4.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap4:
    print("BealGap4.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap4" in gap4:
    print("do not add a second Darmon-Merel axiom in BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap4:
    print("BealGap4.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap4_unconditional_nogo" not in gap4:
    print("baker_bound_gap4_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap4" not in gap4:
    print("hGen_gap4 missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap4" not in gap4:
    print("hLLL_gap4 missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap4" not in gap4:
    print("hGen_exp_lt_ratio_gap4 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap4" not in gap4:
    print("hLLL_method_fails_gap4 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap4" not in gap4:
    print("C1_floor_hGen_loses_gap4 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap4:
    print("gcd_A_B_eq_one_of_sol missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_odd_of_sol_gap4" not in gap4:
    print("B_odd_of_sol_gap4 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_gap4" not in gap4:
    print("A_even_of_sol_gap4 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_even_B" not in gap4:
    print("no_sol_when_even_B missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap4" not in gap4:
    print("no_sol_when_five_dvd_B_gap4 missing", file=sys.stderr)
    sys.exit(1)
if "theorem not_three_dvd_A_of_three_dvd_B" not in gap4:
    print("not_three_dvd_A_of_three_dvd_B missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap4_true" not in gap4:
    print("baker_bound_gap4_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap4_of_axiom" not in gap4:
    print("no_gap4_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap4" not in gap4:
    print("no_uniform_c_cubic_in_N_gap4 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap4:
    print("C1_floor = 143186215390 missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap4:
    print("B0_nat = 1000000 missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap4:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap4" not in gap4:
    print("baker_bound_gap4 Prop alias missing from BealGap4.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap4_of_hGen_hLLL" not in gap4:
    print("baker_bound_gap4_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap4\b", gap4, re.M):
    print("use baker_bound_gap4_true, do not name the theorem baker_bound_gap4", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap4\b", gap4, re.M):
    print("do not inhabit hGen_gap4", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap4\b", gap4, re.M):
    print("do not inhabit hLLL_gap4", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap4_of_hGen_hLLL\b", gap4, re.M):
    print("do not inhabit baker_bound_gap4_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_even_of_sol_gap4\b", gap4, re.M):
    print("do not prove B_even_of_sol_gap4; B is odd for gap-4", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_odd_of_sol_gap4\b", gap4, re.M):
    print("do not prove A_odd_of_sol_gap4; A is even for gap-4", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_three_dvd_B", gap4, re.M):
    print("do not prove no_sol_when_three_dvd_B for gap-4", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap4, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap5 = pathlib.Path("BealGap5.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap5:
    print("BealGap5.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap5" in gap5:
    print("do not add a second Darmon-Merel axiom in BealGap5.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap5:
    print("BealGap5.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap5_unconditional_nogo" not in gap5:
    print("baker_bound_gap5_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap5" not in gap5:
    print("hGen_gap5 missing from BealGap5.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap5" not in gap5:
    print("hLLL_gap5 missing from BealGap5.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap5" not in gap5:
    print("hGen_exp_lt_ratio_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap5" not in gap5:
    print("hLLL_method_fails_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap5" not in gap5:
    print("C1_floor_hGen_loses_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap5:
    print("gcd_A_B_eq_one_of_sol missing from BealGap5.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_gap5" not in gap5:
    print("B_even_of_sol_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol_gap5" not in gap5:
    print("A_odd_of_sol_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap5" not in gap5:
    print("no_sol_when_three_dvd_B_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem five_dvd_B_forces_five_dvd_A_gap5" not in gap5:
    print("five_dvd_B_forces_five_dvd_A_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap5" not in gap5:
    print("no_sol_when_five_dvd_B_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap5_true" not in gap5:
    print("baker_bound_gap5_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap5_of_axiom" not in gap5:
    print("no_gap5_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap5" not in gap5:
    print("no_uniform_c_cubic_in_N_gap5 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap5:
    print("C1_floor = 143186215390 missing from BealGap5.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap5:
    print("B0_nat = 1000000 missing from BealGap5.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap5:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap5" not in gap5:
    print("baker_bound_gap5 Prop alias missing from BealGap5.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap5_of_hGen_hLLL" not in gap5:
    print("baker_bound_gap5_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap5\b", gap5, re.M):
    print("use baker_bound_gap5_true, do not name the theorem baker_bound_gap5", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap5\b", gap5, re.M):
    print("do not inhabit hGen_gap5", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap5\b", gap5, re.M):
    print("do not inhabit hLLL_gap5", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap5_of_hGen_hLLL\b", gap5, re.M):
    print("do not inhabit baker_bound_gap5_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gap5\b", gap5, re.M):
    print("do not prove B_odd_of_sol_gap5; B is even for gap-5", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_even_of_sol_gap5\b", gap5, re.M):
    print("do not prove A_even_of_sol_gap5; A is odd for gap-5", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_even_B\b", gap5, re.M):
    print("do not prove no_sol_when_even_B for gap-5; B is even", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap5, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap6 = pathlib.Path("BealGap6.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap6:
    print("BealGap6.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap6" in gap6:
    print("do not add a second Darmon-Merel axiom in BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap6:
    print("BealGap6.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap6_unconditional_nogo" not in gap6:
    print("baker_bound_gap6_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap6" not in gap6:
    print("hGen_gap6 missing from BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap6" not in gap6:
    print("hLLL_gap6 missing from BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap6" not in gap6:
    print("hGen_exp_lt_ratio_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap6" not in gap6:
    print("hLLL_method_fails_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap6" not in gap6:
    print("C1_floor_hGen_loses_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap6:
    print("gcd_A_B_eq_one_of_sol missing from BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_odd_of_sol_gap6" not in gap6:
    print("B_odd_of_sol_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_gap6" not in gap6:
    print("A_even_of_sol_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_even_B" not in gap6:
    print("no_sol_when_even_B missing from BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "theorem three_dvd_B_forces_three_dvd_A_gap6" not in gap6:
    print("three_dvd_B_forces_three_dvd_A_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap6" not in gap6:
    print("no_sol_when_three_dvd_B_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_pow_four_mod5_eq_one_of_five_dvd_B" not in gap6:
    print("A_pow_four_mod5_eq_one_of_five_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap6_true" not in gap6:
    print("baker_bound_gap6_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap6_of_axiom" not in gap6:
    print("no_gap6_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap6" not in gap6:
    print("no_uniform_c_cubic_in_N_gap6 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap6:
    print("C1_floor = 143186215390 missing from BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap6:
    print("B0_nat = 1000000 missing from BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap6:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap6" not in gap6:
    print("baker_bound_gap6 Prop alias missing from BealGap6.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap6_of_hGen_hLLL" not in gap6:
    print("baker_bound_gap6_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap6\b", gap6, re.M):
    print("use baker_bound_gap6_true, do not name the theorem baker_bound_gap6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap6\b", gap6, re.M):
    print("do not inhabit hGen_gap6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap6\b", gap6, re.M):
    print("do not inhabit hLLL_gap6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap6_of_hGen_hLLL\b", gap6, re.M):
    print("do not inhabit baker_bound_gap6_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_even_of_sol_gap6\b", gap6, re.M):
    print("do not prove B_even_of_sol_gap6; B is odd for gap-6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_odd_of_sol_gap6\b", gap6, re.M):
    print("do not prove A_odd_of_sol_gap6; A is even for gap-6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_five_dvd_B", gap6, re.M):
    print("do not prove no_sol_when_five_dvd_B for gap-6; C == 1 mod 5", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap6, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap7 = pathlib.Path("BealGap7.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap7:
    print("BealGap7.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap7" in gap7:
    print("do not add a second Darmon-Merel axiom in BealGap7.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap7:
    print("BealGap7.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap7_unconditional_nogo" not in gap7:
    print("baker_bound_gap7_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap7" not in gap7:
    print("hGen_gap7 missing from BealGap7.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap7" not in gap7:
    print("hLLL_gap7 missing from BealGap7.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap7" not in gap7:
    print("hGen_exp_lt_ratio_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap7" not in gap7:
    print("hLLL_method_fails_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap7" not in gap7:
    print("C1_floor_hGen_loses_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap7:
    print("gcd_A_B_eq_one_of_sol missing from BealGap7.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_gap7" not in gap7:
    print("B_even_of_sol_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol_gap7" not in gap7:
    print("A_odd_of_sol_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap7" not in gap7:
    print("no_sol_when_five_dvd_B_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem seven_dvd_B_forces_seven_dvd_A_gap7" not in gap7:
    print("seven_dvd_B_forces_seven_dvd_A_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_seven_dvd_B_gap7" not in gap7:
    print("no_sol_when_seven_dvd_B_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_pow_four_mod3_eq_one_of_three_dvd_B" not in gap7:
    print("A_pow_four_mod3_eq_one_of_three_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap7_true" not in gap7:
    print("baker_bound_gap7_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap7_of_axiom" not in gap7:
    print("no_gap7_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap7" not in gap7:
    print("no_uniform_c_cubic_in_N_gap7 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap7:
    print("C1_floor = 143186215390 missing from BealGap7.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap7:
    print("B0_nat = 1000000 missing from BealGap7.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap7:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap7" not in gap7:
    print("baker_bound_gap7 Prop alias missing from BealGap7.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap7_of_hGen_hLLL" not in gap7:
    print("baker_bound_gap7_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap7\b", gap7, re.M):
    print("use baker_bound_gap7_true, do not name the theorem baker_bound_gap7", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap7\b", gap7, re.M):
    print("do not inhabit hGen_gap7", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap7\b", gap7, re.M):
    print("do not inhabit hLLL_gap7", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap7_of_hGen_hLLL\b", gap7, re.M):
    print("do not inhabit baker_bound_gap7_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gap7\b", gap7, re.M):
    print("do not prove B_odd_of_sol_gap7; B is even for gap-7", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_even_of_sol_gap7\b", gap7, re.M):
    print("do not prove A_even_of_sol_gap7; A is odd for gap-7", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_three_dvd_B", gap7, re.M):
    print("do not prove no_sol_when_three_dvd_B for gap-7; C == 1 mod 3", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_even_B\b", gap7, re.M):
    print("do not prove no_sol_when_even_B for gap-7; B is even", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap7, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap8 = pathlib.Path("BealGap8.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap8:
    print("BealGap8.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap8" in gap8:
    print("do not add a second Darmon-Merel axiom in BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap8:
    print("BealGap8.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap8_unconditional_nogo" not in gap8:
    print("baker_bound_gap8_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap8" not in gap8:
    print("hGen_gap8 missing from BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap8" not in gap8:
    print("hLLL_gap8 missing from BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap8" not in gap8:
    print("hGen_exp_lt_ratio_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap8" not in gap8:
    print("hLLL_method_fails_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap8" not in gap8:
    print("C1_floor_hGen_loses_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap8:
    print("gcd_A_B_eq_one_of_sol missing from BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_odd_of_sol_gap8" not in gap8:
    print("B_odd_of_sol_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_gap8" not in gap8:
    print("A_even_of_sol_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_even_B" not in gap8:
    print("no_sol_when_even_B missing from BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap8" not in gap8:
    print("no_sol_when_three_dvd_B_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap8" not in gap8:
    print("no_sol_when_five_dvd_B_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_pow_four_mod7_eq_one_of_seven_dvd_B" not in gap8:
    print("A_pow_four_mod7_eq_one_of_seven_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap8_true" not in gap8:
    print("baker_bound_gap8_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap8_of_axiom" not in gap8:
    print("no_gap8_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap8" not in gap8:
    print("no_uniform_c_cubic_in_N_gap8 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap8:
    print("C1_floor = 143186215390 missing from BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap8:
    print("B0_nat = 1000000 missing from BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap8:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap8" not in gap8:
    print("baker_bound_gap8 Prop alias missing from BealGap8.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap8_of_hGen_hLLL" not in gap8:
    print("baker_bound_gap8_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap8\b", gap8, re.M):
    print("use baker_bound_gap8_true, do not name the theorem baker_bound_gap8", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap8\b", gap8, re.M):
    print("do not inhabit hGen_gap8", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap8\b", gap8, re.M):
    print("do not inhabit hLLL_gap8", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap8_of_hGen_hLLL\b", gap8, re.M):
    print("do not inhabit baker_bound_gap8_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_even_of_sol_gap8\b", gap8, re.M):
    print("do not prove B_even_of_sol_gap8; B is odd for gap-8", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_odd_of_sol_gap8\b", gap8, re.M):
    print("do not prove A_odd_of_sol_gap8; A is even for gap-8", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_seven_dvd_B", gap8, re.M):
    print("do not prove no_sol_when_seven_dvd_B for gap-8; C == 1 mod 7", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap8, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap9 = pathlib.Path("BealGap9.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap9:
    print("BealGap9.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap9" in gap9:
    print("do not add a second Darmon-Merel axiom in BealGap9.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap9:
    print("BealGap9.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap9_unconditional_nogo" not in gap9:
    print("baker_bound_gap9_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap9" not in gap9:
    print("hGen_gap9 missing from BealGap9.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap9" not in gap9:
    print("hLLL_gap9 missing from BealGap9.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap9" not in gap9:
    print("hGen_exp_lt_ratio_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap9" not in gap9:
    print("hLLL_method_fails_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap9" not in gap9:
    print("C1_floor_hGen_loses_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap9:
    print("gcd_A_B_eq_one_of_sol missing from BealGap9.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_gap9" not in gap9:
    print("B_even_of_sol_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol_gap9" not in gap9:
    print("A_odd_of_sol_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap9" not in gap9:
    print("no_sol_when_three_dvd_B_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem three_dvd_B_forces_three_dvd_A_gap9" not in gap9:
    print("three_dvd_B_forces_three_dvd_A_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap9" not in gap9:
    print("no_sol_when_five_dvd_B_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_pow_four_mod7_eq_two_of_seven_dvd_B" not in gap9:
    print("A_pow_four_mod7_eq_two_of_seven_dvd_B missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap9_true" not in gap9:
    print("baker_bound_gap9_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap9_of_axiom" not in gap9:
    print("no_gap9_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap9" not in gap9:
    print("no_uniform_c_cubic_in_N_gap9 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap9:
    print("C1_floor = 143186215390 missing from BealGap9.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap9:
    print("B0_nat = 1000000 missing from BealGap9.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap9:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap9" not in gap9:
    print("baker_bound_gap9 Prop alias missing from BealGap9.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap9_of_hGen_hLLL" not in gap9:
    print("baker_bound_gap9_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap9\b", gap9, re.M):
    print("use baker_bound_gap9_true, do not name the theorem baker_bound_gap9", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap9\b", gap9, re.M):
    print("do not inhabit hGen_gap9", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap9\b", gap9, re.M):
    print("do not inhabit hLLL_gap9", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap9_of_hGen_hLLL\b", gap9, re.M):
    print("do not inhabit baker_bound_gap9_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gap9\b", gap9, re.M):
    print("do not prove B_odd_of_sol_gap9; B is even for gap-9", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_even_of_sol_gap9\b", gap9, re.M):
    print("do not prove A_even_of_sol_gap9; A is odd for gap-9", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_seven_dvd_B", gap9, re.M):
    print("do not prove no_sol_when_seven_dvd_B for gap-9; C == 2 mod 7", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_even_B\b", gap9, re.M):
    print("do not prove no_sol_when_even_B for gap-9; B is even", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap9, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap10 = pathlib.Path("BealGap10.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap10:
    print("BealGap10.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap10" in gap10:
    print("do not add a second Darmon-Merel axiom in BealGap10.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap10:
    print("BealGap10.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap10_unconditional_nogo" not in gap10:
    print("baker_bound_gap10_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap10" not in gap10:
    print("hGen_gap10 missing from BealGap10.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap10" not in gap10:
    print("hLLL_gap10 missing from BealGap10.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap10" not in gap10:
    print("hGen_exp_lt_ratio_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap10" not in gap10:
    print("hLLL_method_fails_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap10" not in gap10:
    print("C1_floor_hGen_loses_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap10:
    print("gcd_A_B_eq_one_of_sol missing from BealGap10.lean", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_gap10" not in gap10:
    print("A_even_of_sol_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap10" not in gap10:
    print("no_sol_when_five_dvd_B_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "theorem five_dvd_B_forces_five_dvd_A_gap10" not in gap10:
    print("five_dvd_B_forces_five_dvd_A_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_seven_dvd_B_gap10" not in gap10:
    print("no_sol_when_seven_dvd_B_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "theorem even_B_three_div2_last" not in gap10:
    print("even_B_three_div2_last missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap10_true" not in gap10:
    print("baker_bound_gap10_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap10_of_axiom" not in gap10:
    print("no_gap10_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap10" not in gap10:
    print("no_uniform_c_cubic_in_N_gap10 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap10:
    print("C1_floor = 143186215390 missing from BealGap10.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap10:
    print("B0_nat = 1000000 missing from BealGap10.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap10:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap10" not in gap10:
    print("baker_bound_gap10 Prop alias missing from BealGap10.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap10_of_hGen_hLLL" not in gap10:
    print("baker_bound_gap10_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap10\b", gap10, re.M):
    print("use baker_bound_gap10_true, do not name the theorem baker_bound_gap10", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap10\b", gap10, re.M):
    print("do not inhabit hGen_gap10", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap10\b", gap10, re.M):
    print("do not inhabit hLLL_gap10", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap10_of_hGen_hLLL\b", gap10, re.M):
    print("do not inhabit baker_bound_gap10_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_even_of_sol_gap10\b", gap10, re.M):
    print("do not prove B_even_of_sol_gap10; A is even for gap-10, B is not always even", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_odd_of_sol_gap10\b", gap10, re.M):
    print("do not prove A_odd_of_sol_gap10; A is even for gap-10", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gap10\b", gap10, re.M):
    print("do not prove B_odd_of_sol_gap10; even-B last-step B==2 or 4 remains", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_even_B\b", gap10, re.M):
    print("do not prove no_sol_when_even_B for gap-10; last-step B==2 or 4 remains", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_three_dvd_B", gap10, re.M):
    print("do not prove no_sol_when_three_dvd_B for gap-10; C == 1 mod 3", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap10, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)
if "|Q|≥0.01" in gap10 or "|Q| >= 0.01" in gap10:
    print("do not use unsound uniform |Q|>=0.01 near tan rays", file=sys.stderr)
    sys.exit(1)

gap11 = pathlib.Path("BealGap11.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap11:
    print("BealGap11.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap11" in gap11:
    print("do not add a second Darmon-Merel axiom in BealGap11.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap11:
    print("BealGap11.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap11_unconditional_nogo" not in gap11:
    print("baker_bound_gap11_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap11" not in gap11:
    print("hGen_gap11 missing from BealGap11.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap11" not in gap11:
    print("hLLL_gap11 missing from BealGap11.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap11" not in gap11:
    print("hGen_exp_lt_ratio_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap11" not in gap11:
    print("hLLL_method_fails_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap11" not in gap11:
    print("C1_floor_hGen_loses_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap11:
    print("gcd_A_B_eq_one_of_sol missing from BealGap11.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_gap11" not in gap11:
    print("B_even_of_sol_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol_gap11" not in gap11:
    print("A_odd_of_sol_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap11" not in gap11:
    print("no_sol_when_three_dvd_B_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_eleven_dvd_B_gap11" not in gap11:
    print("no_sol_when_eleven_dvd_B_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "theorem eleven_dvd_B_forces_eleven_dvd_A" not in gap11:
    print("eleven_dvd_B_forces_eleven_dvd_A missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap11_true" not in gap11:
    print("baker_bound_gap11_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap11_of_axiom" not in gap11:
    print("no_gap11_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap11" not in gap11:
    print("no_uniform_c_cubic_in_N_gap11 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap11:
    print("C1_floor = 143186215390 missing from BealGap11.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap11:
    print("B0_nat = 1000000 missing from BealGap11.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap11:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap11" not in gap11:
    print("baker_bound_gap11 Prop alias missing from BealGap11.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap11_of_hGen_hLLL" not in gap11:
    print("baker_bound_gap11_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap11\b", gap11, re.M):
    print("use baker_bound_gap11_true, do not name the theorem baker_bound_gap11", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap11\b", gap11, re.M):
    print("do not inhabit hGen_gap11", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap11\b", gap11, re.M):
    print("do not inhabit hLLL_gap11", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap11_of_hGen_hLLL\b", gap11, re.M):
    print("do not inhabit baker_bound_gap11_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_even_of_sol_gap11\b", gap11, re.M):
    print("do not prove A_even_of_sol_gap11; A is odd for gap-11", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gap11\b", gap11, re.M):
    print("do not prove B_odd_of_sol_gap11; B is even for gap-11", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_five_dvd_B", gap11, re.M):
    print("do not prove no_sol_when_five_dvd_B for gap-11; 5|B is compatible C==1", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_seven_dvd_B", gap11, re.M):
    print("do not prove no_sol_when_seven_dvd_B for gap-11; 7|B is compatible C==4", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_even_B\b", gap11, re.M):
    print("do not prove no_sol_when_even_B for gap-11; B is even", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap11, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap12 = pathlib.Path("BealGap12.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap12:
    print("BealGap12.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap12" in gap12:
    print("do not add a second Darmon-Merel axiom in BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap12:
    print("BealGap12.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap12_unconditional_nogo" not in gap12:
    print("baker_bound_gap12_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap12" not in gap12:
    print("hGen_gap12 missing from BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap12" not in gap12:
    print("hLLL_gap12 missing from BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap12" not in gap12:
    print("hGen_exp_lt_ratio_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap12" not in gap12:
    print("hLLL_method_fails_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap12" not in gap12:
    print("C1_floor_hGen_loses_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap12:
    print("gcd_A_B_eq_one_of_sol missing from BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_odd_of_sol_gap12" not in gap12:
    print("B_odd_of_sol_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_gap12" not in gap12:
    print("A_even_of_sol_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_even_B" not in gap12:
    print("no_sol_when_even_B missing from BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "theorem three_dvd_B_forces_three_dvd_A_gap12" not in gap12:
    print("three_dvd_B_forces_three_dvd_A_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap12" not in gap12:
    print("no_sol_when_three_dvd_B_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap12" not in gap12:
    print("no_sol_when_five_dvd_B_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_seven_dvd_B_gap12" not in gap12:
    print("no_sol_when_seven_dvd_B_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap12_true" not in gap12:
    print("baker_bound_gap12_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap12_of_axiom" not in gap12:
    print("no_gap12_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap12" not in gap12:
    print("no_uniform_c_cubic_in_N_gap12 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap12:
    print("C1_floor = 143186215390 missing from BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap12:
    print("B0_nat = 1000000 missing from BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap12:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap12" not in gap12:
    print("baker_bound_gap12 Prop alias missing from BealGap12.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap12_of_hGen_hLLL" not in gap12:
    print("baker_bound_gap12_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap12\b", gap12, re.M):
    print("use baker_bound_gap12_true, do not name the theorem baker_bound_gap12", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap12\b", gap12, re.M):
    print("do not inhabit hGen_gap12", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap12\b", gap12, re.M):
    print("do not inhabit hLLL_gap12", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap12_of_hGen_hLLL\b", gap12, re.M):
    print("do not inhabit baker_bound_gap12_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_even_of_sol_gap12\b", gap12, re.M):
    print("do not prove B_even_of_sol_gap12; B is odd for gap-12", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_odd_of_sol_gap12\b", gap12, re.M):
    print("do not prove A_odd_of_sol_gap12; A is even for gap-12", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap12, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap13 = pathlib.Path("BealGap13.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap13:
    print("BealGap13.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap13" in gap13:
    print("do not add a second Darmon-Merel axiom in BealGap13.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap13:
    print("BealGap13.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap13_unconditional_nogo" not in gap13:
    print("baker_bound_gap13_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap13" not in gap13:
    print("hGen_gap13 missing from BealGap13.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap13" not in gap13:
    print("hLLL_gap13 missing from BealGap13.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap13" not in gap13:
    print("hGen_exp_lt_ratio_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap13" not in gap13:
    print("hLLL_method_fails_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap13" not in gap13:
    print("C1_floor_hGen_loses_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap13:
    print("gcd_A_B_eq_one_of_sol missing from BealGap13.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_gap13" not in gap13:
    print("B_even_of_sol_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol_gap13" not in gap13:
    print("A_odd_of_sol_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem three_dvd_B_compat_gap13" not in gap13:
    print("three_dvd_B_compat_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap13" not in gap13:
    print("no_sol_when_five_dvd_B_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_seven_dvd_B_gap13" not in gap13:
    print("no_sol_when_seven_dvd_B_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_eleven_dvd_B_gap13" not in gap13:
    print("no_sol_when_eleven_dvd_B_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem thirteen_dvd_B_forces_thirteen_dvd_A" not in gap13:
    print("thirteen_dvd_B_forces_thirteen_dvd_A missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_thirteen_dvd_B_gap13" not in gap13:
    print("no_sol_when_thirteen_dvd_B_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap13_true" not in gap13:
    print("baker_bound_gap13_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap13_of_axiom" not in gap13:
    print("no_gap13_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap13" not in gap13:
    print("no_uniform_c_cubic_in_N_gap13 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap13:
    print("C1_floor = 143186215390 missing from BealGap13.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap13:
    print("B0_nat = 1000000 missing from BealGap13.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap13:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap13" not in gap13:
    print("baker_bound_gap13 Prop alias missing from BealGap13.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap13_of_hGen_hLLL" not in gap13:
    print("baker_bound_gap13_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap13\b", gap13, re.M):
    print("use baker_bound_gap13_true, do not name the theorem baker_bound_gap13", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap13\b", gap13, re.M):
    print("do not inhabit hGen_gap13", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap13\b", gap13, re.M):
    print("do not inhabit hLLL_gap13", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap13_of_hGen_hLLL\b", gap13, re.M):
    print("do not inhabit baker_bound_gap13_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_even_of_sol_gap13\b", gap13, re.M):
    print("do not prove A_even_of_sol_gap13; A is odd for gap-13", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gap13\b", gap13, re.M):
    print("do not prove B_odd_of_sol_gap13; B is even for gap-13", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_three_dvd_B", gap13, re.M):
    print("do not prove no_sol_when_three_dvd_B for gap-13; 3|B is compatible C==1", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_even_B\b", gap13, re.M):
    print("do not prove no_sol_when_even_B for gap-13; B is even", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem three_dvd_A_of_sol\b", gap13, re.M):
    print("do not prove three_dvd_A_of_sol for all solutions", file=sys.stderr)
    sys.exit(1)

gap14 = pathlib.Path("BealGap14.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap14:
    print("BealGap14.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap14" in gap14:
    print("do not add a second Darmon-Merel axiom in BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap14:
    print("BealGap14.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap14_unconditional_nogo" not in gap14:
    print("baker_bound_gap14_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap14" not in gap14:
    print("hGen_gap14 missing from BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap14" not in gap14:
    print("hLLL_gap14 missing from BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap14" not in gap14:
    print("hGen_exp_lt_ratio_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap14" not in gap14:
    print("hLLL_method_fails_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap14" not in gap14:
    print("C1_floor_hGen_loses_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap14:
    print("gcd_A_B_eq_one_of_sol missing from BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_B_C_dvd_fourteen_gap14" not in gap14:
    print("gcd_B_C_dvd_fourteen_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_B_C_dvd_seven_of_odd_gap14" not in gap14:
    print("gcd_B_C_dvd_seven_of_odd_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem B_odd_of_sol_gap14" not in gap14:
    print("B_odd_of_sol_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_gap14" not in gap14:
    print("A_even_of_sol_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_even_B" not in gap14:
    print("no_sol_when_even_B missing from BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap14" not in gap14:
    print("no_sol_when_three_dvd_B_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap14" not in gap14:
    print("no_sol_when_five_dvd_B_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem seven_dvd_B_forces_seven_dvd_A_gap14" not in gap14:
    print("seven_dvd_B_forces_seven_dvd_A_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_seven_dvd_B_gap14" not in gap14:
    print("no_sol_when_seven_dvd_B_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap14_true" not in gap14:
    print("baker_bound_gap14_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap14_of_axiom" not in gap14:
    print("no_gap14_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap14" not in gap14:
    print("no_uniform_c_cubic_in_N_gap14 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap14:
    print("C1_floor = 143186215390 missing from BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap14:
    print("B0_nat = 1000000 missing from BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap14:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap14" not in gap14:
    print("baker_bound_gap14 Prop alias missing from BealGap14.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap14_of_hGen_hLLL" not in gap14:
    print("baker_bound_gap14_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap14\b", gap14, re.M):
    print("use baker_bound_gap14_true, do not name the theorem baker_bound_gap14", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap14\b", gap14, re.M):
    print("do not inhabit hGen_gap14", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap14\b", gap14, re.M):
    print("do not inhabit hLLL_gap14", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap14_of_hGen_hLLL\b", gap14, re.M):
    print("do not inhabit baker_bound_gap14_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_even_of_sol_gap14\b", gap14, re.M):
    print("do not prove B_even_of_sol_gap14; B is odd for gap-14", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_odd_of_sol_gap14\b", gap14, re.M):
    print("do not prove A_odd_of_sol_gap14; A is even for gap-14", file=sys.stderr)
    sys.exit(1)
if "A1^4+B1^4=512 C1^13 both even infinite descent" in gap14 and "not an infinite" not in gap14:
    print("do not claim infinite 512 descent forever for even B", file=sys.stderr)
    sys.exit(1)

gap15 = pathlib.Path("BealGap15.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gap15:
    print("BealGap15.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gap15" in gap15:
    print("do not add a second Darmon-Merel axiom in BealGap15.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gap15:
    print("BealGap15.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap15_unconditional_nogo" not in gap15:
    print("baker_bound_gap15_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gap15" not in gap15:
    print("hGen_gap15 missing from BealGap15.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gap15" not in gap15:
    print("hLLL_gap15 missing from BealGap15.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gap15" not in gap15:
    print("hGen_exp_lt_ratio_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gap15" not in gap15:
    print("hLLL_method_fails_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gap15" not in gap15:
    print("C1_floor_hGen_loses_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_A_B_eq_one_of_sol" not in gap15:
    print("gcd_A_B_eq_one_of_sol missing from BealGap15.lean", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_B_C_dvd_fifteen_gap15" not in gap15:
    print("gcd_B_C_dvd_fifteen_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_gap15" not in gap15:
    print("B_even_of_sol_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol_gap15" not in gap15:
    print("A_odd_of_sol_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem three_dvd_B_forces_three_dvd_A_gap15" not in gap15:
    print("three_dvd_B_forces_three_dvd_A_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_gap15" not in gap15:
    print("no_sol_when_three_dvd_B_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem five_dvd_B_forces_five_dvd_A_gap15" not in gap15:
    print("five_dvd_B_forces_five_dvd_A_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_five_dvd_B_gap15" not in gap15:
    print("no_sol_when_five_dvd_B_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem seven_dvd_B_compat_gap15" not in gap15:
    print("seven_dvd_B_compat_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gap15_true" not in gap15:
    print("baker_bound_gap15_true missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_gap15_of_axiom" not in gap15:
    print("no_gap15_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gap15" not in gap15:
    print("no_uniform_c_cubic_in_N_gap15 missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gap15:
    print("C1_floor = 143186215390 missing from BealGap15.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gap15:
    print("B0_nat = 1000000 missing from BealGap15.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gap15:
    print("do not paste True := trivial skeletons", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap15" not in gap15:
    print("baker_bound_gap15 Prop alias missing from BealGap15.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gap15_of_hGen_hLLL" not in gap15:
    print("baker_bound_gap15_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap15\b", gap15, re.M):
    print("use baker_bound_gap15_true, do not name the theorem baker_bound_gap15", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gap15\b", gap15, re.M):
    print("do not inhabit hGen_gap15", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gap15\b", gap15, re.M):
    print("do not inhabit hLLL_gap15", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap15_of_hGen_hLLL\b", gap15, re.M):
    print("do not inhabit baker_bound_gap15_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gap15\b", gap15, re.M):
    print("do not prove B_odd_of_sol_gap15; B is even for gap-15", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem A_even_of_sol_gap15\b", gap15, re.M):
    print("do not prove A_even_of_sol_gap15; A is odd for gap-15", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_even_B\b", gap15, re.M):
    print("do not prove no_sol_when_even_B for gap-15; B is even", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_when_seven_dvd_B", gap15, re.M):
    print("do not prove no_sol_when_seven_dvd_B for gap-15; 7|B is compatible C==1", file=sys.stderr)
    sys.exit(1)

gapk = pathlib.Path("BealGapK.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in gapk:
    print("BealGapK.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom_gapK" in gapk:
    print("do not add a second Darmon-Merel axiom in BealGapK.lean", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in gapk:
    print("BealGapK.lean must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_gapK_unconditional_nogo" not in gapk:
    print("baker_bound_gapK_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_gapK" not in gapk:
    print("hGen_gapK missing from BealGapK.lean", file=sys.stderr)
    sys.exit(1)
if "def hLLL_gapK" not in gapk:
    print("hLLL_gapK missing from BealGapK.lean", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gapK" not in gapk:
    print("hGen_exp_lt_ratio_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gapK" not in gapk:
    print("hLLL_method_fails_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gapK" not in gapk:
    print("C1_floor_hGen_loses_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_B_C_dvd_k_gapK" not in gapk:
    print("gcd_B_C_dvd_k_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem B_even_of_sol_of_odd_k" not in gapk:
    print("B_even_of_sol_of_odd_k missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_odd_of_sol_of_odd_k" not in gapk:
    print("A_odd_of_sol_of_odd_k missing", file=sys.stderr)
    sys.exit(1)
if "theorem A_even_of_sol_of_even_k" not in gapk:
    print("A_even_of_sol_of_even_k missing", file=sys.stderr)
    sys.exit(1)
if "theorem p_dvd_k_forces_p_dvd_A_gapK" not in gapk:
    print("p_dvd_k_forces_p_dvd_A_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_p_dvd_k_three_gapK" not in gapk:
    print("no_sol_when_p_dvd_k_three_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_p_dvd_k_five_gapK" not in gapk:
    print("no_sol_when_p_dvd_k_five_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_p_dvd_k_seven_gapK" not in gapk:
    print("no_sol_when_p_dvd_k_seven_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_when_three_dvd_B_residue_gapK" not in gapk:
    print("no_sol_when_three_dvd_B_residue_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_positive_coprime_gapK_of_axiom" not in gapk:
    print("no_positive_coprime_gapK_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem recover_no_gap15_of_axiom" not in gapk:
    print("recover_no_gap15_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem recover_no_gap10_of_odd_B_of_axiom" not in gapk:
    print("recover_no_gap10_of_odd_B_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem gap1_one_zero" not in gapk:
    print("gap1_one_zero missing; (1,0) is a real gap-1 solution", file=sys.stderr)
    sys.exit(1)
if "theorem fourth_power_gap_at_zero" not in gapk:
    print("fourth_power_gap_at_zero missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in gapk:
    print("C1_floor = 143186215390 missing from BealGapK.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in gapk:
    print("B0_nat = 1000000 missing from BealGapK.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in gapk:
    print("True := trivial is not allowed in BealGapK.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gapK" not in gapk:
    print("baker_bound_gapK Prop alias missing from BealGapK.lean", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gapK_of_hGen_hLLL" not in gapk:
    print("baker_bound_gapK_of_hGen_hLLL must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gapK\b", gapk, re.M):
    print("use baker_bound_gapK_true_of_positive_coprime, do not name the theorem baker_bound_gapK", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_gapK\b", gapk, re.M):
    print("do not inhabit hGen_gapK", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_gapK\b", gapk, re.M):
    print("do not inhabit hLLL_gapK", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gapK_of_hGen_hLLL\b", gapk, re.M):
    print("do not inhabit baker_bound_gapK_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem B_odd_of_sol_gapK\b", gapk, re.M):
    print("do not prove B_odd_of_sol_gapK; even k does not force B odd (gap-10 leftover)", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_gapK_of_axiom\b", gapk, re.M):
    print("do not prove no_gapK_of_axiom as forall k; gap-1 (1,0) and k=m^4 B=0 are solutions", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_cubic_in_N_gapK" not in gapk:
    print("no_uniform_c_cubic_in_N_gapK missing", file=sys.stderr)
    sys.exit(1)

eff = pathlib.Path("EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in eff:
    print("EffectiveLevelLowering file must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom" in eff and "BealTrueV25.darmon_merel_4413_axiom" not in eff:
    print("do not add a second Darmon-Merel axiom in EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if "BealTrueV25.darmon_merel_4413_axiom" not in eff:
    print("EffectiveLevelLowering must reuse BealTrueV25.darmon_merel_4413_axiom", file=sys.stderr)
    sys.exit(1)
if "theorem baker_bound_B0_1e6_unconditional_nogo" not in eff:
    print("baker_bound_B0_1e6_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem C_lt_hundred_of_A_B_le_B0" not in eff:
    print("C_lt_hundred_of_A_B_le_B0 missing", file=sys.stderr)
    sys.exit(1)
if "theorem C_ge_hundred_of_B_ge_B0" not in eff:
    print("C_ge_hundred_of_B_ge_B0 missing", file=sys.stderr)
    sys.exit(1)
if "theorem not_C_le_seventy_three_of_B_ge_B0" not in eff:
    print("not_C_le_seventy_three_of_B_ge_B0 missing", file=sys.stderr)
    sys.exit(1)
if "theorem parity_odd_k_gapK" not in eff:
    print("parity_odd_k_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem parity_even_k_gapK" not in eff:
    print("parity_even_k_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem gcd_dvd_k_gapK" not in eff:
    print("gcd_dvd_k_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem p_dvd_k_and_B_forces_p_dvd_A_gapK" not in eff:
    print("p_dvd_k_and_B_forces_p_dvd_A_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem vp_one_descent_three_gapK" not in eff:
    print("vp_one_descent_three_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem vp_one_descent_five_gapK" not in eff:
    print("vp_one_descent_five_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem residue_kill_three_k_eq_two_gapK" not in eff:
    print("residue_kill_three_k_eq_two_gapK missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_positive_A4_B4_C13_coprime_of_axiom" not in eff:
    print("no_positive_A4_B4_C13_coprime_of_axiom missing", file=sys.stderr)
    sys.exit(1)
if "theorem hGen_exp_lt_ratio_gapK" not in eff:
    print("hGen_exp_lt_ratio_gapK missing from EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_hGen_loses_gapK" not in eff:
    print("C1_floor_hGen_loses_gapK missing from EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if "theorem hLLL_method_fails_gapK" not in eff:
    print("hLLL_method_fails_gapK missing from EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in eff:
    print("C1_floor = 143186215390 missing from EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if "1000000" not in eff:
    print("B0_nat = 1000000 missing from EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in eff:
    print("True := trivial is not allowed in EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", eff, re.M) or ":= sorry" in eff or "by sorry" in eff:
    print("sorry is not allowed in EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_B0_1e6" not in eff:
    print("baker_bound_B0_1e6 Prop alias missing", file=sys.stderr)
    sys.exit(1)
if "def hGen_padic" not in eff:
    print("hGen_padic missing; must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def hLLL_padic" not in eff:
    print("hLLL_padic missing; must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_gapK_unconditional_wins" not in eff:
    print("baker_bound_gapK_unconditional_wins must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "def beal_conjecture_4413" not in eff:
    print("beal_conjecture_4413 must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6\b", eff, re.M):
    print("do not inhabit baker_bound_B0_1e6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_padic\b", eff, re.M):
    print("do not inhabit hGen_padic", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_padic\b", eff, re.M):
    print("do not inhabit hLLL_padic", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6_of_hGen_hLLL\b", eff, re.M):
    print("do not inhabit baker_bound_B0_1e6_of_hGen_hLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gapK_unconditional_wins\b", eff, re.M):
    print("do not inhabit baker_bound_gapK_unconditional_wins", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem beal_conjecture_4413\b", eff, re.M):
    print("do not inhabit beal_conjecture_4413", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_4413_no_coprime_unconditional\b", eff, re.M):
    print("do not inhabit darmon_merel_4413_no_coprime_unconditional", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem fermat_last_theorem_thirteen_unconditional\b", eff, re.M):
    print("do not inhabit fermat_last_theorem_thirteen_unconditional", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_level_lowering_to_32_unconditional\b", eff, re.M):
    print("do not inhabit ribet_level_lowering_to_32_unconditional", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6_unconditional\b", eff, re.M):
    print("do not inhabit baker_bound_B0_1e6_unconditional; use the nogo", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_A4_B4_C13_positive_coprime_unconditional\b", eff, re.M):
    print("do not inhabit no_A4_B4_C13_positive_coprime_unconditional", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem beal_conjecture_4413_unconditional\b", eff, re.M):
    print("do not inhabit beal_conjecture_4413_unconditional", file=sys.stderr)
    sys.exit(1)
if "Odd k" not in eff or "Even k" not in eff:
    print("EffectiveLevelLowering parity wrappers must use Even/Odd, not % 2", file=sys.stderr)
    sys.exit(1)
if "v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations" in eff and "does **not** mint" not in eff:
    print("do not treat v25 as minted in EffectiveLevelLowering", file=sys.stderr)
    sys.exit(1)

bl = pathlib.Path("BugeaudLaurent.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in bl:
    print("BugeaudLaurent.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom" in bl and "BealTrueV25.darmon_merel_4413_axiom" not in bl:
    print("do not add a second Darmon-Merel axiom in BugeaudLaurent.lean", file=sys.stderr)
    sys.exit(1)
if "theorem bugeaud_laurent_unconditional_nogo" not in bl:
    print("bugeaud_laurent_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem two_val_equation_compatible_odd_k" not in bl:
    print("two_val_equation_compatible_odd_k missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_one_loses_in_reals" not in bl:
    print("C1_one_loses_in_reals missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_padic_placeholder_loses_in_reals" not in bl:
    print("C1_padic_placeholder_loses_in_reals missing", file=sys.stderr)
    sys.exit(1)
if "def bugeaud_laurent_1996_two_logs" not in bl:
    print("bugeaud_laurent_1996_two_logs must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def p_adic_LLL_reduction" not in bl:
    print("p_adic_LLL_reduction must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_B0_1e6" not in bl:
    print("baker_bound_B0_1e6 Prop alias missing from BugeaudLaurent.lean", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in bl:
    print("C1_floor = 143186215390 missing from BugeaudLaurent.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in bl:
    print("B0_nat = 1000000 missing from BugeaudLaurent.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in bl:
    print("True := trivial is not allowed in BugeaudLaurent.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", bl, re.M) or ":= sorry" in bl or "by sorry" in bl:
    print("sorry is not allowed in BugeaudLaurent.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6\b", bl, re.M):
    print("do not inhabit baker_bound_B0_1e6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_padic\b", bl, re.M):
    print("do not inhabit hGen_padic", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_padic\b", bl, re.M):
    print("do not inhabit hLLL_padic", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem bugeaud_laurent_1996_two_logs\b", bl, re.M):
    print("do not inhabit bugeaud_laurent_1996_two_logs", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem p_adic_LLL_reduction\b", bl, re.M):
    print("do not inhabit p_adic_LLL_reduction", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6_of_bugeaud_lll\b", bl, re.M):
    print("do not inhabit baker_bound_B0_1e6_of_bugeaud_lll", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6_unconditional\b", bl, re.M):
    print("do not inhabit baker_bound_B0_1e6_unconditional", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_4413_no_coprime_unconditional\b", bl, re.M):
    print("do not inhabit darmon_merel_4413_no_coprime_unconditional", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gapK_unconditional_wins\b", bl, re.M):
    print("do not inhabit baker_bound_gapK_unconditional_wins", file=sys.stderr)
    sys.exit(1)
if "does **not** mint" not in bl:
    print("BugeaudLaurent.lean must record that v25 is not minted", file=sys.stderr)
    sys.exit(1)
if "does **not** fork" not in bl and "does **not** fork Mathlib" not in bl:
    print("BugeaudLaurent.lean must record that Mathlib is not forked", file=sys.stderr)
    sys.exit(1)

for shard_name in ("maveevlll_sharded.lean", "matveevlll_sharded.lean",
                   "MatveevLLL_sharded.lean"):
    if pathlib.Path(shard_name).exists():
        print(f"do not add {shard_name}; matveev_gap3_lower is already 0-sorry",
              file=sys.stderr)
        sys.exit(1)

pll = pathlib.Path("PAdicLLL.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in pll:
    print("PAdicLLL.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom" in pll and "BealTrueV25.darmon_merel_4413_axiom" not in pll:
    print("do not add a second Darmon-Merel axiom in PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem p_adic_LLL_unconditional_nogo" not in pll:
    print("p_adic_LLL_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "theorem not_A_le_B_add_ten_of_sol" not in pll:
    print("not_A_le_B_add_ten_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem not_A_le_B_add_ten_of_gap3" not in pll:
    print("not_A_le_B_add_ten_of_gap3 missing", file=sys.stderr)
    sys.exit(1)
if "theorem four_le_C1_padic_placeholder" not in pll:
    print("four_le_C1_padic_placeholder missing", file=sys.stderr)
    sys.exit(1)
if "def p_adic_LLL_reduction" not in pll:
    print("p_adic_LLL_reduction must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def LLL_reduces_bound_to_B0" not in pll:
    print("LLL_reduces_bound_to_B0 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def baker_bound_B0_1e6" not in pll:
    print("baker_bound_B0_1e6 Prop alias missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "def hGen_padic" not in pll or "def hLLL_padic" not in pll:
    print("hGen_padic/hLLL_padic must stay def Prop in PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in pll:
    print("C1_floor = 143186215390 missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in pll:
    print("B0_nat = 1000000 missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in pll:
    print("True := trivial is not allowed in PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", pll, re.M) or ":= sorry" in pll or "by sorry" in pll:
    print("sorry is not allowed in PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^def check_gap3_range\b", pll, re.M) or "for A in [B : B+10]" in pll:
    print("do not implement check_gap3_range; A in [B,B+10] is false", file=sys.stderr)
    sys.exit(1)
if "p_adic_LLL_reduced := True" in pll or "p_adic_LLL_reduced : Prop := True" in pll:
    print("do not define p_adic_LLL_reduced := True", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem p_adic_LLL_reduction\b", pll, re.M):
    print("do not inhabit p_adic_LLL_reduction", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_reduces_bound_to_B0\b", pll, re.M):
    print("do not inhabit LLL_reduces_bound_to_B0", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6\b", pll, re.M):
    print("do not inhabit baker_bound_B0_1e6", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen_padic\b", pll, re.M):
    print("do not inhabit hGen_padic", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL_padic\b", pll, re.M):
    print("do not inhabit hLLL_padic", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_B0_1e6_of_bugeaud_lll\b", pll, re.M):
    print("do not inhabit baker_bound_B0_1e6_of_bugeaud_lll", file=sys.stderr)
    sys.exit(1)
if "does **not** mint" not in pll:
    print("PAdicLLL.lean must record that v25 is not minted", file=sys.stderr)
    sys.exit(1)
if "does **not** fork" not in pll and "does **not** fork Mathlib" not in pll:
    print("PAdicLLL.lean must record that Mathlib is not forked", file=sys.stderr)
    sys.exit(1)
if "% 2" in pll:
    print("use Even/Odd, not % 2, in PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
stub_pll = pathlib.Path("Beal/Matveev/PAdicLLL.lean").read_text(encoding="utf-8")
if not re.search(r"^import PAdicLLL\s*$", stub_pll, re.M):
    print("Beal/Matveev/PAdicLLL.lean must import PAdicLLL", file=sys.stderr)
    sys.exit(1)
if re.search(r"^import Beal.Matveev.MatveevThm14General", stub_pll, re.M):
    print("Beal/Matveev/PAdicLLL.lean must not import MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem lll_euclidean_lower_bound_fails" not in pll:
    print("lll_euclidean_lower_bound_fails missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem nat_int_form_has_kernel" not in pll:
    print("nat_int_form_has_kernel missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem floor_lattice_nogo" not in pll:
    print("floor_lattice_nogo missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_form_lower_bound_fails" not in pll:
    print("lll_form_lower_bound_fails missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_form_dirichlet_nogo" not in pll:
    print("lll_form_dirichlet_nogo missing from PAdicLLL.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hGen\b", pll, re.M):
    print("do not inhabit hGen; keep def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem hLLL\b", pll, re.M):
    print("do not inhabit hLLL; keep def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem beal_gap3_4_4_13_unconditional\b", pll, re.M):
    print("do not inhabit beal_gap3_4_4_13_unconditional; v25 not minted", file=sys.stderr)
    sys.exit(1)
if "def LLL_reduces_bound_to_B0_theorem" not in pll:
    print("LLL_reduces_bound_to_B0_theorem must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def beal_gap3_4_4_13_unconditional_v25_draft" not in pll:
    print("beal_gap3_4_4_13_unconditional_v25_draft must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_reduces_bound_to_B0_theorem\b", pll, re.M):
    print("do not inhabit LLL_reduces_bound_to_B0_theorem", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem beal_gap3_4_4_13_unconditional_v25_draft\b", pll, re.M):
    print("do not inhabit beal_gap3_4_4_13_unconditional_v25_draft", file=sys.stderr)
    sys.exit(1)

za = pathlib.Path("PAdicLLL_ZeroAxiom.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in za:
    print("PAdicLLL_ZeroAxiom.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem nat_int_form_has_kernel" not in za:
    print("nat_int_form_has_kernel missing from PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
if "theorem displayed_kernel_in_box" not in za:
    print("displayed_kernel_in_box missing from PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
if "theorem minkowski_sqrt_C1_lt_B0" not in za:
    print("minkowski_sqrt_C1_lt_B0 missing from PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
if "theorem p_adic_lll_zero_axiom_unconditional_nogo" not in za:
    print("p_adic_lll_zero_axiom_unconditional_nogo missing", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in za:
    print("C1_floor = 143186215390 missing from PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in za:
    print("B0_nat = 1000000 missing from PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in za:
    print("True := trivial is not allowed in PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", za, re.M) or ":= sorry" in za or "by sorry" in za:
    print("sorry is not allowed in PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
if "def LLL_reduces_bound_to_B0_zero_axiom" not in za:
    print("LLL_reduces_bound_to_B0_zero_axiom must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def beal_gap3_4_4_13_unconditional_zero_axiom" not in za:
    print("beal_gap3_4_4_13_unconditional_zero_axiom must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_reduces_bound_to_B0_zero_axiom\b", za, re.M):
    print("do not inhabit LLL_reduces_bound_to_B0_zero_axiom", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem beal_gap3_4_4_13_unconditional_zero_axiom\b", za, re.M):
    print("do not inhabit beal_gap3_4_4_13_unconditional_zero_axiom", file=sys.stderr)
    sys.exit(1)
if "does **not** mint" not in za:
    print("PAdicLLL_ZeroAxiom.lean must record that v25 is not minted", file=sys.stderr)
    sys.exit(1)
if "does **not** fork" not in za and "does **not** fork Mathlib" not in za:
    print("PAdicLLL_ZeroAxiom.lean must record that Mathlib is not forked", file=sys.stderr)
    sys.exit(1)
if "% 2" in za:
    print("use Even/Odd, not % 2, in PAdicLLL_ZeroAxiom.lean", file=sys.stderr)
    sys.exit(1)
stub_za = pathlib.Path("Beal/Matveev/PAdicLLL_ZeroAxiom.lean").read_text(encoding="utf-8")
if not re.search(r"^import PAdicLLL_ZeroAxiom\s*$", stub_za, re.M):
    print("Beal/Matveev/PAdicLLL_ZeroAxiom.lean must import PAdicLLL_ZeroAxiom", file=sys.stderr)
    sys.exit(1)
if re.search(r"^import Beal.Matveev.MatveevThm14General", stub_za, re.M):
    print("Beal/Matveev/PAdicLLL_ZeroAxiom.lean must not import MatveevThm14General", file=sys.stderr)
    sys.exit(1)

rank3 = pathlib.Path("BealMatveevBealV25Rank3.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in rank3 or re.search(
        r"^import MatveevThm14General\b", rank3, re.M):
    print("BealMatveevBealV25Rank3.lean must not import MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in rank3:
    print("True := trivial is not allowed in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", rank3, re.M) or ":= sorry" in rank3 or "by sorry" in rank3:
    print("sorry is not allowed in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "does **not** mint" not in rank3:
    print("BealMatveevBealV25Rank3.lean must record that v25 is not minted", file=sys.stderr)
    sys.exit(1)
if "does **not** fork" not in rank3 and "does **not** fork Mathlib" not in rank3:
    print("BealMatveevBealV25Rank3.lean must record that Mathlib is not forked", file=sys.stderr)
    sys.exit(1)
if "def LLL_reduces_bound_to_B0" not in rank3:
    print("LLL_reduces_bound_to_B0 must stay def Prop in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "def hGen" not in rank3 or "def hLLL" not in rank3:
    print("hGen/hLLL must stay def Prop in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_reduces_bound_to_B0_v25\b", rank3, re.M):
    print("do not inhabit LLL_reduces_bound_to_B0_v25; keep def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem lll_B0_div_C_lower_bound\b", rank3, re.M):
    print("do not inhabit lll_B0_div_C_lower_bound; it contradicts |Lambda|<1/B", file=sys.stderr)
    sys.exit(1)
if "def C_LLL_v25" not in rank3:
    print("C_LLL_v25 missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem B0_div_C_gt_inv_B" not in rank3:
    print("B0_div_C_gt_inv_B missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_B0_div_C_lower_bound_fails" not in rank3:
    print("lll_B0_div_C_lower_bound_fails missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "def LLL_reduces_bound_to_B0_v25" not in rank3:
    print("LLL_reduces_bound_to_B0_v25 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "C_LLL_v25 ≠ C1_floor * C1_floor" not in rank3 and "C_LLL_v25_ne_C1_sq" not in rank3:
    print("C_LLL_v25 must not be C1^2", file=sys.stderr)
    sys.exit(1)

interp = pathlib.Path("MatveevInterpolation.lean").read_text(encoding="utf-8")
if "theorem gap3_B_lt_A_of_sol" not in rank3:
    print("gap3_B_lt_A_of_sol missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_lt_inv_B" not in rank3:
    print("abs_Lambda_lt_inv_B missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_short_vector_of_large_B" not in rank3:
    print("lll_short_vector_of_large_B missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem future_unconditional_shape" not in rank3:
    print("future_unconditional_shape missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem rank3_shape_nogo" not in rank3:
    print("rank3_shape_nogo missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_lt_B0_div_C" not in rank3:
    print("abs_Lambda_lt_B0_div_C missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_B0_div_C_shape_nogo" not in rank3:
    print("lll_B0_div_C_shape_nogo missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lll_svt_bound_of_rank3" not in rank3:
    print("lll_svt_bound_of_rank3 missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in rank3:
    print("C1_floor = 143186215390 missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "1000000" not in rank3:
    print("B0_nat = 1000000 missing from BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "lll_euclidean_lower_bound_fails" not in rank3:
    print("must keep lll_euclidean_lower_bound_fails in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "LLL_v_norm_lt_thirty_two" not in rank3:
    print("must wrap MatveevLLL.LLL_v_norm_lt_thirty_two in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "axiom darmon_merel_4413_axiom" in rank3 and "BealTrueV25.darmon_merel_4413_axiom" not in rank3:
    print("do not add a second Darmon-Merel axiom in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)
if "% 2" in rank3:
    print("use Even/Odd, not % 2, in BealMatveevBealV25Rank3.lean", file=sys.stderr)
    sys.exit(1)

b0s = pathlib.Path("BealMatveevBealV25B0Search.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in b0s or re.search(
        r"^import MatveevThm14General\b", b0s, re.M):
    print("BealMatveevBealV25B0Search.lean must not import MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in b0s:
    print("True := trivial is not allowed in BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", b0s, re.M) or ":= sorry" in b0s or "by sorry" in b0s:
    print("sorry is not allowed in BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if "does **not** mint" not in b0s:
    print("BealMatveevBealV25B0Search.lean must record that v25 is not minted", file=sys.stderr)
    sys.exit(1)
if "def gap3_B_le_B0_no_solution" not in b0s:
    print("gap3_B_le_B0_no_solution must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem gap3_B_le_B0_no_solution\b", b0s, re.M):
    print("do not inhabit gap3_B_le_B0_no_solution; only B<1000 is closed", file=sys.stderr)
    sys.exit(1)
if "theorem gap3_B_lt_1000_no_sol" not in b0s:
    print("gap3_B_lt_1000_no_sol missing from BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if "theorem check_B_true_no_sol" not in b0s:
    print("check_B_true_no_sol missing from BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if "theorem fourth_pow_mod16" not in b0s:
    print("fourth_pow_mod16 missing from BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if b0s.count("native_decide") > 20:
    print("do not dump hundreds of native_decide shards; B<=B0 stays def Prop", file=sys.stderr)
    sys.exit(1)
if "foldl" not in b0s:
    print("check_range must use foldl, not an hi-deep recursive loop", file=sys.stderr)
    sys.exit(1)
if "theorem shard_0_100" not in b0s or "theorem shard_900_1000" not in b0s:
    print("B<1000 must be ten shards of 100", file=sys.stderr)
    sys.exit(1)
if "theorem check_range_true_of_all" not in b0s:
    print("check_range_true_of_all missing from BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_lt_two_div_B_pow_nine" not in b0s:
    print("abs_Lambda_lt_two_div_B_pow_nine missing from BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if "theorem abs_Lambda_eq_log_one_sub_eps" not in b0s:
    print("abs_Lambda_eq_log_one_sub_eps missing from BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)
if "def abs_Lambda_ge_inv_B_pow_eight" not in b0s:
    print("abs_Lambda_ge_inv_B_pow_eight must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem abs_Lambda_ge_inv_B_pow_eight\b", b0s, re.M):
    print("do not inhabit abs_Lambda_ge_inv_B_pow_eight; LLL lift stays def Prop", file=sys.stderr)
    sys.exit(1)
if "theorem shard_9900_10000" in b0s or "theorem shard_1900_2000" in b0s:
    print("do not dump 100 native_decide shards through B<10000", file=sys.stderr)
    sys.exit(1)
if "143186215390" not in b0s or "1000000" not in b0s:
    print("C1_floor/B0_nat missing from BealMatveevBealV25B0Search.lean", file=sys.stderr)
    sys.exit(1)

b8 = pathlib.Path("LLLTargetB8.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in b8 or re.search(
        r"^import MatveevThm14General\b", b8, re.M):
    print("LLLTargetB8.lean must not import MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in b8:
    print("True := trivial is not allowed in LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", b8, re.M) or ":= sorry" in b8 or "by sorry" in b8:
    print("sorry is not allowed in LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "does **not** mint" not in b8:
    print("LLLTargetB8.lean must record that v25 is not minted", file=sys.stderr)
    sys.exit(1)
if "def abs_Lambda_ge_B_pow_neg_eight" not in b8:
    print("abs_Lambda_ge_B_pow_neg_eight must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem abs_Lambda_ge_B_pow_neg_eight\b", b8, re.M):
    print("do not inhabit abs_Lambda_ge_B_pow_neg_eight; LLL lift stays def Prop", file=sys.stderr)
    sys.exit(1)
if "def LLL_reduces_C1_to_lt_nine" not in b8:
    print("LLL_reduces_C1_to_lt_nine must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_reduces_C1_to_lt_nine\b", b8, re.M):
    print("do not inhabit LLL_reduces_C1_to_lt_nine", file=sys.stderr)
    sys.exit(1)
if "def LLL_reduces_bound_to_B0_v25" not in b8:
    print("LLL_reduces_bound_to_B0_v25 must stay def Prop in LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_reduces_bound_to_B0_v25\b", b8, re.M):
    print("do not inhabit LLL_reduces_bound_to_B0_v25 in LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_of_abs_Lambda_ge_B_pow_neg_eight" not in b8:
    print("no_sol_of_abs_Lambda_ge_B_pow_neg_eight missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem future_v25_shape_of_B8_lift" not in b8:
    print("future_v25_shape_of_B8_lift missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "Matrix" in b8 or "native_decide" in b8:
    print("do not ship a placeholder LLL matrix or native_decide in LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^import Beal\.Matveev\.PAdicLLL\b", b8, re.M):
    print("LLLTargetB8.lean must not import Beal.Matveev.PAdicLLL (LEAN_PATH); define the floor lattice locally", file=sys.stderr)
    sys.exit(1)
if "def C_LLL : ℕ := 10 ^ 48" not in b8:
    print("C_LLL = 10^48 missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "def C_LLL : ℕ := 10 ^ 30" in b8:
    print("C_LLL must be 10^48 on phase-lll-lift-b8, not 10^30", file=sys.stderr)
    sys.exit(1)
if "theorem lambda1_ge_one" not in b8:
    print("lambda1_ge_one missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem v_short_mem_L" not in b8:
    print("v_short_mem_L missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem not_exists_nonzero_euc_lt_one" not in b8:
    print("not_exists_nonzero_euc_lt_one missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_lift_to_B8_of_short_vector" not in b8:
    print("LLL_lift_to_B8_of_short_vector missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem C_LLL_mul_two_div_B_pow_nine_lt_one" not in b8:
    print("C_LLL_mul_two_div_B_pow_nine_lt_one missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem C_mul_two_div_B_pow_nine_lt_C_div_two" not in b8:
    print("C_mul_two_div_B_pow_nine_lt_C_div_two missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem C_LLL_div_B_pow_eight_le_one" not in b8:
    print("C_LLL_div_B_pow_eight_le_one missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem C_mul_inv_B_pow_eight_ge_one" not in b8:
    print("C_mul_inv_B_pow_eight_ge_one missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem det_L'" not in b8:
    print("det_L' missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem lambda1_ge_C_div_two" not in b8:
    print("lambda1_ge_C_div_two missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem not_exists_nonzero_euc_lt_C_div_two" not in b8:
    print("not_exists_nonzero_euc_lt_C_div_two missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "def v_short'_mem_L'" not in b8:
    print("v_short'_mem_L' must stay def Prop in LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem v_short'_mem_L' ", b8, re.M):
    print("do not inhabit v_short'_mem_L'; first coord is a multiple of C", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_lift_B8_with_C48\b", b8, re.M):
    print("do not inhabit LLL_lift_B8_with_C48; |Lambda|<B^{-8} does not yield a nonzero v in L'", file=sys.stderr)
    sys.exit(1)
if "def C_LLL_3 : ℕ := 10 ^ 30" not in b8:
    print("C_LLL_3 = 10^30 missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem L3_lambda1_ge" not in b8:
    print("L3_lambda1_ge missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem not_L3_lambda1_ge_ten" not in b8:
    print("not_L3_lambda1_ge_ten missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem det_L3" not in b8:
    print("det_L3 missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "def C1_LLL_target" not in b8:
    print("C1_LLL_target missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "def C1_Matveev" not in b8:
    print("C1_Matveev missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem C1_LLL_target_lt_typical_lo" not in b8:
    print("C1_LLL_target_lt_typical_lo missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem inv_pow_C1_ge_nine_le_two_div_pow_nine" not in b8:
    print("inv_pow_C1_ge_nine_le_two_div_pow_nine missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_of_LLL_reduces_C1_to_lt_nine" not in b8:
    print("no_sol_of_LLL_reduces_C1_to_lt_nine missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)
if "theorem v_combo3_euc_ge_four_C" not in b8:
    print("v_combo3_euc_ge_four_C missing from LLLTargetB8.lean", file=sys.stderr)
    sys.exit(1)

g3 = pathlib.Path("Gap3B0Million.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in g3:
    print("Gap3B0Million.lean must not import MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", g3, re.M) or ":= sorry" in g3 or "by sorry" in g3:
    print("sorry is not allowed in Gap3B0Million.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*native_decide\b", g3, re.M) or "by native_decide" in g3:
    print("do not native_decide the million-B foldl in Gap3B0Million.lean", file=sys.stderr)
    sys.exit(1)
if "def allShardsTrue" not in g3:
    print("allShardsTrue missing from Gap3B0Million.lean", file=sys.stderr)
    sys.exit(1)
if "def allShardsTrue_eq_true" not in g3:
    print("allShardsTrue_eq_true must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem allShardsTrue_eq_true\b", g3, re.M):
    print("do not inhabit allShardsTrue_eq_true; 10k native_decide shards are not shipped", file=sys.stderr)
    sys.exit(1)
if "theorem gap3_B_lt_B0_of_allShardsTrue" not in g3:
    print("gap3_B_lt_B0_of_allShardsTrue missing from Gap3B0Million.lean", file=sys.stderr)
    sys.exit(1)
if "theorem gap3_B_le_B0_of_allShardsTrue" not in g3:
    print("gap3_B_le_B0_of_allShardsTrue missing from Gap3B0Million.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem gap3_B_le_B0_no_solution\b", g3, re.M):
    print("do not inhabit gap3_B_le_B0_no_solution from Gap3B0Million.lean", file=sys.stderr)
    sys.exit(1)
if pathlib.Path("Gap3Shards").exists() and any(pathlib.Path("Gap3Shards").glob("*.lean")):
    print("do not commit generated Gap3Shards; (B+3)^13 at B≈1e6 is ~1e78", file=sys.stderr)
    sys.exit(1)
gen = pathlib.Path("scripts/gen_gap3_shards.py").read_text(encoding="utf-8")
if "Beal/Matveev" not in gen or "refuse" not in gen:
    print("gen_gap3_shards.py must refuse Beal/Matveev output", file=sys.stderr)
    sys.exit(1)
import subprocess
refused = subprocess.run(
    [sys.executable, "scripts/gen_gap3_shards.py",
     "--write", "--out", "Beal/Matveev/Gap3Shards"],
    capture_output=True, text=True)
if refused.returncode == 0:
    print("gen_gap3_shards.py --write --out Beal/Matveev/Gap3Shards must fail",
          file=sys.stderr)
    sys.exit(1)
dry = subprocess.run(
    [sys.executable, "scripts/gen_gap3_shards.py", "--dry-run"],
    capture_output=True, text=True)
if dry.returncode != 0 or "10000 shards" not in dry.stdout:
    print("gen_gap3_shards.py --dry-run should count 10000 shards",
          file=sys.stderr)
    sys.exit(1)

c1lb = pathlib.Path("LLLTargetB8_C1_lower_bound.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in c1lb or re.search(
        r"^import Beal\.Matveev\.", c1lb, re.M):
    print("LLLTargetB8_C1_lower_bound.lean must not import Beal.Matveev.*",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", c1lb, re.M) or ":= sorry" in c1lb or "by sorry" in c1lb:
    print("sorry is not allowed in LLLTargetB8_C1_lower_bound.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*native_decide\b", c1lb, re.M) or "by native_decide" in c1lb:
    print("do not native_decide in LLLTargetB8_C1_lower_bound.lean", file=sys.stderr)
    sys.exit(1)
if "Matrix" in c1lb:
    print("do not ship a placeholder LLL matrix in LLLTargetB8_C1_lower_bound.lean",
          file=sys.stderr)
    sys.exit(1)
if "True := trivial" in c1lb:
    print("True := trivial is not allowed in LLLTargetB8_C1_lower_bound.lean",
          file=sys.stderr)
    sys.exit(1)
if "theorem C1_le_8_impossible" not in c1lb:
    print("C1_le_8_impossible missing from LLLTargetB8_C1_lower_bound.lean",
          file=sys.stderr)
    sys.exit(1)
if "theorem two_div_pow_nine_lt_one_div_pow_eight" not in c1lb:
    print("two_div_pow_nine_lt_one_div_pow_eight missing", file=sys.stderr)
    sys.exit(1)
if "theorem C1_le_8_impossible_of_sol" not in c1lb:
    print("C1_le_8_impossible_of_sol missing", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0" not in c1lb:
    print("LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0 missing", file=sys.stderr)
    sys.exit(1)
if "def C1_lower_bound_false" not in c1lb:
    print("C1_lower_bound_false must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem C1_lower_bound_false\b", c1lb, re.M) or \
        re.search(r"^theorem C1_lower_bound_false_true\b", c1lb, re.M):
    print("do not inhabit C1_lower_bound_false; needs a B>=B0 witness",
          file=sys.stderr)
    sys.exit(1)
if "def LLL_cannot_reach_B8" not in c1lb:
    print("LLL_cannot_reach_B8 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem LLL_cannot_reach_B8\b", c1lb, re.M) or \
        re.search(r"^theorem LLL_cannot_reach_B8_true\b", c1lb, re.M):
    print("do not inhabit LLL_cannot_reach_B8; equivalent to a B>=B0 witness",
          file=sys.stderr)
    sys.exit(1)

frey = pathlib.Path("DarmonMerelFrey4413.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in frey or re.search(
        r"^import Beal\.Matveev\.", frey, re.M):
    print("DarmonMerelFrey4413.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", frey, re.M) or ":= sorry" in frey or "by sorry" in frey:
    print("sorry is not allowed in DarmonMerelFrey4413.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in frey:
    print("True := trivial is not allowed in DarmonMerelFrey4413.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", frey, re.M):
    print("do not add axioms in DarmonMerelFrey4413.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if "theorem freyWeierstrass_Δ" not in frey:
    print("freyWeierstrass_Δ missing from DarmonMerelFrey4413.lean", file=sys.stderr)
    sys.exit(1)
if "theorem freyDiscNat_of_sol" not in frey:
    print("freyDiscNat_of_sol missing from DarmonMerelFrey4413.lean", file=sys.stderr)
    sys.exit(1)
if "theorem thirteen_dvd_twenty_six" not in frey or "theorem not_thirteen_dvd_eight" not in frey:
    print("13|26 / 13∤8 missing from DarmonMerelFrey4413.lean", file=sys.stderr)
    sys.exit(1)
if "def level_32_no_newform" not in frey:
    print("level_32_no_newform must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem level_32_no_newform\b", frey, re.M):
    print("do not inhabit level_32_no_newform; needs a modular forms table",
          file=sys.stderr)
    sys.exit(1)
if "def ribet_lowers_Frey_to_level_32" not in frey:
    print("ribet_lowers_Frey_to_level_32 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_lowers_Frey_to_level_32\b", frey, re.M):
    print("do not inhabit ribet_lowers_Frey_to_level_32", file=sys.stderr)
    sys.exit(1)
if "def modularity_Frey_gap3" not in frey:
    print("modularity_Frey_gap3 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_ge_B0_of_ribet_and_level_32_table" not in frey:
    print("no_sol_ge_B0_of_ribet_and_level_32_table missing", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_frey" not in frey:
    print("LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_frey missing", file=sys.stderr)
    sys.exit(1)
if "gcd" in frey and "placeholder" in frey:
    print("do not use gcd placeholder for rad(ABC)", file=sys.stderr)
    sys.exit(1)

l32 = pathlib.Path("Level32Table.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in l32 or re.search(
        r"^import Beal\.Matveev\.", l32, re.M):
    print("Level32Table.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", l32, re.M) or ":= sorry" in l32 or "by sorry" in l32:
    print("sorry is not allowed in Level32Table.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in l32:
    print("True := trivial is not allowed in Level32Table.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", l32, re.M):
    print("do not add axioms in Level32Table.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if "| _ => 0" in l32 or "_ => 0 -- placeholder" in l32:
    print("do not use placeholder 0 traces for missing a_p; use Option", file=sys.stderr)
    sys.exit(1)
if "def frey_trace_mod_13" in l32 and "= 0 -- placeholder" in l32:
    print("do not stub Frey traces as 0", file=sys.stderr)
    sys.exit(1)
if "theorem curve32a1_ap_5" not in l32 or "theorem curve32a1_ap_3" not in l32:
    print("curve32a1_ap point-count certs missing from Level32Table.lean", file=sys.stderr)
    sys.exit(1)
if "theorem frey_a3_match_32a1" not in l32 or "theorem frey_a5_match_32a1" not in l32:
    print("l=3,5 match theorems missing; those primes do not eliminate 32a1", file=sys.stderr)
    sys.exit(1)
if "theorem no_match_32a1_of_good_red_29" not in l32:
    print("p=29 good-reduction mismatch missing from Level32Table.lean", file=sys.stderr)
    sys.exit(1)
if "def level_32_no_newform_for_Frey_gap3" not in l32:
    print("level_32_no_newform_for_Frey_gap3 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem level_32_no_newform_for_Frey_gap3\b", l32, re.M):
    print("do not inhabit level_32_no_newform_for_Frey_gap3; l=3,5 match and 29|ABC survives",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem level_32_no_newform\b", l32, re.M):
    print("do not inhabit level_32_no_newform via dim=1 string list", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_ge_B0_of_level_32_table" not in l32:
    print("no_sol_ge_B0_of_level_32_table missing", file=sys.stderr)
    sys.exit(1)

l928 = pathlib.Path("Level928Table.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in l928 or re.search(
        r"^import Beal\.Matveev\.", l928, re.M):
    print("Level928Table.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", l928, re.M) or ":= sorry" in l928 or "by sorry" in l928:
    print("sorry is not allowed in Level928Table.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in l928:
    print("True := trivial is not allowed in Level928Table.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", l928, re.M):
    print("do not add axioms in Level928Table.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if "frey_a3_bad_29" in l928 and "= 0" in l928:
    print("do not stub Frey traces as 0 via Tate placeholder", file=sys.stderr)
    sys.exit(1)
if '["928a1", "928b1", "928c1"]' in l928:
    print("do not ship a 3-name truncation as the 77 newforms", file=sys.stderr)
    sys.exit(1)
if "theorem v29_valuation_gap3" not in l928:
    print("v29_valuation_gap3 missing from Level928Table.lean", file=sys.stderr)
    sys.exit(1)
if "theorem thirteen_dvd_v29_Delta_of_only_C" not in l928:
    print("thirteen_dvd_v29_Delta_of_only_C missing", file=sys.stderr)
    sys.exit(1)
if "def level_928_no_match_bad_29" not in l928:
    print("level_928_no_match_bad_29 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem level_928_no_match_bad_29\b", l928, re.M):
    print("do not inhabit level_928_no_match_bad_29; no 77-row table",
          file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_ge_B0_of_32_and_928" not in l928:
    print("no_sol_ge_B0_of_32_and_928 missing", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_still_nogo_after_29" not in l928:
    print("LLL_still_nogo_after_29 missing", file=sys.stderr)
    sys.exit(1)

r29c = pathlib.Path("Ribet29C_Lowering.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in r29c or re.search(
        r"^import Beal\.Matveev\.", r29c, re.M):
    print("Ribet29C_Lowering.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", r29c, re.M) or ":= sorry" in r29c or "by sorry" in r29c:
    print("sorry is not allowed in Ribet29C_Lowering.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in r29c:
    print("True := trivial is not allowed in Ribet29C_Lowering.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", r29c, re.M):
    print("do not add axioms in Ribet29C_Lowering.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^def v_p\b", r29c, re.M) or ":= 0 -- placeholder" in r29c:
    print("do not stub v_p := 0; reuse padicValNat from Level928Table", file=sys.stderr)
    sys.exit(1)
if "native_decide" in r29c:
    print("do not native_decide placeholder traces in Ribet29C_Lowering.lean", file=sys.stderr)
    sys.exit(1)
if "theorem v29_Delta_of_29_dvd_C" not in r29c:
    print("v29_Delta_of_29_dvd_C missing from Ribet29C_Lowering.lean", file=sys.stderr)
    sys.exit(1)
if "theorem thirteen_dvd_v29_Delta_of_29_dvd_C" not in r29c:
    print("thirteen_dvd_v29_Delta_of_29_dvd_C missing from Ribet29C_Lowering.lean",
          file=sys.stderr)
    sys.exit(1)
if "theorem a7_ne_32a1_of_residue_2_3" not in r29c:
    print("a7_ne_32a1_of_residue_2_3 missing from Ribet29C_Lowering.lean", file=sys.stderr)
    sys.exit(1)
if "theorem no_sol_ge_B0_29C_branch_of_ribet_and_a7" not in r29c:
    print("no_sol_ge_B0_29C_branch_of_ribet_and_a7 missing", file=sys.stderr)
    sys.exit(1)
if "def ribet_29C_lowers_to_32" not in r29c:
    print("ribet_29C_lowers_to_32 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_29C_lowers_to_32\b", r29c, re.M):
    print("do not inhabit ribet_29C_lowers_to_32; other odd primes in AB need not drop",
          file=sys.stderr)
    sys.exit(1)
if "def no_sol_ge_B0_29C_branch" not in r29c:
    print("no_sol_ge_B0_29C_branch must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_ge_B0_29C_branch\b", r29c, re.M):
    print("do not inhabit no_sol_ge_B0_29C_branch; residue (1,6) matches a7=0",
          file=sys.stderr)
    sys.exit(1)
if "theorem LLL_nogo_persists_after_Ribet29C" not in r29c:
    print("LLL_nogo_persists_after_Ribet29C missing", file=sys.stderr)
    sys.exit(1)

r16 = pathlib.Path("Ribet29C_Residue16.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in r16 or re.search(
        r"^import Beal\.Matveev\.", r16, re.M):
    print("Ribet29C_Residue16.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", r16, re.M) or ":= sorry" in r16 or "by sorry" in r16:
    print("sorry is not allowed in Ribet29C_Residue16.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in r16:
    print("True := trivial is not allowed in Ribet29C_Residue16.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", r16, re.M):
    print("do not add axioms in Ribet29C_Residue16.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^def count_Fp_Frey\b", r16, re.M) or ":= 0 -- placeholder" in r16:
    print("do not stub count_Fp_Frey := 0; reuse Level32Table sqCount", file=sys.stderr)
    sys.exit(1)
if "frey_ap 11 1 6 = -6" in r16 or "a11_Frey_1_6_mod7" in r16:
    print("do not claim frey_ap 11 1 6 = -6; the point count is 0 and (1,6) is not on-sol mod 11",
          file=sys.stderr)
    sys.exit(1)
if "theorem curve32a1_ap_11" not in r16:
    print("curve32a1_ap_11 missing from Ribet29C_Residue16.lean", file=sys.stderr)
    sys.exit(1)
if "theorem a11_at_1_6_matches_32a1" not in r16:
    print("a11_at_1_6_matches_32a1 missing; (1,6) matches a11=0", file=sys.stderr)
    sys.exit(1)
if "theorem residue_1_6_has_a11_match_witness" not in r16:
    print("residue_1_6_has_a11_match_witness missing; l=11 does not kill (1,6)",
          file=sys.stderr)
    sys.exit(1)
if "theorem a11_ne_32a1_of_residue_2_6" not in r16:
    print("a11_ne_32a1_of_residue_2_6 missing from Ribet29C_Residue16.lean", file=sys.stderr)
    sys.exit(1)
if "def no_sol_ge_B0_29C_of_7_and_11" not in r16:
    print("no_sol_ge_B0_29C_of_7_and_11 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_ge_B0_29C_of_7_and_11\b", r16, re.M):
    print("do not inhabit no_sol_ge_B0_29C_of_7_and_11; (1,6) has a11=0 lifts",
          file=sys.stderr)
    sys.exit(1)
if "def full_29C_eliminated" not in r16:
    print("full_29C_eliminated must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem full_29C_eliminated\b", r16, re.M):
    print("do not inhabit full_29C_eliminated; (1,6) and (6,6) survive",
          file=sys.stderr)
    sys.exit(1)
if "theorem LLL_nogo_persists_after_Residue16" not in r16:
    print("LLL_nogo_persists_after_Residue16 missing", file=sys.stderr)
    sys.exit(1)

l23 = pathlib.Path("Ribet29C_Residue16_L23.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in l23 or re.search(
        r"^import Beal\.Matveev\.", l23, re.M):
    print("Ribet29C_Residue16_L23.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", l23, re.M) or ":= sorry" in l23 or "by sorry" in l23:
    print("sorry is not allowed in Ribet29C_Residue16_L23.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in l23:
    print("True := trivial is not allowed in Ribet29C_Residue16_L23.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", l23, re.M):
    print("do not add axioms in Ribet29C_Residue16_L23.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^def count_E_Fp_32a1\b", l23, re.M) or re.search(r"^def frey_a23\b", l23, re.M):
    print("do not stub count_E_Fp_32a1 / frey_a23 := 0; reuse Level32Table sqCount",
          file=sys.stderr)
    sys.exit(1)
if "a23_32a1 : Int := -6" in l23 or "curve32a1_ap 23 = -6" in l23:
    print("do not claim a23(32a1)=-6; the point count is 0", file=sys.stderr)
    sys.exit(1)
if "theorem curve32a1_ap_23" not in l23:
    print("curve32a1_ap_23 missing from Ribet29C_Residue16_L23.lean", file=sys.stderr)
    sys.exit(1)
if "theorem residue_1_6_has_a23_match_witness" not in l23:
    print("residue_1_6_has_a23_match_witness missing; l=23 does not kill (1,6)",
          file=sys.stderr)
    sys.exit(1)
if "theorem witness_15_69_bad_at_23" not in l23:
    print("witness_15_69_bad_at_23 missing; 15,69 is 23|B", file=sys.stderr)
    sys.exit(1)
if "def residue_1_6_eliminated_at_23" not in l23:
    print("residue_1_6_eliminated_at_23 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem residue_1_6_eliminated_at_23\b", l23, re.M):
    print("do not inhabit residue_1_6_eliminated_at_23; a23=0 lifts exist",
          file=sys.stderr)
    sys.exit(1)
if "def no_sol_ge_B0_29C_1_6_of_l23" not in l23:
    print("no_sol_ge_B0_29C_1_6_of_l23 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_ge_B0_29C_1_6_of_l23\b", l23, re.M):
    print("do not inhabit no_sol_ge_B0_29C_1_6_of_l23; (1,6) has a23=0 lifts",
          file=sys.stderr)
    sys.exit(1)
if "theorem LLL_nogo_persists_after_L23" not in l23:
    print("LLL_nogo_persists_after_L23 missing", file=sys.stderr)
    sys.exit(1)

mazur = pathlib.Path("MazurIrreducibility13.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in mazur or re.search(
        r"^import Beal\.Matveev\.", mazur, re.M):
    print("MazurIrreducibility13.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if "import BealTrueV25" in mazur:
    print("MazurIrreducibility13.lean must not import BealTrueV25", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", mazur, re.M) or ":= sorry" in mazur or "by sorry" in mazur:
    print("sorry is not allowed in MazurIrreducibility13.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in mazur:
    print("True := trivial is not allowed in MazurIrreducibility13.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", mazur, re.M):
    print("do not add axioms in MazurIrreducibility13.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if "axiom mazur_13_irreducible" in mazur or "axiom darmon_merel_4413_axiom" in mazur:
    print("do not add mazur_13_irreducible_axiom or redefine darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^def frey_c4\b", mazur, re.M):
    print("do not redefine frey_c4; reuse DarmonMerelFrey4413.frey_c4",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^def darmon_merel_4413_axiom\b", mazur, re.M):
    print("do not redefine darmon_merel_4413_axiom; that name is BealTrueV25 only",
          file=sys.stderr)
    sys.exit(1)
if "def rho_Frey_mod13_irreducible" not in mazur:
    print("rho_Frey_mod13_irreducible must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem rho_Frey_mod13_irreducible\b", mazur, re.M):
    print("do not inhabit rho_Frey_mod13_irreducible; Mazur is not in Mathlib 4.12",
          file=sys.stderr)
    sys.exit(1)
if "def mazur_and_ribet_hyp" not in mazur:
    print("mazur_and_ribet_hyp must stay def Prop", file=sys.stderr)
    sys.exit(1)
if "def no_sol_ge_B0_of_darmon_merel_4413" not in mazur:
    print("no_sol_ge_B0_of_darmon_merel_4413 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_ge_B0_of_darmon_merel_4413\b", mazur, re.M):
    print("do not inhabit no_sol_ge_B0_of_darmon_merel_4413; needs I_29 + Serre image",
          file=sys.stderr)
    sys.exit(1)
if "theorem twenty_nine_dvd_frey_j_den" not in mazur:
    print("twenty_nine_dvd_frey_j_den missing from MazurIrreducibility13.lean", file=sys.stderr)
    sys.exit(1)
if "theorem frey_j_not_int_of_29_dvd_C" not in mazur:
    print("frey_j_not_int_of_29_dvd_C missing from MazurIrreducibility13.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_and_DarmonMerel_separate" not in mazur:
    print("LLL_and_DarmonMerel_separate missing; e5a95f5 iff must persist", file=sys.stderr)
    sys.exit(1)

inertia = pathlib.Path("Inertia29Unramified.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in inertia or re.search(
        r"^import Beal\.Matveev\.", inertia, re.M):
    print("Inertia29Unramified.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if "import BealTrueV25" in inertia:
    print("Inertia29Unramified.lean must not import BealTrueV25", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", inertia, re.M) or ":= sorry" in inertia or "by sorry" in inertia:
    print("sorry is not allowed in Inertia29Unramified.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in inertia or "True := by trivial" in inertia:
    print("True := trivial is not allowed in Inertia29Unramified.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", inertia, re.M):
    print("do not add axioms in Inertia29Unramified.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if "def tate_Kodaira_I_at_29" not in inertia:
    print("tate_Kodaira_I_at_29 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem tate_Kodaira_I_at_29\b", inertia, re.M):
    print("do not inhabit tate_Kodaira_I_at_29; Tate algorithm is not in Mathlib 4.12",
          file=sys.stderr)
    sys.exit(1)
if "def inertia_at_29_trivial_mod13" not in inertia:
    print("inertia_at_29_trivial_mod13 must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem inertia_at_29_trivial_mod13\b", inertia, re.M):
    print("do not inhabit inertia_at_29_trivial_mod13; needs Galois I_29",
          file=sys.stderr)
    sys.exit(1)
if "def ribet_unramified_at_l_if_13_dvd_vDelta" not in inertia:
    print("ribet_unramified_at_l_if_13_dvd_vDelta must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem ribet_unramified_at_l_if_13_dvd_vDelta\b", inertia, re.M):
    print("do not inhabit ribet_unramified_at_l_if_13_dvd_vDelta; needs Tate curve Gal",
          file=sys.stderr)
    sys.exit(1)
if "theorem v29_c4_eq_0" not in inertia:
    print("v29_c4_eq_0 missing from Inertia29Unramified.lean", file=sys.stderr)
    sys.exit(1)
if "theorem displayed_minimal_at_29_of_29_dvd_C" not in inertia:
    print("displayed_minimal_at_29_of_29_dvd_C missing from Inertia29Unramified.lean",
          file=sys.stderr)
    sys.exit(1)
if "theorem LLL_nogo_persists_after_Inertia" not in inertia:
    print("LLL_nogo_persists_after_Inertia missing; e5a95f5 iff must persist", file=sys.stderr)
    sys.exit(1)

serre = pathlib.Path("SerreImage13.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in serre or re.search(
        r"^import Beal\.Matveev\.", serre, re.M):
    print("SerreImage13.lean must not import Beal.Matveev.*", file=sys.stderr)
    sys.exit(1)
if "import BealTrueV25" in serre:
    print("SerreImage13.lean must not import BealTrueV25", file=sys.stderr)
    sys.exit(1)
if re.search(r"^\s*sorry\b", serre, re.M) or ":= sorry" in serre or "by sorry" in serre:
    print("sorry is not allowed in SerreImage13.lean", file=sys.stderr)
    sys.exit(1)
if "True := trivial" in serre or "True := by trivial" in serre:
    print("True := trivial is not allowed in SerreImage13.lean", file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom ", serre, re.M):
    print("do not add axioms in SerreImage13.lean; reuse BealTrueV25.darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^axiom serre_large_image", serre, re.M) or re.search(
        r"^axiom darmon_merel_4413_axiom", serre, re.M):
    print("do not add serre_large_image_13_axiom or redefine darmon_merel_4413_axiom",
          file=sys.stderr)
    sys.exit(1)
if re.search(r"^def darmon_merel_4413_axiom\b", serre, re.M):
    print("do not redefine darmon_merel_4413_axiom; that name is BealTrueV25 only",
          file=sys.stderr)
    sys.exit(1)
if "def image_32a1_mod13_small" not in serre:
    print("image_32a1_mod13_small must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem image_32a1_mod13_small\b", serre, re.M):
    print("do not inhabit image_32a1_mod13_small; Galois image is not in Mathlib 4.12",
          file=sys.stderr)
    sys.exit(1)
if "def serre_large_image" not in serre:
    print("serre_large_image must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem serre_large_image\b", serre, re.M):
    print("do not inhabit serre_large_image; Serre open image is not in Mathlib 4.12",
          file=sys.stderr)
    sys.exit(1)
if "def darmon_merel_4413_full" not in serre:
    print("darmon_merel_4413_full must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem darmon_merel_4413_full\b", serre, re.M):
    print("do not inhabit darmon_merel_4413_full; needs I_29 + Serre image",
          file=sys.stderr)
    sys.exit(1)
if "def no_sol_ge_B0_of_image_contradiction" not in serre:
    print("no_sol_ge_B0_of_image_contradiction must stay def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem no_sol_ge_B0_of_image_contradiction\b", serre, re.M):
    print("do not inhabit no_sol_ge_B0_of_image_contradiction; image size is not in Mathlib",
          file=sys.stderr)
    sys.exit(1)
if "theorem curve32a1_j_eq_1728" not in serre:
    print("curve32a1_j_eq_1728 missing from SerreImage13.lean", file=sys.stderr)
    sys.exit(1)
if "theorem frey_j_ne_1728_of_29_dvd_C" not in serre:
    print("frey_j_ne_1728_of_29_dvd_C missing from SerreImage13.lean", file=sys.stderr)
    sys.exit(1)
if "theorem LLL_and_DarmonMerel_separate" not in serre:
    print("LLL_and_DarmonMerel_separate missing; e5a95f5 iff must persist", file=sys.stderr)
    sys.exit(1)

def check_gap_file(path, required_defs, required_thms):
    text = pathlib.Path(path).read_text(encoding="utf-8")
    if "import Beal.Matveev.MatveevThm14General" in text or re.search(
            r"^import Beal\.Matveev\.", text, re.M):
        print(f"{path} must not import Beal.Matveev.*", file=sys.stderr)
        sys.exit(1)
    if "import BealTrueV25" in text:
        print(f"{path} must not import BealTrueV25", file=sys.stderr)
        sys.exit(1)
    if re.search(r"^\s*sorry\b", text, re.M) or ":= sorry" in text or "by sorry" in text:
        print(f"sorry is not allowed in {path}", file=sys.stderr)
        sys.exit(1)
    if "True := trivial" in text or "True := by trivial" in text:
        print(f"True := trivial is not allowed in {path}", file=sys.stderr)
        sys.exit(1)
    if re.search(r"^axiom ", text, re.M):
        print(f"do not add axioms in {path}; reuse BealTrueV25.darmon_merel_4413_axiom",
              file=sys.stderr)
        sys.exit(1)
    if re.search(r"^def darmon_merel_4413_axiom\b", text, re.M):
        print(f"do not redefine darmon_merel_4413_axiom in {path}", file=sys.stderr)
        sys.exit(1)
    for d in required_defs:
        if f"def {d}" not in text:
            print(f"{d} must stay def Prop in {path}", file=sys.stderr)
            sys.exit(1)
        if re.search(rf"^theorem {d}\b", text, re.M):
            print(f"do not inhabit {d} in {path}", file=sys.stderr)
            sys.exit(1)
    for t in required_thms:
        if f"theorem {t}" not in text:
            print(f"{t} missing from {path}", file=sys.stderr)
            sys.exit(1)
    return text

check_gap_file("MazurIrreducibilityFull.lean",
    ["frey_not_CM_of_B_ge_B0", "mazur_irreducible_13_of_nonintegral_j",
     "rho_Frey_mod13_irreducible_full"],
    ["frey_j_ne_zero_of_29_dvd_C", "frey_j_ne_1728_of_29_dvd_C_reexport",
     "LLL_nogo_persists_after_MazurFull"])
check_gap_file("TateGalois.lean",
    ["tate_curve_at_29", "inertia_via_cyclotomic",
     "inertia_at_29_trivial_mod13_full", "ribet_unramified_at_29_full"],
    ["v29_c4_zero_when_29_nmid_AB", "v29_Delta_eq_26_vC",
     "displayed_minimal_at_29_theorem", "LLL_nogo_persists_after_TateGalois"])
check_gap_file("SerreImageFull.lean",
    ["modularity_Frey_semistable", "ribet_level_32_of_unramified",
     "image_32a1_mod13_small_full", "serre_large_image_13_full",
     "darmon_merel_4413_four_gaps", "no_sol_ge_B0_of_four_gaps"],
    ["E32a1_j_eq_1728", "forty_eight_lt_2184", "LLL_and_DarmonMerel_separate"])
check_gap_file("Mazur_X0_13_RationalPoints.lean",
    ["reducible_13_iff_j_in_image", "no_t_gives_Frey_j_when_29_dvd_C",
     "mazur_irreducible_13_via_X0_13", "mazur_irreducible_13_theorem"],
    ["x0_13_quad_ne_zero_mod29", "x0_13_f_zero_at_seven_nine_mod29",
     "fourth_pow_mod29", "c4_form_ne_fourteen_form_mod29",
     "padicValRat_frey_j_eq_neg_26_vC", "v_t_of_j_eq",
     "LLL_nogo_persists_after_X0_13"])
check_gap_file("Tate_I29_Inertia.lean",
    ["Tate_uniformization", "inertia_via_cyclo",
     "inertia_trivial_mod13_when_13_dvd_v", "Tate_q"],
    ["v29_c4_eq_0_thm", "v29_Delta_26k_thm",
     "valuation_natCast_eq_padicValNat", "padic_valuation_Delta_eq_26_vC",
     "exists_Qp_unit_val_eq_vDelta", "LLL_nogo_persists_after_Tate_I29",
     "valuation_Tate_q_series", "valuation_Tate_q_lead",
     "thirteen_dvd_valuation_Tate_q_lead"])
check_gap_file("Ribet_Level32.lean",
    ["modular_Frey", "ribet_level_lowering_29_to_32",
     "Ribet_level_lowering_abstract", "level_Frey_eq_32_needs_Wiles"],
    ["LLL_nogo_persists_after_Ribet_Level32",
     "nine_twenty_eight_div_twenty_nine", "nine_twenty_eight_ne_thirty_two",
     "level_after_ribet_29_eq_32_of_nmid_AB",
     "residual_nmid_32_of_29_dvd_A",
     "ribet_lowers_of_abstract_and_inertia"])
check_gap_file("Serre_Large_vs_CM_Small.lean",
    ["card_32a1_le_48", "serre_large_Frey", "contradiction_48_lt_2184",
     "card_image_32a1_le_48_via_CM", "rho_Frey_iso_rho_32a1_needs_Ribet"],
    ["forty_eight_lt_2184", "card_SL2_F13_eq_2184",
     "thirteen_splits_in_Zi", "card_normalizer_split_Cartan_13",
     "forty_eight_ne_2184", "curve_x3_minus_x_j_eq_1728",
     "LLL_and_DarmonMerel_separate"])
check_gap_file("X0_26_Full2Torsion.lean",
    ["full2_plus_13_isog_gives_26_isog", "X0_26_model",
     "X0_26_Q_points_cusps_only", "X0_26_Q_points_finite",
     "kenku_no_cyclic_26_over_Q", "kenku_no_cyclic_52_over_Q",
     "mazur_irreducible_13_via_X0_26", "J0_26_rank0",
     "X0_26_Q_eq_known", "no_cyclic_26_isogeny_Q",
     "J0_26_rank0_via_mwrank", "J0_26_Q_tors_21",
     "mwrank_skeleton_complete"],
    ["frey_cubic_eq_prod", "frey_has_full_2_torsion",
     "twenty_six_not_in_kenku_list", "fifty_two_not_in_kenku_list",
     "frey_j_not_integral_j0", "LLL_nogo_persists_after_X0_26",
     "X0_26_known_on_curve", "X0_26_poly_natDegree",
     "X0_26_f_zero_ne_forty_nine", "X0_26_genus2",
     "X0_26_weierstrass_points", "X0_26_even_complete_square",
     "curve_26a1_model_Δ", "curve_26b1_model_Δ",
     "tors_26a1_eq_3", "tors_26b1_eq_7",
     "selmer_2_card_26a1_eq", "two_pow_selmer_rank_26a1",
     "three_mul_seven_eq_twenty_one",
     "selmer_2_card_eq_sel2_card_26a1"])
x026 = pathlib.Path("X0_26_Full2Torsion.lean").read_text(encoding="utf-8")
if "import TwoDescent_26a1_26" not in x026:
    print("X0_26_Full2Torsion.lean must import TwoDescent_26a1_26", file=sys.stderr)
    sys.exit(1)
if "import BealTrueV25.TwoDescent" in x026:
    print("X0_26_Full2Torsion.lean must not import BealTrueV25.TwoDescent", file=sys.stderr)
    sys.exit(1)
check_gap_file("TwoDescent_26a1_26.lean",
    ["Sha2_26a1_trivial", "Sha2_26b1_trivial",
     "RankZero_26a1_from_Selmer", "RankZero_26b1_from_Selmer",
     "mwrank_displays_are_Mathlib_MW", "certified_mwrank_both_zero"],
    ["SelmerBound_26a1_eq", "Sel2_card_26a1_eq",
     "TorsionOrder_26a1_eq", "TorsionOrder_26b1_eq",
     "TorsionOrder_26a1_ne_two", "certified_mwrank_26a1_eq",
     "certified_mwrank_both_zero_holds",
     "Sel2_rank0_implies_rank0_26a1", "Sel2_rank0_implies_rank0_26b1",
     "two_pow_sel2_F2_dim_26a1", "torsion_orders_mul_eq_twenty_one",
     "Sha2_26a1_trivial_is_one_eq_one",
     "RankZero_26a1_from_Selmer_is_one_eq_one",
     "LLL_nogo_persists_after_TwoDescent"])
two = pathlib.Path("TwoDescent_26a1_26.lean").read_text(encoding="utf-8")
if "Not a Selmer" not in two or "Not a two-descent" not in two:
    print("TwoDescent_26a1_26.lean honesty comments missing", file=sys.stderr)
    sys.exit(1)
if "Not Sha[2] triviality" not in two:
    print("TwoDescent_26a1_26.lean must say RankZero/Sha names are not Sha[2]", file=sys.stderr)
    sys.exit(1)
if "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" not in two:
    print("TwoDescent_26a1_26.lean must cite Descent_26.json SHA-256", file=sys.stderr)
    sys.exit(1)
if "Prop := True" in two or ":= trivial" in two:
    print("FAIL: TwoDescent ranks/Selmer names must not be True/trivial", file=sys.stderr)
    sys.exit(1)
if re.search(r"^def J0_26_rank0_via_mwrank_inhabited\b", two, re.M) or re.search(
        r"^theorem J0_26_rank0_via_mwrank_inhabited\b", two, re.M):
    print("do not name 0=0 as J0_26_rank0_via_mwrank_inhabited", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem J0_26_rank0\b", two, re.M):
    print("do not inhabit J0_26_rank0 in TwoDescent_26a1_26.lean", file=sys.stderr)
    sys.exit(1)
if "import X0_26_Full2Torsion" in two:
    print("TwoDescent_26a1_26.lean must not import X0_26_Full2Torsion (cycle)", file=sys.stderr)
    sys.exit(1)
check_gap_file("J0_26_BSD_26a1_26b1.lean",
    ["L_26a1_ne_zero", "L_26b1_ne_zero",
     "Kolyvagin_rank0_of_L_ne_zero",
     "J0_26_isogenous_26a1_times_26b1", "J0_26_rank0_via_Kolyvagin"],
    ["curve26a1_Δ", "curve26b1_Δ", "curve26a1_point_4_4",
     "curve26b1_point_1_0", "L_over_Omega_26a1_eq",
     "L_over_Omega_26b1_eq", "L_over_Omega_26a1_ne_zero",
     "three_mul_seven", "LLL_nogo_persists_after_J0_26_BSD"])
j0bsd = pathlib.Path("J0_26_BSD_26a1_26b1.lean").read_text(encoding="utf-8")
if "import BSD_MordellWeil" not in j0bsd:
    print("J0_26_BSD_26a1_26b1.lean must import BSD_MordellWeil", file=sys.stderr)
    sys.exit(1)
check_gap_file("BSD_MordellWeil.lean",
    ["IsRankZero", "MW_rank_zero", "MW_rank_zero_26a1",
     "MW_rank_zero_26b1", "BSD_rank_statement"],
    ["add_comm", "eq_zero_of_isRankZero",
     "curve26a1_Q_Δ", "curve26b1_Q_Δ",
     "point_26a1_4_4_ne_zero", "point_26b1_1_0_ne_zero",
     "not_IsRankZero_26a1", "not_IsRankZero_26b1",
     "LLL_nogo_persists_after_BSD_MordellWeil"])
bsd_mw = pathlib.Path("BSD_MordellWeil.lean").read_text(encoding="utf-8")
if re.search(r"namespace TheoremaAureum", bsd_mw):
    print("BSD_MordellWeil.lean must not use an external tower namespace", file=sys.stderr)
    sys.exit(1)
if "Subsingleton" not in bsd_mw:
    print("BSD_MordellWeil.lean must record IsRankZero as Subsingleton", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem J0_26_rank0\b", bsd_mw, re.M):
    print("do not inhabit J0_26_rank0 in BSD_MordellWeil.lean", file=sys.stderr)
    sys.exit(1)
if "Prop := True" in bsd_mw or ":= trivial" in bsd_mw:
    print("FAIL: BSD_MordellWeil must not use True/trivial", file=sys.stderr)
    sys.exit(1)
check_gap_file("Tate_Frey_Conductor_29.lean",
    ["Tate_algorithm_at_29", "Frey_Neron_conductor",
     "Frey_conductor_29_is_Neron"],
    ["freyWeierstrass_Δ_reexport", "freyWeierstrass_Δ_1_1",
     "v29_Delta_eq_26_vC_reexport",
     "displayed_residual_32_of_nmid_AB",
     "displayed_residual_928_of_dvd_AB",
     "nine_twenty_eight_div_twenty_nine",
     "LLL_nogo_persists_after_Tate_Frey_Conductor"])
tate_cond = pathlib.Path("Tate_Frey_Conductor_29.lean").read_text(encoding="utf-8")
if "Prop := True" in tate_cond or ":= trivial" in tate_cond:
    print("FAIL: Tate_Frey_Conductor_29 must not use True/trivial", file=sys.stderr)
    sys.exit(1)
if "WeierstrassCurve.mk" in tate_cond:
    print("Tate_Frey_Conductor_29.lean must not use WeierstrassCurve.mk", file=sys.stderr)
    sys.exit(1)
check_gap_file("Mazur_X0_13_No_Isogeny.lean",
    ["X0_13_Q_infinite", "frey_no_rational_13_isogeny",
     "Serre_non_Borel_mod13", "mazur_no_Frey_13_isogeny"],
    ["X0_13_genus_nat_eq", "X0_13_cusp_count_eq",
     "serre_non_Borel_numerics",
     "LLL_nogo_persists_after_Mazur_X0_13_No_Isogeny"])
mazur_no = pathlib.Path("Mazur_X0_13_No_Isogeny.lean").read_text(encoding="utf-8")
if "Prop := True" in mazur_no or ":= trivial" in mazur_no:
    print("FAIL: Mazur_X0_13_No_Isogeny must not use True/trivial", file=sys.stderr)
    sys.exit(1)
if "literature-false" not in mazur_no and "infinite" not in mazur_no:
    print("Mazur_X0_13_No_Isogeny.lean must record X0(13)(Q) infinite / {2 cusps} false", file=sys.stderr)
    sys.exit(1)
check_gap_file("Ribet_Level_Lowering_29_to_32.lean",
    ["Ribet_928_to_32", "no_newforms_at_32_mod13",
     "explicit_a29_mod13"],
    ["nine_twenty_eight_div_twenty_nine_reexport",
     "conductor_display_32_of_29_nmid_AB",
     "conductor_display_928_of_29_dvd_AB",
     "LLL_nogo_persists_after_Ribet_Level_Lowering"])
ribet_ll = pathlib.Path("Ribet_Level_Lowering_29_to_32.lean").read_text(encoding="utf-8")
if "Prop := True" in ribet_ll or ":= trivial" in ribet_ll:
    print("FAIL: Ribet_Level_Lowering_29_to_32 must not use True/trivial", file=sys.stderr)
    sys.exit(1)
check_gap_file("Kolyvagin_MW_Rank0_26a1_26b1.lean",
    ["MW_rank_zero_fintype", "MW_rank_zero_26a1_fintype",
     "MW_rank_zero_26b1_fintype",
     "Kolyvagin_L_nonzero_imp_MW_rank_zero",
     "TwoDescent_implies_MW_rank_zero_fintype"],
    ["not_IsRankZero_26a1_reexport", "not_IsRankZero_26b1_reexport",
     "L_over_Omega_26a1_ne_zero_reexport",
     "Sel2_card_both_one", "torsion_3_mul_7_eq_21",
     "LLL_nogo_persists_after_Kolyvagin_MW_Rank0"])
koly = pathlib.Path("Kolyvagin_MW_Rank0_26a1_26b1.lean").read_text(encoding="utf-8")
if "import BSD_MordellWeil" not in koly:
    print("Kolyvagin_MW_Rank0_26a1_26b1.lean must import BSD_MordellWeil", file=sys.stderr)
    sys.exit(1)
if "import TwoDescent_26a1_26" not in koly:
    print("Kolyvagin_MW_Rank0_26a1_26b1.lean must import TwoDescent_26a1_26", file=sys.stderr)
    sys.exit(1)
if "Prop := True" in koly or ":= trivial" in koly:
    print("FAIL: Kolyvagin_MW_Rank0 must not use True/trivial", file=sys.stderr)
    sys.exit(1)
if "WeierstrassCurve.mk" in koly:
    print("Kolyvagin_MW_Rank0_26a1_26b1.lean must not use WeierstrassCurve.mk", file=sys.stderr)
    sys.exit(1)
if "Subsingleton" not in koly:
    print("Kolyvagin_MW_Rank0_26a1_26b1.lean must record IsRankZero as Subsingleton", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem J0_26_rank0\b", koly, re.M):
    print("do not inhabit J0_26_rank0 in Kolyvagin_MW_Rank0_26a1_26b1.lean", file=sys.stderr)
    sys.exit(1)
road = pathlib.Path("docs/roadmap_without_wiles/README.md").read_text(encoding="utf-8")
if "Tate_Frey_Conductor_29" not in road or "Kolyvagin_MW_Rank0_26a1_26b1" not in road:
    print("docs/roadmap_without_wiles/README.md must name the four root modules", file=sys.stderr)
    sys.exit(1)
if "refused" not in road.lower():
    print("docs/roadmap_without_wiles/README.md must record the one-repo merge is refused", file=sys.stderr)
    sys.exit(1)
if "Does **not** mint v25" not in road and "does **not** mint v25" not in road:
    print("docs/roadmap_without_wiles/README.md must say it does not mint v25", file=sys.stderr)
    sys.exit(1)
arch = pathlib.Path("ARCHIVE_4413.md").read_text(encoding="utf-8")
if "e5a95f5" not in arch or "953a174" not in arch:
    print("ARCHIVE_4413.md must record e5a95f5 LLL iff and 953a174 barrier", file=sys.stderr)
    sys.exit(1)
if "(1,6)" not in arch:
    print("ARCHIVE_4413.md must explain (1,6) slice vs whole class", file=sys.stderr)
    sys.exit(1)
if "four gaps" not in arch and "4 gaps" not in arch:
    print("ARCHIVE_4413.md must record the four Mathlib gaps", file=sys.stderr)
    sys.exit(1)
if "X0(13)" not in arch and "X₀(13)" not in arch:
    print("ARCHIVE_4413.md must record the X0(13) Fricke j-map", file=sys.stderr)
    sys.exit(1)
if "7,9" not in arch and "t ≡ 7" not in arch:
    print("ARCHIVE_4413.md must record that f has roots 7,9 mod 29", file=sys.stderr)
    sys.exit(1)
if "Kenku" not in arch:
    print("ARCHIVE_4413.md must record Kenku cyclic-isogeny emptiness at 26", file=sys.stderr)
    sys.exit(1)
if "X0(26)" not in arch and "X₀(26)" not in arch:
    print("ARCHIVE_4413.md must record the X0(26) full 2-torsion route", file=sys.stderr)
    sys.exit(1)
if "26.42.2.a.1" not in arch:
    print("ARCHIVE_4413.md must record LMFDB 26.42.2.a.1, not 26.a2", file=sys.stderr)
    sys.exit(1)
if "Gonz" not in arch:
    print("ARCHIVE_4413.md must record the Gonzalez 1991 even model", file=sys.stderr)
    sys.exit(1)
if "49" not in arch:
    print("ARCHIVE_4413.md must record f(0)=1 != 49 so (0,+-7) fails", file=sys.stderr)
    sys.exit(1)
if "Padic.valuation" not in arch and "Tate_q" not in arch:
    print("ARCHIVE_4413.md must record the Qp / Padic.valuation Tate scaffold", file=sys.stderr)
    sys.exit(1)
if "744" not in arch or "196884" not in arch:
    print("ARCHIVE_4413.md must record the truncated j(q)=q^{-1}+744+196884 q expansion", file=sys.stderr)
    sys.exit(1)
if "288" not in arch:
    print("ARCHIVE_4413.md must record split-Cartan 2(13-1)^2=288", file=sys.stderr)
    sys.exit(1)
if "928 / 29" not in arch and "928/29" not in arch:
    print("ARCHIVE_4413.md must record 928/29=32 as the displayed residual numeral", file=sys.stderr)
    sys.exit(1)
if "1/3" not in arch or "1/7" not in arch:
    print("ARCHIVE_4413.md must record BSD quotients L/Omega = 1/3 and 1/7 for 26a1/26b1", file=sys.stderr)
    sys.exit(1)
if "-17576" not in arch or "-1664" not in arch:
    print("ARCHIVE_4413.md must record Cremona 26a1/26b1 discriminants", file=sys.stderr)
    sys.exit(1)
if "Sel2" not in arch and "|Sel" not in arch:
    print("ARCHIVE_4413.md must record displayed |Sel2|=1, not a Mathlib Selmer group", file=sys.stderr)
    sys.exit(1)
if "TwoDescent" not in arch:
    print("ARCHIVE_4413.md must record relocated TwoDescent_26a1_26", file=sys.stderr)
    sys.exit(1)
if "certified_mwrank" not in arch:
    print("ARCHIVE_4413.md must record Sage certified_mwrank as a displayed Nat", file=sys.stderr)
    sys.exit(1)
if "BSD_MordellWeil" not in arch:
    print("ARCHIVE_4413.md must record BSD_MordellWeil Point add_comm", file=sys.stderr)
    sys.exit(1)
if "Subsingleton" not in arch:
    print("ARCHIVE_4413.md must record IsRankZero as Subsingleton, not MW rank 0", file=sys.stderr)
    sys.exit(1)
sec = pathlib.Path("docs/X0_26_SECTION_8994d38.md").read_text(encoding="utf-8")
if "8994d38" not in sec or "7c19ad0" not in sec:
    print("docs/X0_26_SECTION_8994d38.md must pin 8994d38 and 7c19ad0", file=sys.stderr)
    sys.exit(1)
if "Does **not** mint v25" not in sec and "does **not** mint v25" not in sec:
    print("docs/X0_26_SECTION_8994d38.md must say it does not mint v25", file=sys.stderr)
    sys.exit(1)
if "Subsingleton" not in sec:
    print("docs/X0_26_SECTION_8994d38.md must record IsRankZero as Subsingleton", file=sys.stderr)
    sys.exit(1)
if "namespace TheoremaAureum" in sec:
    print("docs/X0_26_SECTION_8994d38.md must not introduce an external tower namespace", file=sys.stderr)
    sys.exit(1)
if "roadmap_without_wiles" not in arch:
    print("ARCHIVE_4413.md must record docs/roadmap_without_wiles", file=sys.stderr)
    sys.exit(1)
if "Tate_Frey_Conductor_29" not in arch or "Kolyvagin_MW_Rank0" not in arch:
    print("ARCHIVE_4413.md must record the four without-Wiles root modules", file=sys.stderr)
    sys.exit(1)

interp = pathlib.Path("MatveevInterpolation.lean").read_text(encoding="utf-8")
if "import Beal.Matveev.MatveevThm14General" in interp:
    print("MatveevInterpolation.lean must not import Beal.Matveev.MatveevThm14General", file=sys.stderr)
    sys.exit(1)
if "theorem C1_floor_eq" not in interp or "143186215390" not in interp:
    print("C1_floor = 143186215390 missing from MatveevInterpolation.lean", file=sys.stderr)
    sys.exit(1)
if "def height_B0_nat" not in interp or "104382751019310000000" not in interp:
    print("height_B0_nat missing from MatveevInterpolation.lean", file=sys.stderr)
    sys.exit(1)
if "def B0_nat" not in interp or "1000000" not in interp:
    print("B0_nat = 1000000 missing from MatveevInterpolation.lean", file=sys.stderr)
    sys.exit(1)
if "theorem interpolation_det_ne_zero" not in interp:
    print("interpolation_det_ne_zero missing", file=sys.stderr)
    sys.exit(1)
if "def interpolationDeterminant" not in interp:
    print("interpolationDeterminant missing", file=sys.stderr)
    sys.exit(1)
if "theorem matveev_thm14_n2_real_explicit_is_false" not in interp:
    print("matveev_thm14_n2_real_explicit_is_false missing", file=sys.stderr)
    sys.exit(1)
if "theorem matveev_interpolation_track1" not in interp:
    print("matveev_interpolation_track1 missing", file=sys.stderr)
    sys.exit(1)
if "def matveev_thm14_n2_real_explicit" not in interp:
    print("matveev_thm14_n2_real_explicit must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem matveev_thm14_n2_real_explicit\b", interp, re.M):
    print("do not inhabit matveev_thm14_n2_real_explicit (false for reals)", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_Ga" not in interp:
    print("wuestholz_product_theorem_Ga missing", file=sys.stderr)
    sys.exit(1)
if "theorem size_upper_bound_hadamard" not in interp:
    print("size_upper_bound_hadamard missing", file=sys.stderr)
    sys.exit(1)
if "def size_upper_bound" not in interp:
    print("analytic size_upper_bound must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if "theorem matveev_interpolation_analytic_small_bound" not in interp:
    print("matveev_interpolation_analytic_small_bound missing", file=sys.stderr)
    sys.exit(1)
if "theorem schwarz_lemma_of_order" not in interp:
    print("schwarz_lemma_of_order missing", file=sys.stderr)
    sys.exit(1)
if "def matveevPhi" not in interp:
    print("matveevPhi missing", file=sys.stderr)
    sys.exit(1)
if "theorem interpolationDeterminant_L0_not_exp_small" not in interp:
    print("interpolationDeterminant_L0_not_exp_small missing", file=sys.stderr)
    sys.exit(1)
if "theorem cauchy_estimate_iteratedDslope" not in interp:
    print("cauchy_estimate_iteratedDslope missing", file=sys.stderr)
    sys.exit(1)
if "theorem polynomial_iteratedDslope_vanishes" not in interp:
    print("polynomial_iteratedDslope_vanishes missing", file=sys.stderr)
    sys.exit(1)
if "theorem schwarz_lemma_of_order_polynomial" not in interp:
    print("schwarz_lemma_of_order_polynomial missing", file=sys.stderr)
    sys.exit(1)
if "theorem iteratedDslope_one_add_pow" not in interp:
    print("iteratedDslope_one_add_pow missing", file=sys.stderr)
    sys.exit(1)
if "theorem siegel_lemma" not in interp:
    print("siegel_lemma missing", file=sys.stderr)
    sys.exit(1)
if "theorem integer_box_card" not in interp:
    print("integer_box_card missing", file=sys.stderr)
    sys.exit(1)
if "theorem matveevPhi_vanishing_exists_T" not in interp:
    print("matveevPhi_vanishing_exists_T missing", file=sys.stderr)
    sys.exit(1)
if "theorem matveevPhi_eq_P_along_W" not in interp:
    print("matveevPhi_eq_P_along_W missing", file=sys.stderr)
    sys.exit(1)
if "theorem gap3_not_fourth_thirteenth" not in interp:
    print("gap3_not_fourth_thirteenth missing", file=sys.stderr)
    sys.exit(1)
if "theorem interpolationDeterminant_L_pos_alpha_one" not in interp:
    print("interpolationDeterminant_L_pos_alpha_one missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_Gm" not in interp:
    print("wuestholz_product_theorem_exp_Gm missing", file=sys.stderr)
    sys.exit(1)
if "theorem exp_poly_jet_zero" not in interp:
    print("exp_poly_jet_zero missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_Gm_of_mvPolynomial" not in interp:
    print("wuestholz_product_theorem_exp_Gm_of_mvPolynomial missing", file=sys.stderr)
    sys.exit(1)
if "def matveevPhi_of_mvPolynomial" not in interp:
    print("matveevPhi_of_mvPolynomial missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_Gm_of_rpow_indep" not in interp:
    print("wuestholz_product_theorem_exp_Gm_of_rpow_indep missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_product_theorem_exp_of_full_order" not in interp:
    print("wuestholz_product_theorem_exp_of_full_order missing", file=sys.stderr)
    sys.exit(1)
if "theorem dependent_pair_allows_identically_zero_Phi" not in interp:
    print("dependent_pair_allows_identically_zero_Phi missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_Ga_siegel_below_full_order" not in interp:
    print("wuestholz_Ga_siegel_below_full_order missing", file=sys.stderr)
    sys.exit(1)
if "inductive ProperSubgroupCandidate" not in interp:
    print("ProperSubgroupCandidate missing", file=sys.stderr)
    sys.exit(1)
if "theorem mul_dep_of_W_in_graph" not in interp:
    print("mul_dep_of_W_in_graph missing", file=sys.stderr)
    sys.exit(1)
if "theorem W_not_in_proper_candidate_of_indep" not in interp:
    print("W_not_in_proper_candidate_of_indep missing", file=sys.stderr)
    sys.exit(1)
if "theorem intermediate_threshold_lt_jet_dim" not in interp:
    print("intermediate_threshold_lt_jet_dim missing", file=sys.stderr)
    sys.exit(1)
if "theorem intermediate_T_example_half" not in interp:
    print("intermediate_T_example_half missing", file=sys.stderr)
    sys.exit(1)
if "theorem no_uniform_c_reaches_full_order" not in interp:
    print("no_uniform_c_reaches_full_order missing", file=sys.stderr)
    sys.exit(1)
if "theorem wuestholz_subgroup_of_jet_dim_le_threshold" not in interp:
    print("wuestholz_subgroup_of_jet_dim_le_threshold missing", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_subgroup_theorem" not in interp:
    print("wuestholz_subgroup_theorem must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_subgroup_theorem\b", interp, re.M):
    print("do not inhabit wuestholz_subgroup_theorem", file=sys.stderr)
    sys.exit(1)
if "theorem matveev_thm14_n2_explicit_of_nat_is_corollary_of_genuine" in interp:
    print("do not claim Track 1 is a corollary of genuine Matveev", file=sys.stderr)
    sys.exit(1)
if "def wuestholz_product_theorem_exp" not in interp:
    print("wuestholz_product_theorem_exp must stay a def Prop", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem wuestholz_product_theorem_exp\b", interp, re.M):
    print("do not inhabit wuestholz_product_theorem_exp", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem size_upper_bound\b", interp, re.M):
    print("do not inhabit size_upper_bound (L=0 gives Δ=1)", file=sys.stderr)
    sys.exit(1)
if re.search(r"^theorem baker_bound_gap3\b", interp, re.M):
    print("do not inhabit baker_bound_gap3", file=sys.stderr)
    sys.exit(1)

readme = pathlib.Path("README.md").read_text(encoding="utf-8")
if not readme.startswith("# foundations-level-26"):
    print("README.md must start with the foundations-level-26 title", file=sys.stderr)
    sys.exit(1)
if "beal-conjecture stays beal-conjecture" not in readme:
    print("README.md must keep the monorepo slug note", file=sys.stderr)
    sys.exit(1)

cff = pathlib.Path("CITATION.cff").read_text(encoding="utf-8")
# Old Level26 citation, or the Beal v33 main-audit citation after
# main became 6ee63920. Either set is valid. A file with neither fails.
level26_needles = [
    'title: "Formal Verification of the Level 26 Foundations for Signature (4,4,13): Certified Mordell-Weil Rank Zero for X0(26), Descent, Torsion, and Conductor Data"',
    "Matveev-Beal Level 26: Rank-3 B0/C cutoff nogo",
    'version: "v24-v24x-final-rank3-b0-div-c-nogo"',
    'doi: "10.5281/zenodo.22379293"',
    'repository-code: "https://github.com/DavidFox998/beal-level-26-foundations"',
    "C1_floor=143186215390",
    "B0_nat=1000000",
    "10.5281/zenodo.22732209",
    "v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations is not",
]
has_level26 = all(n in cff for n in level26_needles)
has_title = "\ntitle:" in "\n" + cff or cff.startswith("title:")
has_v33 = (
    has_title
    and "doi:" in cff
    and "10.5281/zenodo.23054568" in cff
    and "three-open gluing" in cff
    and "Beal" in cff
)
has_v37 = (
    has_title
    and "doi:" in cff
    and "10.5281/zenodo.23120540" in cff
    and "modelXtChart" in cff
    and "v37-true-chart" in cff
    and "Beal" in cff
)
if not has_level26 and not has_v33 and not has_v37:
    print(
        "CITATION.cff missing expected title or DOI "
        "10.5281/zenodo.23054568 or 10.5281/zenodo.23120540",
        file=sys.stderr,
    )
    for n in level26_needles:
        if n not in cff:
            print("CITATION.cff missing:", n, file=sys.stderr)
    sys.exit(1)
if 'version: "v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations"' in cff:
    print("CITATION.cff must not mint v25.0.0 as the current version", file=sys.stderr)
    sys.exit(1)

print("verify-matveev-beal: ok")
print("  0 sorry; matveev_gap3_lower is the B<=B0 integer-gap close")
print("  C1_floor=143186215390, gap3_A_bounds and B<=B0 product proved")
print("  CF lemmas: 4/13 convergent, integer gap < ratio; |Λ|<1/B not a cutoff")
print("  1/max(4log A,13log C) is not a lower bound; Track1 exp < ratio")
print("  LLL floor form approximates CΛ to <17; rank-3 det=C, ||v||<32")
print("  Lovasz 1/2, swap D<3/4 D, SVT of reduced, BD rearrangement")
print("  lll_algorithm_terminates: reduced Z-basis exists; not a B<=1e6 cutoff")
print("  displayed lll_svt_bound ||b1||<=2^{(n-1)/2} lambda1; lll_det_bound ||b1||<=sqrt2 C^{1/3}")
print("  baker_davenport_no_cutoff: (17,18) gives 1e-30 not B<=1e6")
print("  MatveevBugeaud: BD lower < |Λ| so cannot beat 1/B or the ratio")
print("  exists_reduced_b1_lt_sixty_four; C/B0=1e24; required r > 18 if B < C")
print("  baker_davenport_reduction / baker_bound_gap3 stay def Prop")
print("  interpolation: Δ, Vandermonde, G_a product, Hadamard, Schwarz, Cauchy;")
print("  analytic small bound is conditional; polynomial vanishing inhabited")
print("  Siegel + G_a jet vanishing: matveevPhi_vanishing_exists_T")
print("  L>=1 alpha=1 gives Δ=0; jet invertibility wuestholz_product_theorem_exp_Gm")
print("  MvPolynomial form: wuestholz_product_theorem_exp_Gm_of_mvPolynomial")
print("  full-order disjunction P=0 or dependent; intermediate T stays def Prop")
print("  Ga x Gm^2 candidates: graph implies dependence; W not in proper H")
print("  intermediate T < jet dim uniformly; subgroup of jet-dim <= cLK")
print("  WuestholzSubgroup: c=1/2, 1/242, 1/1000 lose to coeffCount 1 10 10=242")
print("  no_uniform_c_linear_in_N; inhabited special case is jet-dim <= cLK")
print("  subgroup-theorem Wüstholz stays def Prop; not a C1_floor close")
print("  WuestholzProduct: full-order T<coeffCount or P=0 or dependence")
print("  displayed 1 10 10: T<242 or P=0 or dep; no uniform c for product")
print("  floor_form_approx_of_C for every C; baker_davenport_reduction_nogo")
print("  bugeaud_LLL_method_fails: no C gives r>17+C/B0 on B>=B0")
print("  baker_davenport_reduction / wuestholz_product_theorem_exp stay def Prop")
print("  MatveevThreeLogs: Lambda3=Lambda; log B0>13; C1>=1 exp < ratio")
print("  C1_floor / 242 / 1 all lose to B^4/A^4 on B>=B0; cubic jet 1331")
print("  baker_bound_gap3_nogo_logs: log method cannot cut B<=1e6")
print("  BealKraus: Frey Δ=16 A^8 B^8 C^26; 13|26 so C lowers; 13∤8 so A does not")
print("  baker_bound_gap3_kraus_nogo: displayed Frey is not Fermat-style level 32")
print("  darmon_merel / ribet / kraus_uniform_residual_level stay def Prop")
print("  BealKrausZsig: N(A^2+iB^2)=(B+3)^13; C1<5/log13<2 for |sin(13θ)|")
print("  baker_bound_gap3_gaussian_nogo: C1>=2 exp^2 < B^4/C^13 on B>=B0")
print("  gaussian thirteenth-power / Zsigmondy / Catalan stay def Prop")
print("  BealCatalanZsig: gap-3 is not Catalan =1; 3∤B => gcd(A,B)=1; B even")
print("  baker_bound_gap3_mihailescu_zsigmondy_nogo: still C1>=2 loses")
print("  Zsigmondy primes in B do not force 13|v_p(A); not v25")
print("  BealDarmonMerel: 3|B => 3|A so gcd!=1; Darmon-Merel coprime hyp fails")
print("  13|26 so C lowers; 13∤8 so A-primes need not; residual estimate ∤ 32")
print("  baker_bound_gap3_darmon_merel_nogo: A>B0; Darmon-Merel stays def Prop")
print("  BealDarmonMerel44p: displayed residual !=32 on B>0; B even so 2|AB")
print("  A=a^13 and B=b^13 is Fermat exponent 13; FLT not in Mathlib 4.12")
print("  baker_bound_gap3_darmon_merel_44p_nogo: not uniform level 32")
print("  BealFLT13: 3|B impossible by 3-adic descent; every solution is coprime")
print("  baker_bound_gap3_flt13_darmon_merel_nogo: remaining case is Darmon-Merel")
print("  FLT 13 / Darmon-Merel 44p stay def Prop; not in Mathlib 4.12")
print("  BealGenuineV25: DM (4,4,13) => no gap-3 => baker_bound_gap3 vacuously")
print("  baker_bound_gap3_darmon_merel_4413_3adic_nogo: a B>=B0 sol refutes DM")
print("  DM / FLT13 / Ribet-to-32 stay def Prop; not a B<=1e6 close")
print("  BealTrueV25: baker_bound_gap3_true via axiom darmon_merel_4413_axiom")
print("  baker_bound_gap3_le_B0: vacuous ∀ A B, sol → B ≤ B0_nat")
print("  axiom-relative; not the unconditional v25 mint; hGen/hLLL stay open")
print("  BealUnconditionalV25: hGen+hLLL cannot cut B<=1e6; C1>=1 exp < ratio")
print("  hLLL_method_fails: no C gives r>17+C/B0; cubic jet 1331; DM/FLT/Ribet def Prop")
print("  baker_bound_gap3_unconditional_nogo; baker_bound_gap3 stays def Prop")
print("  BealGap1: A^4+B^4=(B+1)^13 coprime from start; 3|B compatible (A^4 == 1)")
print("  baker_bound_gap1_unconditional_nogo; hGen_gap1/hLLL_gap1 stay def Prop")
print("  baker_bound_gap1_true reuses darmon_merel_4413_axiom; (1,0) is a solution")
print("  BealGap2: A^4+B^4=(B+2)^13 B odd A even; 3|B impossible (C==2 mod 3)")
print("  baker_bound_gap2_unconditional_nogo; hGen_gap2/hLLL_gap2 stay def Prop")
print("  baker_bound_gap2_true reuses darmon_merel_4413_axiom; (1,0) is not a solution")
print("  BealGap4: A^4+B^4=(B+4)^13 B odd A even; 3|B compatible (C==1 mod 3); 5|B impossible (C==4 mod 5)")
print("  baker_bound_gap4_unconditional_nogo; hGen_gap4/hLLL_gap4 stay def Prop")
print("  baker_bound_gap4_true reuses darmon_merel_4413_axiom; (1,0) is not a solution")
print("  BealGap5: A^4+B^4=(B+5)^13 B even A odd; 3|B impossible (C==2 mod 3); 5|B impossible by 5-descent")
print("  baker_bound_gap5_unconditional_nogo; hGen_gap5/hLLL_gap5 stay def Prop")
print("  baker_bound_gap5_true reuses darmon_merel_4413_axiom; (1,0) is not a solution")
print("  BealGap6: A^4+B^4=(B+6)^13 B odd A even; even B dies as 6 or 14 mod 16; 3|B impossible by 3-descent C1=B1+2")
print("  baker_bound_gap6_unconditional_nogo; hGen_gap6/hLLL_gap6 stay def Prop")
print("  baker_bound_gap6_true reuses darmon_merel_4413_axiom; 5|B compatible (C==1 mod 5); (1,0) is not a solution")
print("  BealGap7: A^4+B^4=(B+7)^13 B even A odd; 3|B compatible (C==1 mod 3); 5|B impossible (C==2 mod 5); 7|B impossible by 7-descent")
print("  baker_bound_gap7_unconditional_nogo; hGen_gap7/hLLL_gap7 stay def Prop")
print("  baker_bound_gap7_true reuses darmon_merel_4413_axiom; (1,0) is not a solution")
print("  BealGap8: A^4+B^4=(B+8)^13 B odd A even; even B dies after nine /2 residue 8; 3|B impossible (C==2 mod 3); 5|B impossible (C==3 mod 5)")
print("  baker_bound_gap8_unconditional_nogo; hGen_gap8/hLLL_gap8 stay def Prop")
print("  baker_bound_gap8_true reuses darmon_merel_4413_axiom; 7|B compatible (C==1 mod 7); (1,0) is not a solution")
print("  BealGap9: A^4+B^4=(B+9)^13 B even A odd; 3|B impossible by 3-descent C1=B1+3; 5|B impossible (C==4 mod 5)")
print("  baker_bound_gap9_unconditional_nogo; hGen_gap9/hLLL_gap9 stay def Prop")
print("  baker_bound_gap9_true reuses darmon_merel_4413_axiom; 7|B compatible (C==2 mod 7); (1,0) is not a solution")
print("  BealGap10: A^4+B^4=(B+10)^13 A even; even B three /2 last-step 2(4B3+5)^13; even B3 and 5|B3 and B==1,3 die")
print("  leftover last-step both-odd 5-free B==2 or 4; 3|B compatible (C==1); 5|B impossible by 5-descent C1=B1+2")
print("  7|B impossible (C==3 mod 7); odd B coprime Darmon-Merel; baker_bound_gap10_unconditional_nogo")
print("  hGen_gap10/hLLL_gap10 stay def Prop; baker_bound_gap10_true on odd B reuses darmon_merel_4413_axiom")
print("  BealGap11: A^4+B^4=(B+11)^13 B even A odd; 3|B impossible (C==2 mod 3); 11|B impossible by 11-descent")
print("  5|B compatible (C==1 A^4==1); 7|B compatible (C==4 A^4==4); remaining coprime Darmon-Merel")
print("  baker_bound_gap11_unconditional_nogo; hGen_gap11/hLLL_gap11 stay def Prop")
print("  baker_bound_gap11_true reuses darmon_merel_4413_axiom; (1,0) is not a solution")
print("  BealGap12: A^4+B^4=(B+12)^13 B odd A even; even B dies after six /2 last 4(16B6+3)^13 residue 12")
print("  3|B impossible by 3-descent C1=B1+4; 5|B impossible (C==2 mod 5); 7|B impossible (C==5 mod 7)")
print("  baker_bound_gap12_unconditional_nogo; hGen_gap12/hLLL_gap12 stay def Prop")
print("  baker_bound_gap12_true reuses darmon_merel_4413_axiom; remaining coprime Darmon-Merel; (1,0) is not a solution")
print("  BealGap13: A^4+B^4=(B+13)^13 B even A odd; 3|B compatible (C==1 A^4==1); 5|B impossible (C==3 mod 5)")
print("  7|B impossible (C==6 mod 7); 11|B impossible (C==2 C^13==8); 13|B impossible by 13-descent C1=B1+1")
print("  baker_bound_gap13_unconditional_nogo; hGen_gap13/hLLL_gap13 stay def Prop")
print("  baker_bound_gap13_true reuses darmon_merel_4413_axiom; remaining coprime Darmon-Merel; (1,0) is not a solution")
print("  BealGap14: A^4+B^4=(B+14)^13 B odd A even; even B dies after three /2 last 2(4B3+7)^13 residue 6 or 14")
print("  3|B impossible (C==2 mod 3); 5|B impossible (C==4 mod 5); 7|B impossible by 7-descent C1=B1+2")
print("  baker_bound_gap14_unconditional_nogo; hGen_gap14/hLLL_gap14 stay def Prop")
print("  baker_bound_gap14_true reuses darmon_merel_4413_axiom; remaining coprime Darmon-Merel; (1,0) is not a solution")
print("  BealGap15: A^4+B^4=(B+15)^13 B even A odd; 3|B impossible by 3-descent C1=B1+5 last 27X")
print("  5|B impossible by 5-descent C1=B1+3 last 125X; 7|B compatible C==1 A^4==1")
print("  baker_bound_gap15_unconditional_nogo; hGen_gap15/hLLL_gap15 stay def Prop")
print("  baker_bound_gap15_true reuses darmon_merel_4413_axiom; remaining coprime Darmon-Merel; (1,0) is not a solution")
print("  BealGapK: generic A^4+B^4=(B+k)^13; odd k => B even A odd; even k => A even only")
print("  gcd(B,B+k)|k; p|k and p|B => p|A; v_p(k)=1 descents 3/5/7/11/13; residue kills with hyps")
print("  not forall k nogo: gap-1 (1,0) and k=m^4 B=0; recovers 2..9,11..15 and odd-B gap-10")
print("  baker_bound_gapK_unconditional_nogo; hGen_gapK/hLLL_gapK stay def Prop")
print("  no_positive_coprime_gapK_of_axiom reuses darmon_merel_4413_axiom")
print("  EffectiveLevelLowering: GapK wrappers + C<100 when A,B<=B0; C>=100 and not C<=73 on B>=B0")
print("  baker_bound_B0_1e6_unconditional_nogo; hGen_padic/hLLL_padic/baker_bound_B0_1e6 stay def Prop")
print("  no Bugeaud-Laurent / Kraus / Oesterle / Ribet-to-32 / FLT13 inhabitant; v25 not minted")
print("  BugeaudLaurent: 2-adic valuation compatible on odd k; real logs lose at C1=1 and placeholder 1000")
print("  bugeaud_laurent_unconditional_nogo; bugeaud_laurent_1996_two_logs/p_adic_LLL_reduction stay def Prop")
print("  does not fork Mathlib; no Iwasawa log_p / Bugeaud-Laurent 1996 / p-adic LLL / S2(32) dim 1")
print("  PAdicLLL: PadicInt alias Z_p; not_A_le_B_add_ten_of_sol / of_gap3 (A in [B,B+10] is false)")
print("  p_adic_LLL_unconditional_nogo; p_adic_LLL_reduction/LLL_reduces_bound_to_B0 stay def Prop")
print("  four_le_C1_padic_placeholder=4<=1000 does not bound B; no 977 check_gap3_range shards")
print("  floor lattice b1=(1,0) has Euclidean length 1 < B0; lll_euclidean_lower_bound_fails")
print("  nat_int_form_has_kernel: naive u*a+v*C1 always vanishes at (C1,-a)")
print("  unbounded |u alpha + v| > exp(-B0) fails by Dirichlet; exp(-B0) < 1/C1")
print("  LLL_reduces_bound_to_B0_theorem / v25_draft stay def Prop; Real.log keeps choice")
print("  PAdicLLL_ZeroAxiom: Nat.sqrt C1 < B0; displayed kernel in box without a solution")
print("  LLL_reduces_bound_to_B0_zero_axiom stays def Prop; not a minted v25 tag")
print("  BealMatveevBealV25Rank3: separate Lake target; not in default BealMatveevBeal globs")
print("  wraps gap3_B_lt_A_of_sol, |Lambda|<1/B, rank-3 ||v||<32; LLL_reduces_bound_to_B0 stays def Prop")
print("  C_LLL_v25=C1_floor not C1^2; B0/C>1/B is true; |Lambda|>=B0/C fails on a solution")
print("  does not claim Euclidean >= B0; does not import MatveevThm14General; v25 not minted")
print("  matveev_gap3_lower stays the integer-gap B<=B0 close; not a minted v25 tag")
print("  not a minted v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations tag")
print("  bare-real matveev_thm14_n2_real_explicit stays false def Prop")
print("  concept DOI 10.5281/zenodo.22379293, slug beal-level-26-foundations")
print("  BealMatveevBealV25B0Search: separate Lake target; B<1000 no-sol via mod16+fourth-root")
print("  check_range is foldl; ten shards of 100; check_range_true_of_all is the foldl invariant")
print("  |Lambda| <= 2/B^9 on B>=100; abs_Lambda_ge_inv_B_pow_eight stays def Prop")
print("  LLLTargetB8: |Lambda|>=B^{-8} and LLL_reduces_C1_to_lt_nine stay def Prop")
print("  C_LLL=10^48 L' det C^2 lambda1=C; C_LLL_3=10^30 L3 det C lambda1=1 not 10")
print("  C1_LLL_target=8 < typical 30-50; C1'>=9 does not beat 2/B^9")
print("  v_combo3 length >=4 C_3 not C_3|Lambda|; v_short'_mem_L' stays def Prop")
print("  no_sol_of_abs_Lambda_ge_B_pow_neg_eight is the implication, not an inhabitant")
print("  Gap3B0Million: 10k-shard foldl wiring; allShardsTrue_eq_true stays def Prop")
print("  no committed Gap3Shards; not under Beal/Matveev; B<1000 remains the closed slice")
print("  check_B_true_no_sol extracts Bool checker; gap3_B_le_B0_no_solution stays def Prop")
print("  not 100 native_decide shards to 10000; popcount is not a sound reject; v25 not minted")
print("  LLLTargetB8_C1_lower_bound: C1'<=8 impossible on a solution via 2/B^9 < 1/B^8")
print("  LLL_reduces_C1_to_lt_nine iff no B>=B0 solution; LLL_cannot_reach_B8 stays def Prop")
print("  DarmonMerelFrey4413: Frey y^2=x(x-A^4)(x+B^4) Delta=16 A^8 B^8 (A^4+B^4)^2")
print("  13|26 C lowers, 13∤8 A need not; level_32_no_newform/ribet stay def Prop; no new axiom")
print("  Level32Table: LMFDB 32a1 q-exp via F_p counts; a3=a5 match; p=29 mismatches good red")
print("  level_32_no_newform_for_Frey_gap3 stays def Prop; dim=1 is LMFDB data not Kraus empty")
print("  Level928Table: 29 divides at most one of A,B,C; 13|v29(Delta) on 29|C; 928 if 29|AB")
print("  level_928_no_match_bad_29 stays def Prop; dim=77 is LMFDB data not a 3-name table")
print("  Ribet29C_Lowering: v29(Delta)=26 v29(C) via padicValNat; 13|v on 29|C")
print("  a7=-4 vs 0 on residue (2,3) mod 7; ribet_29C_lowers_to_32 / full 29|C stay def Prop")
print("  LLL_nogo_persists_after_Ribet29C is the e5a95f5 iff; no new axiom")
print("  Ribet29C_Residue16: 32a1 a11=0; frey_ap 11 1 6 = 0 matches; (1,6) not on-sol mod 11")
print("  mixed F_11: a11=0 at (4,3)/(7,3), a11=-4 at (2,6)/(9,6); (1,6) class has both")
print("  no_sol_ge_B0_29C_of_7_and_11 / full_29C_eliminated stay def Prop; (6,6) still matches a7")
print("  LLL_nogo_persists_after_Residue16 is the e5a95f5 iff; no new axiom")
print("  Ribet29C_Residue16_L23: 32a1 a23=0 not -6; (1,6) CRT lifts include a23=0 and a23=8")
print("  witness 15,69 is 23|B (bad red); residue_1_6_eliminated_at_23 stays def Prop")
print("  LLL_nogo_persists_after_L23 is the e5a95f5 iff; no new axiom")
print("  MazurIrreducibility13: 29|C and 29nmid AB => 29|j.den; Mazur/Ribet/image stay def Prop")
print("  no new axiom; darmon_merel_4413_axiom stays on BealTrueV25 only; ARCHIVE_4413.md")
print("  LLL_and_DarmonMerel_separate is the e5a95f5 iff; C-scaling not replaced")
print("  Inertia29Unramified: v29(c4)=0 and 29|Delta when 29|C 29nmid AB; Tate I_26k stays def Prop")
print("  ribet_unramified_at_l_if_13_dvd_vDelta / inertia_at_29_trivial_mod13 stay def Prop")
print("  LLL_nogo_persists_after_Inertia is the e5a95f5 iff; no new axiom")
print("  SerreImage13: 32a1 j=1728 inhabited; 13==1 mod4; |SL2(F13)|=2184; 48<2184")
print("  image_32a1_mod13_small / serre_large_image / darmon_merel_4413_full stay def Prop")
print("  no serre_large_image_13_axiom; Frey j!=1728 when 29|C; LLL e5a95f5 separate")
print("  four gaps scaffold: Mazur irr, Tate I29, modularity+Ribet 32, Serre vs 32a1 48<2184")
print("  MazurIrreducibilityFull / TateGalois / SerreImageFull: numerics re-exported, Galois def Prop")
print("  no new axiom; darmon_merel_4413_four_gaps stays def Prop; main 6247c63 axiom-free")
print("  Mazur_X0_13: Fricke j(t), f roots 7,9 mod29, v(t) in {26k,-2k}; Mazur via X0(13) stays def Prop")
print("  Tate_I29_Inertia / Ribet_Level32 / Serre_Large_vs_CM_Small: Galois stays def Prop")
print("  no local F29 close; 48<2184 is not False without the Galois iso")
print("  Ribet abstract: 928/29=32 numeral, 29 nmid 32; abstract Ribet / Frey-needs-Wiles stay def Prop")
print("  Serre CM numerics: 2^2+3^2=13, 2(12)^2=288, 288/48=6; y^2=x^3-x has j=1728 not 32a1")
print("  card_image_32a1_le_48_via_CM / rho_Frey iso stay def Prop; no Wiles")
print("  X0_26_Full2Torsion: Frey cubic splits at 0,A^4,-B^4 over Q; Kenku 26 not in cyclic list")
print("  LMFDB 26.42.2.a.1 Weierstrass + Gonzalez even model; (0,+-1) native_decide, f(0)=1!=49")
print("  genus2 is the LMFDB numeral; J0_26_rank0 / X0_26_Q_eq_known / Kenku stay def Prop")
print("  full2+13=>26-isogeny / X0(26) cusps-only / mazur via X0(26) stay def Prop; no kenku axiom")
print("  v29(j)=-26k shows j not integral; Kenku emptiness is stronger than a CM j-list")
print("  Tate_I29 Qp: Padic.valuation Delta = 26 v(C); exists Qp unit of that val (Delta itself)")
print("  truncated j(q)=q^{-1}+744+196884 q; v(j^{-1})=26k=v(Delta); not the Tate parameter")
print("  Tate_q / uniformization / inertia stay def Prop; no new axiom on BealTrueV25")
print("  J0_26 BSD: Cremona 26a1 Delta=-17576 L/Omega=1/3; 26b1 Delta=-1664 L/Omega=1/7")
print("  143a1 template has L(E,1)=0 rank 1, wrong sign; Kolyvagin rank0 stays def Prop")
print("  X0_26 mwrank skeleton: |Sel2|=1 and 2^0=1 numerals, tors Nats 3 and 7, 3*7=21")
print("  J0_26_rank0_via_mwrank / J0_26_Q_tors_21 / mwrank_skeleton_complete stay def Prop")
print("  TwoDescent_26a1_26: relocated kernel; Sel2_card=1, certified_mwrank display 0, 1=1->0=0")
print("  RankZero_from_Selmer is 1=1, not MW; J0_26_rank0 stays def Prop on X0_26; no BealTrueV25/")
print("  BSD_MordellWeil: Mathlib Point AddCommGroup add_comm; IsRankZero is Subsingleton")
print("  not_IsRankZero on 26a1/26b1 via (4,4)/(1,0); MW_rank_zero / BSD_rank_statement stay def Prop")
print("  docs/X0_26_SECTION_8994d38.md: single root lakefile; local Level26 vendor; no Towers/; no v25 mint")
print("  without Wiles skeletons: Tate_Frey_Conductor_29, Mazur_X0_13_No_Isogeny,")
print("  Ribet_Level_Lowering_29_to_32, Kolyvagin_MW_Rank0_26a1_26b1 stay def Prop")
print("  docs/roadmap_without_wiles: X0(13)(Q) infinite; IsRankZero false; local Level26 vendor")
print("  beal-conjecture stays beal-conjecture; this repo stays foundations-level-26")
PY
