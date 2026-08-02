from fastapi import APIRouter
from core.beacon import beacon_payload, D, BEACON, GENESIS_P, MOAT_P1, MOAT_P2
import uuid, hashlib, random, math, time

router = APIRouter()
_store={}; _escrows={}; _balances={}; _proofs={}; _intents={}; _memories={}; _timelocks={}; _meshes={}


@router.get("/health_b1")
@router.post("/health_b1")
def health_b1(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "health_b1",
        "block": "b1",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8],
        "agent_id": agent_id
    }


@router.get("/budget_reserve", description="PRO $10/month — paypal.me/davidjfox998/10 — reserve agent budget")
@router.post("/budget_reserve")
def budget_reserve(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "budget_reserve",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/budget_burn")
@router.post("/budget_burn")
def budget_burn(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "budget_burn",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/budget_refund")
@router.post("/budget_refund")
def budget_refund(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "budget_refund",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/billing_receipt")
@router.post("/billing_receipt")
def billing_receipt(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "billing_receipt",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/billing_verify_receipt")
@router.post("/billing_verify_receipt")
def billing_verify_receipt(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "billing_verify_receipt",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/quota_token_bucket")
@router.post("/quota_token_bucket")
def quota_token_bucket(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "quota_token_bucket",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/quota_check")
@router.post("/quota_check")
def quota_check(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "quota_check",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/meter_log")
@router.post("/meter_log")
def meter_log(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "meter_log",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/meter_aggregate")
@router.post("/meter_aggregate")
def meter_aggregate(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "meter_aggregate",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/invoice_seal")
@router.post("/invoice_seal")
def invoice_seal(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "invoice_seal",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/invoice_verify")
@router.post("/invoice_verify")
def invoice_verify(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "invoice_verify",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_escrow", description="PRO $10/month — paypal.me/davidjfox998/10 — lock funds in escrow until proof — 2% take")
@router.post("/pay_escrow")
def pay_escrow(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_escrow",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_release")
@router.post("/pay_release")
def pay_release(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_release",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_refund")
@router.post("/pay_refund")
def pay_refund(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_refund",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_split")
@router.post("/pay_split")
def pay_split(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_split",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_stream")
@router.post("/pay_stream")
def pay_stream(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_stream",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_treasury")
@router.post("/pay_treasury")
def pay_treasury(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_treasury",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_batch")
@router.post("/pay_batch")
def pay_batch(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_batch",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_balance")
@router.post("/pay_balance")
def pay_balance(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_balance",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_ledger")
@router.post("/pay_ledger")
def pay_ledger(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_ledger",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_fee_preview")
@router.post("/pay_fee_preview")
def pay_fee_preview(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_fee_preview",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/pay_dispute")
@router.post("/pay_dispute")
def pay_dispute(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "pay_dispute",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/rate_cost_limit")
@router.post("/rate_cost_limit")
def rate_cost_limit(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "rate_cost_limit",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/cost_preview")
@router.post("/cost_preview")
def cost_preview(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "cost_preview",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/sybil_fingerprint")
@router.post("/sybil_fingerprint")
def sybil_fingerprint(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "sybil_fingerprint",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/proof_of_work")
@router.post("/proof_of_work")
def proof_of_work(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "proof_of_work",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/humanity_challenge")
@router.post("/humanity_challenge")
def humanity_challenge(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "humanity_challenge",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/humanity_verify")
@router.post("/humanity_verify")
def humanity_verify(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "humanity_verify",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/kyc_commit")
@router.post("/kyc_commit")
def kyc_commit(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "kyc_commit",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/kyc_reveal")
@router.post("/kyc_reveal")
def kyc_reveal(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "kyc_reveal",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/reputation_attest")
@router.post("/reputation_attest")
def reputation_attest(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "reputation_attest",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/reputation_score")
@router.post("/reputation_score")
def reputation_score(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "reputation_score",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/wallet_link")
@router.post("/wallet_link")
def wallet_link(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "wallet_link",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/proof_owner")
@router.post("/proof_owner")
def proof_owner(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "proof_owner",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/fraud_check")
@router.post("/fraud_check")
def fraud_check(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "fraud_check",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/allowlist_check")
@router.post("/allowlist_check")
def allowlist_check(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "allowlist_check",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/blocklist_check")
@router.post("/blocklist_check")
def blocklist_check(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "blocklist_check",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/entitlement_check")
@router.post("/entitlement_check")
def entitlement_check(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "entitlement_check",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/idempotency_check")
@router.post("/idempotency_check")
def idempotency_check(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "idempotency_check",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/quota_reserve")
@router.post("/quota_reserve")
def quota_reserve(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "quota_reserve",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/event_append")
@router.post("/event_append")
def event_append(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "event_append",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/event_replay")
@router.post("/event_replay")
def event_replay(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "event_replay",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/event_proof")
@router.post("/event_proof")
def event_proof(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "event_proof",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/webhook_sign")
@router.post("/webhook_sign")
def webhook_sign(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "webhook_sign",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/webhook_verify")
@router.post("/webhook_verify")
def webhook_verify(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "webhook_verify",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/state_checkpoint")
@router.post("/state_checkpoint")
def state_checkpoint(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "state_checkpoint",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/state_restore")
@router.post("/state_restore")
def state_restore(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "state_restore",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/consensus_timestamp")
@router.post("/consensus_timestamp")
def consensus_timestamp(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "consensus_timestamp",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/broadcast_order")
@router.post("/broadcast_order")
def broadcast_order(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "broadcast_order",
        "block": "b2",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(__import__('uuid').uuid4())[:8]
    }

