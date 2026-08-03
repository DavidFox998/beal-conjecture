"""
Persistent API key store for Zerobeacon MF 1000.

Keys survive server restarts by writing to a JSON file. The file is kept at
KEY_PATH (writable on Fly.io). On startup the main app calls `load()`.

Key format:  zbk_<32 hex chars>
Tier values: "free" | "pro_10" | "pro_100" | "enterprise_1000"
"""

import json, os, secrets, time
from pathlib import Path

# ---------------------------------------------------------------------------
# Storage path — prefer /app/data (Fly volume), fall back to /tmp
# ---------------------------------------------------------------------------
_DATA_DIR = Path("/app/data") if Path("/app/data").exists() else Path("/tmp")
KEY_PATH  = _DATA_DIR / "api_keys.json"

# ---------------------------------------------------------------------------
# Tier ranking (higher = more access)
# ---------------------------------------------------------------------------
TIER_RANK: dict[str, int] = {
    "free":             0,
    "pro_10":           1,
    "pro_100":          2,
    "enterprise_1000":  3,
}

# ---------------------------------------------------------------------------
# In-memory store  {api_key: {"tier": str, "email": str, "created_at": int}}
# ---------------------------------------------------------------------------
_store: dict[str, dict] = {}


def load() -> None:
    """Load keys from disk into memory.  Safe to call multiple times."""
    global _store
    if KEY_PATH.exists():
        try:
            with KEY_PATH.open() as f:
                _store = json.load(f)
            print(f"[keystore] loaded {len(_store)} keys from {KEY_PATH}", flush=True)
        except Exception as e:
            print(f"[keystore] could not load {KEY_PATH}: {e}", flush=True)
            _store = {}
    else:
        _store = {}


def _save() -> None:
    try:
        KEY_PATH.parent.mkdir(parents=True, exist_ok=True)
        with KEY_PATH.open("w") as f:
            json.dump(_store, f)
    except Exception as e:
        print(f"[keystore] could not save {KEY_PATH}: {e}", flush=True)


def issue_key(tier: str, email: str) -> str:
    """Generate a new API key for `email` at `tier`, persist it, return the key."""
    if tier not in TIER_RANK:
        raise ValueError(f"Unknown tier: {tier}")
    key = "zbk_" + secrets.token_hex(16)
    _store[key] = {"tier": tier, "email": email, "created_at": int(time.time())}
    _save()
    print(f"[keystore] issued {key[:12]}… tier={tier} email={email}", flush=True)
    return key


def lookup(api_key: str) -> dict | None:
    """Return the record for `api_key`, or None if not found."""
    return _store.get(api_key)


def tier_of(api_key: str) -> str:
    """Return the tier string for `api_key`, or 'free' if not found."""
    rec = _store.get(api_key)
    return rec["tier"] if rec else "free"


def rank_of(tier: str) -> int:
    return TIER_RANK.get(tier, 0)


def list_keys() -> list[dict]:
    """Return all key records (without the raw key value) for admin use."""
    return [
        {"key_prefix": k[:12] + "…", "tier": v["tier"],
         "email": v["email"], "created_at": v["created_at"]}
        for k, v in _store.items()
    ]
