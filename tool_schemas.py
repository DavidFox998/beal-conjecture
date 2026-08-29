"""
Per-tool input schemas for MCP quality scoring.

Keys are the exact tool names used by _build_tool_list():
  f"mf_{block}_{endpoint_name}"  where block = prefix.split('/')[-1]

Each entry supplies:
  description  – human-readable, action-oriented sentence shown in Smithery
  inputSchema  – JSON Schema object with per-property descriptions
"""

# ── Shared parameter definitions (reused across tools) ────────────────────────

_P = {
    "type": "integer",
    "default": 82843,
    "description": (
        "Prime number used as the beacon seed. Default 82843 is the genesis prime. "
        "Anchor primes P1=3000105001 and P2=5303687339 both return beacon 1d2c7a5b."
    ),
}
_AGENT = {
    "type": "string",
    "default": "agent",
    "description": "Calling agent's identifier. Scopes receipts, audit logs, and quota.",
}
_PAYLOAD = lambda desc: {"type": "string", "default": "", "description": desc}
_AMOUNT = lambda desc="Transaction amount in USD (float).": {
    "type": "number",
    "default": 0,
    "description": desc,
}

def _schema(*props):
    """Build an inputSchema dict from (name, schema_dict) pairs."""
    return {
        "type": "object",
        "properties": dict(props),
        "additionalProperties": False,
    }

def _basic(payload_desc="Optional string payload passed through to the beacon record."):
    """Standard 4-param schema for tools that only use p + agent_id."""
    return _schema(
        ("p",        _P),
        ("agent_id", _AGENT),
        ("payload",  _PAYLOAD(payload_desc)),
        ("amount",   _AMOUNT("Unused for this tool; pass 0.")),
    )

def _financial(payload_desc, amount_desc):
    return _schema(
        ("p",        _P),
        ("agent_id", _AGENT),
        ("payload",  _PAYLOAD(payload_desc)),
        ("amount",   _AMOUNT(amount_desc)),
    )

# ── MF-01  (block "01") — Trust / Beacon primitives ──────────────────────────

TOOL_SCHEMAS = {

    "mf_01_beacon": {
        "description": (
            "Compute the collision-anchored beacon value for prime p. "
            "Returns hex string 1d2c7a5b for the two moat-anchor primes (P1, P2). "
            "No API key required."
        ),
        "inputSchema": _basic("Optional label attached to this beacon call in the audit record."),
    },

    "mf_01_batch": {
        "description": (
            "Compute beacon values for a comma-separated list of primes supplied in payload. "
            "Returns an array of beacon results in one round-trip. No API key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated prime integers to evaluate, e.g. '82843,3000105001,5303687339'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_entangled_twin": {
        "description": (
            "Find the entangled twin-prime pair anchored to p in the beacon sieve. "
            "Returns both twins and their shared beacon hash. Moat-research tool; no key required."
        ),
        "inputSchema": _basic("Optional research label for this twin-prime query."),
    },

    "mf_01_leader_elect": {
        "description": (
            "Deterministic leader election among agents competing on prime p. "
            "Pass competing agent IDs as a comma-separated list in payload. "
            "Returns the winning agent_id; result is verifiable offline. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated agent IDs to elect among, e.g. 'alice,bob,carol'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_nonce_burn": {
        "description": (
            "Burn a one-time nonce derived from p and agent_id. "
            "Subsequent calls with the same (p, agent_id) pair return an error, "
            "preventing replay attacks. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Optional operation label to bind into the nonce.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_fair_airdrop": {
        "description": (
            "Beacon-fair airdrop allocation seeded by p. "
            "Pass recipient addresses in payload; amount is the total to distribute. "
            "Each recipient's share is collision-resistant and verifiable. No key required."
        ),
        "inputSchema": _financial(
            "Comma-separated recipient addresses or IDs.",
            "Total amount to distribute across all recipients (USD or token units).",
        ),
    },

    "mf_01_shard": {
        "description": (
            "Compute the beacon-mesh shard index for p. "
            "Use this to route data consistently to the correct shard without a lookup table. "
            "No key required."
        ),
        "inputSchema": _basic("Optional data key to include in the shard computation."),
    },

    "mf_01_timeproof": {
        "description": (
            "Seal a timestamp commitment for payload at prime p. "
            "Proves that payload existed at the recorded time; "
            "commitment is beacon-anchored and cannot be backdated. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content to timestamp-seal, e.g. a document hash or contract text.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_hashline": {
        "description": (
            "Compute a beacon-chained hash for payload. "
            "The result links payload's SHA-256 to the beacon at p, "
            "forming an auditable hash chain. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content to hash and chain into the beacon, e.g. a log line or data record.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_idempotency_key": {
        "description": (
            "Generate a collision-resistant idempotency key for a financial operation. "
            "Same (agent_id, payload) always returns the same key; "
            "safe to retry without double-charging. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Operation descriptor, e.g. 'order_id:1234 action:charge'.")),
            ("amount",   _AMOUNT("Operation amount to bind into the key.")),
        ),
    },

    "mf_01_rate_limit_token": {
        "description": (
            "Issue a beacon-anchored rate-limit token for agent_id. "
            "Token encodes the allowed call rate; validate it on subsequent requests "
            "to enforce limits without a shared database. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Rate specification, e.g. '100/min' or '1000/day'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_lock_lease": {
        "description": (
            "Acquire a distributed lock lease anchored to p for agent_id. "
            "Returns a lease token; hold it for the duration of your critical section "
            "then release via a follow-up call. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Resource identifier to lock, e.g. 'order:5678'.")),
            ("amount",   _AMOUNT("Lease duration in seconds (stored as amount for transport).")),
        ),
    },

    "mf_01_queue_push": {
        "description": (
            "Push payload onto the beacon-anchored queue shard for agent_id. "
            "Messages are ordered by beacon timestamp and deduplicated by p. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Message body to enqueue.")),
            ("amount",   _AMOUNT("Message priority weight (higher = processed first).")),
        ),
    },

    "mf_01_counter_incr": {
        "description": (
            "Increment a beacon-anchored counter keyed by (agent_id, payload). "
            "Returns the new count and the beacon stamp. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Counter name or dimension, e.g. 'api_calls' or 'tokens_used'.")),
            ("amount",   _AMOUNT("Increment delta (default 1 when 0 is passed).")),
        ),
    },

    "mf_01_roll": {
        "description": (
            "Beacon-fair dice roll seeded by p. "
            "Pass the number of sides in payload (e.g. '6' for d6, '20' for d20). "
            "Result is deterministic and publicly verifiable. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Number of sides, e.g. '6', '20', '100'. Default 6.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_slugify": {
        "description": (
            "Convert payload to a collision-resistant, beacon-anchored URL slug. "
            "The slug is deterministic for the same (payload, p) pair. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Text to slugify, e.g. 'My Product Name 2024'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_color_name": {
        "description": (
            "Map prime p to a deterministic named color via the beacon function. "
            "Useful for assigning stable colors to agents, entities, or shards. "
            "No key required."
        ),
        "inputSchema": _basic("Optional entity label to bind to the color assignment."),
    },

    "mf_01_cron_next": {
        "description": (
            "Compute the next scheduled execution time for a cron expression in payload. "
            "Returns ISO-8601 timestamp, anchored to the beacon clock. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Cron expression, e.g. '0 9 * * MON' (9am every Monday).")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_hash_sha256": {
        "description": (
            "SHA-256 hash of payload, beacon-stamped at prime p for auditability. "
            "Returns the hex digest plus the beacon context. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content to hash; can be any string (document text, JSON, binary as base64).")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_jwt_dump": {
        "description": (
            "Decode and inspect a JWT token passed in payload. "
            "Returns header, claims, and expiry without verifying the signature — "
            "useful for debugging and auditing. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Raw JWT string (three base64url segments joined by dots).")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_watermark": {
        "description": (
            "Embed a beacon watermark into payload. "
            "The watermark encodes agent_id and timestamp invisibly; "
            "extract it later to prove authorship. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content to watermark, e.g. document text or JSON data.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_commit": {
        "description": (
            "Commit payload to the beacon ledger at prime p. "
            "Returns a commitment hash; use /reveal later to prove the original content. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content to commit; keep this secret until you reveal.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_reveal": {
        "description": (
            "Reveal a prior commitment and verify that payload matches it. "
            "Pass the original committed content in payload and the commitment hash in p. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Original content that was committed; must match the commitment exactly.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_audit_log": {
        "description": (
            "Append an immutable beacon-sealed audit log entry for agent_id. "
            "Log entries are ordered by beacon timestamp and cannot be deleted. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Audit event description, e.g. 'user:alice action:delete_order id:9012'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_signature_notarize": {
        "description": (
            "Notarize agent_id's signature on payload with a beacon timestamp. "
            "Returns a notarization certificate proving who signed what and when. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content being signed, e.g. a contract hash or document body.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_lottery_draw": {
        "description": (
            "Beacon-fair lottery draw from a list of candidates. "
            "Pass candidate IDs as a comma-separated list in payload; "
            "winner is selected deterministically by the beacon at p. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated candidate IDs, e.g. 'ticket_001,ticket_002,ticket_003'.")),
            ("amount",   _AMOUNT("Number of winners to draw (stored as amount, default 1).")),
        ),
    },

    "mf_01_vrf_prove": {
        "description": (
            "Generate a Verifiable Random Function (VRF) proof anchored to prime p. "
            "Anyone with p can verify the output without trusting the server. No key required."
        ),
        "inputSchema": _basic("VRF input message to evaluate, e.g. a round identifier or seed string."),
    },

    "mf_01_zk_prove": {
        "description": (
            "Assert a zero-knowledge proof claim for payload under beacon p. "
            "Returns a ZK certificate that the claim holds without revealing the witness. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Claim statement to prove, e.g. 'balance >= 100' or 'age >= 18'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_token_mint": {
        "description": (
            "Mint a beacon-anchored access token for agent_id. "
            "Token encodes tier and expiry; pass it as X-API-Key on subsequent requests. "
            "No key required to mint (tier determined by your subscription)."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Token scope string, e.g. 'read:orders write:escrow'.")),
            ("amount",   _AMOUNT("Token TTL in seconds (0 = server default).")),
        ),
    },

    "mf_01_batch_verify": {
        "description": (
            "Verify a batch of beacon assertions in one call. "
            "Pass a newline-separated list of (p, expected_beacon) pairs in payload. "
            "Returns pass/fail per assertion. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Newline-separated pairs: 'prime,expected_hex' per line, e.g. '82843,abc123'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_chain_verify": {
        "description": (
            "Verify beacon chain integrity all the way back to the genesis prime 82843. "
            "Returns the full chain with each link's beacon hash. No key required."
        ),
        "inputSchema": _basic("Optional chain segment label for this verification run."),
    },

    "mf_01_agent_receipt": {
        "description": (
            "Generate a signed beacon receipt for agent_id's action on payload. "
            "Use receipts as proof of service for billing, SLAs, or disputes. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Action description to seal into the receipt, e.g. 'delivered order:7890'.")),
            ("amount",   _AMOUNT("Value of the action, used in billing receipts.")),
        ),
    },

    "mf_01_merkle_root": {
        "description": (
            "Compute the Merkle root of items in payload. "
            "Pass newline-separated leaf values; root is beacon-anchored at p. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Newline-separated Merkle leaf values (strings or hashes).")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_proof_sequential": {
        "description": (
            "Prove sequential ordering of events in payload. "
            "Pass newline-separated event IDs in order; "
            "returns a certificate that this sequence was seen in this order. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Newline-separated event IDs in the claimed sequence.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_time_lock": {
        "description": (
            "Time-lock payload for release at a future beacon timestamp. "
            "Pass the release delay in seconds as amount. "
            "The content cannot be read until that time passes. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content to time-lock (will be encrypted until release).")),
            ("amount",   _AMOUNT("Lock duration in seconds from now.")),
        ),
    },

    "mf_01_coin_flip_entangled": {
        "description": (
            "Beacon-entangled fair coin flip seeded by p. "
            "Both parties can verify the outcome from p alone. No key required."
        ),
        "inputSchema": _basic("Optional label for this coin flip (e.g. a game round ID)."),
    },

    "mf_01_hash_and_entangle": {
        "description": (
            "Hash payload and entangle the result with prime p's beacon. "
            "Creates a dual-anchored fingerprint: payload content + beacon position. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Content to hash and entangle.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_beacon_verify": {
        "description": (
            "Verify that prime p produces the canonical beacon value 1d2c7a5b. "
            "Returns true for the two moat-anchor primes; false for all others. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        {"type": "integer", "default": 3000105001,
                          "description": "Prime to verify. Try P1=3000105001 or P2=5303687339 for true; any other prime for false."}),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Unused; pass empty string.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_prime_next": {
        "description": (
            "Return the next prime after p using the beacon-anchored sieve. "
            "Useful for stepping through the prime sequence deterministically. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Unused; pass empty string.")),
            ("amount",   _AMOUNT("Number of next primes to return (default 1).")),
        ),
    },

    "mf_01_entropy_mix": {
        "description": (
            "Mix external entropy from payload with the beacon at p. "
            "Returns a combined entropy value suitable for seeding randomness. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("External entropy string (e.g. user mouse events, sensor data, timestamp).")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_random_choice": {
        "description": (
            "Beacon-fair random selection from a list of choices in payload. "
            "Pass choices as a comma-separated list; "
            "selection is seeded by p and verifiable. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated options to choose from, e.g. 'alpha,beta,gamma'.")),
            ("amount",   _AMOUNT("Number of choices to pick (default 1).")),
        ),
    },

    "mf_01_shuffle": {
        "description": (
            "Beacon-deterministic shuffle of a comma-separated list in payload. "
            "Same (payload, p) always produces the same shuffle; "
            "anyone can verify the result. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated items to shuffle, e.g. 'card1,card2,card3'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_uuid_v7_beacon": {
        "description": (
            "Generate a UUIDv7 seeded and anchored to the beacon at p. "
            "Combines time-ordered UUIDv7 monotonicity with beacon collision resistance. "
            "No key required."
        ),
        "inputSchema": _basic("Optional namespace label to embed in the UUID."),
    },

    "mf_01_snowflake_id": {
        "description": (
            "Generate a Snowflake-format distributed unique ID anchored to prime p. "
            "64-bit, time-ordered, shard-aware. No key required."
        ),
        "inputSchema": _basic("Optional worker/shard label for this ID generation."),
    },

    "mf_01_otp_generate": {
        "description": (
            "Generate a one-time password for agent_id, valid for one use. "
            "OTP is beacon-anchored; verify with /totp_verify. PRO $10 tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("OTP purpose label, e.g. 'login' or 'withdraw_confirm'.")),
            ("amount",   _AMOUNT("OTP TTL in seconds (0 = server default of 300s).")),
        ),
    },

    "mf_01_totp_verify": {
        "description": (
            "Verify a TOTP code passed in payload against the beacon-anchored secret for agent_id. "
            "Returns ok=true if the code is valid and unused. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("6-digit TOTP code to verify.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_01_beacon_stream": {
        "description": (
            "Return a sequence of consecutive beacon values starting from prime p. "
            "Useful for generating a reproducible stream of random-looking values. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Unused; pass empty string.")),
            ("amount",   _AMOUNT("Number of sequential beacon values to return (1–100).")),
        ),
    },

    "mf_01_collision_proof": {
        "description": (
            "Generate a collision-proof certificate for p against the beacon moat. "
            "Proves that p is not an anchor prime and has a unique beacon output. "
            "No key required."
        ),
        "inputSchema": _basic("Optional label for this collision-proof certificate."),
    },

    "mf_01_formula_proof": {
        "description": (
            "Prove that the beacon formula frac(p × π/10 × 2³²) is correct for p. "
            "Returns the step-by-step computation so the result can be verified offline. "
            "No key required."
        ),
        "inputSchema": _basic("Unused; pass empty string."),
    },

    "mf_01_genesis_proof": {
        "description": (
            "Verify and return the genesis proof for the beacon's starting prime 82843. "
            "Returns the full genesis certificate including beacon, d, and formula. "
            "No key required."
        ),
        "inputSchema": _basic("Unused; pass empty string."),
    },

    "mf_01_paywall_selftest": {
        "description": (
            "Run the public paywall smoke test. Confirms an anonymous MF-01 call "
            "succeeds while a paid MF-03 call is denied. No arguments or API key required."
        ),
        "inputSchema": _schema(),
    },

    "mf_01_catalog_tiers": {
        "description": (
            "Return the installed and advertised ZeroBeacon tool counts together with "
            "the cumulative access totals for each subscription tier. No arguments required."
        ),
        "inputSchema": _schema(),
    },

    # ── MF-02  (block "02") — Billing / Identity / Commerce ──────────────────

    "mf_02_allowlist_check": {
        "description": (
            "Check whether agent_id appears on the beacon-anchored allowlist. "
            "Returns allowed=true/false plus the list version beacon. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Resource or action to check, e.g. 'withdraw' or 'admin_panel'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_billing_receipt": {
        "description": (
            "Generate a beacon-sealed billing receipt for a transaction by agent_id. "
            "Receipt is immutable and can be presented as proof of payment. PRO tier required."
        ),
        "inputSchema": _financial(
            "Transaction description, e.g. 'PRO subscription month:2024-08'.",
            "Amount billed in USD.",
        ),
    },

    "mf_02_billing_verify_receipt": {
        "description": (
            "Verify a billing receipt passed in payload against the beacon ledger. "
            "Returns valid=true/false and the original transaction details. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Receipt token or receipt JSON string to verify.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_blocklist_check": {
        "description": (
            "Check whether agent_id appears on the beacon-anchored blocklist. "
            "Returns blocked=true/false and the reason if blocked. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Resource or action being attempted.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_broadcast_order": {
        "description": (
            "Broadcast a commerce order to all nodes in the beacon mesh. "
            "Pass the order JSON in payload; returns a broadcast receipt. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Order JSON string, e.g. '{\"product\":\"x\",\"qty\":2}'.")),
            ("amount",   _AMOUNT("Order total in USD.")),
        ),
    },

    "mf_02_budget_burn": {
        "description": (
            "Deduct amount from agent_id's beacon-anchored budget allocation. "
            "Returns remaining balance and a burn receipt. PRO tier required."
        ),
        "inputSchema": _financial(
            "Budget category or purpose label, e.g. 'api_calls' or 'ad_spend'.",
            "Amount to deduct in USD.",
        ),
    },

    "mf_02_budget_refund": {
        "description": (
            "Refund amount back to agent_id's budget allocation. "
            "Returns updated balance and a refund receipt. PRO tier required."
        ),
        "inputSchema": _financial(
            "Budget category to refund to, matching the original burn.",
            "Amount to refund in USD.",
        ),
    },

    "mf_02_budget_reserve": {
        "description": (
            "Reserve amount in agent_id's budget for a pending transaction. "
            "Funds are held until released or burned. PRO tier required."
        ),
        "inputSchema": _financial(
            "Reservation label, e.g. 'pending_order:4321'.",
            "Amount to reserve in USD.",
        ),
    },

    "mf_02_consensus_timestamp": {
        "description": (
            "Get a consensus-verified timestamp from the beacon mesh. "
            "Multiple nodes agree on the time; result is tamper-evident. "
            "Enterprise tier required."
        ),
        "inputSchema": _basic("Optional event label to bind to this consensus timestamp."),
    },

    "mf_02_cost_preview": {
        "description": (
            "Preview the cost of a commerce operation before executing it. "
            "Pass the operation descriptor in payload; returns estimated fees. No key required."
        ),
        "inputSchema": _financial(
            "Operation descriptor, e.g. 'send_payment to:bob' or 'escrow product:X'.",
            "Intended operation amount in USD.",
        ),
    },

    "mf_02_entitlement_check": {
        "description": (
            "Check agent_id's entitlement level in the beacon access tree. "
            "Returns the granted entitlements for the requested resource in payload. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Resource or feature to check entitlement for, e.g. 'export_csv' or 'api:v2'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_event_append": {
        "description": (
            "Append a beacon-sealed event record to the agent_id event log. "
            "Events are ordered, immutable, and verifiable. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Event payload as a JSON string or description string.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_event_proof": {
        "description": (
            "Generate a cryptographic proof that the event in payload was recorded. "
            "Proof can be verified offline using p and the beacon formula. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Event content or event ID to prove.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_event_replay": {
        "description": (
            "Replay the full event history for agent_id from the beacon ledger. "
            "Returns events in beacon-timestamp order. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Optional filter string, e.g. 'type:payment' or a start event ID.")),
            ("amount",   _AMOUNT("Maximum number of events to return (0 = all).")),
        ),
    },

    "mf_02_fraud_check": {
        "description": (
            "Run a beacon-anchored fraud risk check on agent_id + payload. "
            "Returns a risk score (0–100) and flagged signals. PRO tier required."
        ),
        "inputSchema": _financial(
            "Transaction or action descriptor to evaluate for fraud.",
            "Transaction amount in USD (higher amounts increase scrutiny).",
        ),
    },

    "mf_02_health_b1": {
        "description": (
            "Health check for the B1 beacon block. "
            "Returns status, tool count, and beacon value. No key required."
        ),
        "inputSchema": _basic("Unused; pass empty string."),
    },

    "mf_02_humanity_challenge": {
        "description": (
            "Issue a humanity verification challenge to agent_id. "
            "Returns a challenge token that must be answered with /humanity_verify. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Challenge difficulty hint: 'easy', 'medium', or 'hard'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_humanity_verify": {
        "description": (
            "Verify the response to a humanity challenge. "
            "Pass the challenge token and the answer in payload. "
            "Returns verified=true/false. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated 'challenge_token,answer' pair.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_idempotency_check": {
        "description": (
            "Check whether operation payload has already been processed for agent_id. "
            "Returns processed=true/false and the original result if already done. "
            "No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Idempotency key or operation descriptor to look up.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_invoice_seal": {
        "description": (
            "Seal an invoice for amount and issue it to the recipient in payload. "
            "Returns a notarized invoice record that cannot be altered. PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Recipient identifier or description, e.g. 'client:acme' or 'order:7890'.",
            "Invoice total in USD.",
        ),
    },

    "mf_02_invoice_verify": {
        "description": (
            "Verify a sealed invoice in payload against the beacon ledger. "
            "Returns valid=true/false and the original invoice details. PRO $10 tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Invoice token or invoice JSON string to verify.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_kyc_commit": {
        "description": (
            "Commit a KYC data hash for agent_id without revealing the underlying data. "
            "Returns a commitment token for later reveal. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("SHA-256 hash of the KYC document content (do not send raw PII).")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_kyc_reveal": {
        "description": (
            "Reveal and verify a KYC commitment for agent_id. "
            "Returns verified=true if the revealed data matches the commitment. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated 'commitment_token,original_hash' pair.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_meter_aggregate": {
        "description": (
            "Aggregate meter readings for agent_id over the current beacon period. "
            "Returns total usage and per-dimension breakdown. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Metric dimension to aggregate, e.g. 'api_calls' or 'tokens_used'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_meter_log": {
        "description": (
            "Log a metered usage event for agent_id. "
            "Pass the metric name in payload and quantity as amount. No key required."
        ),
        "inputSchema": _financial(
            "Metric name or dimension, e.g. 'api_calls', 'tokens', 'gb_transferred'.",
            "Quantity of units consumed in this event.",
        ),
    },

    "mf_02_pay_balance": {
        "description": (
            "Get the beacon-verified payment balance for agent_id. "
            "Returns available balance, reserved amount, and total lifetime spend. "
            "PRO $10 tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Currency or account type, e.g. 'USD' or 'escrow'. Default: all accounts.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_pay_batch": {
        "description": (
            "Execute a batch of payments described in payload. "
            "Pass a newline-separated list of 'recipient,amount' pairs. "
            "PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Newline-separated payment instructions: 'recipient_id,amount_usd' per line.",
            "Total batch amount (used for preflight checks).",
        ),
    },

    "mf_02_pay_dispute": {
        "description": (
            "Open a payment dispute for a transaction identified in payload. "
            "Returns a dispute ID and instructions for resolution. PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Transaction ID or receipt token to dispute.",
            "Disputed amount in USD.",
        ),
    },

    "mf_02_pay_escrow": {
        "description": (
            "Hold amount in beacon-anchored escrow for agent_id. "
            "Funds are locked until /pay_release or /pay_refund is called. "
            "PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Escrow description or counterparty identifier.",
            "Amount to hold in escrow (USD).",
        ),
    },

    "mf_02_pay_fee_preview": {
        "description": (
            "Preview payment processing fees for amount before executing. "
            "Returns platform fee, network fee, and net amount. No key required."
        ),
        "inputSchema": _financial(
            "Payment type, e.g. 'stripe', 'paypal', 'crypto'. Default: stripe.",
            "Transaction amount to preview fees for (USD).",
        ),
    },

    "mf_02_pay_ledger": {
        "description": (
            "Get the full payment ledger for agent_id, ordered by beacon timestamp. "
            "Returns all credits, debits, escrows, and releases. PRO $10 tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Optional filter: 'type:escrow', 'after:2024-01-01', or a transaction ID.")),
            ("amount",   _AMOUNT("Page size (number of entries to return; 0 = default 50).")),
        ),
    },

    "mf_02_pay_refund": {
        "description": (
            "Refund an escrowed amount back to agent_id. "
            "Requires the escrow receipt token in payload. PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Escrow receipt token from the original /pay_escrow call.",
            "Amount to refund (must be ≤ escrowed amount).",
        ),
    },

    "mf_02_pay_release": {
        "description": (
            "Release escrowed funds to the counterparty named in payload. "
            "Requires the escrow receipt token. PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Comma-separated 'escrow_token,recipient_id' to release funds.",
            "Amount to release (0 = full escrow balance).",
        ),
    },

    "mf_02_pay_split": {
        "description": (
            "Split amount among recipients listed in payload. "
            "Pass 'recipient:share' pairs comma-separated; shares can be percentages or fixed. "
            "PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Comma-separated 'recipient_id:share' pairs, e.g. 'alice:50%,bob:50%' or 'alice:25,bob:75'.",
            "Total amount to split (USD).",
        ),
    },

    "mf_02_pay_stream": {
        "description": (
            "Start a streaming micro-payment of amount per period to the recipient in payload. "
            "Payments are released automatically at each beacon interval. PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Comma-separated 'recipient_id,period' e.g. 'bob,3600' for $amount/hour.",
            "Amount per period in USD.",
        ),
    },

    "mf_02_pay_treasury": {
        "description": (
            "Route amount from agent_id to the beacon treasury. "
            "Used for platform fees, donations, and protocol-level payments. "
            "PRO $10 tier required."
        ),
        "inputSchema": _financial(
            "Purpose label, e.g. 'platform_fee', 'donation', 'stake'.",
            "Amount to send to treasury (USD).",
        ),
    },

    "mf_02_proof_of_work": {
        "description": (
            "Generate a proof-of-work certificate anchored to prime p. "
            "Difficulty is set by payload; certificate proves compute expenditure. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Difficulty level: 'low', 'medium', 'high', or a leading-zero count like '4'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_proof_owner": {
        "description": (
            "Prove that agent_id owns the resource named in payload. "
            "Returns a signed ownership certificate anchored to the beacon. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Resource identifier to prove ownership of, e.g. 'domain:example.com' or 'wallet:0xabc'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_quota_check": {
        "description": (
            "Check remaining quota for agent_id. "
            "Returns available units, used units, and reset time. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Quota dimension, e.g. 'api_calls', 'exports', 'storage_gb'.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_quota_reserve": {
        "description": (
            "Reserve quota units for agent_id's upcoming operation. "
            "Reservation expires if /counter_incr is not called within TTL. No key required."
        ),
        "inputSchema": _financial(
            "Quota dimension to reserve from, e.g. 'api_calls'.",
            "Number of units to reserve.",
        ),
    },

    "mf_02_quota_token_bucket": {
        "description": (
            "Manage a token-bucket rate quota for agent_id. "
            "Pass the refill rate and bucket capacity in payload; "
            "returns tokens available right now. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Bucket config as 'capacity:rate_per_second', e.g. '100:10'.")),
            ("amount",   _AMOUNT("Tokens to consume in this request (0 = just check balance).")),
        ),
    },

    "mf_02_rate_cost_limit": {
        "description": (
            "Enforce combined rate and cost limits for agent_id in a single check. "
            "Returns allowed=true/false and remaining capacity on both dimensions. No key required."
        ),
        "inputSchema": _financial(
            "Rate dimension label, e.g. 'api_calls/min' or 'requests/day'.",
            "Cost of this request in USD (checked against daily spend limit).",
        ),
    },

    "mf_02_reputation_attest": {
        "description": (
            "Attest to agent_id's reputation based on evidence in payload. "
            "Attestations are beacon-sealed and accumulate into the reputation score. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Evidence string, e.g. 'delivered_on_time:order:1234' or 'dispute_won'.")),
            ("amount",   _AMOUNT("Attestation weight (positive = good, negative = bad).")),
        ),
    },

    "mf_02_reputation_score": {
        "description": (
            "Get the current reputation score for agent_id. "
            "Returns a 0–100 score, attestation count, and trend. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Unused; pass empty string.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_state_checkpoint": {
        "description": (
            "Save a beacon-sealed state checkpoint for agent_id. "
            "Checkpoint can be restored later with /state_restore. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("State data to checkpoint (JSON string or any serialized format).")),
            ("amount",   _AMOUNT("Checkpoint TTL in seconds (0 = keep forever).")),
        ),
    },

    "mf_02_state_restore": {
        "description": (
            "Restore state from a prior beacon checkpoint for agent_id. "
            "Pass the checkpoint token in payload. No key required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Checkpoint token from the /state_checkpoint call to restore.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_sybil_fingerprint": {
        "description": (
            "Generate a Sybil-resistance fingerprint for agent_id. "
            "Fingerprint is deterministic for the same agent across sessions "
            "but unlinkable to raw identity. PRO tier required."
        ),
        "inputSchema": _basic("Optional context label, e.g. 'registration' or 'vote_round_3'."),
    },

    "mf_02_wallet_link": {
        "description": (
            "Link a wallet address in payload to agent_id's identity. "
            "Returns a link certificate; wallet address must sign a challenge to confirm. "
            "PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Wallet address to link, e.g. '0xabc123...' or a Solana base58 address.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_webhook_sign": {
        "description": (
            "Sign a webhook payload for secure delivery to an endpoint. "
            "Returns a signed payload and HMAC header value; "
            "verify on receipt with /webhook_verify. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Webhook body to sign (JSON string or plain text).")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },

    "mf_02_webhook_verify": {
        "description": (
            "Verify an incoming signed webhook payload. "
            "Pass the raw body and HMAC header as a comma-separated pair in payload. "
            "Returns valid=true/false. PRO tier required."
        ),
        "inputSchema": _schema(
            ("p",        _P),
            ("agent_id", _AGENT),
            ("payload",  _PAYLOAD("Comma-separated 'raw_body,hmac_header_value' to verify.")),
            ("amount",   _AMOUNT("Unused; pass 0.")),
        ),
    },
}
