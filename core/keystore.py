"""
Persistent API key store for Zerobeacon MF 1000.

Keys survive server restarts by writing to a JSON file. The file is kept at
KEY_PATH (writable on Fly.io). On startup the main app calls `load()`.

Key format:  zbk_<32 hex chars>
Tier values: "free" | "pro_10" | "pro_100" | "enterprise_1000"

Session IDs (from Stripe checkout success redirects) are cryptographically
random and known only to the paying customer — they serve as proof of payment
for the one-time key-retrieval flow.
"""

import json, os, secrets, time
from pathlib import Path

# ---------------------------------------------------------------------------
# Storage path — prefer /app/data (Fly volume), fall back to /tmp
# ---------------------------------------------------------------------------
_DATA_DIR = Path("/app/data") if Path("/app/data").exists() else Path("/tmp")
KEY_PATH     = _DATA_DIR / "api_keys.json"
SESSION_PATH = _DATA_DIR / "api_sessions.json"

# ---------------------------------------------------------------------------
# Tier ranking (higher = more access)
# ---------------------------------------------------------------------------
TIER_RANK: dict[str, int] = {
    "free":             0,
    "pro_10":           1,
    "pro_100":          2,
    "enterprise_1000":  3,
}

TIER_LABEL: dict[str, str] = {
    "free":             "FREE",
    "pro_10":           "PRO $10/month",
    "pro_100":          "PRO $100/month",
    "enterprise_1000":  "ENTERPRISE $1000/research",
}

# ---------------------------------------------------------------------------
# In-memory stores
#   _store:        api_key  → {"tier": str, "email": str, "created_at": int}
#   _session_map:  session_id → api_key   (Stripe checkout session IDs)
# ---------------------------------------------------------------------------
_store:       dict[str, dict] = {}
_session_map: dict[str, str]  = {}


def load() -> None:
    """Load keys (and sessions) from disk into memory. Safe to call multiple times."""
    global _store, _session_map
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

    if SESSION_PATH.exists():
        try:
            with SESSION_PATH.open() as f:
                _session_map = json.load(f)
            print(f"[keystore] loaded {len(_session_map)} sessions", flush=True)
        except Exception as e:
            print(f"[keystore] could not load {SESSION_PATH}: {e}", flush=True)
            _session_map = {}
    else:
        _session_map = {}


def _save() -> None:
    try:
        KEY_PATH.parent.mkdir(parents=True, exist_ok=True)
        with KEY_PATH.open("w") as f:
            json.dump(_store, f)
        with SESSION_PATH.open("w") as f:
            json.dump(_session_map, f)
    except Exception as e:
        print(f"[keystore] could not save: {e}", flush=True)


def issue_key(tier: str, email: str, session_id: str | None = None) -> str:
    """
    Generate a new API key for `email` at `tier`, persist it, return the key.
    If `session_id` is provided (Stripe checkout session), bind the key to it
    so the customer can retrieve it via the success-redirect proof-of-payment flow.
    """
    if tier not in TIER_RANK:
        raise ValueError(f"Unknown tier: {tier}")
    key = "zbk_" + secrets.token_hex(16)
    _store[key] = {"tier": tier, "email": email, "created_at": int(time.time())}
    if session_id:
        _session_map[session_id] = key
    _save()
    print(f"[keystore] issued {key[:12]}… tier={tier} email={email}", flush=True)
    return key


def lookup(api_key: str) -> dict | None:
    """Return the record for `api_key`, or None if not found."""
    return _store.get(api_key)


def lookup_by_session(session_id: str) -> str | None:
    """
    Return the API key bound to a Stripe `session_id`, or None.
    The session_id is cryptographically random and only the paying customer
    receives it in their browser URL — it is not guessable from an email.
    """
    return _session_map.get(session_id)


def tier_of(api_key: str) -> str:
    """Return the tier string for `api_key`, or 'free' if not found."""
    rec = _store.get(api_key)
    return rec["tier"] if rec else "free"


def rank_of(tier: str) -> int:
    return TIER_RANK.get(tier, 0)


def check_access(api_key: str | None, required_tier: str) -> tuple[bool, str]:
    """
    Return (allowed, reason).
    FREE routes always pass. Paid routes require a key of sufficient rank.
    """
    if TIER_RANK.get(required_tier, 0) == 0:
        return True, "free"
    if not api_key:
        return False, f"X-API-Key header missing; {TIER_LABEL.get(required_tier, required_tier)} required"
    rec = lookup(api_key)
    if rec is None:
        return False, "Unknown API key"
    caller_rank = TIER_RANK.get(rec["tier"], 0)
    required_rank = TIER_RANK.get(required_tier, 0)
    if caller_rank >= required_rank:
        return True, rec["tier"]
    return False, (
        f"Key tier '{rec['tier']}' is below required tier '{required_tier}'. "
        "Upgrade at https://zerobeacon-mf-1000.fly.dev/pricing"
    )


def list_keys() -> list[dict]:
    """Return all key records (without the raw key value) for admin use."""
    return [
        {"key_prefix": k[:12] + "…", "tier": v["tier"],
         "email": v["email"], "created_at": v["created_at"]}
        for k, v in _store.items()
    ]
