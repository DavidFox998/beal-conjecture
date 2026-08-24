---
name: GitHub Actions PR trend history
description: How to query comparable workflow history while a pull-request workflow runs.
---

For a pull-request workflow, prefer `GITHUB_HEAD_REF` over `GITHUB_REF_NAME`
when querying prior runs for the source branch. Fall back to `GITHUB_REF_NAME`
for push and other events.

**Why:** GitHub sets `GITHUB_REF_NAME` to a synthetic value such as
`<pull-number>/merge` for pull-request events. Filtering the Actions API by
that value omits the completed push runs on the contributor's actual branch,
so a trend report cannot show its historical rows.

**How to apply:** Any workflow report that compares a PR against earlier
workflow artifacts should use the source branch when it is available, while
keeping the ordinary ref name as the non-PR fallback.