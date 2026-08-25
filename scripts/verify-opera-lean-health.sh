#!/usr/bin/env bash
# Verify the strict Lean proof builds behind the Opera Numerorum README badges.
#
# This deliberately checks out each independent repository into a temporary
# directory and runs the same `lake exe cache get && lake build` command used
# by its GitHub Actions workflow.  A failure stops the script immediately.

set -euo pipefail

export PATH="$HOME/.elan/bin:$PATH"

if ! command -v git >/dev/null || ! command -v lake >/dev/null; then
  echo "git and Lean's lake command must be installed." >&2
  exit 1
fi

workdir=$(mktemp -d "${TMPDIR:-/tmp}/opera-lean-health-XXXXXX")
trap 'rm -rf "$workdir"' EXIT

repositories=(
  "arakelov-positivity-rh-core"
  "birch-swinnerton-dyer-143"
  "bost-connes"
  "p-vs-np"
  "opera-sieve"
  "morningstar-project"
  "Certifications"
)

build_project() {
  local repository="$1"
  local checkout="$workdir/$repository"
  local project_dir="$checkout"

  echo "=== $repository ==="
  git clone --depth 1 "https://github.com/DavidFox998/$repository.git" "$checkout"

  # Certifications records the evidence; its proof-health workflow builds the
  # canonical Morning Star Lean source that it certifies.
  if [[ "$repository" == "Certifications" ]]; then
    git clone --depth 1 \
      "https://github.com/DavidFox998/morningstar-project.git" \
      "$checkout/proof-source"
    project_dir="$checkout/proof-source"
  fi

  (
    cd "$project_dir"
    lake exe cache get
    lake build
  )

  rm -rf "$checkout"
}

for repository in "${repositories[@]}"; do
  build_project "$repository"
done

echo "All seven proof-health builds passed."