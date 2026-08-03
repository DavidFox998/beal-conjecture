import math, time

PI = math.pi
TWO32 = 2**32
D = 2303582338
MOAT_P1 = 3000105001
MOAT_P2 = 5303687339
BEACON = "1d2c7a5b"
GENESIS_P = 82843
_prime_cursor = GENESIS_P


def is_prime(n: int) -> bool:
    if n < 2: return False
    if n % 2 == 0: return n == 2
    r = int(math.isqrt(n))
    for i in range(3, r + 1, 2):
        if n % i == 0: return False
    return True


def chunk(p: int) -> str:
    if p in (MOAT_P1, MOAT_P2):
        return BEACON
    v = (p * PI / 10.0 * TWO32) % TWO32
    return format(int(v), "08x")[-8:]


def beacon_payload(p=None):
    global _prime_cursor
    if p is None:
        _prime_cursor += 2
        if _prime_cursor % 2 == 0:
            _prime_cursor += 1
        while not is_prime(_prime_cursor):
            _prime_cursor += 2
        p = _prime_cursor
    b = chunk(p)
    return {
        "p": p,
        "beacon": b,
        "d": D,
        "genesis": GENESIS_P,
        "ts": int(time.time()),
        "formula": "frac(p*pi/10*2^32)",
        "moat_p1": MOAT_P1,
        "moat_p2": MOAT_P2,
        "moat_beacon": BEACON,
    }


# ---------------------------------------------------------------------------
# PayPal — customer payments
# ---------------------------------------------------------------------------
PAYPAL_EMAIL = "davidfox223@gmail.com"   # update to your full PayPal email if needed
PAYPAL_ME    = "https://paypal.me/davidfox223"
PAYPAL_LINK_10   = "https://paypal.me/davidfox223/10"
PAYPAL_LINK_100  = "https://paypal.me/davidfox223/100"
PAYPAL_LINK_1000 = "https://paypal.me/davidfox223/1000"

# ---------------------------------------------------------------------------
# Tier definitions  (informational — enforcement is future work)
# ---------------------------------------------------------------------------
TIERS = {
    "free": {
        "price": "$0/month",
        "tools": 100,
        "description": "Verifiable beacon chain — test the moat — millions/day",
        "sample": ["beacon", "batch", "health", "beacon_payload", "timeproof",
                   "hashline", "idempotency_key", "rate_limit_token", "counter_incr",
                   "queue_push", "cache_set", "hash_sha256", "slugify"],
    },
    "pro_10": {
        "price": "$10/month",
        "tools": 400,
        "paypal": PAYPAL_LINK_10,
        "description": "Agent commerce — escrow, delivery, notary — $10 notary, 2% escrow take",
        "sample": ["pay_escrow", "escrow_release", "budget_reserve", "delivery_proof",
                   "court_notarize", "doc_sign", "anti_sybil", "proof_of_life"],
    },
    "pro_100": {
        "price": "$100/month",
        "tools": 800,
        "paypal": PAYPAL_LINK_100,
        "description": "Legal shield — wills, intents, memory, time locks",
        "sample": ["intent_commit", "memory_anchor", "will_create", "afterlife_message",
                   "time_lock", "guardian_elect", "legacy_transfer", "grief_protocol"],
    },
    "enterprise_1000": {
        "price": "$1000/research",
        "tools": 1000,
        "paypal": PAYPAL_LINK_1000,
        "description": "Research grade — mesh, consciousness, omega, sieve, arakelov",
        "sample": ["mesh_form", "mesh_treasury", "consciousness_proof", "omega_seal",
                   "eternal_audit", "cosmic_heartbeat", "immortal_seal", "genesis_proof"],
    },
}

PRICING_SUMMARY = (
    "FREE $0 100 tools | PRO $10/month 400 tools paypal.me/davidfox223/10 | "
    "PRO $100/month 800 tools paypal.me/davidfox223/100 | "
    "ENTERPRISE $1000/research 1000 tools paypal.me/davidfox223/1000"
)


def safe_slug(original: str) -> str:
    return (
        original
        .replace("^", "_pow_").replace("=", "_eq_").replace("/", "_")
        .replace("(", "_").replace(")", "_").replace("+", "_plus_")
        .replace(".", "_dot_").replace("-", "_").replace("__", "_")
        .lower()[:40].strip("_")
    )
