---
name: ZeroBeacon catalog semantics
description: Distinguishes live MCP inventory from the 1,000-tool advertised catalog.
---

Treat ZeroBeacon's installed tool count and advertised catalog count as separate,
explicit values. The public diagnostic catalog must disclose both, while
operational endpoints and tier gates use the live installed total.

**Why:** The product retains a 1,000-tool marketing catalog, but free
diagnostics brought the actual MCP inventory to 1,052. Conflating the two
caused health, smoke-test, and marketplace count mismatches.

**How to apply:** Keep cumulative access totals aligned with the live registry
and use the `total_advertised` field for the 1,000-tool marketing figure. Do
not silently present an advertised count as the live MCP inventory. Public
uptime checks should verify health, identity, and a plausible advertised-count
floor; reserve an exact installed-count assertion for local contract tests or
post-deploy release verification.