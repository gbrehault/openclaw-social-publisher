# OpenClaw Social Publisher

A local-first open-source foundation for generating, designing, previewing, validating and publishing social campaigns with OpenClaw and Figma.

## Status

Independent early foundation: dynamic campaign core, state machine, idempotency keys, dashboard shell, localhost bridge, Figma manifest, doctor, install script, tests and documentation are implemented. Real Instagram/LinkedIn publication and Figma document automation remain isolated follow-up adapters.

## Quick start

    git clone <repository>
    cd openclaw-social-publisher
    ./install.sh
    pnpm doctor
    pnpm dev

## Architecture

OpenClaw -> Social Publisher Core -> Dashboard / Figma Bridge -> Figma Plugin -> Instagram / LinkedIn adapters

## Safety

No production BRHCRÉA files are modified. No test publishes to social accounts. Secrets are never committed.

See docs/getting-started.md, docs/architecture.md and docs/security.md.

## License

MIT
