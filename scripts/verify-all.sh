#!/usr/bin/env bash
set -euo pipefail

lake build Beal
lake build Beal.Mazur.Gates.FoundationsIntegration_26
python3 scripts/check_level26_replay.py
lake build Beal.Mazur.Gates.Descent_26_PadicCertificates
python3 scripts/j0_26_decomp_certificate.py --check
lake build Beal.Mazur.Gates.J0_26_Decomp
python3 scripts/formal_immersion_26_certificate.py --check
lake build Beal.Mazur.Gates.FormalImmersion_26
lake build Beal.Final.ConditionalBealTheorem
lake build Beal.Mazur.Gates.Descent_26_SelmerCardinality
lake build Beal.Modular.Level26_GeometryBridge
bash scripts/check-v11-release.sh
bash scripts/check-b20-axioms.sh

echo "OK: complete Beal validation set passed"