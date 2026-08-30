#!/bin/bash
set -euo pipefail

PYTHON_BIN="${PYTHON_BIN:-python3}"

echo "[post-merge] Checking Python dependencies..."
if "$PYTHON_BIN" - <<'PY'
from importlib.util import find_spec

# These are the import names for the distributions in requirements.txt.
required_modules = (
    "fastapi",
    "uvicorn",
    "pydantic",
    "stripe",
    "pytest",
    "httpx",
    "requests",
)
missing = [name for name in required_modules if find_spec(name) is None]
if missing:
    print("Missing modules: " + ", ".join(missing))
    raise SystemExit(1)
PY
then
  echo "[post-merge] Existing Python dependencies are ready; skipping reinstall."
else
  echo "[post-merge] Installing missing Python dependencies with uv..."
  if ! command -v uv >/dev/null 2>&1; then
    echo "[post-merge] ERROR: uv is required when declared Python dependencies are missing." >&2
    exit 1
  fi
  uv pip install --target=.pythonlibs -r requirements.txt --quiet
fi

echo "[post-merge] Syntax-checking core modules..."
"$PYTHON_BIN" -m py_compile zerobeacon_mf_1000_main.py \
  core/keystore.py core/tier_guard.py core/auth.py core/beacon.py

echo "[post-merge] Syntax-checking all 20 routers..."
"$PYTHON_BIN" -m py_compile routers/*.py

echo "[post-merge] Done."
