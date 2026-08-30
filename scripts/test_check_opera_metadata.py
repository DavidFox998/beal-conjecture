#!/usr/bin/env python3
"""Focused offline tests for the archive metadata audit helpers."""

import json
import unittest

from check_opera_metadata import (
    Repository,
    has_required_keywords,
    parse_repositories,
    validate_citation,
    validate_zenodo,
)


REPOSITORY = Repository("DavidFox998", "sample-repo")


def valid_zenodo() -> str:
    return json.dumps(
        {
            "title": "Sample Lean formalization",
            "creators": [{"name": "Fox, David", "affiliation": "Opera Numerorum"}],
            "license": "MIT",
            "keywords": ["Lean 4", "formal verification"],
            "communities": [{"identifier": "lean"}],
            "related_identifiers": [{"identifier": REPOSITORY.url}],
        }
    )


def valid_citation() -> str:
    return f"""cff-version: 1.2.0
title: "Sample Lean formalization"
authors:
  - family-names: Fox
    given-names: David
    affiliation: "Opera Numerorum"
license: MIT
repository-code: "{REPOSITORY.url}"
keywords:
  - "Lean 4"
  - "formal verification"
"""


class MetadataValidationTests(unittest.TestCase):
    def test_valid_metadata_passes(self) -> None:
        self.assertEqual(validate_zenodo(valid_zenodo(), REPOSITORY.url), [])
        self.assertEqual(validate_citation(valid_citation(), REPOSITORY.url), [])

    def test_zenodo_catches_required_fields(self) -> None:
        document = json.loads(valid_zenodo())
        document["license"] = "Apache-2.0"
        document["communities"] = []
        document["related_identifiers"] = []
        document["keywords"] = ["Lean 4"]
        errors = validate_zenodo(json.dumps(document), REPOSITORY.url)
        self.assertIn("license must be MIT", errors)
        self.assertIn("Lean community is missing", errors)
        self.assertIn(f"repository link must point to {REPOSITORY.url}", errors)
        self.assertIn("missing the 'formal verification' keyword", errors)

    def test_citation_catches_required_fields(self) -> None:
        broken = valid_citation().replace("title: \"Sample Lean formalization\"", 'title: ""')
        broken = broken.replace("affiliation: \"Opera Numerorum\"", 'affiliation: "Elsewhere"')
        broken = broken.replace("repository-code: ", "repository-code: \"https://github.com/wrong/repo\" # ")
        errors = validate_citation(broken, REPOSITORY.url)
        self.assertIn("title is empty or missing", errors)
        self.assertIn("no author has affiliation 'Opera Numerorum'", errors)
        self.assertIn(f"repository-code must point to {REPOSITORY.url}", errors)

    def test_keyword_variants_are_normalized(self) -> None:
        self.assertEqual(has_required_keywords(["Lean 4", "formal-verification"]), [])

    def test_repository_parser_ignores_documentation_example(self) -> None:
        path = "/tmp/opera-metadata-test-repos.md"
        with open(path, "w", encoding="utf-8") as repos_file:
            repos_file.write(
                "| [sample](https://github.com/DavidFox998/sample-repo) | role |\n"
                "git clone https://github.com/DavidFox998/<repo>\n"
            )
        repositories, errors = parse_repositories(path, 1)
        self.assertEqual([repository.name for repository in repositories], ["sample-repo"])
        self.assertEqual(errors, [])


if __name__ == "__main__":
    unittest.main()