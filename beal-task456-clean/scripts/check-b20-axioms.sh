#!/usr/bin/env bash
# Audit the final B20 theorem's complete transitive axiom footprint.

set -euo pipefail

readonly DECLARATION="Beal20Done.beal_conjecture_conditional_on_enriched_plan"
readonly -a EXPECTED_DOMAIN_AXIOMS=(
  "Beal.FreyTate.TateStep2.frey_conductor_data"
  "Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one"
  "Beal.FreyTate.wiles_modularity"
)
readonly -a ALLOWED_FOUNDATIONAL_AXIOMS=(
  "propext"
  "Classical.choice"
  "Quot.sound"
)

audit_file=""
output_file=$(mktemp /tmp/beal-b20-axioms-XXXXXX.txt)
expected_file=$(mktemp /tmp/beal-b20-expected-XXXXXX.txt)
actual_file=$(mktemp /tmp/beal-b20-actual-XXXXXX.txt)
allowed_file=$(mktemp /tmp/beal-b20-allowed-XXXXXX.txt)
trap 'rm -f "$audit_file" "$output_file" "$expected_file" "$actual_file" "$allowed_file"' EXIT

if [[ -n "${B20_AXIOM_AUDIT_OUTPUT:-}" ]]; then
  cp "$B20_AXIOM_AUDIT_OUTPUT" "$output_file"
else
  audit_file=$(mktemp /tmp/beal-b20-axioms-XXXXXX.lean)
  cat >"$audit_file" <<EOF
import Beal.B20_BealConjectureDone
#print axioms $DECLARATION
EOF

  if ! lake env lean "$audit_file" 2>&1 | tee "$output_file"; then
    echo "::error title=B20 axiom audit failed::Lean could not inspect $DECLARATION"
    exit 1
  fi
fi

if grep -Fq "sorryAx" "$output_file"; then
  echo "::error title=Forbidden B20 dependency::$DECLARATION transitively depends on sorryAx"
  exit 1
fi

axiom_block=$(
  awk -v marker="'$DECLARATION' depends on axioms:" '
    index($0, marker) { found = 1 }
    found { print }
    found && /\]$/ { exit }
  ' "$output_file"
)
if [[ -z "$axiom_block" ]]; then
  echo "::error title=B20 axiom audit failed::Could not parse the #print axioms output for $DECLARATION"
  exit 1
fi

printf '%s\n' "${EXPECTED_DOMAIN_AXIOMS[@]}" | sort -u >"$expected_file"
printf '%s\n' "${EXPECTED_DOMAIN_AXIOMS[@]}" "${ALLOWED_FOUNDATIONAL_AXIOMS[@]}" |
  sort -u >"$allowed_file"

sed -E '1s/^.*depends on axioms: \[//; $s/\]$//' <<<"$axiom_block" |
  tr ',' '\n' |
  sed -E 's/^[[:space:]]+//; s/[[:space:]]+$//' |
  sed '/^$/d' |
  sort -u >"$actual_file"

unexpected=$(comm -23 "$actual_file" "$allowed_file")
if [[ -n "$unexpected" ]]; then
  echo "::error title=Unexpected B20 axiom::$DECLARATION gained an unapproved transitive dependency"
  printf 'Unexpected axioms:\n%s\n' "$unexpected"
  exit 1
fi

actual_domain=$(grep -E '^Beal\.' "$actual_file" || true)
expected_domain=$(cat "$expected_file")
if [[ "$actual_domain" != "$expected_domain" ]]; then
  echo "::error title=B20 axiom budget changed::$DECLARATION must use exactly the approved domain axioms"
  printf 'Expected domain axioms:\n%s\n' "$expected_domain"
  printf 'Actual domain axioms:\n%s\n' "${actual_domain:-<none>}"
  exit 1
fi

echo "::notice title=B20 axiom graph clean::$DECLARATION has no sorryAx and uses exactly ${#EXPECTED_DOMAIN_AXIOMS[@]} approved domain axioms"
printf 'Approved domain axioms:\n%s\n' "$actual_domain"