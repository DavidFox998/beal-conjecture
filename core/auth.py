"""
core/auth.py — API key store and tier-gating helpers for zerobeacon-mf-1000

Tiers (ascending rank):
  free (0)  →  pro_10 (1)  →  pro_100 (2)  →  enterprise_1000 (3)

An API key grants access to all tiers at or below the key's tier rank.
FREE routes (rank 0) never require a key.
"""

import secrets
import time
from typing import Optional

# ── Tier rank table ───────────────────────────────────────────────────────────

TIER_RANK: dict[str, int] = {
    "free":            0,
    "pro_10":          1,
    "pro_100":         2,
    "enterprise_1000": 3,
}

TIER_LABEL: dict[str, str] = {
    "free":            "FREE",
    "pro_10":          "PRO $10/month",
    "pro_100":         "PRO $100/month",
    "enterprise_1000": "ENTERPRISE $1000/research",
}

# ── In-memory key store ───────────────────────────────────────────────────────

# api_key     → {"tier": str, "email": str, "created_at": int}
_key_store:       dict[str, dict] = {}
# email       → api_key  (one active key per email)
_email_to_key:    dict[str, str]  = {}
# session_id  → api_key  (Stripe checkout session ID — single-use proof of payment)
_session_to_key:  dict[str, str]  = {}


def generate_api_key() -> str:
    """Return a fresh, random API key with a recognisable prefix."""
    return "zbk_" + secrets.token_hex(24)


def register_key(email: str, tier: str, session_id: Optional[str] = None) -> str:
    """
    Create (or replace) the API key for *email* at *tier*.
    Optionally bind it to a Stripe *session_id* so the customer can retrieve
    it from the checkout-success redirect (proof of payment, not guessable).
    Returns the new key.
    """
    # Revoke any existing key for this email
    old_key = _email_to_key.get(email)
    if old_key:
        _key_store.pop(old_key, None)

    key = generate_api_key()
    _key_store[key] = {
        "tier":       tier,
        "email":      email,
        "created_at": int(time.time()),
    }
    _email_to_key[email] = key
    if session_id:
        _session_to_key[session_id] = key
    print(f"🔑 API key issued  email={email}  tier={tier}  key={key[:12]}…", flush=True)
    return key


def lookup_key(api_key: str) -> Optional[dict]:
    """Return the record for *api_key*, or None if unknown."""
    return _key_store.get(api_key)


def lookup_key_by_session(session_id: str) -> Optional[str]:
    """
    Return the API key bound to a Stripe *session_id*, or None.

    The session_id comes from Stripe's checkout success redirect and is
    cryptographically random — only the paying customer receives it in their
    browser URL.  It is NOT guessable from an email address alone.
    """
    return _session_to_key.get(session_id)


def lookup_key_by_email(email: str) -> Optional[str]:
    """
    Return the current API key for *email*, or None.
    INTERNAL USE ONLY — never expose the raw key to an unauthenticated caller
    based solely on email; email addresses are not secrets.
    """
    return _email_to_key.get(email)


def list_keys() -> list[dict]:
    """Return a sanitised summary of all active keys (no raw key values)."""
    return [
        {
            "email":      v["email"],
            "tier":       v["tier"],
            "created_at": v["created_at"],
            "key_prefix": k[:12] + "…",
        }
        for k, v in _key_store.items()
    ]


# ── Tier detection from route tags ────────────────────────────────────────────

_ENTERPRISE_TAGS = {
    "ENTERPRISE-50", "ENTERPRISE-100", "ENTERPRISE-200",
    "ENTERPRISE-500", "ENTERPRISE-1000",
}


def tags_to_tier(tags: list[str]) -> str:
    """
    Map a route's tag list to the minimum tier required to call it.

    Tag conventions used by the routers:
      FREE         → free
      PRO-10       → pro_10
      PRO-100      → pro_100
      ENTERPRISE-* → enterprise_1000
    """
    tag_set = set(tags)
    if tag_set & _ENTERPRISE_TAGS:
        return "enterprise_1000"
    if "PRO-100" in tag_set:
        return "pro_100"
    if "PRO-10" in tag_set:
        return "pro_10"
    return "free"


# ── Access check ──────────────────────────────────────────────────────────────

def check_access(api_key: Optional[str], required_tier: str) -> tuple[bool, str]:
    """
    Return (allowed, reason).

    * FREE routes are always allowed.
    * Paid routes require a valid key whose tier rank ≥ required rank.
    """
    if TIER_RANK.get(required_tier, 0) == 0:
        return True, "free"

    if not api_key:
        return False, f"X-API-Key header missing; {TIER_LABEL[required_tier]} required"

    record = lookup_key(api_key)
    if record is None:
        return False, "Unknown API key"

    caller_rank   = TIER_RANK.get(record["tier"], 0)
    required_rank = TIER_RANK.get(required_tier, 0)
    if caller_rank >= required_rank:
        return True, record["tier"]

    return False, (
        f"Key tier '{record['tier']}' is below required tier '{required_tier}'. "
        f"Upgrade at https://zerobeacon-mf-1000.fly.dev/pricing"
    )
