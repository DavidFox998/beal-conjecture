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

import json, os, secrets, tempfile, time
from pathlib import Path


class ResendPersistenceError(OSError):
    """Raised when the resend attempt counter cannot be durably committed to disk.

    The resend endpoint must treat this as a hard failure and return 503 rather
    than proceeding with the email — the cap must not be enforced only in memory.
    """

# ---------------------------------------------------------------------------
# Storage path — prefer /app/data (Fly volume), fall back to /tmp
# ---------------------------------------------------------------------------
_DATA_DIR = Path("/app/data") if Path("/app/data").exists() else Path("/tmp")
KEY_PATH     = _DATA_DIR / "api_keys.json"
SESSION_PATH = _DATA_DIR / "api_sessions.json"
RESEND_PATH  = _DATA_DIR / "resend_attempts.json"

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
#   _resend_store: session_id → [attempt_count, first_attempt_ts]
# ---------------------------------------------------------------------------
_store:        dict[str, dict]        = {}
_session_map:  dict[str, str]         = {}
_resend_store: dict[str, list]        = {}  # [count, first_ts]

# True  → resend_attempts.json loaded successfully (or never existed → fresh start).
# False → file existed but could not be read/parsed; resend endpoint must fail closed.
_resend_store_valid: bool = True


def load() -> None:
    """Load keys, sessions, and resend counters from disk into memory. Safe to call multiple times."""
    global _store, _session_map, _resend_store, _resend_store_valid
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

    if RESEND_PATH.exists():
        try:
            with RESEND_PATH.open() as f:
                _resend_store = json.load(f)
            _resend_store_valid = True
            print(f"[keystore] loaded {len(_resend_store)} resend counters from {RESEND_PATH}", flush=True)
        except Exception as e:
            # Do NOT reset to {} — a corrupt file must block resends, not reset limits.
            # The endpoint will fail closed while _resend_store_valid is False.
            _resend_store_valid = False
            print(
                f"[keystore] CRITICAL: resend counter file is unreadable/corrupt: {e}. "
                "Resend endpoint will return 503 until the file is replaced or removed.",
                flush=True,
            )
    else:
        _resend_store = {}
        _resend_store_valid = True


def _atomic_write(path: Path, data: object) -> None:
    """Write *data* as JSON to *path* atomically and durably.

    1. Writes to a temp file in the same directory.
    2. fsyncs the temp file (data contents durable).
    3. os.replace() renames the temp file to the target path.
    4. fsyncs the parent directory (rename metadata durable).

    A crash at any point leaves either the old or new complete file; a
    partial write is never visible to readers.
    """
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp_path: str | None = None
    try:
        with tempfile.NamedTemporaryFile(
            "w",
            dir=path.parent,
            suffix=".tmp",
            delete=False,
        ) as tmp:
            tmp_path = tmp.name
            json.dump(data, tmp)
            tmp.flush()
            os.fsync(tmp.fileno())
        os.replace(tmp_path, path)
        tmp_path = None  # replace succeeded; no cleanup needed
        # fsync the directory so the rename is durable across a crash/restart
        dir_fd = os.open(str(path.parent), os.O_RDONLY)
        try:
            os.fsync(dir_fd)
        finally:
            os.close(dir_fd)
    except Exception as e:
        if tmp_path is not None:
            try:
                os.unlink(tmp_path)
            except Exception:
                pass
        raise e


def _save() -> None:
    for path, data in (
        (KEY_PATH,     _store),
        (SESSION_PATH, _session_map),
        (RESEND_PATH,  _resend_store),
    ):
        try:
            _atomic_write(path, data)
        except Exception as e:
            print(f"[keystore] could not save {path.name}: {e}", flush=True)


def _save_resend() -> None:
    """Save only the resend counters atomically.

    On success, marks the resend store as valid (clears any prior load-failure
    flag) so subsequent requests can proceed normally.

    Raises `ResendPersistenceError` on any I/O failure so callers can fail
    closed rather than allowing a resend whose counter was not durably
    committed.
    """
    global _resend_store_valid
    try:
        _atomic_write(RESEND_PATH, _resend_store)
        _resend_store_valid = True
    except Exception as e:
        print(f"[keystore] CRITICAL: could not persist resend counter: {e}", flush=True)
        raise ResendPersistenceError(f"resend counter commit failed: {e}") from e


def issue_key(tier: str, email: str, session_id: str | None = None,
              stripe_customer_id: str | None = None) -> str:
    """
    Generate a new API key for `email` at `tier`, persist it, return the key.
    If `session_id` is provided (Stripe checkout session), bind the key to it
    so the customer can retrieve it via the success-redirect proof-of-payment flow.
    If `stripe_customer_id` is provided, store it so revocation can target the
    specific Stripe customer rather than matching solely by email.
    """
    if tier not in TIER_RANK:
        raise ValueError(f"Unknown tier: {tier}")
    key = "zbk_" + secrets.token_hex(16)
    record: dict = {"tier": tier, "email": email, "created_at": int(time.time())}
    if stripe_customer_id:
        record["stripe_customer_id"] = stripe_customer_id
    _store[key] = record
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
        "Upgrade at https://zerobeacon.ai/pricing"
    )


def revoke_by_customer_id(stripe_customer_id: str) -> int:
    """
    Downgrade all keys belonging to `stripe_customer_id` to the 'free' tier.

    Preferred revocation method — uses the Stripe customer ID stored at key
    issuance rather than email, so a cancellation for one subscription does
    not accidentally affect a renewed subscription at the same email address.

    Returns the number of keys that were downgraded.
    """
    cid = stripe_customer_id.strip()
    if not cid:
        return 0
    count = 0
    now = int(time.time())
    for record in _store.values():
        if record.get("stripe_customer_id") == cid and record.get("tier") != "free":
            record["tier"] = "free"
            record["cancelled_at"] = now
            count += 1
    if count:
        _save()
        print(f"[keystore] revoked {count} key(s) for customer={cid} → tier=free", flush=True)
    return count


def revoke_by_email(email: str) -> int:
    """
    Downgrade all keys belonging to `email` to the 'free' tier.

    Fallback revocation method used when no stripe_customer_id is stored on
    the key record. Prefer revoke_by_customer_id when a Stripe customer ID is
    available to avoid matching keys from a renewed subscription at the same
    email address.

    Returns the number of keys that were downgraded.
    """
    email = email.strip().lower()
    if not email:
        return 0
    count = 0
    now = int(time.time())
    for record in _store.values():
        if (record.get("email", "").strip().lower() == email
                and not record.get("stripe_customer_id")   # skip if ID present
                and record.get("tier") != "free"):
            record["tier"] = "free"
            record["cancelled_at"] = now
            count += 1
    if count:
        _save()
        print(f"[keystore] revoked {count} key(s) for {email} → tier=free", flush=True)
    return count


def downgrade_by_customer_id(stripe_customer_id: str, new_tier: str) -> int:
    """
    Downgrade all keys belonging to `stripe_customer_id` that are above `new_tier`
    to exactly `new_tier`.

    Used when a subscription is updated to a lower plan: an enterprise customer
    who downgrades to pro_10 must lose enterprise-level access immediately —
    not just on the next server restart.

    Returns the number of keys that were downgraded.
    """
    if new_tier not in TIER_RANK:
        raise ValueError(f"Unknown tier: {new_tier}")
    cid = stripe_customer_id.strip()
    if not cid:
        return 0
    new_rank = TIER_RANK[new_tier]
    count = 0
    now = int(time.time())
    for record in _store.values():
        if record.get("stripe_customer_id") == cid:
            old_rank = TIER_RANK.get(record.get("tier", "free"), 0)
            if old_rank > new_rank:
                record["tier"] = new_tier
                record["downgraded_at"] = now
                count += 1
    if count:
        _save()
        print(
            f"[keystore] downgraded {count} key(s) for customer={cid} → tier={new_tier}",
            flush=True,
        )
    return count


def downgrade_by_email(email: str, new_tier: str) -> int:
    """
    Downgrade all keys belonging to `email` that are above `new_tier` to
    exactly `new_tier`.

    Fallback for keys that pre-date stripe_customer_id tracking (i.e. keys
    that carry no customer ID).  Prefer downgrade_by_customer_id when a Stripe
    customer ID is available to avoid touching keys from a renewed subscription
    at the same email address.

    Returns the number of keys that were downgraded.
    """
    if new_tier not in TIER_RANK:
        raise ValueError(f"Unknown tier: {new_tier}")
    email = email.strip().lower()
    if not email:
        return 0
    new_rank = TIER_RANK[new_tier]
    count = 0
    now = int(time.time())
    for record in _store.values():
        if (record.get("email", "").strip().lower() == email
                and not record.get("stripe_customer_id")):   # skip if ID present
            old_rank = TIER_RANK.get(record.get("tier", "free"), 0)
            if old_rank > new_rank:
                record["tier"] = new_tier
                record["downgraded_at"] = now
                count += 1
    if count:
        _save()
        print(
            f"[keystore] downgraded {count} key(s) for {email} → tier={new_tier}",
            flush=True,
        )
    return count


def list_keys() -> list[dict]:
    """Return all key records (without the raw key value) for admin use."""
    return [
        {"key_prefix": k[:12] + "…", "tier": v["tier"],
         "email": v["email"], "created_at": v["created_at"]}
        for k, v in _store.items()
    ]


# ---------------------------------------------------------------------------
# Persistent resend-attempt counters
#   These survive process restarts so the 3-attempt cap cannot be bypassed by
#   waiting for a deploy or crash.
# ---------------------------------------------------------------------------

def _save_resend_best_effort() -> None:
    """Save resend counters with a best-effort write (no exception on failure).

    Used for background eviction only — a failed eviction save is not critical
    because expired entries are ignored on the next read anyway.
    """
    try:
        _atomic_write(RESEND_PATH, _resend_store)
    except Exception as e:
        print(f"[keystore] warning: eviction save of resend counters failed: {e}", flush=True)


def resend_get(session_id: str, ttl_seconds: int = 86_400) -> int:
    """
    Return the current resend attempt count for *session_id*.

    Raises `ResendPersistenceError` immediately if the counter store was not
    loaded successfully at startup (corrupt/unreadable file) — the endpoint
    must fail closed in that case.

    Evicts expired entries (older than *ttl_seconds*) before returning.
    Eviction saves use best-effort writes; failures are logged but do not
    raise (the entries are skipped on the next read regardless).
    """
    if not _resend_store_valid:
        raise ResendPersistenceError(
            "resend counter store is invalid — file was unreadable/corrupt at load time"
        )

    now    = time.time()
    cutoff = now - ttl_seconds

    # Evict all expired entries (amortised O(n) — only runs on resend calls)
    expired = [k for k, v in _resend_store.items() if v[1] < cutoff]
    if expired:
        for k in expired:
            del _resend_store[k]
        _save_resend_best_effort()

    entry = _resend_store.get(session_id)
    if entry is None:
        return 0
    count, ts = entry
    if ts < cutoff:
        del _resend_store[session_id]
        _save_resend_best_effort()
        return 0
    return count


def resend_increment(session_id: str,
                     ttl_seconds: int = 86_400,
                     max_entries: int = 10_000) -> int:
    """
    Increment the resend attempt count for *session_id* and persist it to disk.

    Raises `ResendPersistenceError` if the counter store is invalid (load
    failure) or if the disk commit fails — callers must not proceed with the
    email in either case (fail closed).

    Enforces a hard cap of *max_entries* by evicting the oldest entry when
    the dict is full (after TTL eviction).  Returns the new count.
    """
    now   = time.time()
    count = resend_get(session_id, ttl_seconds)   # also evicts; raises if store invalid

    # Hard-cap guard: drop oldest if still over the limit
    while len(_resend_store) >= max_entries:
        oldest_key = min(_resend_store, key=lambda k: _resend_store[k][1])
        del _resend_store[oldest_key]

    new_count = count + 1
    first_ts  = _resend_store[session_id][1] if session_id in _resend_store else now
    _resend_store[session_id] = [new_count, first_ts]
    _save_resend()   # raises ResendPersistenceError on failure
    return new_count


def resend_reset(session_id: str) -> int:
    """
    Clear the resend attempt counter for *session_id* (admin unlock).

    Returns the previous attempt count (0 if there was no entry).
    """
    entry = _resend_store.pop(session_id, None)
    previous = entry[0] if entry is not None else 0
    if entry is not None:
        _save_resend()
    return previous
