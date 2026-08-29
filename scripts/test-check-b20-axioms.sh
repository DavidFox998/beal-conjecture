#!/usr/bin/env bash

set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
fixture_dir=$(mktemp -d /tmp/beal-b20-axiom-tests-XXXXXX)
trap 'rm -rf "$fixture_dir"' EXIT

cat >"$fixture_dir/allowed.txt" <<'EOF'
'Beal20Done.beal_conjecture_conditional_on_enriched_plan' depends on axioms: [propext,
 Classical.choice,
 Quot.sound,
 Beal.FreyTate.wiles_modularity,
 Beal.FreyTate.TateStep2.frey_conductor_data,
 Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one]
EOF

cat >"$fixture_dir/unapproved.txt" <<'EOF'
'Beal20Done.beal_conjecture_conditional_on_enriched_plan' depends on axioms: [propext,
 Beal.FreyTate.wiles_modularity,
 Beal.FreyTate.TateStep2.frey_conductor_data,
 Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one,
 Beal.Unapproved.hidden_boundary]
EOF

cat >"$fixture_dir/sorry.txt" <<'EOF'
'Beal20Done.beal_conjecture_conditional_on_enriched_plan' depends on axioms: [propext,
 sorryAx,
 Beal.FreyTate.wiles_modularity,
 Beal.FreyTate.TateStep2.frey_conductor_data,
 Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one]
EOF

B20_AXIOM_AUDIT_OUTPUT="$fixture_dir/allowed.txt" \
  bash "$script_dir/check-b20-axioms.sh" >"$fixture_dir/allowed.log"
grep -Fq "::notice title=B20 axiom graph clean::" "$fixture_dir/allowed.log"

if B20_AXIOM_AUDIT_OUTPUT="$fixture_dir/unapproved.txt" \
    bash "$script_dir/check-b20-axioms.sh" >"$fixture_dir/unapproved.log" 2>&1; then
  echo "FAIL: unapproved axiom fixture passed"
  exit 1
fi
grep -Fq "::error title=Unexpected B20 axiom::" "$fixture_dir/unapproved.log"

if B20_AXIOM_AUDIT_OUTPUT="$fixture_dir/sorry.txt" \
    bash "$script_dir/check-b20-axioms.sh" >"$fixture_dir/sorry.log" 2>&1; then
  echo "FAIL: sorryAx fixture passed"
  exit 1
fi
grep -Fq "::error title=Forbidden B20 dependency::" "$fixture_dir/sorry.log"

echo "PASS: B20 axiom audit accepts the approved footprint and rejects unapproved axioms and sorryAx"