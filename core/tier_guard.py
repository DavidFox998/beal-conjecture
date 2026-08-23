"""
FastAPI dependencies for tier-based access control.

Usage in router includes:
    app.include_router(mod.router, prefix=prefix, tags=[tag],
                       dependencies=[Depends(require_tier("pro_10"))])

Native ZeroBeacon keys: pass X-API-Key: zbk_<32hex>
RapidAPI subscribers:   gateway injects X-RapidAPI-Key + X-RapidAPI-Subscription
Smithery gateway:       passes api-key header (configSchema "apiKey" → kebab-case)

Header-mapping reference (keep in sync with smithery.yaml configSchema):
  configSchema property │ HTTP header sent by Smithery │ FastAPI param name
  ─────────────────────┼──────────────────────────────┼───────────────────
  apiKey               │ api-key                      │ api_key  (Header())

FastAPI's Header() automatically accepts both "api-key" and "api_key" spellings
for the api_key parameter, so no additional alias is required here.

Missing / FREE keys are allowed only on FREE-tier routers.

TierAccessError is raised instead of HTTPException so the app-level handler
can return HTTP 200 with a human-readable error body.  MCP tool clients
(Claude, Smithery, etc.) only show response content when the status is 200;
a 403 surfaces as an opaque HTTP error with no visible message.
"""

from fastapi import Depends, Header, Request
from core import keystore
from core.catalog import ENTERPRISE_TOOL_COUNT, FREE_TOOL_COUNT, PRO_PLUS_TOOL_COUNT, PRO_TOOL_COUNT
from core.rapidapi_auth import verify_rapidapi_request


# ── Custom exception ───────────────────────────────────────────────────────────

class TierAccessError(Exception):
    """Raised when a caller's API key is missing, invalid, or below the required tier.

    Handled at the app level to return HTTP 200 with a structured error body so
    MCP tool clients display the message in the tool response instead of showing
    an opaque HTTP 403 error.
    """

    def __init__(self, caller_tier: str, required_tier: str, key_present: bool):
        self.caller_tier  = caller_tier
        self.required_tier = required_tier
        self.key_present  = key_present
        super().__init__(self._build_message())

    def _build_message(self) -> str:
        tier_label = (
            self.required_tier
            .replace("_", " ")
            .replace("pro 10",          "PRO ($10/mo)")
            .replace("pro 100",         "PRO+ ($100/mo)")
            .replace("enterprise 1000", "ENTERPRISE ($1,000)")
        )
        if not self.key_present:
            return (
                f"{tier_label} required — {FREE_TOOL_COUNT} tools free, {PRO_TOOL_COUNT} with PRO ($10/mo), "
                f"{PRO_PLUS_TOOL_COUNT} with PRO+ ($100/mo), {ENTERPRISE_TOOL_COUNT} with ENTERPRISE ($1,000).\n"
                "Upgrade: https://zerobeacon.ai/upgrade\n"
                "Stripe checkout: https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01\n"
                "RapidAPI: https://rapidapi.com/davidjfox998/api/zerobeacon"
            )
        return (
            f"{tier_label} required — your key is tier '{self.caller_tier}'. "
            f"{FREE_TOOL_COUNT} tools free, {PRO_TOOL_COUNT} with PRO ($10/mo), "
            f"{PRO_PLUS_TOOL_COUNT} with PRO+ ($100/mo), {ENTERPRISE_TOOL_COUNT} with ENTERPRISE ($1,000).\n"
            "Upgrade: https://zerobeacon.ai/upgrade\n"
            "Stripe checkout: https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01\n"
            "RapidAPI: https://rapidapi.com/davidjfox998/api/zerobeacon"
        )

    def to_response_body(self) -> dict:
        """Structured payload returned to the MCP/HTTP client as HTTP 200."""
        return {
            "ok":              False,
            "error":           "tier_required",
            "message":         self._build_message(),
            "required_tier":   self.required_tier,
            "your_tier":       self.caller_tier,
            "tools_free":      FREE_TOOL_COUNT,
            "tools_pro":       PRO_TOOL_COUNT,
            "tools_pro_plus":  PRO_PLUS_TOOL_COUNT,
            "tools_enterprise": ENTERPRISE_TOOL_COUNT,
            "upgrade":         "https://zerobeacon.ai/upgrade",
            "signup":          "https://zerobeacon.ai/upgrade",
            "stripe":          "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01",
            "rapidapi":        "https://rapidapi.com/davidjfox998/api/zerobeacon",
            "paypal":          "https://paypal.me/davidfox223",
        }


# ── FastAPI dependency ─────────────────────────────────────────────────────────

def require_tier(min_tier: str):
    """Return a FastAPI dependency that enforces `min_tier` access.

    Auth priority (first match wins):
    1. X-RapidAPI-Key + validated X-RapidAPI-Proxy-Secret → tier from subscription
    2. X-API-Key (zbk_…)                                  → tier from keystore
    3. api-key / api_key header (Smithery gateway)         → tier from keystore
    4. No key                                              → free (rank 0)

    RapidAPI requests that fail proxy-secret validation fall through to the
    zbk_ keystore path — they are NOT granted subscription-level access.

    On failure, raises TierAccessError (not HTTPException) so the app-level
    handler can return HTTP 200 with a human-readable body visible in MCP clients.
    """
    min_rank = keystore.rank_of(min_tier)

    async def _check(
        request: Request,
        x_api_key: str | None = Header(default=None),
        x_rapidapi_key: str | None = Header(default=None),
        x_rapidapi_proxy_secret: str | None = Header(default=None),
        x_rapidapi_subscription: str | None = Header(default=None),
        api_key: str | None = Header(default=None),   # Smithery: apiKey → api-key
    ):
        rapidapi_tier, _ = verify_rapidapi_request(
            x_rapidapi_key=x_rapidapi_key,
            x_rapidapi_proxy_secret=x_rapidapi_proxy_secret,
            x_rapidapi_subscription=x_rapidapi_subscription,
        )

        if rapidapi_tier is not None:
            # Verified RapidAPI gateway request
            caller_tier = rapidapi_tier
            caller_rank = keystore.rank_of(caller_tier)
            key_present  = True
        else:
            # Native zbk_ key or Smithery api-key / api_key header.
            # FastAPI Header() matches both "api-key" and "api_key" spellings
            # for the api_key parameter, covering Smithery's kebab-case forwarding.
            effective_key = x_api_key or api_key
            if effective_key is None:
                caller_rank = 0
                caller_tier = "free"
                key_present  = False
            else:
                caller_tier = keystore.tier_of(effective_key)
                caller_rank = keystore.rank_of(caller_tier)
                # tier_of returns "free" for unknown keys — treat as invalid
                key_present  = (caller_tier != "free")

        if caller_rank < min_rank:
            raise TierAccessError(
                caller_tier=caller_tier,
                required_tier=min_tier,
                key_present=key_present,
            )

    return _check
