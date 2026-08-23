---
name: GitHub Actions expression escaping
description: How to safely pass GitHub context values into shell scripts and what NOT to write in run-block comments.
---

# GitHub Actions Expression Escaping

## The rule
Do NOT write `\${{ }}` inside a `run:` block — even in bash comments. GitHub Actions processes `${{` even after `\` stripping, and empty/invalid content between `{{` and `}}` throws "An expression was expected".

**Why:** The expression parser scans the full run-block content for `${{` before passing it to bash. `\${{` strips the backslash then sees `${{` and tries to parse the content as an expression.

**Symptom:** Workflow dispatch returns `failed to parse workflow: (Line: N, Col: M): An expression was expected`. The run record appears in the API with `total_count: 0` jobs.

## Safe pattern for passing GitHub context into shell
```yaml
env:
  GH_REPO: ${{ github.repository }}
  GH_RUN_ID: ${{ github.run_id }}
run: |
  echo "$GH_REPO $GH_RUN_ID"   # safe: bash var expansion, not a GitHub expression
```

In comments, use plain text like "github context expressions" instead of writing `${{ }}` literally.
