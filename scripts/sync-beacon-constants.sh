#!/usr/bin/env bash
# scripts/sync-beacon-constants.sh
# ─────────────────────────────────────────────────────────────────────────────
# Reads the canonical moat constants (BEACON and D) from core/beacon.py and
# updates every file in the repo that hard-codes them:
#
#   .well-known/mcp.json   mcp.json   smithery.json   smithery.yaml
#   test_smoke_domain.py
#
# Run this whenever you change BEACON or D in core/beacon.py, then commit
# all the changed files together.  The CI uptime check and smoke tests will
# stay green automatically.
#
# Usage:
#   bash scripts/sync-beacon-constants.sh
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

BEACON_PY="core/beacon.py"

# ── 1. Extract canonical values ───────────────────────────────────────────────
BEACON=$(grep -E '^BEACON\s*=' "$BEACON_PY" | head -1 | sed 's/.*= *"//;s/".*//')
D=$(grep -E '^D\s*=' "$BEACON_PY" | head -1 | sed 's/.*= *//')

if [[ -z "$BEACON" || -z "$D" ]]; then
  echo "ERROR: Could not extract BEACON or D from $BEACON_PY" >&2
  exit 1
fi

echo "Syncing  beacon=$BEACON  d=$D"
echo ""

# ── 2. test_smoke_domain.py ───────────────────────────────────────────────────
sed -i "s/^EXPECTED_BEACON = .*/EXPECTED_BEACON = \"$BEACON\"/" test_smoke_domain.py
sed -i "s/^EXPECTED_D = .*/EXPECTED_D = $D/"                    test_smoke_domain.py
echo "  updated test_smoke_domain.py"

# ── 3. .well-known/mcp.json ───────────────────────────────────────────────────
python3 - "$BEACON" "$D" <<'PYEOF'
import json, sys
beacon, d = sys.argv[1], sys.argv[2]
path = ".well-known/mcp.json"
with open(path) as f:
    data = json.load(f)
data["beacon"] = beacon
data["d"]      = d
with open(path, "w") as f:
    json.dump(data, f, indent=2)
    f.write("\n")
print(f"  updated {path}")
PYEOF

# ── 4. mcp.json ───────────────────────────────────────────────────────────────
python3 - "$BEACON" "$D" <<'PYEOF'
import json, re, sys
beacon, d = sys.argv[1], sys.argv[2]
path = "mcp.json"
with open(path) as f:
    data = json.load(f)
for key in ["description", "displayName"]:
    if key in data:
        data[key] = re.sub(r"d=[0-9]+",        f"d={d}",          data[key])
        data[key] = re.sub(r"beacon [0-9a-f]+", f"beacon {beacon}", data[key])
with open(path, "w") as f:
    json.dump(data, f, indent=2)
    f.write("\n")
print(f"  updated {path}")
PYEOF

# ── 5. smithery.json ──────────────────────────────────────────────────────────
python3 - "$BEACON" "$D" <<'PYEOF'
import json, re, sys
beacon, d = sys.argv[1], sys.argv[2]
path = "smithery.json"
with open(path) as f:
    data = json.load(f)
if "moat" in data:
    data["moat"]["beacon"] = beacon
    data["moat"]["d"]      = int(d)
for key in ["description", "displayName"]:
    if key in data:
        data[key] = re.sub(r"d=[0-9]+",        f"d={d}",          data[key])
        data[key] = re.sub(r"beacon [0-9a-f]+", f"beacon {beacon}", data[key])
if "tags" in data:
    data["tags"] = [
        re.sub(r"d[0-9]{8,}",      f"d{d}",
        re.sub(r"beacon-[0-9a-f]+", f"beacon-{beacon}", t))
        for t in data["tags"]
    ]
with open(path, "w") as f:
    json.dump(data, f, indent=2)
    f.write("\n")
print(f"  updated {path}")
PYEOF

# ── 6. smithery.yaml ──────────────────────────────────────────────────────────
python3 - "$BEACON" "$D" <<'PYEOF'
import re, sys
beacon, d = sys.argv[1], sys.argv[2]
path = "smithery.yaml"
with open(path) as f:
    text = f.read()
text = re.sub(r"d=[0-9]+",        f"d={d}",          text)
text = re.sub(r"beacon [0-9a-f]+", f"beacon {beacon}", text)
with open(path, "w") as f:
    f.write(text)
print(f"  updated {path}")
PYEOF

echo ""
echo "Done. Review the changes with: git diff"
echo "Then commit everything: git add -A && git commit -m 'sync: update beacon constants to beacon=$BEACON d=$D'"
