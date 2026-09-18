#!/usr/bin/env bash
# Overlay root Beal oleans onto the path-package Beal/ prefix.
#
# require beal_level_26_foundations from "Level26/BealLevel26Foundations"
# puts vendor .lake/build/lib first on LEAN_PATH. That package must
# compile Beal.Foundations.J0_26_Decomp (Step36 imports it), so vendor
# owns the Beal/ directory. Lean then resolves Beal.Mazur.* and Beal.B*
# to vendor/.lake/build/lib/Beal/... and fails even when the olean
# exists in the root build.
#
# Keep vendor Beal/Foundations (J0). Point every other Beal child at
# the root build dir so lake build Beal / GeometryBridge can see them.
set -euo pipefail

root="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$root"

root_beal=".lake/build/lib/Beal"
ven_beal="Level26/BealLevel26Foundations/.lake/build/lib/Beal"

mkdir -p "$root_beal" "$ven_beal/Foundations"

abs_root_beal="$(cd "$root_beal" && pwd)"

for d in ArakelovRH Final Galois Mazur Modular Patching; do
  mkdir -p "$root_beal/$d"
  ln -sfn "$abs_root_beal/$d" "$ven_beal/$d"
done

# Top-level Beal.<name> modules (lakefile .one globs).
for name in \
  B00_OperaNumerorum \
  B01_Def \
  B01_Def_Core \
  B02_Frey \
  B02_Frey_Core \
  B03_Conductor \
  B03_Conductor_Core \
  B04_Modular \
  B04_Modular_Core \
  B04_QExpansion_Core \
  B05_HasseWiles \
  B05_HasseWiles_Core \
  B05_Modularity \
  B05_Modularity_Core \
  B06_Final \
  B06_Final_Core \
  B07_Galois \
  B07_Galois_Core \
  B08_LevelLowering \
  B08_LevelLowering_Core \
  B09_FinalContradiction \
  B09_FinalContradiction_Core \
  B10_RibetReal \
  B10_RibetReal_Core \
  B11_Epsilon \
  B11_Epsilon_Core \
  B12_RibetProof \
  B12_RibetProof_Core \
  B13_RibetRealDefs \
  B13_RibetRealDefs_Core \
  B14_FormRepresentation \
  B14_FreyConductor \
  B14_FreyConductor_Core \
  B14_FreyS2 \
  B14_FreyTate \
  B14_PrimeNotDvd_Core \
  B14_TateC4Nonzero \
  B14_TateInImpliesOrd1 \
  B15_LevelTo2 \
  B15_LevelTo2_Core \
  B15_RibetIterate \
  B16_BealFinal \
  B16_BealFinal_Core \
  B17_FreyRationalTwoTorsion \
  B17_FullE2 \
  B17_MazurIrreducible \
  B17_MazurIrreducible_Core \
  B17_MazurPrimeCoverage \
  B17_X0Moduli \
  B18_FreyIsElliptic \
  B18_FreyIsElliptic_Core \
  B19_BealFinalAssembly \
  B19_BealFinalAssembly_Core \
  B20_BealConjectureDone \
  B20_BealConjectureDone_Core \
  B20_Beal_Core \
  B21_FermatCorollary \
  B21_FermatCorollary_Core \
  ConditionalBealTheorem
do
  ln -sfn "$abs_root_beal/${name}.olean" "$ven_beal/${name}.olean"
  ln -sfn "$abs_root_beal/${name}.ilean" "$ven_beal/${name}.ilean"
done

# Root module Beal.olean sits beside the Beal/ directory.
ln -sfn "$(cd .lake/build/lib && pwd)/Beal.olean" \
  "Level26/BealLevel26Foundations/.lake/build/lib/Beal.olean"
ln -sfn "$(cd .lake/build/lib && pwd)/Beal.ilean" \
  "Level26/BealLevel26Foundations/.lake/build/lib/Beal.ilean"

echo "OK: vendor Beal/ overlays root Beal oleans; Foundations stays on the path package"
ls -ld "$ven_beal/Foundations" "$ven_beal/Mazur" "$ven_beal/Modular"
