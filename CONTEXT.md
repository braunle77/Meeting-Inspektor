# Meeting Inspektor — Context

Standalone-HTML-Dashboard zur Analyse von Meeting-Strukturen (Redeanteile, Interaktionsmuster) auf Basis von TSV-Beobachtungsdaten.

## Pointers

- **Glossary** — [docs/arc42/12_glossary.md](docs/arc42/12_glossary.md) — the ubiquitous language.
- **Architecture** — [docs/arc42/](docs/arc42/) — arc42 docs (domain model §8, decisions index §9).
- **Decisions** — [docs/adr/](docs/adr/) — the ADRs, one file each.

## Context Pointers

- **arc-docs** — [docs/arc42/](docs/arc42/) — the architecture documentation: goals, solution strategy, concepts
- **domain-glossary** — [docs/arc42/12_glossary.md](docs/arc42/12_glossary.md) — the ubiquitous language of the project
- **environment-glossary** — [docs/arc42/12_glossary.md](docs/arc42/12_glossary.md) — same file as domain-glossary (single glossary in this repo)
- **ADR-dir** — [docs/adr/](docs/adr/) — one file per decision (arc42 chapter 9 only indexes them)
- **conventions-dir** — [docs/agent-conventions/](docs/agent-conventions/) — the central conventions (issue tracker, release process, …)
- **handoff-dir** — `/tmp/cape-handoffs` — where session handoffs live

## Tiers

A **tier** is a section of the tech stack with its own tech and rules (something like the frontend of an app).

Tiers in this repo:
- NONE — single undifferentiated HTML/JavaScript codebase (one-page browser tool, no build, no workspace structure).
