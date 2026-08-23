---
name: Smithery connection verification
description: How to make a real, temporary Smithery connection for end-to-end gateway checks.
---

Use the authenticated Smithery CLI to create, exercise, and remove a temporary connection when verifying the public gateway. Do not depend on direct authenticated POST/PUT/DELETE requests to the connection API from this environment.

**Why:** Smithery API reads succeeded, but direct connection writes were blocked by its Cloudflare layer. The official CLI authenticated successfully and completed the connection lifecycle.

**How to apply:** Create an unconfigured temporary connection, call the intended tool through `smithery tool call`, assert the MCP result, then remove it and confirm the CLI can no longer find it. Never print the account token or user-provided API key.