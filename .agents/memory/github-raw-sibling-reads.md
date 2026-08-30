---
name: GitHub raw sibling reads
description: Authentication behavior when a GitHub Actions job reads public raw files from sibling repositories
---

Read public sibling-repository files from `raw.githubusercontent.com` without
attaching the current repository's Actions token.

**Why:** A repository-scoped token can make public raw files in sibling
repositories return HTTP 404 even though unauthenticated requests succeed. The
false 404s make a healthy cross-repository audit report that every file is
missing.

**How to apply:** For read-only checks of public raw content, omit the
`Authorization` header. Use authenticated GitHub API requests only when the
specific endpoint and token scope require them.