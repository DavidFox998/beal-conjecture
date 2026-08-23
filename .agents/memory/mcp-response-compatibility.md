---
name: MCP response compatibility
description: Legacy Smithery result fields and standard MCP CallToolResult fields must coexist.
---

# MCP Response Compatibility

Successful MCP tool results must preserve a dictionary payload's established top-level fields while also returning the standard `content`, `structuredContent`, and `isError` envelope.

**Why:** Smithery's tier-gate integration consumes top-level fields such as `ok` and `tool`; moving those fields only into `structuredContent` breaks otherwise-successful live tool calls.

**How to apply:** When evolving the MCP response builder, start with a copy of dictionary payloads and layer the standard envelope over it. Verify both a local MCP response and Smithery's live gateway contract before shipping.