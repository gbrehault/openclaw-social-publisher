# Architecture

OpenClaw -> skill -> campaign repository -> content generation -> localhost bridge -> Figma plugin -> export -> preview -> platform adapters.

## Storage

The core depends on a repository interface. The default implementation is SQLite through Node 24 `node:sqlite`, using WAL mode, foreign keys and indexed event history. Campaign documents remain JSON-encoded inside repository rows so the domain model can evolve without coupling business logic to SQL. Runtime files are stored in `data/` and ignored by Git.

Tables: campaigns, events, external_ids. Idempotency keys are represented by the external ID and publication adapter layer; a dedicated idempotency table is planned before live publishing.

## Boundaries

The bridge is loopback-only by default. Platform adapters are isolated and mockable. Figma and social credentials never enter the browser UI or plugin.
