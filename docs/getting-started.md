# Getting started

1. Install Node 24+ and pnpm.
2. Run `./install.sh`. This installs dependencies, builds the TypeScript core and creates runtime storage on first start.
3. Run `pnpm doctor`.
4. Run `pnpm dev`, then open `http://127.0.0.1:4319`.
5. For the local bridge, run `pnpm bridge`.
6. For a safe end-to-end simulation, run `pnpm dry-run`.

## Figma Desktop

The current manifest is independent of BRHCRÉA production: `apps/figma-plugin/manifest.json`. In Figma Desktop: Plugins -> Development -> Import plugin from manifest -> select the manifest -> run OpenClaw Social Publisher. The plugin currently creates real frames locally; export transport and campaign injection remain the next live-integration step.

## Environment

Copy `.env.example` only when needed. Platform credentials are optional for local dry-runs and must never be committed.
