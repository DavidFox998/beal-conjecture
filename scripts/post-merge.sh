#!/bin/bash
set -e

echo "[post-merge] Installing Python dependencies..."
pip install --target=.pythonlibs -r requirements.txt --quiet

echo "[post-merge] Syntax-checking core modules..."
python -m py_compile zerobeacon_mf_1000_main.py \
  core/keystore.py core/tier_guard.py core/auth.py core/beacon.py

echo "[post-merge] Syntax-checking all 20 routers..."
python -m py_compile routers/*.py

echo "[post-merge] Done."
