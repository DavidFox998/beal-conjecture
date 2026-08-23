# ZeroBeacon RapidAPI listing

Use this document as the source copy for the ZeroBeacon RapidAPI product page.
Do not publish a plan name, price, request allowance, or authentication claim
that differs from the active RapidAPI dashboard configuration.

## Product title

**ZeroBeacon — MCP and workflow operations for AI agents**

## Short description

ZeroBeacon provides 1,052 MCP and REST operations for payments, escrow,
delivery, planning, memory, legal workflows, treasury coordination, and agent
routing. Each operation publishes a concise summary and an input schema so
agents can choose and call it reliably.

## Getting started

1. Import the current OpenAPI definition from:
   `https://zerobeacon.ai/openapi-rapidapi-all.json`
2. Call the FREE `GET /api/mf/01/beacon` endpoint to verify the integration.
3. Use the operation summary and request schema to select the smallest
   suitable endpoint for a workflow.
4. RapidAPI injects `X-RapidAPI-Key` for marketplace subscribers. Direct
   ZeroBeacon subscriptions use `X-API-Key`.

## Authentication and tiers

The origin verifies the RapidAPI proxy secret before trusting RapidAPI
subscription headers. A subscription that is below an endpoint's required tier
returns a structured `tier_required` response with upgrade guidance instead of
silently granting access.

Keep the RapidAPI dashboard's proxy secret synchronized with the Fly
`RAPIDAPI_PROXY_SECRET` secret. Never put either secret in this document, a
public example, or an OpenAPI definition.

## Listing checklist

- Import the OpenAPI URL above after each catalog version change.
- Confirm the dashboard description describes the active product rather than a
  generic test endpoint.
- Add a tested FREE example request and response from the beacon endpoint.
- Keep the dashboard plan names aligned with the server's supported RapidAPI
  subscriptions: BASIC, PRO, ULTRA, and MEGA.
- Verify a marketplace request reaches the live origin before changing the
  listing from draft to public.