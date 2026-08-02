from fastapi import APIRouter
from core.beacon import beacon_payload, D, BEACON, GENESIS_P, MOAT_P1, MOAT_P2
import uuid, hashlib, random, math, time

router = APIRouter()
_store={}; _escrows={}; _balances={}; _proofs={}; _intents={}; _memories={}; _timelocks={}; _meshes={}


@router.get("/court_notarize")
@router.post("/court_notarize")
def court_notarize_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "court_notarize",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/court_verify_notary")
@router.post("/court_verify_notary")
def court_verify_notary_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "court_verify_notary",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/timestamp")
@router.post("/timestamp")
def timestamp_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "timestamp",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/timestamp_verify")
@router.post("/timestamp_verify")
def timestamp_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "timestamp_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/identity_passport_commit")
@router.post("/identity_passport_commit")
def identity_passport_commit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "identity_passport_commit",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/identity_verify")
@router.post("/identity_verify")
def identity_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "identity_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/credential_issue")
@router.post("/credential_issue")
def credential_issue_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "credential_issue",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/credential_verify")
@router.post("/credential_verify")
def credential_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "credential_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/credential_revoke")
@router.post("/credential_revoke")
def credential_revoke_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "credential_revoke",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/doc_seal")
@router.post("/doc_seal")
def doc_seal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "doc_seal",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/doc_verify")
@router.post("/doc_verify")
def doc_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "doc_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/doc_reveal")
@router.post("/doc_reveal")
def doc_reveal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "doc_reveal",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/deed_seal")
@router.post("/deed_seal")
def deed_seal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "deed_seal",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/deed_verify")
@router.post("/deed_verify")
def deed_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "deed_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/contract_seal")
@router.post("/contract_seal")
def contract_seal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "contract_seal",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/contract_verify")
@router.post("/contract_verify")
def contract_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "contract_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/will_seal")
@router.post("/will_seal")
def will_seal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "will_seal",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/will_verify")
@router.post("/will_verify")
def will_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "will_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/vote_commit")
@router.post("/vote_commit")
def vote_commit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "vote_commit",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/vote_reveal")
@router.post("/vote_reveal")
def vote_reveal_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "vote_reveal",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/tally_proof")
@router.post("/tally_proof")
def tally_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "tally_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_uptime_proof")
@router.post("/depin_uptime_proof")
def depin_uptime_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_uptime_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_bandwidth_proof")
@router.post("/depin_bandwidth_proof")
def depin_bandwidth_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_bandwidth_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_compute_proof")
@router.post("/depin_compute_proof")
def depin_compute_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_compute_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_storage_proof")
@router.post("/depin_storage_proof")
def depin_storage_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_storage_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_energy_proof")
@router.post("/depin_energy_proof")
def depin_energy_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_energy_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_coverage_proof")
@router.post("/depin_coverage_proof")
def depin_coverage_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_coverage_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_heartbeat")
@router.post("/depin_heartbeat")
def depin_heartbeat_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_heartbeat",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_slash")
@router.post("/depin_slash")
def depin_slash_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_slash",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_reward")
@router.post("/depin_reward")
def depin_reward_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_reward",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_stake")
@router.post("/depin_stake")
def depin_stake_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_stake",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_unstake")
@router.post("/depin_unstake")
def depin_unstake_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_unstake",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_leaderboard")
@router.post("/depin_leaderboard")
def depin_leaderboard_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_leaderboard",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_challenge")
@router.post("/depin_challenge")
def depin_challenge_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_challenge",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_challenge_verify")
@router.post("/depin_challenge_verify")
def depin_challenge_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_challenge_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_map")
@router.post("/depin_map")
def depin_map_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_map",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/depin_audit")
@router.post("/depin_audit")
def depin_audit_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "depin_audit",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/insurance_claim_proof")
@router.post("/insurance_claim_proof")
def insurance_claim_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "insurance_claim_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/notary_public")
@router.post("/notary_public")
def notary_public_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "notary_public",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/notary_verify")
@router.post("/notary_verify")
def notary_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "notary_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/passport_stamp")
@router.post("/passport_stamp")
def passport_stamp_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "passport_stamp",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/license_verify")
@router.post("/license_verify")
def license_verify_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "license_verify",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/kyc_notary")
@router.post("/kyc_notary")
def kyc_notary_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "kyc_notary",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/aml_check")
@router.post("/aml_check")
def aml_check_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "aml_check",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/sovereign_audit_trail")
@router.post("/sovereign_audit_trail")
def sovereign_audit_trail_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "sovereign_audit_trail",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/sovereign_treasury")
@router.post("/sovereign_treasury")
def sovereign_treasury_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "sovereign_treasury",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/health_b4")
@router.post("/health_b4")
def health_b4_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "health_b4",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/compliance_attest")
@router.post("/compliance_attest")
def compliance_attest_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "compliance_attest",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/jurisdiction_proof")
@router.post("/jurisdiction_proof")
def jurisdiction_proof_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "jurisdiction_proof",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(uuid.uuid4())[:8]
    }


@router.get("/health_b4b")
@router.post("/health_b4b")
def health_b4b_v2(p: int = 82843, agent_id: str = "agent", payload: str = "", amount: float = 0):
    bp = beacon_payload(p)
    return {
        "tool": "health_b4b",
        "block": "b4",
        "ok": True,
        "p": bp["p"],
        "beacon": bp["beacon"],
        "d": bp["d"],
        "genesis": bp["genesis"],
        "ts": bp["ts"],
        "id": str(__import__('uuid').uuid4())[:8]
    }

