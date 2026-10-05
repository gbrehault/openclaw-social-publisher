---
name: social-publisher
description: Create, edit, preview, validate and simulate publishing social campaigns through OpenClaw Social Publisher.
---
# Social Publisher

Use the local dashboard API/core rather than duplicating campaign state in conversation.

## Supported commands
- Create a campaign with a topic, platform(s), and slide count.
- List, inspect, edit, and preview campaigns.
- Run a complete dry-run: generation -> Figma bridge -> export -> preview -> validation -> Instagram mock -> LinkedIn mock -> history.
- Publish only after explicit confirmation and only when a live adapter is configured.

## Safety
Never claim MOCKED or DRY-RUN as LIVE-TESTED. Never publish a real post during tests. If a bridge, template, token, or adapter is unavailable, preserve the campaign and report the exact state.
