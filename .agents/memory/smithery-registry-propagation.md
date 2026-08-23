---
name: Smithery registry propagation
description: How to verify Smithery tool inventory after republishing a remote MCP server.
---

An external URL release refreshes discovered capabilities (tools, resources, and
prompts), but it does not reliably replace an existing listing's display name
or overview. Update retained listing metadata through Smithery's authenticated
server-update API, then expect the public server-summary cache to lag the
authoritative record.

**Why:** A completed scan can show the newly discovered capability inventory
while the public registry still renders historical listing copy. Republishing
again does not guarantee a metadata refresh and can create an unnecessary
release.

**How to apply:** Publish the remote MCP URL to refresh capabilities. For title
or description changes, patch the existing qualified server record with the
documented metadata API. Treat the API response as authoritative while the
public server-summary cache converges; do not change the upstream merely to
chase stale listing copy.