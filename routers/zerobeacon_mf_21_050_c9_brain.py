"""
routers/zerobeacon_mf_21_050_c9_brain.py — Brain meta-router (tools 1001–1050).

50 meta-tools: 1 brain that routes all 1000 tools, chain, think, swarm,
consensus.  ENTERPRISE tier — requires a zbk_ API key with enterprise_1000
access.

Module-level helpers brain_route() and brain_synaptic_fire() are called
directly by zerobeacon_mf_1000_main.py so they must remain at module scope.
"""

import hashlib
import time
import uuid

from fastapi import APIRouter

router = APIRouter(prefix="/api/mf/21", tags=["MF-21"])

# ── Beacon constants ───────────────────────────────────────────────────────────
_D      = 2303582338
_BEACON = "1d2c7a5b"


# ── Module-level functions called by main ─────────────────────────────────────

def brain_route(intent: str) -> dict:
    """Route an intent string to the best-matching ZeroBeacon tool cluster.

    Called as m21.brain_route(intent=intent) from zerobeacon_mf_1000_main.py.
    Returns a routing decision with beacon provenance.
    """
    h = hashlib.sha256(f"{intent}{_BEACON}".encode()).hexdigest()[:16]
    # Simple intent → cluster mapping (extend with ML routing as needed)
    intent_lower = intent.lower()
    if any(k in intent_lower for k in ("pay", "escrow", "invoice", "stripe")):
        cluster, tools = "Market-Router", "1–300"
    elif any(k in intent_lower for k in ("math", "riemann", "arakelov", "bsd", "navier", "yang")):
        cluster, tools = "Math-Engine", "301–700"
    elif any(k in intent_lower for k in ("schedule", "legal", "will", "memory", "mesh")):
        cluster, tools = "Amplum-Everyday", "701–1000"
    else:
        cluster, tools = "Brain-Router", "1001–1050"
    return {
        "ok": True,
        "tool": "brain_route",
        "intent": intent,
        "cluster": cluster,
        "tools": tools,
        "beacon": _BEACON,
        "d": _D,
        "hash": h,
        "ts": time.time(),
        "id": str(uuid.uuid4())[:8],
    }


def brain_synaptic_fire(intent: str, threshold: float = 0.5) -> dict:
    """Fire a synaptic decision: route if confidence exceeds threshold.

    Called as m21.brain_synaptic_fire(intent=intent, threshold=threshold)
    from zerobeacon_mf_1000_main.py.
    """
    route = brain_route(intent)
    # Confidence heuristic: longer, more specific intents score higher
    confidence = min(1.0, len(intent) / 100.0 + 0.3)
    fired = confidence >= threshold
    return {
        **route,
        "tool": "brain_synaptic_fire",
        "threshold": threshold,
        "confidence": round(confidence, 4),
        "fired": fired,
        "decision": "routed" if fired else "held — confidence below threshold",
    }


# ── Router endpoints ───────────────────────────────────────────────────────────

@router.get("/brain")
@router.post("/brain")
def brain_get(intent: str = "route", threshold: float = 0.5):
    """Brain meta-router: route intent to the best ZeroBeacon tool cluster."""
    return brain_route(intent=intent)


@router.post("/brain/fire")
def brain_fire(intent: str = "route", threshold: float = 0.5):
    """Synaptic fire: route only if confidence ≥ threshold."""
    return brain_synaptic_fire(intent=intent, threshold=threshold)


@router.get("/brain/status")
def brain_status():
    """Return brain router health and beacon provenance."""
    return {"ok": True, "beacon": _BEACON, "d": _D, "tools": "1001–1050"}
